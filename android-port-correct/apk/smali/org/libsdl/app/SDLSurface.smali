.class public Lorg/libsdl/app/SDLSurface;
.super Landroid/view/SurfaceView;
.source "SDLSurface.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field protected mDisplay:Landroid/view/Display;

.field protected mHeight:F

.field public mIsSurfaceReady:Z

.field protected mSensorManager:Landroid/hardware/SensorManager;

.field protected mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p0}, Lorg/libsdl/app/SDLSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v0, 0x1

    .line 48
    invoke-virtual {p0, v0}, Lorg/libsdl/app/SDLSurface;->setFocusable(Z)V

    .line 49
    invoke-virtual {p0, v0}, Lorg/libsdl/app/SDLSurface;->setFocusableInTouchMode(Z)V

    .line 50
    invoke-virtual {p0}, Lorg/libsdl/app/SDLSurface;->requestFocus()Z

    .line 51
    invoke-virtual {p0, p0}, Lorg/libsdl/app/SDLSurface;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 52
    invoke-virtual {p0, p0}, Lorg/libsdl/app/SDLSurface;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string v0, "window"

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lorg/libsdl/app/SDLSurface;->mDisplay:Landroid/view/Display;

    const-string v0, "sensor"

    .line 55
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lorg/libsdl/app/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    .line 57
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getMotionListener()Lorg/libsdl/app/SDLGenericMotionListener_API12;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/libsdl/app/SDLSurface;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 60
    iput p1, p0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    .line 61
    iput p1, p0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lorg/libsdl/app/SDLSurface;->mIsSurfaceReady:Z

    return-void
.end method


# virtual methods
.method public enableSensor(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    .line 305
    iget-object p2, p0, Lorg/libsdl/app/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    .line 306
    invoke-virtual {p2, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 305
    invoke-virtual {p2, p0, p1, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    .line 309
    :cond_0
    iget-object p2, p0, Lorg/libsdl/app/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    .line 310
    invoke-virtual {p2, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    .line 309
    invoke-virtual {p2, p0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :goto_0
    return-void
.end method

.method public getNativeSurface()Landroid/view/Surface;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lorg/libsdl/app/SDLSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public handlePause()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p0, v0, v1}, Lorg/libsdl/app/SDLSurface;->enableSensor(IZ)V

    return-void
.end method

.method public handleResume()V
    .locals 1

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p0, v0}, Lorg/libsdl/app/SDLSurface;->setFocusable(Z)V

    .line 72
    invoke-virtual {p0, v0}, Lorg/libsdl/app/SDLSurface;->setFocusableInTouchMode(Z)V

    .line 73
    invoke-virtual {p0}, Lorg/libsdl/app/SDLSurface;->requestFocus()Z

    .line 74
    invoke-virtual {p0, p0}, Lorg/libsdl/app/SDLSurface;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 75
    invoke-virtual {p0, p0}, Lorg/libsdl/app/SDLSurface;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 76
    invoke-virtual {p0, v0, v0}, Lorg/libsdl/app/SDLSurface;->enableSensor(IZ)V

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onCapturedPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 368
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/16 v4, 0xc

    if-eq v0, v4, :cond_0

    return v3

    :cond_0
    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 395
    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 396
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 397
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p1

    .line 399
    invoke-static {p1, v0, v1, v3, v2}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    return v2

    :cond_2
    const/16 v1, 0xa

    .line 373
    invoke-virtual {p1, v1, v3}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    const/16 v4, 0x9

    .line 374
    invoke-virtual {p1, v4, v3}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result p1

    .line 375
    invoke-static {v3, v0, v1, p1, v3}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    return v2

    .line 380
    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 381
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 382
    invoke-static {v3, v0, v1, p1, v2}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    return v2
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 193
    invoke-static {p1, p2, p3, v0}, Lorg/libsdl/app/SDLActivity;->handleKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;Landroid/view/inputmethod/InputConnection;)Z

    move-result p1

    return p1
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 321
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 328
    iget-object v0, p0, Lorg/libsdl/app/SDLSurface;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v1, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    .line 346
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    .line 347
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v4, v1

    :goto_0
    move v5, v2

    move v2, v1

    move v1, v5

    goto :goto_1

    .line 335
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    .line 336
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    neg-float v1, v1

    move v2, v1

    move v1, v3

    goto :goto_1

    .line 340
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    neg-float v0, v0

    .line 341
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v2, v1

    neg-float v1, v1

    const/4 v2, 0x4

    goto :goto_0

    .line 330
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    neg-float v0, v0

    .line 331
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    .line 352
    :goto_1
    sget v4, Lorg/libsdl/app/SDLActivity;->mCurrentOrientation:I

    if-eq v1, v4, :cond_3

    .line 353
    sput v1, Lorg/libsdl/app/SDLActivity;->mCurrentOrientation:I

    .line 354
    invoke-static {v1}, Lorg/libsdl/app/SDLActivity;->onNativeOrientationChanged(I)V

    :cond_3
    neg-float v0, v0

    const v1, 0x411ce80a

    div-float/2addr v0, v1

    div-float/2addr v2, v1

    .line 357
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v3

    div-float/2addr p1, v1

    invoke-static {v0, v2, p1}, Lorg/libsdl/app/SDLActivity;->onNativeAccel(FFF)V

    :cond_4
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .line 200
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result p1

    .line 201
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 202
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    if-gez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 220
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    const/16 v2, 0x2002

    const/4 v3, 0x0

    const/4 v8, 0x1

    if-eq v1, v2, :cond_a

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    const/16 v2, 0x3002

    if-ne v1, v2, :cond_1

    goto/16 :goto_6

    :cond_1
    const/4 v1, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v7, :cond_7

    if-eq v7, v8, :cond_7

    const/4 v2, 0x2

    if-eq v7, v2, :cond_5

    const/4 v2, 0x3

    if-eq v7, v2, :cond_3

    const/4 v0, 0x5

    if-eq v7, v0, :cond_2

    const/4 v0, 0x6

    if-eq v7, v0, :cond_2

    goto/16 :goto_8

    :cond_2
    move v3, v1

    goto :goto_4

    :cond_3
    move v7, v3

    :goto_0
    if-ge v7, v0, :cond_c

    .line 280
    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 281
    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget v3, p0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    div-float v4, v1, v3

    .line 282
    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget v3, p0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    div-float v5, v1, v3

    .line 283
    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    cmpl-float v3, v1, v9

    if-lez v3, :cond_4

    move v6, v9

    goto :goto_1

    :cond_4
    move v6, v1

    :goto_1
    const/4 v3, 0x1

    move v1, p1

    .line 289
    invoke-static/range {v1 .. v6}, Lorg/libsdl/app/SDLActivity;->onNativeTouch(IIIFFF)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    move v10, v3

    :goto_2
    if-ge v10, v0, :cond_c

    .line 241
    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 242
    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget v3, p0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    div-float v4, v1, v3

    .line 243
    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget v3, p0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    div-float v5, v1, v3

    .line 244
    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    cmpl-float v3, v1, v9

    if-lez v3, :cond_6

    move v6, v9

    goto :goto_3

    :cond_6
    move v6, v1

    :goto_3
    move v1, p1

    move v3, v7

    .line 250
    invoke-static/range {v1 .. v6}, Lorg/libsdl/app/SDLActivity;->onNativeTouch(IIIFFF)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    if-ne v3, v1, :cond_8

    .line 263
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 266
    :cond_8
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 267
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget v1, p0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    div-float v4, v0, v1

    .line 268
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v1, p0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    div-float v5, v0, v1

    .line 269
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result p2

    cmpl-float v0, p2, v9

    if-lez v0, :cond_9

    move v6, v9

    goto :goto_5

    :cond_9
    move v6, p2

    :goto_5
    move v1, p1

    move v3, v7

    .line 275
    invoke-static/range {v1 .. v6}, Lorg/libsdl/app/SDLActivity;->onNativeTouch(IIIFFF)V

    goto :goto_8

    .line 223
    :cond_a
    :goto_6
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "getButtonState"

    new-array v1, v3, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 225
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    :cond_b
    move p1, v8

    .line 232
    :goto_7
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getMotionListener()Lorg/libsdl/app/SDLGenericMotionListener_API12;

    move-result-object v0

    .line 233
    invoke-virtual {v0, p2}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->getEventX(Landroid/view/MotionEvent;)F

    move-result v1

    .line 234
    invoke-virtual {v0, p2}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->getEventY(Landroid/view/MotionEvent;)F

    move-result p2

    .line 236
    invoke-virtual {v0}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->inRelativeMode()Z

    move-result v0

    invoke-static {p1, v7, v1, p2, v0}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    :cond_c
    :goto_8
    return v8
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4

    const-string p1, "SDL"

    const-string p2, "surfaceChanged()"

    .line 107
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object p1, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    if-nez p1, :cond_0

    return-void

    :cond_0
    int-to-float p1, p3

    .line 113
    iput p1, p0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    int-to-float p1, p4

    .line 114
    iput p1, p0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    .line 119
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x11

    if-lt p1, p2, :cond_1

    .line 120
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 121
    iget-object p2, p0, Lorg/libsdl/app/SDLSurface;->mDisplay:Landroid/view/Display;

    invoke-virtual {p2, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 122
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :try_start_1
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :cond_1
    move p2, p3

    :catch_1
    move p1, p4

    .line 128
    :goto_0
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    monitor-enter v0

    .line 130
    :try_start_2
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 131
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "SDL"

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SDL"

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lorg/libsdl/app/SDLSurface;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    invoke-static {p3, p4, p2, p1, v0}, Lorg/libsdl/app/SDLActivity;->nativeSetScreenResolution(IIIIF)V

    .line 136
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeResize()V

    .line 141
    sget-object p1, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {p1}, Lorg/libsdl/app/SDLActivity;->getRequestedOrientation()I

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eq p1, p2, :cond_4

    const/4 p4, 0x7

    if-ne p1, p4, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    const/4 p4, 0x6

    if-ne p1, p4, :cond_5

    .line 148
    :cond_3
    iget p1, p0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    iget p4, p0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    cmpg-float p1, p1, p4

    if-gez p1, :cond_5

    goto :goto_2

    .line 144
    :cond_4
    :goto_1
    iget p1, p0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    iget p4, p0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    cmpl-float p1, p1, p4

    if-lez p1, :cond_5

    :goto_2
    move p1, p2

    goto :goto_3

    :cond_5
    move p1, p3

    :goto_3
    if-eqz p1, :cond_6

    .line 155
    iget p4, p0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    iget v0, p0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    invoke-static {p4, v0}, Ljava/lang/Math;->min(FF)F

    move-result p4

    float-to-double v0, p4

    .line 156
    iget p4, p0, Lorg/libsdl/app/SDLSurface;->mWidth:F

    iget v2, p0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    invoke-static {p4, v2}, Ljava/lang/Math;->max(FF)F

    move-result p4

    float-to-double v2, p4

    div-double/2addr v2, v0

    const-wide v0, 0x3ff3333333333333L    # 1.2

    cmpg-double p4, v2, v0

    if-gez p4, :cond_6

    const-string p1, "SDL"

    const-string p4, "Don\'t skip on such aspect-ratio. Could be a square resolution."

    .line 159
    invoke-static {p1, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, p3

    :cond_6
    if-eqz p1, :cond_7

    .line 166
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p4, v0, :cond_7

    .line 167
    sget-object p4, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {p4}, Lorg/libsdl/app/SDLActivity;->isInMultiWindowMode()Z

    move-result p4

    if-eqz p4, :cond_7

    const-string p1, "SDL"

    const-string p4, "Don\'t skip in Multi-Window"

    .line 168
    invoke-static {p1, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, p3

    :cond_7
    if-eqz p1, :cond_8

    const-string p1, "SDL"

    const-string p2, "Skip .. Surface is not ready."

    .line 175
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iput-boolean p3, p0, Lorg/libsdl/app/SDLSurface;->mIsSurfaceReady:Z

    return-void

    .line 181
    :cond_8
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeSurfaceChanged()V

    .line 184
    iput-boolean p2, p0, Lorg/libsdl/app/SDLSurface;->mIsSurfaceReady:Z

    .line 186
    sget-object p1, Lorg/libsdl/app/SDLActivity$NativeState;->RESUMED:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object p1, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 187
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    return-void

    :catchall_0
    move-exception p1

    .line 131
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "SDL"

    const-string v0, "surfaceCreated()"

    .line 86
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeSurfaceCreated()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "SDL"

    const-string v0, "surfaceDestroyed()"

    .line 93
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object p1, Lorg/libsdl/app/SDLActivity$NativeState;->PAUSED:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object p1, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 97
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    const/4 p1, 0x0

    .line 99
    iput-boolean p1, p0, Lorg/libsdl/app/SDLSurface;->mIsSurfaceReady:Z

    .line 100
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeSurfaceDestroyed()V

    return-void
.end method
