.class Lorg/libsdl/app/SDLGenericMotionListener_API26;
.super Lorg/libsdl/app/SDLGenericMotionListener_API24;
.source "SDLControllerManager.java"


# instance fields
.field private mRelativeModeEnabled:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 681
    invoke-direct {p0}, Lorg/libsdl/app/SDLGenericMotionListener_API24;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventX(Landroid/view/MotionEvent;)F
    .locals 1

    const/4 v0, 0x0

    .line 780
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    return p1
.end method

.method public getEventY(Landroid/view/MotionEvent;)F
    .locals 1

    const/4 v0, 0x0

    .line 786
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    return p1
.end method

.method public inRelativeMode()Z
    .locals 1

    .line 751
    iget-boolean v0, p0, Lorg/libsdl/app/SDLGenericMotionListener_API26;->mRelativeModeEnabled:Z

    return v0
.end method

.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 690
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    const/16 v0, 0x2002

    const/16 v1, 0x9

    const/16 v2, 0xa

    const/16 v3, 0x8

    const/4 v4, 0x7

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq p1, v0, :cond_4

    const/16 v0, 0x3002

    if-eq p1, v0, :cond_4

    const v0, 0x20004

    if-eq p1, v0, :cond_1

    const v0, 0x1000010

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 692
    :cond_0
    invoke-static {p2}, Lorg/libsdl/app/SDLControllerManager;->handleJoystickMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 717
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    goto :goto_0

    .line 720
    :cond_2
    invoke-virtual {p2, v2, v6}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v0

    .line 721
    invoke-virtual {p2, v1, v6}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result p2

    .line 722
    invoke-static {v6, p1, v0, p2, v6}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    return v5

    .line 726
    :cond_3
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 727
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    .line 728
    invoke-static {v6, p1, v0, p2, v5}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    return v5

    .line 697
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eq p1, v4, :cond_6

    if-eq p1, v3, :cond_5

    :goto_0
    return v6

    .line 700
    :cond_5
    invoke-virtual {p2, v2, v6}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v0

    .line 701
    invoke-virtual {p2, v1, v6}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result p2

    .line 702
    invoke-static {v6, p1, v0, p2, v6}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    return v5

    .line 706
    :cond_6
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 707
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    .line 708
    invoke-static {v6, p1, v0, p2, v6}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    return v5
.end method

.method public reclaimRelativeMouseModeIfNeeded()V
    .locals 1

    .line 772
    iget-boolean v0, p0, Lorg/libsdl/app/SDLGenericMotionListener_API26;->mRelativeModeEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/libsdl/app/SDLActivity;->isDeXMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 773
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestPointerCapture()V

    :cond_0
    return-void
.end method

.method public setRelativeMouseEnabled(Z)Z
    .locals 2

    .line 756
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->isDeXMode()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 758
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestPointerCapture()V

    goto :goto_1

    .line 760
    :cond_2
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->releasePointerCapture()V

    .line 762
    :goto_1
    iput-boolean p1, p0, Lorg/libsdl/app/SDLGenericMotionListener_API26;->mRelativeModeEnabled:Z

    const/4 p1, 0x1

    return p1
.end method

.method public supportsRelativeMouse()Z
    .locals 2

    .line 746
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->isDeXMode()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
