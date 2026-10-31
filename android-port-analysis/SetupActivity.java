package com.hatkid.mkxpz;

import android.app.Activity;
import android.os.Bundle;
import android.content.Context;
import android.content.Intent;
import android.widget.*;
import java.io.*;
import java.util.zip.*;

/** First-run asset installation stays in app-private storage. */
public class SetupActivity extends Activity {
    private TextView status;
    private CheckBox fast;
    private Button play;
    public static String getGameDirectory(Context context) {
        return new File(context.getFilesDir(), "game").getAbsolutePath();
    }
    @Override public void onCreate(Bundle state) {
        super.onCreate(state);
        LinearLayout layout = new LinearLayout(this);
        layout.setOrientation(LinearLayout.VERTICAL); layout.setPadding(32,32,32,32);
        status = new TextView(this); status.setText("Preparing Xenoverse…"); status.setTextSize(22);
        layout.addView(status);
        fast = new CheckBox(this); fast.setText("2× gameplay • normal-speed music");
        fast.setChecked(getPreferences(0).getBoolean("fast",true)); layout.addView(fast);
        play = new Button(this); play.setText("Play Xenoverse"); play.setEnabled(false); layout.addView(play);
        setContentView(layout);
        play.setOnClickListener(view -> {
            try {
                getPreferences(0).edit().putBoolean("fast",fast.isChecked()).apply();
                try (FileOutputStream out = new FileOutputStream(new File(getGameDirectory(this),"speed_config.rb"))) {
                    out.write((fast.isChecked()?"2.0":"1.0").getBytes("UTF-8"));
                }
                Intent intent = new Intent(); intent.setClassName(this,"com.hatkid.mkxpz.MainActivity"); startActivity(intent);
            } catch (Exception error) { status.setText(error.toString()); }
        });
        new Thread(() -> install(),"Xenoverse installer").start();
    }
    private void install() {
        try {
            File directory = new File(getGameDirectory(this));
            if (!directory.isDirectory() && !directory.mkdirs()) throw new IOException("Cannot create game directory");
            File marker = new File(directory,".installed-v1");
            if (!marker.exists()) {
                String prefix = directory.getCanonicalPath()+File.separator;
                int count = 0;
                try (ZipInputStream zip = new ZipInputStream(new BufferedInputStream(getAssets().open("game.zip"),262144))) {
                    byte[] buffer = new byte[262144]; ZipEntry entry;
                    while ((entry = zip.getNextEntry()) != null) {
                        File target = new File(directory,entry.getName());
                        if (!target.getCanonicalPath().startsWith(prefix)) throw new IOException("Invalid asset path");
                        if (entry.isDirectory()) { target.mkdirs(); continue; }
                        File parent = target.getParentFile();
                        if (!parent.isDirectory() && !parent.mkdirs()) throw new IOException("Cannot create asset folder");
                        try (OutputStream out = new BufferedOutputStream(new FileOutputStream(target),262144)) {
                            int n; while ((n=zip.read(buffer)) != -1) out.write(buffer,0,n);
                        }
                        if (++count % 200 == 0) {
                            final int files = count;
                            runOnUiThread(() -> status.setText("Installing game files: "+files));
                        }
                    }
                }
                if (!marker.createNewFile()) throw new IOException("Cannot finish installation");
            }
            runOnUiThread(() -> { status.setText("Xenoverse is ready"); play.setEnabled(true); });
        } catch (Exception error) {
            runOnUiThread(() -> status.setText("Installation failed: "+error.getMessage()));
        }
    }
}
