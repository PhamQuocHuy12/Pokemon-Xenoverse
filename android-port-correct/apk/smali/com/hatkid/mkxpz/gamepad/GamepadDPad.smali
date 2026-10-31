.class public Lcom/hatkid/mkxpz/gamepad/GamepadDPad;
.super Lcom/hatkid/mkxpz/gamepad/GamepadButton;
.source "GamepadDPad.java"


# instance fields
.field private angle:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

.field public isDiagonal:Ljava/lang/Boolean;

.field private mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

.field private mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;-><init>(Landroid/content/Context;)V

    .line 15
    sget-object p1, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UNKNOWN:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->angle:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    const/4 p1, 0x0

    .line 16
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->isDiagonal:Ljava/lang/Boolean;

    .line 18
    new-instance p1, Lcom/hatkid/mkxpz/gamepad/GamepadDPad$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad$$ExternalSyntheticLambda0;-><init>()V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    .line 19
    new-instance p1, Lcom/hatkid/mkxpz/gamepad/GamepadDPad$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad$$ExternalSyntheticLambda1;-><init>()V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    sget-object p1, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UNKNOWN:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->angle:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    const/4 p1, 0x0

    .line 16
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->isDiagonal:Ljava/lang/Boolean;

    .line 18
    new-instance p1, Lcom/hatkid/mkxpz/gamepad/GamepadDPad$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad$$ExternalSyntheticLambda0;-><init>()V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    .line 19
    new-instance p1, Lcom/hatkid/mkxpz/gamepad/GamepadDPad$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad$$ExternalSyntheticLambda1;-><init>()V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    sget-object p1, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UNKNOWN:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->angle:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    const/4 p1, 0x0

    .line 16
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->isDiagonal:Ljava/lang/Boolean;

    .line 18
    new-instance p1, Lcom/hatkid/mkxpz/gamepad/GamepadDPad$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad$$ExternalSyntheticLambda0;-><init>()V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    .line 19
    new-instance p1, Lcom/hatkid/mkxpz/gamepad/GamepadDPad$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad$$ExternalSyntheticLambda1;-><init>()V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 15
    sget-object p1, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UNKNOWN:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->angle:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    const/4 p1, 0x0

    .line 16
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->isDiagonal:Ljava/lang/Boolean;

    .line 18
    new-instance p1, Lcom/hatkid/mkxpz/gamepad/GamepadDPad$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad$$ExternalSyntheticLambda0;-><init>()V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    .line 19
    new-instance p1, Lcom/hatkid/mkxpz/gamepad/GamepadDPad$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad$$ExternalSyntheticLambda1;-><init>()V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    return-void
.end method

.method static synthetic lambda$new$0(I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$new$1(I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 55
    invoke-virtual {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 56
    invoke-virtual {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v3, 0x14

    const/16 v4, 0x15

    const/16 v5, 0x16

    const/16 v6, 0x13

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 160
    :pswitch_0
    sget-object p1, Lcom/hatkid/mkxpz/gamepad/GamepadDPad$1;->$SwitchMap$com$hatkid$mkxpz$utils$DirectionUtils$Direction:[I

    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->angle:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    invoke-virtual {v0}, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 195
    :pswitch_1
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    invoke-interface {p1, v4}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    goto :goto_0

    .line 191
    :pswitch_2
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    invoke-interface {p1, v5}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    goto :goto_0

    .line 186
    :pswitch_3
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    invoke-interface {p1, v3}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    .line 187
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    invoke-interface {p1, v4}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    goto :goto_0

    .line 181
    :pswitch_4
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    invoke-interface {p1, v3}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    .line 182
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    invoke-interface {p1, v5}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    goto :goto_0

    .line 177
    :pswitch_5
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    invoke-interface {p1, v3}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    goto :goto_0

    .line 172
    :pswitch_6
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    invoke-interface {p1, v6}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    .line 173
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    invoke-interface {p1, v4}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    goto :goto_0

    .line 167
    :pswitch_7
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    invoke-interface {p1, v6}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    .line 168
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    invoke-interface {p1, v5}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    goto :goto_0

    .line 163
    :pswitch_8
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    invoke-interface {p1, v6}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    .line 199
    :goto_0
    sget-object p1, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UNKNOWN:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->angle:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    goto/16 :goto_2

    .line 65
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 68
    iget-object v7, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->isDiagonal:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static {v0, v1, v2, p1, v7}, Lcom/hatkid/mkxpz/utils/DirectionUtils;->getAngle(FFFFZ)Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    move-result-object p1

    .line 70
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->angle:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 73
    :cond_0
    sget-object v0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad$1;->$SwitchMap$com$hatkid$mkxpz$utils$DirectionUtils$Direction:[I

    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->angle:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    invoke-virtual {v1}, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    goto :goto_1

    .line 108
    :pswitch_a
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    invoke-interface {v0, v4}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    goto :goto_1

    .line 104
    :pswitch_b
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    invoke-interface {v0, v5}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    goto :goto_1

    .line 99
    :pswitch_c
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    invoke-interface {v0, v3}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    .line 100
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    invoke-interface {v0, v4}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    goto :goto_1

    .line 94
    :pswitch_d
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    invoke-interface {v0, v3}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    .line 95
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    invoke-interface {v0, v5}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    goto :goto_1

    .line 90
    :pswitch_e
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    invoke-interface {v0, v3}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    goto :goto_1

    .line 85
    :pswitch_f
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    invoke-interface {v0, v6}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    .line 86
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    invoke-interface {v0, v4}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    goto :goto_1

    .line 80
    :pswitch_10
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    invoke-interface {v0, v6}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    .line 81
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    invoke-interface {v0, v5}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    goto :goto_1

    .line 76
    :pswitch_11
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    invoke-interface {v0, v6}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    .line 112
    :goto_1
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->angle:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 114
    sget-object p1, Lcom/hatkid/mkxpz/gamepad/GamepadDPad$1;->$SwitchMap$com$hatkid$mkxpz$utils$DirectionUtils$Direction:[I

    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->angle:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    invoke-virtual {v0}, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_3

    goto :goto_2

    .line 149
    :pswitch_12
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    invoke-interface {p1, v4}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;->onKeyDown(I)V

    goto :goto_2

    .line 145
    :pswitch_13
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    invoke-interface {p1, v5}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;->onKeyDown(I)V

    goto :goto_2

    .line 140
    :pswitch_14
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    invoke-interface {p1, v3}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;->onKeyDown(I)V

    .line 141
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    invoke-interface {p1, v4}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;->onKeyDown(I)V

    goto :goto_2

    .line 135
    :pswitch_15
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    invoke-interface {p1, v3}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;->onKeyDown(I)V

    .line 136
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    invoke-interface {p1, v5}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;->onKeyDown(I)V

    goto :goto_2

    .line 131
    :pswitch_16
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    invoke-interface {p1, v3}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;->onKeyDown(I)V

    goto :goto_2

    .line 126
    :pswitch_17
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    invoke-interface {p1, v6}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;->onKeyDown(I)V

    .line 127
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    invoke-interface {p1, v4}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;->onKeyDown(I)V

    goto :goto_2

    .line 121
    :pswitch_18
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    invoke-interface {p1, v6}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;->onKeyDown(I)V

    .line 122
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    invoke-interface {p1, v5}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;->onKeyDown(I)V

    goto :goto_2

    .line 117
    :pswitch_19
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    invoke-interface {p1, v6}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;->onKeyDown(I)V

    :goto_2
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public setOnKeyDownListener(Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    return-void
.end method

.method public setOnKeyUpListener(Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    return-void
.end method
