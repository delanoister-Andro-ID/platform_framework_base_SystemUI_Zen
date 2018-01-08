.class public Lcom/android/systemui/statusbar/policy/AsusClockTextView;
.super Landroid/view/View;
.source "AsusClockTextView.java"


# static fields
.field private static sClockTypeface:Landroid/graphics/Typeface;


# instance fields
.field private mColor:Landroid/content/res/ColorStateList;

.field private mProperties:Landroid/widget/TextView;

.field private mShortForm:Z

.field private mTempRect:Landroid/graphics/Rect;

.field private mText:Ljava/lang/String;

.field private mTextAlpha:I

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:F

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 44
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mText:Ljava/lang/String;

    .line 34
    const/16 v0, 0xe6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mTextAlpha:I

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mTextBounds:Landroid/graphics/Rect;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mTempRect:Landroid/graphics/Rect;

    .line 39
    iput v1, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mX:I

    .line 40
    iput v1, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mY:I

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, -0x1

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mText:Ljava/lang/String;

    .line 34
    const/16 v0, 0xe6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mTextAlpha:I

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mTextBounds:Landroid/graphics/Rect;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mTempRect:Landroid/graphics/Rect;

    .line 39
    iput v1, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mX:I

    .line 40
    iput v1, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mY:I

    .line 50
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mProperties:Landroid/widget/TextView;

    .line 52
    const/4 v0, 0x0

    const-string v1, "shortForm"

    const/4 v2, 0x0

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mShortForm:Z

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mProperties:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mTextSize:F

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mProperties:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mColor:Landroid/content/res/ColorStateList;

    .line 57
    sget-object v0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->sClockTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 58
    const-string v0, "/system/fonts/Roboto-Light.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->sClockTypeface:Landroid/graphics/Typeface;

    .line 61
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mTextPaint:Landroid/graphics/Paint;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->sClockTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 66
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 135
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->getDrawableState()[I

    move-result-object v2

    const/high16 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 136
    .local v0, color:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    return-void
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mY:I

    return v0
.end method

.method public getProperties()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mProperties:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mText:Ljava/lang/String;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 145
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v9, 0x4000

    const/4 v8, 0x0

    .line 85
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 87
    .local v0, fontMetrics:Landroid/graphics/Paint$FontMetrics;
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mText:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v8, v6, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 88
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mText:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v8, v6, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 89
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mTextBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 91
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 92
    .local v3, mode:I
    if-ne v3, v9, :cond_0

    .line 93
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 97
    .local v2, measuredWidth:I
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 98
    if-ne v3, v9, :cond_1

    .line 99
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 108
    .local v1, measuredHeight:I
    :goto_1
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->setMeasuredDimension(II)V

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->getPaddingLeft()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mX:I

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->getPaddingBottom()I

    move-result v4

    sub-int v4, v1, v4

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mY:I

    .line 112
    return-void

    .line 95
    .end local v1           #measuredHeight:I
    .end local v2           #measuredWidth:I
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mTextBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->getPaddingRight()I

    move-result v5

    add-int v2, v4, v5

    .restart local v2       #measuredWidth:I
    goto :goto_0

    .line 105
    :cond_1
    iget v4, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v4, v4

    iget v5, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->getPaddingBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v1, v4

    .restart local v1       #measuredHeight:I
    goto :goto_1
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "time"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mShortForm:Z

    if-eqz v0, :cond_1

    .line 116
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 117
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mText:Ljava/lang/String;

    .line 124
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->requestLayout()V

    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->invalidate()V

    .line 126
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mText:Ljava/lang/String;

    goto :goto_0

    .line 122
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mText:Ljava/lang/String;

    goto :goto_0
.end method

.method public setTextSize(F)V
    .locals 1
    .parameter "size"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusClockTextView;->refreshDrawableState()V

    .line 77
    return-void
.end method
