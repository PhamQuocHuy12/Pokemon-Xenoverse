.class public Lcom/hatkid/mkxpz/MainActivity;
.super Lorg/libsdl/app/SDLActivity;
.source "MainActivity.java"


# static fields
.field private static DEBUG:Z = false

.field private static GAME_PATH:Ljava/lang/String; = null

.field private static final GAME_PATH_DEFAULT:Ljava/lang/String;

.field private static OBB_MAIN_FILENAME:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "mkxp-z[Activity]"


# instance fields
.field private final mGamepad:Lcom/hatkid/mkxpz/gamepad/Gamepad;

.field private mGamepadInvisible:Z

.field protected mStarted:Z

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field obbListener:Landroid/os/storage/OnObbStateChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/mkxp-z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hatkid/mkxpz/MainActivity;->GAME_PATH_DEFAULT:Ljava/lang/String;

    .line 35
    sput-object v0, Lcom/hatkid/mkxpz/MainActivity;->GAME_PATH:Ljava/lang/String;

    const/4 v0, 0x0

    .line 37
    sput-boolean v0, Lcom/hatkid/mkxpz/MainActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lorg/libsdl/app/SDLActivity;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/hatkid/mkxpz/MainActivity;->mStarted:Z

    .line 44
    new-instance v1, Lcom/hatkid/mkxpz/gamepad/Gamepad;

    invoke-direct {v1}, Lcom/hatkid/mkxpz/gamepad/Gamepad;-><init>()V

    iput-object v1, p0, Lcom/hatkid/mkxpz/MainActivity;->mGamepad:Lcom/hatkid/mkxpz/gamepad/Gamepad;

    .line 45
    iput-boolean v0, p0, Lcom/hatkid/mkxpz/MainActivity;->mGamepadInvisible:Z

    .line 61
    new-instance v0, Lcom/hatkid/mkxpz/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/hatkid/mkxpz/MainActivity$1;-><init>(Lcom/hatkid/mkxpz/MainActivity;)V

    iput-object v0, p0, Lcom/hatkid/mkxpz/MainActivity;->obbListener:Landroid/os/storage/OnObbStateChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/hatkid/mkxpz/MainActivity;)Landroid/os/storage/StorageManager;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/hatkid/mkxpz/MainActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object p0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    sput-object p0, Lcom/hatkid/mkxpz/MainActivity;->GAME_PATH:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/hatkid/mkxpz/MainActivity;->GAME_PATH_DEFAULT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/hatkid/mkxpz/MainActivity;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/hatkid/mkxpz/MainActivity;->runSDLThread()V

    return-void
.end method

.method private static getSystemLanguage()Ljava/lang/String;
    .locals 1

    .line 255
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hasVibrator()Z
    .locals 2

    .line 267
    invoke-static {}, Lcom/hatkid/mkxpz/MainActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 268
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    return v0
.end method

.method private static inMultiWindow(Landroid/app/Activity;)Z
    .locals 2

    .line 311
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private runSDLThread()V
    .locals 2

    .line 49
    iget-boolean v0, p0, Lcom/hatkid/mkxpz/MainActivity;->mStarted:Z

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Game path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/hatkid/mkxpz/MainActivity;->GAME_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mkxp-z[Activity]"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/hatkid/mkxpz/MainActivity;->mStarted:Z

    .line 56
    sget-boolean v0, Lcom/hatkid/mkxpz/MainActivity;->mHasMultiWindow:Z

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/hatkid/mkxpz/MainActivity;->resumeNativeThread()V

    :cond_1
    return-void
.end method

.method private static vibrate(I)V
    .locals 3

    .line 280
    invoke-static {}, Lcom/hatkid/mkxpz/MainActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 282
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    int-to-long v1, p0

    const/4 p0, 0x5

    .line 283
    invoke-static {v1, v2, p0}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_0

    :cond_0
    int-to-long v1, p0

    .line 285
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :goto_0
    return-void
.end method

.method private static vibrateStop()V
    .locals 2

    .line 296
    invoke-static {}, Lcom/hatkid/mkxpz/MainActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 297
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 186
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 187
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x18

    if-eq v0, v2, :cond_0

    .line 188
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x19

    if-eq v0, v2, :cond_0

    .line 189
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0xa4

    if-eq v0, v2, :cond_0

    .line 192
    iget-boolean v0, p0, Lcom/hatkid/mkxpz/MainActivity;->mGamepadInvisible:Z

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/hatkid/mkxpz/MainActivity;->mGamepad:Lcom/hatkid/mkxpz/gamepad/Gamepad;

    invoke-virtual {v0}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->hideView()V

    .line 194
    iput-boolean v1, p0, Lcom/hatkid/mkxpz/MainActivity;->mGamepadInvisible:Z

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/hatkid/mkxpz/MainActivity;->mGamepad:Lcom/hatkid/mkxpz/gamepad/Gamepad;

    invoke-virtual {v0, p1}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->processGamepadEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 201
    :cond_1
    invoke-super {p0, p1}, Lorg/libsdl/app/SDLActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/hatkid/mkxpz/MainActivity;->mGamepadInvisible:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/hatkid/mkxpz/MainActivity;->mGamepad:Lcom/hatkid/mkxpz/gamepad/Gamepad;

    invoke-virtual {v0}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->showView()V

    const/4 v0, 0x0

    .line 210
    iput-boolean v0, p0, Lcom/hatkid/mkxpz/MainActivity;->mGamepadInvisible:Z

    .line 213
    :cond_0
    invoke-super {p0, p1}, Lorg/libsdl/app/SDLActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected getArguments()[Ljava/lang/String;
    .locals 1

    .line 235
    sget-boolean v0, Lcom/hatkid/mkxpz/MainActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "debug"

    .line 237
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p2, 0x6e

    if-ne p1, p2, :cond_0

    .line 96
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1e

    if-lt p1, p2, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result p1

    if-nez p1, :cond_0

    .line 98
    sget-object p1, Lcom/hatkid/mkxpz/MainActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {p1}, Lorg/libsdl/app/SDLActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 106
    invoke-static {p0}, Lcom/hatkid/mkxpz/SetupActivity;->getGameDirectory(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v0
    sput-object v0, Lcom/hatkid/mkxpz/MainActivity;->GAME_PATH:Ljava/lang/String;
    invoke-super {p0, p1}, Lorg/libsdl/app/SDLActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "storage"

    .line 108
    invoke-virtual {p0, p1}, Lcom/hatkid/mkxpz/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/hatkid/mkxpz/MainActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hatkid/mkxpz/MainActivity;->getObbDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "main"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hatkid/mkxpz/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".obb"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/hatkid/mkxpz/MainActivity;->OBB_MAIN_FILENAME:Ljava/lang/String;

    .line 117
    :try_start_0
    invoke-virtual {p0}, Lcom/hatkid/mkxpz/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/hatkid/mkxpz/MainActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 118
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "mkxp_debug"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/hatkid/mkxpz/MainActivity;->DEBUG:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set debug flag: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mkxp-z[Activity]"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 125
    :goto_0
    :cond_0
    invoke-static {}, Lcom/hatkid/mkxpz/MainActivity;->isAndroidTV()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/hatkid/mkxpz/MainActivity;->isChromebook()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/hatkid/mkxpz/MainActivity;->mGamepadInvisible:Z

    .line 137
    new-instance p1, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;

    invoke-direct {p1}, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;-><init>()V

    .line 138
    iget-object v0, p0, Lcom/hatkid/mkxpz/MainActivity;->mGamepad:Lcom/hatkid/mkxpz/gamepad/Gamepad;

    iget-boolean v1, p0, Lcom/hatkid/mkxpz/MainActivity;->mGamepadInvisible:Z

    invoke-virtual {v0, p1, v1}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->init(Lcom/hatkid/mkxpz/gamepad/GamepadConfig;Z)V

    .line 139
    iget-object p1, p0, Lcom/hatkid/mkxpz/MainActivity;->mGamepad:Lcom/hatkid/mkxpz/gamepad/Gamepad;

    new-instance v0, Lcom/hatkid/mkxpz/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/hatkid/mkxpz/MainActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v0}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->setOnKeyDownListener(Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyDownListener;)V

    .line 140
    iget-object p1, p0, Lcom/hatkid/mkxpz/MainActivity;->mGamepad:Lcom/hatkid/mkxpz/gamepad/Gamepad;

    new-instance v0, Lcom/hatkid/mkxpz/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/hatkid/mkxpz/MainActivity$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, v0}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->setOnKeyUpListener(Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyUpListener;)V

    .line 142
    sget-object p1, Lcom/hatkid/mkxpz/MainActivity;->mLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    .line 143
    iget-object p1, p0, Lcom/hatkid/mkxpz/MainActivity;->mGamepad:Lcom/hatkid/mkxpz/gamepad/Gamepad;

    sget-object v0, Lcom/hatkid/mkxpz/MainActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0, v0}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->attachTo(Landroid/content/Context;Landroid/view/ViewGroup;)V

    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 174
    invoke-super {p0}, Lorg/libsdl/app/SDLActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 179
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/hatkid/mkxpz/MainActivity;->mGamepad:Lcom/hatkid/mkxpz/gamepad/Gamepad;

    invoke-virtual {v0, p1}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->processDPadEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 222
    :cond_0
    invoke-super {p0, p1}, Lorg/libsdl/app/SDLActivity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onStart()V
    .locals 4

    .line 150
    invoke-super {p0}, Lorg/libsdl/app/SDLActivity;->onStart()V

    .line 152
    iget-boolean v0, p0, Lcom/hatkid/mkxpz/MainActivity;->mStarted:Z

    if-nez v0, :cond_1

    .line 154
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/hatkid/mkxpz/MainActivity;->OBB_MAIN_FILENAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "mkxp-z[Activity]"

    if-eqz v0, :cond_0

    const-string v0, "Main OBB file found, starting with main OBB mount"

    .line 155
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/hatkid/mkxpz/MainActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v1, Lcom/hatkid/mkxpz/MainActivity;->OBB_MAIN_FILENAME:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/hatkid/mkxpz/MainActivity;->obbListener:Landroid/os/storage/OnObbStateChangeListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/StorageManager;->mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/OnObbStateChangeListener;)Z

    goto :goto_0

    :cond_0
    const-string v0, "Main OBB file not found, starting without main OBB mount"

    .line 160
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-direct {p0}, Lcom/hatkid/mkxpz/MainActivity;->runSDLThread()V

    goto :goto_0

    .line 167
    :cond_1
    invoke-direct {p0}, Lcom/hatkid/mkxpz/MainActivity;->runSDLThread()V

    :goto_0
    return-void
.end method
