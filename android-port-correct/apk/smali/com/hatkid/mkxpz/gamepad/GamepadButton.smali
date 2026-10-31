.class public Lcom/hatkid/mkxpz/gamepad/GamepadButton;
.super Landroid/widget/ImageView;
.source "GamepadButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;,
        Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;
    }
.end annotation


# instance fields
.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mForegroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mKey:I

.field private mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

.field private mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

.field private final mPaint:Landroid/graphics/Paint;

.field private mText:Ljava/lang/String;

.field private final mTextColor:I

.field private mTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x24

    .line 23
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mTextSize:I

    const/16 p1, 0xff

    .line 24
    invoke-static {p1, p1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mTextColor:I

    .line 25
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mKey:I

    .line 29
    new-instance p1, Lcom/hatkid/mkxpz/gamepad/GamepadButton$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$$ExternalSyntheticLambda0;-><init>()V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    .line 30
    new-instance p1, Lcom/hatkid/mkxpz/gamepad/GamepadButton$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$$ExternalSyntheticLambda1;-><init>()V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x24

    .line 23
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mTextSize:I

    const/16 p1, 0xff

    .line 24
    invoke-static {p1, p1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mTextColor:I

    .line 25
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mKey:I

    .line 29
    new-instance p1, Lcom/hatkid/mkxpz/gamepad/GamepadButton$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$$ExternalSyntheticLambda0;-><init>()V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    .line 30
    new-instance p1, Lcom/hatkid/mkxpz/gamepad/GamepadButton$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$$ExternalSyntheticLambda1;-><init>()V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    const/4 p1, 0x0

    .line 50
    invoke-virtual {p0, p2, p1}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->initGamepadButton(Landroid/util/AttributeSet;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x24

    .line 23
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mTextSize:I

    const/16 p1, 0xff

    .line 24
    invoke-static {p1, p1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mTextColor:I

    .line 25
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mKey:I

    .line 29
    new-instance p1, Lcom/hatkid/mkxpz/gamepad/GamepadButton$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$$ExternalSyntheticLambda0;-><init>()V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    .line 30
    new-instance p1, Lcom/hatkid/mkxpz/gamepad/GamepadButton$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$$ExternalSyntheticLambda1;-><init>()V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    .line 56
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->initGamepadButton(Landroid/util/AttributeSet;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p1, 0x24

    .line 23
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mTextSize:I

    const/16 p1, 0xff

    .line 24
    invoke-static {p1, p1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mTextColor:I

    .line 25
    new-instance p1, Landroid/graphics/Paint;

    const/4 p4, 0x1

    invoke-direct {p1, p4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mKey:I

    .line 29
    new-instance p1, Lcom/hatkid/mkxpz/gamepad/GamepadButton$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$$ExternalSyntheticLambda0;-><init>()V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    .line 30
    new-instance p1, Lcom/hatkid/mkxpz/gamepad/GamepadButton$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$$ExternalSyntheticLambda1;-><init>()V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    .line 62
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->initGamepadButton(Landroid/util/AttributeSet;Ljava/lang/Integer;)V

    return-void
.end method

.method private getTextSize()I
    .locals 12

    .line 161
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 163
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 164
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v1

    :goto_0
    int-to-double v6, v1

    .line 166
    invoke-virtual {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->getHeight()I

    move-result v1

    int-to-double v8, v1

    const-wide v10, 0x3feb333333333333L    # 0.85

    mul-double/2addr v8, v10

    cmpl-double v1, v6, v8

    if-gtz v1, :cond_1

    int-to-double v0, v0

    invoke-virtual {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->getWidth()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v10

    cmpl-double v0, v0, v6

    if-lez v0, :cond_0

    goto :goto_1

    .line 174
    :cond_0
    iget v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mTextSize:I

    return v0

    .line 168
    :cond_1
    :goto_1
    iget v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mTextSize:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mTextSize:I

    .line 169
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mPaint:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 170
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v1, v3, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    float-to-double v0, v0

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 171
    iget-object v1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v1

    goto :goto_0
.end method

.method private initPaint()V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mPaint:Landroid/graphics/Paint;

    const-string v1, "sans-serif"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 155
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 156
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->getTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

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
.method public initBitmap()V
    .locals 10

    .line 120
    invoke-virtual {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->getHeight()I

    move-result v0

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 124
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 126
    iget-object v2, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 127
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 128
    iget-object v2, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 131
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 132
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-double v6, v3

    mul-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    .line 133
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    .line 134
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    .line 136
    iget-object v6, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mForegroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2

    add-int/2addr v2, v4

    add-int/2addr v3, v5

    .line 137
    invoke-virtual {v6, v4, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 138
    iget-object v2, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mForegroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 141
    :cond_2
    iget-object v2, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mText:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 142
    invoke-direct {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->initPaint()V

    .line 143
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 144
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 145
    iget-object v4, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mText:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    int-to-float v7, v2

    int-to-float v2, v3

    iget-object v3, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v3, v8

    sub-float v8, v2, v3

    iget-object v9, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mPaint:Landroid/graphics/Paint;

    move-object v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move-object v7, v9

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 148
    :cond_3
    invoke-virtual {p0, v0}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public initGamepadButton(Landroid/util/AttributeSet;Ljava/lang/Integer;)V
    .locals 3

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/hatkid/mkxpz/R$styleable;->GamepadButton:[I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const v2, 0x7f080001

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v0, Lcom/hatkid/mkxpz/R$styleable;->GamepadButton:[I

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    .line 75
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x1

    .line 76
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mForegroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x2

    .line 77
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mText:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 196
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 197
    invoke-virtual {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->initBitmap()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 203
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 204
    invoke-virtual {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->initBitmap()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 222
    invoke-virtual {p0, p1}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->setAlpha(F)V

    .line 223
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    iget v1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mKey:I

    invoke-interface {p1, v1}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;->onKeyUp(I)V

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f000000    # 0.5f

    .line 215
    invoke-virtual {p0, p1}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->setAlpha(F)V

    .line 216
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    iget v1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mKey:I

    invoke-interface {p1, v1}, Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;->onKeyDown(I)V

    :goto_0
    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 87
    invoke-virtual {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->initBitmap()V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 93
    invoke-virtual {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 94
    invoke-virtual {p0, p1}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mForegroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 101
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mText:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->initBitmap()V

    return-void
.end method

.method public setForegroundResource(I)V
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 108
    invoke-virtual {p0, p1}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setForegroundText(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mForegroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 114
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mText:Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->initBitmap()V

    return-void
.end method

.method public setKey(I)V
    .locals 0

    .line 189
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mKey:I

    .line 190
    invoke-virtual {p0}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->initBitmap()V

    return-void
.end method

.method public setOnKeyDownListener(Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mOnKeyDownListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;

    return-void
.end method

.method public setOnKeyUpListener(Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->mOnKeyUpListener:Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;

    return-void
.end method
