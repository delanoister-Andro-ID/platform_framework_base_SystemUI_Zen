.class public Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;
.super Landroid/widget/CheckBox;
.source "AsusControllerCheckbox.java"


# instance fields
.field private mCirclePaint:Landroid/graphics/Paint;

.field private mCircleWidth:I

.field mColorGreenPos:[F

.field mColorYellowPos:[F

.field private mContext:Landroid/content/Context;

.field mMemText:Ljava/lang/String;

.field private mPaint:Landroid/graphics/Paint;

.field mRingColorG:[I

.field mRingColorY:[I

.field mState:I

.field mStrokeWidth:I

.field mSweepAngle:F

.field offset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput v7, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->offset:I

    .line 32
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mSweepAngle:F

    .line 33
    iput v7, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mState:I

    .line 34
    new-array v3, v8, [F

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mColorGreenPos:[F

    .line 35
    new-array v3, v8, [F

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mColorYellowPos:[F

    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mContext:Landroid/content/Context;

    .line 48
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 49
    .local v2, o:Landroid/graphics/BitmapFactory$Options;
    const/16 v3, 0xa0

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020018

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 52
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mCircleWidth:I

    .line 53
    const-string v3, "sans-serif"

    invoke-static {v3, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 54
    .local v1, font:Landroid/graphics/Typeface;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mPaint:Landroid/graphics/Paint;

    .line 55
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070069

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 59
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 60
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 61
    const-string v3, ""

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mMemText:Ljava/lang/String;

    .line 63
    new-array v3, v8, [I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    aput v4, v3, v7

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    aput v4, v3, v6

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    aput v4, v3, v10

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mRingColorG:[I

    .line 68
    new-array v3, v8, [I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    aput v4, v3, v7

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    aput v4, v3, v6

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    aput v4, v3, v10

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mRingColorY:[I

    .line 73
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07006a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mStrokeWidth:I

    .line 74
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mCirclePaint:Landroid/graphics/Paint;

    .line 75
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mCirclePaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mStrokeWidth:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 79
    return-void

    .line 34
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 35
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 83
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onDraw(Landroid/graphics/Canvas;)V

    .line 84
    const-string v6, " "

    .line 85
    .local v6, blankText:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mMemText:Ljava/lang/String;

    const-string v2, "GB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->offset:I

    .line 89
    :goto_0
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 90
    .local v7, bounds:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mMemText:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mMemText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v4, v3, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mMemText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    iget v3, v7, Landroid/graphics/Rect;->right:I

    iget v5, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->offset:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mCircleWidth:I

    div-int/lit8 v3, v3, 0x2

    iget v5, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mCircleWidth:I

    div-int/lit8 v5, v5, 0x4

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x2

    int-to-float v3, v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 94
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mCircleWidth:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mStrokeWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mStrokeWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    iget v10, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mCircleWidth:I

    sub-int/2addr v5, v10

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mStrokeWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    int-to-float v3, v3

    iget v5, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mCircleWidth:I

    iget v10, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mStrokeWidth:I

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v5, v10

    int-to-float v5, v5

    invoke-direct {v1, v0, v2, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 98
    .local v1, rectF:Landroid/graphics/RectF;
    new-instance v8, Landroid/graphics/SweepGradient;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mCircleWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mState:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mRingColorG:[I

    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mState:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mColorGreenPos:[F

    :goto_2
    invoke-direct {v8, v3, v5, v0, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 100
    .local v8, gradient:Landroid/graphics/SweepGradient;
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 101
    .local v9, matrix:Landroid/graphics/Matrix;
    const/high16 v0, -0x3d4c

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mCircleWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v9, v0, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 102
    invoke-virtual {v8, v9}, Landroid/graphics/SweepGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 104
    const/high16 v2, 0x4387

    iget v3, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mSweepAngle:F

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mCirclePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 105
    return-void

    .line 88
    .end local v1           #rectF:Landroid/graphics/RectF;
    .end local v7           #bounds:Landroid/graphics/Rect;
    .end local v8           #gradient:Landroid/graphics/SweepGradient;
    .end local v9           #matrix:Landroid/graphics/Matrix;
    :cond_0
    iput v4, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->offset:I

    goto/16 :goto_0

    .line 98
    .restart local v1       #rectF:Landroid/graphics/RectF;
    .restart local v7       #bounds:Landroid/graphics/Rect;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mRingColorY:[I

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mColorYellowPos:[F

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 109
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 110
    .local v0, width:I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mCircleWidth:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->setMeasuredDimension(II)V

    .line 111
    return-void
.end method

.method public setMemText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mMemText:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setProgress(D)V
    .locals 2
    .parameter "perc"

    .prologue
    .line 118
    double-to-float v0, p1

    const/high16 v1, 0x43b4

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mSweepAngle:F

    .line 119
    return-void
.end method

.method public setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 123
    iput p1, p0, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->mState:I

    .line 124
    return-void
.end method
