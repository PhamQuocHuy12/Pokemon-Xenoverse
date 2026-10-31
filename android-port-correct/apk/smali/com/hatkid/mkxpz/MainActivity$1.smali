.class Lcom/hatkid/mkxpz/MainActivity$1;
.super Landroid/os/storage/OnObbStateChangeListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hatkid/mkxpz/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hatkid/mkxpz/MainActivity;


# direct methods
.method constructor <init>(Lcom/hatkid/mkxpz/MainActivity;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/hatkid/mkxpz/MainActivity$1;->this$0:Lcom/hatkid/mkxpz/MainActivity;

    invoke-direct {p0}, Landroid/os/storage/OnObbStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onObbStateChange(Ljava/lang/String;I)V
    .locals 3

    .line 66
    invoke-super {p0, p1, p2}, Landroid/os/storage/OnObbStateChangeListener;->onObbStateChange(Ljava/lang/String;I)V

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OBB state of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mkxp-z[Activity]"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const-string v2, "OBB "

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to mount OBB "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Got state "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is unmounted"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {}, Lcom/hatkid/mkxpz/MainActivity;->access$200()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hatkid/mkxpz/MainActivity;->access$102(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 73
    :cond_1
    iget-object p2, p0, Lcom/hatkid/mkxpz/MainActivity$1;->this$0:Lcom/hatkid/mkxpz/MainActivity;

    invoke-static {p2}, Lcom/hatkid/mkxpz/MainActivity;->access$000(Lcom/hatkid/mkxpz/MainActivity;)Landroid/os/storage/StorageManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/storage/StorageManager;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is mounted to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {p2}, Lcom/hatkid/mkxpz/MainActivity;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    :goto_0
    iget-object p1, p0, Lcom/hatkid/mkxpz/MainActivity$1;->this$0:Lcom/hatkid/mkxpz/MainActivity;

    invoke-static {p1}, Lcom/hatkid/mkxpz/MainActivity;->access$300(Lcom/hatkid/mkxpz/MainActivity;)V

    return-void
.end method
