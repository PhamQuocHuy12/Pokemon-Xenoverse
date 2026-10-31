.class public Lorg/libsdl/app/SDLAudioManager;
.super Ljava/lang/Object;
.source "SDLAudioManager.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "SDLAudio"

.field protected static mAudioRecord:Landroid/media/AudioRecord;

.field protected static mAudioTrack:Landroid/media/AudioTrack;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static audioClose()V
    .locals 1

    .line 358
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 360
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    .line 361
    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    :cond_0
    return-void
.end method

.method public static audioOpen(IIII)[I
    .locals 1

    const/4 v0, 0x0

    .line 245
    invoke-static {v0, p0, p1, p2, p3}, Lorg/libsdl/app/SDLAudioManager;->open(ZIIII)[I

    move-result-object p0

    return-object p0
.end method

.method public static audioSetThreadPriority(ZI)V
    .locals 2

    if-eqz p0, :cond_0

    .line 380
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SDLAudioC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SDLAudioP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :goto_0
    const/16 p0, -0x10

    .line 386
    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 389
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "modify thread properties failed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SDLAudio"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static audioWriteByteBuffer([B)V
    .locals 4

    .line 304
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    const-string v1, "SDLAudio"

    if-nez v0, :cond_0

    const-string p0, "Attempted to make audio call with uninitialized audio!"

    .line 305
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 309
    :catch_0
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 310
    sget-object v2, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    array-length v3, p0

    sub-int/2addr v3, v0

    invoke-virtual {v2, p0, v0, v3}, Landroid/media/AudioTrack;->write([BII)I

    move-result v2

    if-lez v2, :cond_1

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const-wide/16 v2, 0x1

    .line 315
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    const-string p0, "SDL audio: error return from write(byte)"

    .line 320
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public static audioWriteFloatBuffer([F)V
    .locals 5

    .line 252
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    const-string v1, "SDLAudio"

    if-nez v0, :cond_0

    const-string p0, "Attempted to make audio call with uninitialized audio!"

    .line 253
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .line 257
    :catch_0
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 258
    sget-object v3, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    array-length v4, p0

    sub-int/2addr v4, v2

    invoke-virtual {v3, p0, v2, v4, v0}, Landroid/media/AudioTrack;->write([FIII)I

    move-result v3

    if-lez v3, :cond_1

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    const-wide/16 v3, 0x1

    .line 263
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    const-string p0, "SDL audio: error return from write(float)"

    .line 268
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public static audioWriteShortBuffer([S)V
    .locals 4

    .line 278
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    const-string v1, "SDLAudio"

    if-nez v0, :cond_0

    const-string p0, "Attempted to make audio call with uninitialized audio!"

    .line 279
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 283
    :catch_0
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 284
    sget-object v2, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    array-length v3, p0

    sub-int/2addr v3, v0

    invoke-virtual {v2, p0, v0, v3}, Landroid/media/AudioTrack;->write([SII)I

    move-result v2

    if-lez v2, :cond_1

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const-wide/16 v2, 0x1

    .line 289
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    const-string p0, "SDL audio: error return from write(short)"

    .line 294
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public static captureClose()V
    .locals 1

    .line 367
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 369
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    .line 370
    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    :cond_0
    return-void
.end method

.method public static captureOpen(IIII)[I
    .locals 1

    const/4 v0, 0x1

    .line 330
    invoke-static {v0, p0, p1, p2, p3}, Lorg/libsdl/app/SDLAudioManager;->open(ZIIII)[I

    move-result-object p0

    return-object p0
.end method

.method public static captureReadByteBuffer([BZ)I
    .locals 3

    .line 349
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    .line 350
    sget-object p1, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    array-length v0, p0

    invoke-virtual {p1, p0, v1, v0}, Landroid/media/AudioRecord;->read([BII)I

    move-result p0

    return p0

    .line 352
    :cond_0
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    array-length v2, p0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p0, v1, v2, p1}, Landroid/media/AudioRecord;->read([BIII)I

    move-result p0

    return p0
.end method

.method public static captureReadFloatBuffer([FZ)I
    .locals 3

    .line 335
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    array-length v1, p0

    xor-int/lit8 p1, p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1, p1}, Landroid/media/AudioRecord;->read([FIII)I

    move-result p0

    return p0
.end method

.method public static captureReadShortBuffer([SZ)I
    .locals 3

    .line 340
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    .line 341
    sget-object p1, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    array-length v0, p0

    invoke-virtual {p1, p0, v1, v0}, Landroid/media/AudioRecord;->read([SII)I

    move-result p0

    return p0

    .line 343
    :cond_0
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    array-length v2, p0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p0, v1, v2, p1}, Landroid/media/AudioRecord;->read([SIII)I

    move-result p0

    return p0
.end method

.method protected static getAudioFormatString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 34
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "float"

    return-object p0

    :cond_1
    const-string p0, "8-bit"

    return-object p0

    :cond_2
    const-string p0, "16-bit"

    return-object p0
.end method

.method public static initialize()V
    .locals 1

    const/4 v0, 0x0

    .line 19
    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 20
    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    return-void
.end method

.method public static native nativeSetupJNI()I
.end method

.method protected static open(ZIIII)[I
    .locals 24

    move/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "capture"

    const-string v6, "playback"

    if-eqz p0, :cond_0

    move-object v7, v5

    goto :goto_0

    :cond_0
    move-object v7, v6

    :goto_0
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", requested "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " frames of "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " channel "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lorg/libsdl/app/SDLAudioManager;->getAudioFormatString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " audio at "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " Hz"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v11, "SDLAudio"

    invoke-static {v11, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    const/4 v13, 0x2

    if-ge v3, v12, :cond_1

    if-le v1, v13, :cond_1

    move v1, v13

    .line 53
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x16

    const v15, 0xbb80

    const/16 v12, 0x1f40

    if-ge v3, v14, :cond_3

    if-ge v0, v12, :cond_2

    goto :goto_1

    :cond_2
    if-le v0, v15, :cond_3

    move v12, v15

    goto :goto_1

    :cond_3
    move v12, v0

    :goto_1
    const/4 v3, 0x4

    move/from16 v14, p2

    if-ne v14, v3, :cond_5

    if-eqz p0, :cond_4

    const/16 v15, 0x17

    goto :goto_2

    :cond_4
    const/16 v15, 0x15

    .line 63
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v15, :cond_5

    move v14, v13

    :cond_5
    const/4 v0, 0x3

    const/4 v15, 0x1

    if-eq v14, v13, :cond_8

    if-eq v14, v0, :cond_7

    if-eq v14, v3, :cond_6

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested format "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", getting ENCODING_PCM_16BIT"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v13

    move v14, v0

    goto :goto_3

    :cond_6
    const/4 v0, 0x4

    goto :goto_3

    :cond_7
    move v0, v15

    goto :goto_3

    :cond_8
    move v0, v13

    :goto_3
    const-string v3, " channels, getting stereo"

    const/16 v16, 0xfc

    const-string v13, "Requested "

    const/16 v17, 0xc

    if-eqz p0, :cond_a

    if-eq v1, v15, :cond_9

    const/4 v15, 0x2

    if-eq v1, v15, :cond_c

    .line 94
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    const/16 v3, 0x10

    goto :goto_6

    :cond_a
    packed-switch v1, :pswitch_data_0

    .line 132
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move/from16 v3, v17

    const/4 v1, 0x2

    goto :goto_6

    .line 123
    :pswitch_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x17

    if-lt v3, v15, :cond_b

    const/16 v3, 0x18fc

    goto :goto_6

    .line 126
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " channels, getting 5.1 surround"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x6

    goto :goto_5

    :pswitch_1
    const/16 v3, 0x4fc

    goto :goto_6

    :goto_5
    :pswitch_2
    move/from16 v3, v16

    goto :goto_6

    :pswitch_3
    const/16 v3, 0xdc

    goto :goto_6

    :pswitch_4
    const/16 v3, 0xcc

    goto :goto_6

    :pswitch_5
    const/16 v3, 0x1c

    goto :goto_6

    :cond_c
    :pswitch_6
    move/from16 v3, v17

    goto :goto_6

    :pswitch_7
    const/4 v3, 0x4

    :goto_6
    mul-int/2addr v0, v1

    if-eqz p0, :cond_d

    .line 183
    invoke-static {v12, v3, v14}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    goto :goto_7

    .line 185
    :cond_d
    invoke-static {v12, v3, v14}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v1

    :goto_7
    add-int/2addr v1, v0

    const/4 v13, 0x1

    sub-int/2addr v1, v13

    .line 187
    div-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x4

    new-array v2, v2, [I

    const/4 v13, 0x0

    const/4 v15, 0x0

    if-eqz p0, :cond_10

    .line 192
    sget-object v16, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v16, :cond_f

    .line 193
    new-instance v16, Landroid/media/AudioRecord;

    const/16 v18, 0x0

    mul-int v22, v1, v0

    move-object/from16 v17, v16

    move/from16 v19, v12

    move/from16 v20, v3

    move/from16 v21, v14

    invoke-direct/range {v17 .. v22}, Landroid/media/AudioRecord;-><init>(IIIII)V

    sput-object v16, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    .line 197
    invoke-virtual/range {v16 .. v16}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_e

    const-string v0, "Failed during initialization of AudioRecord"

    .line 198
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 200
    sput-object v15, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    return-object v15

    .line 204
    :cond_e
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 207
    :cond_f
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v0

    aput v0, v2, v13

    .line 208
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioFormat()I

    move-result v0

    const/4 v3, 0x1

    aput v0, v2, v3

    .line 209
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v0

    const/4 v3, 0x2

    aput v0, v2, v3

    goto :goto_8

    .line 212
    :cond_10
    sget-object v16, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v16, :cond_12

    .line 213
    new-instance v16, Landroid/media/AudioTrack;

    const/16 v18, 0x3

    mul-int v22, v1, v0

    const/16 v23, 0x1

    move-object/from16 v17, v16

    move/from16 v19, v12

    move/from16 v20, v3

    move/from16 v21, v14

    invoke-direct/range {v17 .. v23}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    sput-object v16, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 218
    invoke-virtual/range {v16 .. v16}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_11

    const-string v0, "Failed during initialization of Audio Track"

    .line 221
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 223
    sput-object v15, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    return-object v15

    .line 227
    :cond_11
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 230
    :cond_12
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v0

    aput v0, v2, v13

    .line 231
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioFormat()I

    move-result v0

    const/4 v3, 0x1

    aput v0, v2, v3

    .line 232
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getChannelCount()I

    move-result v0

    const/4 v3, 0x2

    aput v0, v2, v3

    :goto_8
    const/4 v0, 0x3

    aput v1, v2, v0

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_13

    goto :goto_9

    :cond_13
    move-object v5, v6

    :goto_9
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", got "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget v0, v2, v0

    invoke-static {v0}, Lorg/libsdl/app/SDLAudioManager;->getAudioFormatString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v2, v13

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
