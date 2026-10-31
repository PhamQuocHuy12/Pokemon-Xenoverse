.class public Lcom/hatkid/mkxpz/gamepad/Gamepad;
.super Ljava/lang/Object;
.source "Gamepad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyDownListener;,
        Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyUpListener;
    }
.end annotation


# instance fields
.field private gpadBtnA:Lcom/hatkid/mkxpz/gamepad/GamepadButton;

.field private gpadBtnALT:Lcom/hatkid/mkxpz/gamepad/GamepadButton;

.field private gpadBtnB:Lcom/hatkid/mkxpz/gamepad/GamepadButton;

.field private gpadBtnC:Lcom/hatkid/mkxpz/gamepad/GamepadButton;

.field private gpadBtnCTRL:Lcom/hatkid/mkxpz/gamepad/GamepadButton;

.field private gpadBtnL:Lcom/hatkid/mkxpz/gamepad/GamepadButton;

.field private gpadBtnR:Lcom/hatkid/mkxpz/gamepad/GamepadButton;

.field private gpadBtnSHIFT:Lcom/hatkid/mkxpz/gamepad/GamepadButton;

.field private gpadBtnX:Lcom/hatkid/mkxpz/gamepad/GamepadButton;

.field private gpadBtnY:Lcom/hatkid/mkxpz/gamepad/GamepadButton;

.field private gpadBtnZ:Lcom/hatkid/mkxpz/gamepad/GamepadButton;

.field private mGamepadConfig:Lcom/hatkid/mkxpz/gamepad/GamepadConfig;

.field private mGamepadLayout:Landroid/widget/RelativeLayout;

.field private mInvisible:Z

.field private mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyDownListener;

.field private mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyUpListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadConfig:Lcom/hatkid/mkxpz/gamepad/GamepadConfig;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mInvisible:Z

    .line 21
    new-instance v0, Lcom/hatkid/mkxpz/gamepad/Gamepad$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/hatkid/mkxpz/gamepad/Gamepad$$ExternalSyntheticLambda3;-><init>()V

    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyDownListener;

    .line 22
    new-instance v0, Lcom/hatkid/mkxpz/gamepad/Gamepad$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/hatkid/mkxpz/gamepad/Gamepad$$ExternalSyntheticLambda4;-><init>()V

    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyUpListener;

    return-void
.end method

.method private initGamepadButtons()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->gpadBtnA:Lcom/hatkid/mkxpz/gamepad/GamepadButton;

    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadConfig:Lcom/hatkid/mkxpz/gamepad/GamepadConfig;

    iget-object v1, v1, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->keycodeA:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->setGamepadButtonKey(Lcom/hatkid/mkxpz/gamepad/GamepadButton;Ljava/lang/Integer;)V

    .line 148
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->gpadBtnB:Lcom/hatkid/mkxpz/gamepad/GamepadButton;

    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadConfig:Lcom/hatkid/mkxpz/gamepad/GamepadConfig;

    iget-object v1, v1, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->keycodeB:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->setGamepadButtonKey(Lcom/hatkid/mkxpz/gamepad/GamepadButton;Ljava/lang/Integer;)V

    .line 149
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->gpadBtnC:Lcom/hatkid/mkxpz/gamepad/GamepadButton;

    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadConfig:Lcom/hatkid/mkxpz/gamepad/GamepadConfig;

    iget-object v1, v1, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->keycodeC:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->setGamepadButtonKey(Lcom/hatkid/mkxpz/gamepad/GamepadButton;Ljava/lang/Integer;)V

    .line 150
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->gpadBtnX:Lcom/hatkid/mkxpz/gamepad/GamepadButton;

    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadConfig:Lcom/hatkid/mkxpz/gamepad/GamepadConfig;

    iget-object v1, v1, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->keycodeX:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->setGamepadButtonKey(Lcom/hatkid/mkxpz/gamepad/GamepadButton;Ljava/lang/Integer;)V

    .line 151
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->gpadBtnY:Lcom/hatkid/mkxpz/gamepad/GamepadButton;

    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadConfig:Lcom/hatkid/mkxpz/gamepad/GamepadConfig;

    iget-object v1, v1, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->keycodeY:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->setGamepadButtonKey(Lcom/hatkid/mkxpz/gamepad/GamepadButton;Ljava/lang/Integer;)V

    .line 152
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->gpadBtnZ:Lcom/hatkid/mkxpz/gamepad/GamepadButton;

    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadConfig:Lcom/hatkid/mkxpz/gamepad/GamepadConfig;

    iget-object v1, v1, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->keycodeZ:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->setGamepadButtonKey(Lcom/hatkid/mkxpz/gamepad/GamepadButton;Ljava/lang/Integer;)V

    .line 153
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->gpadBtnL:Lcom/hatkid/mkxpz/gamepad/GamepadButton;

    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadConfig:Lcom/hatkid/mkxpz/gamepad/GamepadConfig;

    iget-object v1, v1, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->keycodeL:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->setGamepadButtonKey(Lcom/hatkid/mkxpz/gamepad/GamepadButton;Ljava/lang/Integer;)V

    .line 154
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->gpadBtnR:Lcom/hatkid/mkxpz/gamepad/GamepadButton;

    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadConfig:Lcom/hatkid/mkxpz/gamepad/GamepadConfig;

    iget-object v1, v1, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->keycodeR:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->setGamepadButtonKey(Lcom/hatkid/mkxpz/gamepad/GamepadButton;Ljava/lang/Integer;)V

    .line 155
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->gpadBtnCTRL:Lcom/hatkid/mkxpz/gamepad/GamepadButton;

    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadConfig:Lcom/hatkid/mkxpz/gamepad/GamepadConfig;

    iget-object v1, v1, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->keycodeCTRL:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->setGamepadButtonKey(Lcom/hatkid/mkxpz/gamepad/GamepadButton;Ljava/lang/Integer;)V

    .line 156
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->gpadBtnALT:Lcom/hatkid/mkxpz/gamepad/GamepadButton;

    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadConfig:Lcom/hatkid/mkxpz/gamepad/GamepadConfig;

    iget-object v1, v1, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->keycodeALT:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->setGamepadButtonKey(Lcom/hatkid/mkxpz/gamepad/GamepadButton;Ljava/lang/Integer;)V

    .line 157
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->gpadBtnSHIFT:Lcom/hatkid/mkxpz/gamepad/GamepadButton;

    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadConfig:Lcom/hatkid/mkxpz/gamepad/GamepadConfig;

    iget-object v1, v1, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->keycodeSHIFT:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->setGamepadButtonKey(Lcom/hatkid/mkxpz/gamepad/GamepadButton;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic lambda$attachTo$2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$new$0(I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$new$1(I)V
    .locals 0

    return-void
.end method

.method private setGamepadButtonKey(Lcom/hatkid/mkxpz/gamepad/GamepadButton;Ljava/lang/Integer;)V
    .locals 3

    .line 110
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KEYCODE_"

    const-string v2, ""

    .line 111
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_LEFT"

    .line 112
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_RIGHT"

    .line 113
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {p1, v0}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->setForegroundText(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->setKey(I)V

    .line 118
    new-instance p2, Lcom/hatkid/mkxpz/gamepad/Gamepad$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/hatkid/mkxpz/gamepad/Gamepad$$ExternalSyntheticLambda5;-><init>(Lcom/hatkid/mkxpz/gamepad/Gamepad;)V

    invoke-virtual {p1, p2}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->setOnKeyDownListener(Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;)V

    .line 119
    new-instance p2, Lcom/hatkid/mkxpz/gamepad/Gamepad$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/hatkid/mkxpz/gamepad/Gamepad$$ExternalSyntheticLambda6;-><init>(Lcom/hatkid/mkxpz/gamepad/Gamepad;)V

    invoke-virtual {p1, p2}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->setOnKeyUpListener(Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;)V

    return-void
.end method


# virtual methods
.method public attachTo(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "layout_inflater"

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f050001

    .line 70
    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const p2, 0x7f040015

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/RelativeLayout;

    .line 73
    iget-boolean v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mInvisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    :cond_0
    const p2, 0x7f040014

    .line 78
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;

    const/high16 v0, 0x7f040000

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;

    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->gpadBtnA:Lcom/hatkid/mkxpz/gamepad/GamepadButton;

    const v0, 0x7f040002

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;

    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->gpadBtnB:Lcom/hatkid/mkxpz/gamepad/GamepadButton;

    const v0, 0x7f040003

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;

    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->gpadBtnC:Lcom/hatkid/mkxpz/gamepad/GamepadButton;

    const v0, 0x7f040008

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;

    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->gpadBtnX:Lcom/hatkid/mkxpz/gamepad/GamepadButton;

    const v0, 0x7f040009

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;

    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->gpadBtnY:Lcom/hatkid/mkxpz/gamepad/GamepadButton;

    const v0, 0x7f04000a

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;

    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->gpadBtnZ:Lcom/hatkid/mkxpz/gamepad/GamepadButton;

    const v0, 0x7f040005

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;

    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->gpadBtnL:Lcom/hatkid/mkxpz/gamepad/GamepadButton;

    const v0, 0x7f040006

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;

    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->gpadBtnR:Lcom/hatkid/mkxpz/gamepad/GamepadButton;

    const v0, 0x7f040004

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;

    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->gpadBtnCTRL:Lcom/hatkid/mkxpz/gamepad/GamepadButton;

    const v0, 0x7f040001

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;

    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->gpadBtnALT:Lcom/hatkid/mkxpz/gamepad/GamepadButton;

    const v0, 0x7f040007

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/hatkid/mkxpz/gamepad/GamepadButton;

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->gpadBtnSHIFT:Lcom/hatkid/mkxpz/gamepad/GamepadButton;

    .line 92
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/hatkid/mkxpz/gamepad/Gamepad$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/hatkid/mkxpz/gamepad/Gamepad$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 93
    new-instance p1, Lcom/hatkid/mkxpz/gamepad/Gamepad$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/hatkid/mkxpz/gamepad/Gamepad$$ExternalSyntheticLambda1;-><init>(Lcom/hatkid/mkxpz/gamepad/Gamepad;)V

    invoke-virtual {p2, p1}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->setOnKeyDownListener(Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;)V

    .line 94
    new-instance p1, Lcom/hatkid/mkxpz/gamepad/Gamepad$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/hatkid/mkxpz/gamepad/Gamepad$$ExternalSyntheticLambda2;-><init>(Lcom/hatkid/mkxpz/gamepad/Gamepad;)V

    invoke-virtual {p2, p1}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->setOnKeyUpListener(Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;)V

    .line 97
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadConfig:Lcom/hatkid/mkxpz/gamepad/GamepadConfig;

    iget-object p1, p1, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->diagonalMovement:Ljava/lang/Boolean;

    iput-object p1, p2, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->isDiagonal:Ljava/lang/Boolean;

    .line 100
    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->initGamepadButtons()V

    .line 103
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadConfig:Lcom/hatkid/mkxpz/gamepad/GamepadConfig;

    iget-object p2, p2, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->scale:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/hatkid/mkxpz/utils/ViewUtils;->resize(Landroid/view/View;F)V

    .line 104
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadConfig:Lcom/hatkid/mkxpz/gamepad/GamepadConfig;

    iget-object p2, p2, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->opacity:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/hatkid/mkxpz/utils/ViewUtils;->changeOpacity(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method public hideView()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1f4

    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    .line 140
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 141
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public init(Lcom/hatkid/mkxpz/gamepad/GamepadConfig;Z)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadConfig:Lcom/hatkid/mkxpz/gamepad/GamepadConfig;

    .line 62
    iput-boolean p2, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mInvisible:Z

    return-void
.end method

.method synthetic lambda$attachTo$3$com-hatkid-mkxpz-gamepad-Gamepad(I)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyDownListener;

    invoke-interface {v0, p1}, Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyDownListener;->onKeyDown(I)V

    return-void
.end method

.method synthetic lambda$attachTo$4$com-hatkid-mkxpz-gamepad-Gamepad(I)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyUpListener;

    invoke-interface {v0, p1}, Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyUpListener;->onKeyUp(I)V

    return-void
.end method

.method synthetic lambda$setGamepadButtonKey$5$com-hatkid-mkxpz-gamepad-Gamepad(I)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyDownListener;

    invoke-interface {v0, p1}, Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyDownListener;->onKeyDown(I)V

    return-void
.end method

.method synthetic lambda$setGamepadButtonKey$6$com-hatkid-mkxpz-gamepad-Gamepad(I)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyUpListener;

    invoke-interface {v0, p1}, Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyUpListener;->onKeyUp(I)V

    return-void
.end method

.method public processDPadEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 199
    :cond_0
    invoke-virtual {v0}, Landroid/view/InputDevice;->getSources()I

    move-result v0

    const/16 v2, 0x201

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const/16 v0, 0xf

    .line 204
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/16 v2, 0x10

    .line 205
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    .line 209
    invoke-static {v2, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_2

    const/16 v0, 0x13

    .line 210
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/high16 v5, 0x3f800000    # 1.0f

    .line 211
    invoke-static {v2, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    const/16 v0, 0x14

    .line 212
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 213
    :cond_3
    invoke-static {v0, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_4

    const/16 v0, 0x15

    .line 214
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 215
    :cond_4
    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x16

    .line 216
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_5
    :goto_0
    if-nez v3, :cond_6

    return v1

    .line 221
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_8

    if-eq p1, v0, :cond_7

    const/4 v1, 0x3

    if-eq p1, v1, :cond_7

    goto :goto_1

    .line 229
    :cond_7
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyUpListener;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyUpListener;->onKeyUp(I)V

    goto :goto_1

    .line 224
    :cond_8
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyDownListener;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyDownListener;->onKeyDown(I)V

    :goto_1
    return v0
.end method

.method public processGamepadEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 162
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 167
    :cond_0
    invoke-virtual {v0}, Landroid/view/InputDevice;->getSources()I

    move-result v0

    and-int/lit16 v2, v0, 0x401

    const/16 v3, 0x401

    if-eq v2, v3, :cond_1

    const/16 v2, 0x201

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_1

    return v1

    .line 175
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 177
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    goto :goto_0

    .line 185
    :cond_2
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyUpListener;

    invoke-interface {p1, v0}, Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyUpListener;->onKeyUp(I)V

    goto :goto_0

    .line 180
    :cond_3
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyDownListener;

    invoke-interface {p1, v0}, Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyDownListener;->onKeyDown(I)V

    :goto_0
    return v1
.end method

.method public setOnKeyDownListener(Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyDownListener;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyDownListener;

    return-void
.end method

.method public setOnKeyUpListener(Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyUpListener;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyUpListener;

    return-void
.end method

.method public showView()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 128
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xfa

    .line 129
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    .line 130
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 131
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad;->mGamepadLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method
