.class Lcom/android/systemui/LightSensorService$LoadView;
.super Landroid/view/View;
.source "LightSensorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/LightSensorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadView"
.end annotation


# instance fields
.field private mAddedPaint:Landroid/graphics/Paint;

.field private mAscent:F

.field private mFH:I

.field private mIrqPaint:Landroid/graphics/Paint;

.field private mLoadPaint:Landroid/graphics/Paint;

.field private mNeededHeight:I

.field private mNeededWidth:I

.field private mRemovedPaint:Landroid/graphics/Paint;

.field private mShadow2Paint:Landroid/graphics/Paint;

.field private mShadowPaint:Landroid/graphics/Paint;

.field private mSystemPaint:Landroid/graphics/Paint;

.field private mUserPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/android/systemui/LightSensorService;


# direct methods
.method constructor <init>(Lcom/android/systemui/LightSensorService;Landroid/content/Context;)V
    .locals 12
    .parameter
    .parameter "c"

    .prologue
    const/16 v11, 0x80

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0xff

    const/4 v7, 0x0

    .line 72
    iput-object p1, p0, Lcom/android/systemui/LightSensorService$LoadView;->this$0:Lcom/android/systemui/LightSensorService;

    .line 73
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 75
    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/systemui/LightSensorService$LoadView;->setPadding(IIII)V

    .line 82
    const/16 v2, 0xa

    .line 83
    .local v2, textSize:I
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 84
    .local v0, density:F
    const/high16 v3, 0x3f80

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    .line 85
    const/16 v2, 0x9

    .line 92
    :cond_0
    :goto_0
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    .line 93
    iget-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 94
    iget-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 95
    iget-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 97
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mAddedPaint:Landroid/graphics/Paint;

    .line 98
    iget-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mAddedPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 99
    iget-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mAddedPaint:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 100
    iget-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mAddedPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8, v11, v8, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 102
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mRemovedPaint:Landroid/graphics/Paint;

    .line 103
    iget-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mRemovedPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    iget-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mRemovedPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 105
    iget-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mRemovedPaint:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 106
    iget-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mRemovedPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8, v8, v11, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 108
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    .line 109
    iget-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 110
    iget-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 112
    iget-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    const/16 v4, 0xc0

    invoke-virtual {v3, v4, v7, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 113
    iget-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x4080

    const/high16 v5, -0x100

    invoke-virtual {v3, v4, v9, v9, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 115
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    .line 116
    iget-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 117
    iget-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 119
    iget-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    const/16 v4, 0xc0

    invoke-virtual {v3, v4, v7, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 120
    iget-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x4000

    const/high16 v5, -0x100

    invoke-virtual {v3, v4, v9, v9, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 122
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mIrqPaint:Landroid/graphics/Paint;

    .line 123
    iget-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mIrqPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v11, v7, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 124
    iget-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mIrqPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x4000

    const/high16 v5, -0x100

    invoke-virtual {v3, v4, v9, v9, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 125
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    .line 126
    iget-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8, v8, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 127
    iget-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x4000

    const/high16 v5, -0x100

    invoke-virtual {v3, v4, v9, v9, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 128
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mUserPaint:Landroid/graphics/Paint;

    .line 129
    iget-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mUserPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v11, v7, v8, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 130
    iget-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x4000

    const/high16 v5, -0x100

    invoke-virtual {v3, v4, v9, v9, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 131
    iget-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x4220

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 133
    iget-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mAscent:F

    .line 134
    iget-object v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v1

    .line 135
    .local v1, descent:F
    iget v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mAscent:F

    sub-float v3, v1, v3

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/LightSensorService$LoadView;->mFH:I

    .line 137
    invoke-virtual {p0}, Lcom/android/systemui/LightSensorService$LoadView;->updateDisplay()V

    .line 138
    return-void

    .line 87
    .end local v1           #descent:F
    :cond_1
    const/high16 v3, 0x4120

    mul-float/2addr v3, v0

    float-to-int v2, v3

    .line 88
    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 89
    const/16 v2, 0xa

    goto/16 :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 143
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 148
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/high16 v3, 0x41a0

    .line 158
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/LightSensorService$LoadView;->this$0:Lcom/android/systemui/LightSensorService;

    #getter for: Lcom/android/systemui/LightSensorService;->mLuxString:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/LightSensorService;->access$000(Lcom/android/systemui/LightSensorService;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x4220

    iget-object v2, p0, Lcom/android/systemui/LightSensorService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/LightSensorService$LoadView;->this$0:Lcom/android/systemui/LightSensorService;

    #getter for: Lcom/android/systemui/LightSensorService;->mGainString:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/LightSensorService;->access$100(Lcom/android/systemui/LightSensorService;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x42b4

    iget-object v2, p0, Lcom/android/systemui/LightSensorService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/LightSensorService$LoadView;->this$0:Lcom/android/systemui/LightSensorService;

    #getter for: Lcom/android/systemui/LightSensorService;->mBrightnessString:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/LightSensorService;->access$200(Lcom/android/systemui/LightSensorService;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x430c

    iget-object v2, p0, Lcom/android/systemui/LightSensorService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 162
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 152
    iget v0, p0, Lcom/android/systemui/LightSensorService$LoadView;->mNeededWidth:I

    invoke-static {v0, p1}, Lcom/android/systemui/LightSensorService$LoadView;->resolveSize(II)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/LightSensorService$LoadView;->mNeededHeight:I

    invoke-static {v1, p2}, Lcom/android/systemui/LightSensorService$LoadView;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/LightSensorService$LoadView;->setMeasuredDimension(II)V

    .line 154
    return-void
.end method

.method updateDisplay()V
    .locals 7

    .prologue
    .line 165
    iget-object v2, p0, Lcom/android/systemui/LightSensorService$LoadView;->this$0:Lcom/android/systemui/LightSensorService;

    #getter for: Lcom/android/systemui/LightSensorService;->mFormat:Ljava/text/DecimalFormat;
    invoke-static {v2}, Lcom/android/systemui/LightSensorService;->access$300(Lcom/android/systemui/LightSensorService;)Ljava/text/DecimalFormat;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/LightSensorService$LoadView;->this$0:Lcom/android/systemui/LightSensorService;

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#.##"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/android/systemui/LightSensorService;->mFormat:Ljava/text/DecimalFormat;
    invoke-static {v2, v3}, Lcom/android/systemui/LightSensorService;->access$302(Lcom/android/systemui/LightSensorService;Ljava/text/DecimalFormat;)Ljava/text/DecimalFormat;

    .line 166
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/LightSensorService$LoadView;->this$0:Lcom/android/systemui/LightSensorService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lux="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/LightSensorService$LoadView;->this$0:Lcom/android/systemui/LightSensorService;

    #getter for: Lcom/android/systemui/LightSensorService;->mFormat:Ljava/text/DecimalFormat;
    invoke-static {v4}, Lcom/android/systemui/LightSensorService;->access$300(Lcom/android/systemui/LightSensorService;)Ljava/text/DecimalFormat;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/LightSensorService$LoadView;->this$0:Lcom/android/systemui/LightSensorService;

    #getter for: Lcom/android/systemui/LightSensorService;->mAmbientLux:F
    invoke-static {v5}, Lcom/android/systemui/LightSensorService;->access$400(Lcom/android/systemui/LightSensorService;)F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/systemui/LightSensorService;->mLuxString:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/systemui/LightSensorService;->access$002(Lcom/android/systemui/LightSensorService;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    iget-object v2, p0, Lcom/android/systemui/LightSensorService$LoadView;->this$0:Lcom/android/systemui/LightSensorService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gain="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/LightSensorService$LoadView;->this$0:Lcom/android/systemui/LightSensorService;

    #getter for: Lcom/android/systemui/LightSensorService;->mFormat:Ljava/text/DecimalFormat;
    invoke-static {v4}, Lcom/android/systemui/LightSensorService;->access$300(Lcom/android/systemui/LightSensorService;)Ljava/text/DecimalFormat;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/LightSensorService$LoadView;->this$0:Lcom/android/systemui/LightSensorService;

    #getter for: Lcom/android/systemui/LightSensorService;->mAdjustment:F
    invoke-static {v5}, Lcom/android/systemui/LightSensorService;->access$500(Lcom/android/systemui/LightSensorService;)F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/systemui/LightSensorService;->mGainString:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/systemui/LightSensorService;->access$102(Lcom/android/systemui/LightSensorService;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    iget-object v2, p0, Lcom/android/systemui/LightSensorService$LoadView;->this$0:Lcom/android/systemui/LightSensorService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "brightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/LightSensorService$LoadView;->this$0:Lcom/android/systemui/LightSensorService;

    #getter for: Lcom/android/systemui/LightSensorService;->newScreenAutoBrightness:I
    invoke-static {v4}, Lcom/android/systemui/LightSensorService;->access$600(Lcom/android/systemui/LightSensorService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/systemui/LightSensorService;->mBrightnessString:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/systemui/LightSensorService;->access$202(Lcom/android/systemui/LightSensorService;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    const/16 v1, 0x3e8

    .line 171
    .local v1, neededWidth:I
    const/16 v0, 0x1f4

    .line 172
    .local v0, neededHeight:I
    iget v2, p0, Lcom/android/systemui/LightSensorService$LoadView;->mNeededWidth:I

    if-ne v1, v2, :cond_1

    iget v2, p0, Lcom/android/systemui/LightSensorService$LoadView;->mNeededHeight:I

    if-eq v0, v2, :cond_2

    .line 173
    :cond_1
    iput v1, p0, Lcom/android/systemui/LightSensorService$LoadView;->mNeededWidth:I

    .line 174
    iput v0, p0, Lcom/android/systemui/LightSensorService$LoadView;->mNeededHeight:I

    .line 175
    invoke-virtual {p0}, Lcom/android/systemui/LightSensorService$LoadView;->requestLayout()V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/LightSensorService$LoadView;->invalidate()V

    goto :goto_0
.end method
