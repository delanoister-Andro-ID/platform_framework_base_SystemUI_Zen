.class public Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;
.super Landroid/view/ViewGroup;
.source "BaseFoldingLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$NumberOfFoldingLayoutChildrenException;,
        Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;
    }
.end annotation


# instance fields
.field private final DEPTH_CONSTANT:I

.field private final FOLDING_VIEW_EXCEPTION_MESSAGE:Ljava/lang/String;

.field private final NUM_OF_POLY_POINTS:I

.field private final SHADING_ALPHA:F

.field private final SHADING_FACTOR:F

.field protected mAnchorFactor:F

.field private mDst:[F

.field private mDstRect:Landroid/graphics/Rect;

.field private mFoldDrawHeight:F

.field private mFoldDrawWidth:F

.field private mFoldFactor:F

.field private mFoldListener:Lcom/serajr/systemui/navigationdrawer/OnFoldListener;

.field private mFoldMaxHeight:F

.field private mFoldMaxWidth:F

.field private mFoldRectArray:[Landroid/graphics/Rect;

.field private mFullBitmap:Landroid/graphics/Bitmap;

.field private mGradientShadow:Landroid/graphics/Paint;

.field private mIsFoldPrepared:Z

.field private mIsHorizontal:Z

.field private mMatrix:[Landroid/graphics/Matrix;

.field private mNumberOfFolds:I

.field protected mOrientation:Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;

.field private mOriginalHeight:I

.field private mOriginalWidth:I

.field private mPreviousFoldFactor:F

.field private mShadowGradientMatrix:Landroid/graphics/Matrix;

.field private mShadowLinearGradient:Landroid/graphics/LinearGradient;

.field private mShouldDraw:Z

.field private mSolidShadow:Landroid/graphics/Paint;

.field private mSrc:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 124
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 76
    const-string v0, "Folding Layout can only 1 child at most"

    iput-object v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->FOLDING_VIEW_EXCEPTION_MESSAGE:Ljava/lang/String;

    .line 79
    const v0, 0x3f4ccccd

    iput v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->SHADING_ALPHA:F

    .line 80
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->SHADING_FACTOR:F

    .line 81
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->DEPTH_CONSTANT:I

    .line 82
    const/16 v0, 0x8

    iput v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->NUM_OF_POLY_POINTS:I

    .line 88
    sget-object v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;->HORIZONTAL:Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;

    iput-object v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mOrientation:Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;

    .line 90
    iput v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mAnchorFactor:F

    .line 91
    iput v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldFactor:F

    .line 93
    const/4 v0, 0x2

    iput v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mNumberOfFolds:I

    .line 95
    iput-boolean v3, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mIsHorizontal:Z

    .line 97
    iput v2, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mOriginalWidth:I

    .line 98
    iput v2, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mOriginalHeight:I

    .line 100
    iput v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldMaxWidth:F

    .line 101
    iput v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldMaxHeight:F

    .line 102
    iput v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawWidth:F

    .line 103
    iput v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawHeight:F

    .line 105
    iput-boolean v2, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mIsFoldPrepared:Z

    .line 106
    iput-boolean v3, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mShouldDraw:Z

    .line 118
    iput v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mPreviousFoldFactor:F

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    const-string v0, "Folding Layout can only 1 child at most"

    iput-object v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->FOLDING_VIEW_EXCEPTION_MESSAGE:Ljava/lang/String;

    .line 79
    const v0, 0x3f4ccccd

    iput v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->SHADING_ALPHA:F

    .line 80
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->SHADING_FACTOR:F

    .line 81
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->DEPTH_CONSTANT:I

    .line 82
    const/16 v0, 0x8

    iput v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->NUM_OF_POLY_POINTS:I

    .line 88
    sget-object v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;->HORIZONTAL:Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;

    iput-object v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mOrientation:Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;

    .line 90
    iput v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mAnchorFactor:F

    .line 91
    iput v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldFactor:F

    .line 93
    const/4 v0, 0x2

    iput v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mNumberOfFolds:I

    .line 95
    iput-boolean v3, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mIsHorizontal:Z

    .line 97
    iput v2, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mOriginalWidth:I

    .line 98
    iput v2, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mOriginalHeight:I

    .line 100
    iput v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldMaxWidth:F

    .line 101
    iput v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldMaxHeight:F

    .line 102
    iput v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawWidth:F

    .line 103
    iput v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawHeight:F

    .line 105
    iput-boolean v2, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mIsFoldPrepared:Z

    .line 106
    iput-boolean v3, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mShouldDraw:Z

    .line 118
    iput v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mPreviousFoldFactor:F

    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    const-string v0, "Folding Layout can only 1 child at most"

    iput-object v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->FOLDING_VIEW_EXCEPTION_MESSAGE:Ljava/lang/String;

    .line 79
    const v0, 0x3f4ccccd

    iput v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->SHADING_ALPHA:F

    .line 80
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->SHADING_FACTOR:F

    .line 81
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->DEPTH_CONSTANT:I

    .line 82
    const/16 v0, 0x8

    iput v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->NUM_OF_POLY_POINTS:I

    .line 88
    sget-object v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;->HORIZONTAL:Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;

    iput-object v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mOrientation:Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;

    .line 90
    iput v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mAnchorFactor:F

    .line 91
    iput v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldFactor:F

    .line 93
    const/4 v0, 0x2

    iput v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mNumberOfFolds:I

    .line 95
    iput-boolean v3, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mIsHorizontal:Z

    .line 97
    iput v2, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mOriginalWidth:I

    .line 98
    iput v2, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mOriginalHeight:I

    .line 100
    iput v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldMaxWidth:F

    .line 101
    iput v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldMaxHeight:F

    .line 102
    iput v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawWidth:F

    .line 103
    iput v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawHeight:F

    .line 105
    iput-boolean v2, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mIsFoldPrepared:Z

    .line 106
    iput-boolean v3, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mShouldDraw:Z

    .line 118
    iput v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mPreviousFoldFactor:F

    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 135
    return-void
.end method

.method private calculateMatrices()V
    .locals 25

    .prologue
    .line 371
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mShouldDraw:Z

    .line 373
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mIsFoldPrepared:Z

    if-nez v1, :cond_0

    .line 566
    :goto_0
    return-void

    .line 381
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldFactor:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 382
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mShouldDraw:Z

    goto :goto_0

    .line 386
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldFactor:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mPreviousFoldFactor:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldListener:Lcom/serajr/systemui/navigationdrawer/OnFoldListener;

    if-eqz v1, :cond_2

    .line 389
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldListener:Lcom/serajr/systemui/navigationdrawer/OnFoldListener;

    invoke-interface {v1}, Lcom/serajr/systemui/navigationdrawer/OnFoldListener;->onEndFold()V

    .line 392
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mPreviousFoldFactor:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldFactor:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 393
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldListener:Lcom/serajr/systemui/navigationdrawer/OnFoldListener;

    if-eqz v1, :cond_3

    .line 395
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldListener:Lcom/serajr/systemui/navigationdrawer/OnFoldListener;

    invoke-interface {v1}, Lcom/serajr/systemui/navigationdrawer/OnFoldListener;->onStartFold()V

    .line 398
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldFactor:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mPreviousFoldFactor:F

    .line 404
    const/16 v23, 0x0

    .local v23, x:I
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mNumberOfFolds:I

    move/from16 v0, v23

    if-lt v0, v1, :cond_4

    .line 408
    const/high16 v1, 0x3f80

    move-object/from16 v0, p0

    iget v2, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldFactor:F

    sub-float v10, v1, v2

    .line 410
    .local v10, cTranslationFactor:F
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mIsHorizontal:Z

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mOriginalWidth:I

    int-to-float v1, v1

    .line 411
    mul-float v20, v1, v10

    .line 414
    .local v20, translatedDistance:F
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mNumberOfFolds:I

    int-to-float v1, v1

    .line 413
    div-float v1, v20, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v0, v1

    move/from16 v22, v0

    .line 421
    .local v22, translatedDistancePerFold:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldMaxWidth:F

    cmpg-float v1, v1, v22

    if-gez v1, :cond_6

    move/from16 v1, v22

    :goto_3
    move-object/from16 v0, p0

    iput v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawWidth:F

    .line 423
    move-object/from16 v0, p0

    iget v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldMaxHeight:F

    cmpg-float v1, v1, v22

    if-gez v1, :cond_7

    move/from16 v1, v22

    :goto_4
    move-object/from16 v0, p0

    iput v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawHeight:F

    .line 426
    mul-float v21, v22, v22

    .line 433
    .local v21, translatedDistanceFoldSquared:F
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mIsHorizontal:Z

    if-eqz v1, :cond_8

    .line 434
    move-object/from16 v0, p0

    iget v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawWidth:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawWidth:F

    mul-float/2addr v1, v2

    sub-float v1, v1, v21

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v11, v1

    .line 443
    .local v11, depth:F
    :goto_5
    const v1, 0x44bb8000

    const v2, 0x44bb8000

    add-float/2addr v2, v11

    div-float v16, v1, v2

    .line 447
    .local v16, scaleFactor:F
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mIsHorizontal:Z

    if-eqz v1, :cond_9

    .line 448
    move-object/from16 v0, p0

    iget v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawWidth:F

    mul-float v18, v1, v10

    .line 449
    .local v18, scaledWidth:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawHeight:F

    mul-float v17, v1, v16

    .line 455
    .local v17, scaledHeight:F
    :goto_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawHeight:F

    sub-float v1, v1, v17

    const/high16 v2, 0x4000

    div-float v19, v1, v2

    .line 456
    .local v19, topScaledPoint:F
    add-float v9, v19, v17

    .line 458
    .local v9, bottomScaledPoint:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawWidth:F

    sub-float v1, v1, v18

    const/high16 v2, 0x4000

    div-float v13, v1, v2

    .line 459
    .local v13, leftScaledPoint:F
    add-float v15, v13, v18

    .line 461
    .local v15, rightScaledPoint:F
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mIsHorizontal:Z

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mAnchorFactor:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mOriginalWidth:I

    int-to-float v2, v2

    mul-float v8, v1, v2

    .line 465
    .local v8, anchorPoint:F
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mIsHorizontal:Z

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawWidth:F

    div-float v14, v8, v1

    .line 468
    .local v14, midFold:F
    :goto_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mSrc:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 469
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mSrc:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 470
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mSrc:[F

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 471
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mSrc:[F

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawHeight:F

    aput v3, v1, v2

    .line 472
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mSrc:[F

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawWidth:F

    aput v3, v1, v2

    .line 473
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mSrc:[F

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 474
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mSrc:[F

    const/4 v2, 0x6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawWidth:F

    aput v3, v1, v2

    .line 475
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mSrc:[F

    const/4 v2, 0x7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawHeight:F

    aput v3, v1, v2

    .line 481
    const/16 v23, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mNumberOfFolds:I

    move/from16 v0, v23

    if-lt v0, v1, :cond_c

    .line 553
    move-object/from16 v0, p0

    iget v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldFactor:F

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    const v2, 0x3f4ccccd

    mul-float/2addr v1, v2

    float-to-int v7, v1

    .line 555
    .local v7, alpha:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mSolidShadow:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v7, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 557
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mIsHorizontal:Z

    if-eqz v1, :cond_20

    .line 558
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mShadowGradientMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawWidth:F

    const/high16 v3, 0x3f80

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 559
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mShadowLinearGradient:Landroid/graphics/LinearGradient;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mShadowGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 565
    :goto_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mGradientShadow:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    .line 405
    .end local v7           #alpha:I
    .end local v8           #anchorPoint:F
    .end local v9           #bottomScaledPoint:F
    .end local v10           #cTranslationFactor:F
    .end local v11           #depth:F
    .end local v13           #leftScaledPoint:F
    .end local v14           #midFold:F
    .end local v15           #rightScaledPoint:F
    .end local v16           #scaleFactor:F
    .end local v17           #scaledHeight:F
    .end local v18           #scaledWidth:F
    .end local v19           #topScaledPoint:F
    .end local v20           #translatedDistance:F
    .end local v21           #translatedDistanceFoldSquared:F
    .end local v22           #translatedDistancePerFold:F
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mMatrix:[Landroid/graphics/Matrix;

    aget-object v1, v1, v23

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 404
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    .line 411
    .restart local v10       #cTranslationFactor:F
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mOriginalHeight:I

    int-to-float v1, v1

    mul-float v20, v1, v10

    goto/16 :goto_2

    .line 422
    .restart local v20       #translatedDistance:F
    .restart local v22       #translatedDistancePerFold:F
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldMaxWidth:F

    goto/16 :goto_3

    .line 424
    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldMaxHeight:F

    goto/16 :goto_4

    .line 436
    .restart local v21       #translatedDistanceFoldSquared:F
    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawHeight:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawHeight:F

    mul-float/2addr v1, v2

    sub-float v1, v1, v21

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v11, v1

    goto/16 :goto_5

    .line 451
    .restart local v11       #depth:F
    .restart local v16       #scaleFactor:F
    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawWidth:F

    mul-float v18, v1, v16

    .line 452
    .restart local v18       #scaledWidth:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawHeight:F

    mul-float v17, v1, v10

    .restart local v17       #scaledHeight:F
    goto/16 :goto_6

    .line 462
    .restart local v9       #bottomScaledPoint:F
    .restart local v13       #leftScaledPoint:F
    .restart local v15       #rightScaledPoint:F
    .restart local v19       #topScaledPoint:F
    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mAnchorFactor:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mOriginalHeight:I

    int-to-float v2, v2

    mul-float v8, v1, v2

    goto/16 :goto_7

    .line 466
    .restart local v8       #anchorPoint:F
    :cond_b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawHeight:F

    div-float v14, v8, v1

    goto/16 :goto_8

    .line 483
    .restart local v14       #midFold:F
    :cond_c
    rem-int/lit8 v1, v23, 0x2

    if-nez v1, :cond_e

    const/4 v12, 0x1

    .line 485
    .local v12, isEven:Z
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mIsHorizontal:Z

    if-eqz v1, :cond_15

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDst:[F

    const/4 v3, 0x0

    move/from16 v0, v23

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawWidth:F

    mul-float/2addr v1, v4

    cmpl-float v1, v8, v1

    if-lez v1, :cond_f

    .line 487
    move/from16 v0, v23

    int-to-float v1, v0

    sub-float/2addr v1, v14

    mul-float v1, v1, v18

    add-float/2addr v1, v8

    .line 486
    :goto_c
    aput v1, v2, v3

    .line 489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDst:[F

    const/4 v3, 0x1

    if-eqz v12, :cond_10

    const/4 v1, 0x0

    :goto_d
    aput v1, v2, v3

    .line 490
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDst:[F

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDst:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v1, v2

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDst:[F

    const/4 v3, 0x3

    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    iget v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawHeight:F

    :goto_e
    aput v1, v2, v3

    .line 492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDst:[F

    const/4 v3, 0x4

    add-int/lit8 v1, v23, 0x1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawWidth:F

    mul-float/2addr v1, v4

    cmpl-float v1, v8, v1

    if-lez v1, :cond_12

    .line 493
    add-int/lit8 v1, v23, 0x1

    int-to-float v1, v1

    sub-float/2addr v1, v14

    mul-float v1, v1, v18

    add-float/2addr v1, v8

    .line 492
    :goto_f
    aput v1, v2, v3

    .line 495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDst:[F

    const/4 v3, 0x5

    if-eqz v12, :cond_13

    move/from16 v1, v19

    :goto_10
    aput v1, v2, v3

    .line 496
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDst:[F

    const/4 v2, 0x6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDst:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    aput v3, v1, v2

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDst:[F

    const/4 v3, 0x7

    if-eqz v12, :cond_14

    move v1, v9

    :goto_11
    aput v1, v2, v3

    .line 518
    :goto_12
    const/16 v24, 0x0

    .local v24, y:I
    :goto_13
    const/16 v1, 0x8

    move/from16 v0, v24

    if-lt v0, v1, :cond_1c

    .line 528
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mIsHorizontal:Z

    if-eqz v1, :cond_1d

    .line 529
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDst:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDst:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    cmpg-float v1, v1, v2

    if-lez v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDst:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDst:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1f

    .line 530
    :cond_d
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mShouldDraw:Z

    goto/16 :goto_0

    .line 483
    .end local v12           #isEven:Z
    .end local v24           #y:I
    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_b

    .line 488
    .restart local v12       #isEven:Z
    :cond_f
    move/from16 v0, v23

    int-to-float v1, v0

    sub-float v1, v14, v1

    mul-float v1, v1, v18

    sub-float v1, v8, v1

    goto/16 :goto_c

    :cond_10
    move/from16 v1, v19

    .line 489
    goto/16 :goto_d

    :cond_11
    move v1, v9

    .line 491
    goto/16 :goto_e

    .line 494
    :cond_12
    move/from16 v0, v23

    int-to-float v1, v0

    sub-float v1, v14, v1

    const/high16 v4, 0x3f80

    sub-float/2addr v1, v4

    mul-float v1, v1, v18

    sub-float v1, v8, v1

    goto :goto_f

    .line 495
    :cond_13
    const/4 v1, 0x0

    goto :goto_10

    .line 497
    :cond_14
    move-object/from16 v0, p0

    iget v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawHeight:F

    goto :goto_11

    .line 500
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDst:[F

    const/4 v3, 0x0

    if-eqz v12, :cond_16

    const/4 v1, 0x0

    :goto_14
    aput v1, v2, v3

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDst:[F

    const/4 v3, 0x1

    move/from16 v0, v23

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawHeight:F

    mul-float/2addr v1, v4

    cmpl-float v1, v8, v1

    if-lez v1, :cond_17

    .line 502
    move/from16 v0, v23

    int-to-float v1, v0

    sub-float/2addr v1, v14

    mul-float v1, v1, v17

    add-float/2addr v1, v8

    .line 501
    :goto_15
    aput v1, v2, v3

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDst:[F

    const/4 v3, 0x2

    if-eqz v12, :cond_18

    move v1, v13

    :goto_16
    aput v1, v2, v3

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDst:[F

    const/4 v3, 0x3

    add-int/lit8 v1, v23, 0x1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawHeight:F

    mul-float/2addr v1, v4

    cmpl-float v1, v8, v1

    if-lez v1, :cond_19

    .line 506
    add-int/lit8 v1, v23, 0x1

    int-to-float v1, v1

    sub-float/2addr v1, v14

    mul-float v1, v1, v17

    add-float/2addr v1, v8

    .line 505
    :goto_17
    aput v1, v2, v3

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDst:[F

    const/4 v3, 0x4

    if-eqz v12, :cond_1a

    move-object/from16 v0, p0

    iget v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawWidth:F

    :goto_18
    aput v1, v2, v3

    .line 509
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDst:[F

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDst:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    aput v3, v1, v2

    .line 510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDst:[F

    const/4 v3, 0x6

    if-eqz v12, :cond_1b

    move v1, v15

    :goto_19
    aput v1, v2, v3

    .line 511
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDst:[F

    const/4 v2, 0x7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDst:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    aput v3, v1, v2

    goto/16 :goto_12

    :cond_16
    move v1, v13

    .line 500
    goto :goto_14

    .line 503
    :cond_17
    move/from16 v0, v23

    int-to-float v1, v0

    sub-float v1, v14, v1

    mul-float v1, v1, v17

    sub-float v1, v8, v1

    goto :goto_15

    .line 504
    :cond_18
    const/4 v1, 0x0

    goto :goto_16

    .line 507
    :cond_19
    move/from16 v0, v23

    int-to-float v1, v0

    sub-float v1, v14, v1

    const/high16 v4, 0x3f80

    sub-float/2addr v1, v4

    mul-float v1, v1, v17

    sub-float v1, v8, v1

    goto :goto_17

    :cond_1a
    move v1, v15

    .line 508
    goto :goto_18

    .line 510
    :cond_1b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawWidth:F

    goto :goto_19

    .line 519
    .restart local v24       #y:I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDst:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDst:[F

    aget v2, v2, v24

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    aput v2, v1, v24

    .line 518
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_13

    .line 534
    :cond_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDst:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDst:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    cmpg-float v1, v1, v2

    if-lez v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDst:[F

    const/4 v2, 0x7

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDst:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1f

    .line 535
    :cond_1e
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mShouldDraw:Z

    goto/16 :goto_0

    .line 541
    :cond_1f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mMatrix:[Landroid/graphics/Matrix;

    aget-object v1, v1, v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mSrc:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDst:[F

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 481
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_9

    .line 561
    .end local v12           #isEven:Z
    .end local v24           #y:I
    .restart local v7       #alpha:I
    :cond_20
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mShadowGradientMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f80

    move-object/from16 v0, p0

    iget v3, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawHeight:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 562
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mShadowLinearGradient:Landroid/graphics/LinearGradient;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mShadowGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_a
.end method

.method private prepareFold(Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;FI)V
    .locals 15
    .parameter "orientation"
    .parameter "anchorFactor"
    .parameter "numberOfFolds"

    .prologue
    .line 282
    const/16 v1, 0x8

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mSrc:[F

    .line 283
    const/16 v1, 0x8

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDst:[F

    .line 285
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDstRect:Landroid/graphics/Rect;

    .line 287
    const/4 v1, 0x0

    iput v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldFactor:F

    .line 288
    const/4 v1, 0x0

    iput v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mPreviousFoldFactor:F

    .line 290
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mIsFoldPrepared:Z

    .line 292
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mSolidShadow:Landroid/graphics/Paint;

    .line 293
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mGradientShadow:Landroid/graphics/Paint;

    .line 295
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mOrientation:Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;

    .line 296
    sget-object v1, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;->HORIZONTAL:Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mIsHorizontal:Z

    .line 298
    iget-boolean v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mIsHorizontal:Z

    if-eqz v1, :cond_2

    .line 299
    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f00

    const/4 v5, 0x0

    .line 300
    const/high16 v6, -0x100

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 299
    iput-object v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mShadowLinearGradient:Landroid/graphics/LinearGradient;

    .line 306
    :goto_1
    iget-object v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mGradientShadow:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 307
    iget-object v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mGradientShadow:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mShadowLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 308
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mShadowGradientMatrix:Landroid/graphics/Matrix;

    .line 310
    move/from16 v0, p2

    iput v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mAnchorFactor:F

    .line 311
    move/from16 v0, p3

    iput v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mNumberOfFolds:I

    .line 313
    invoke-virtual {p0}, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mOriginalWidth:I

    .line 314
    invoke-virtual {p0}, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mOriginalHeight:I

    .line 316
    iget v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mNumberOfFolds:I

    new-array v1, v1, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldRectArray:[Landroid/graphics/Rect;

    .line 317
    iget v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mNumberOfFolds:I

    new-array v1, v1, [Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mMatrix:[Landroid/graphics/Matrix;

    .line 319
    const/4 v14, 0x0

    .local v14, x:I
    :goto_2
    iget v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mNumberOfFolds:I

    if-lt v14, v1, :cond_3

    .line 323
    iget v12, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mOriginalHeight:I

    .line 324
    .local v12, h:I
    iget v13, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mOriginalWidth:I

    .line 326
    .local v13, w:I
    sget-boolean v1, Lcom/serajr/systemui/navigationdrawer/Util;->IS_JBMR2:Z

    if-eqz v1, :cond_0

    if-eqz v12, :cond_0

    if-eqz v13, :cond_0

    .line 327
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v12, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFullBitmap:Landroid/graphics/Bitmap;

    .line 328
    new-instance v9, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFullBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v9, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 329
    .local v9, canvas:Landroid/graphics/Canvas;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 332
    .end local v9           #canvas:Landroid/graphics/Canvas;
    :cond_0
    iget-boolean v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mIsHorizontal:Z

    if-eqz v1, :cond_4

    int-to-float v1, v13

    .line 333
    iget v2, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mNumberOfFolds:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 332
    :goto_3
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 342
    .local v10, delta:I
    const/4 v14, 0x0

    :goto_4
    iget v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mNumberOfFolds:I

    if-lt v14, v1, :cond_5

    .line 354
    iget-boolean v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mIsHorizontal:Z

    if-eqz v1, :cond_9

    .line 355
    int-to-float v1, v12

    iput v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldMaxHeight:F

    .line 356
    int-to-float v1, v10

    iput v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldMaxWidth:F

    .line 362
    :goto_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mIsFoldPrepared:Z

    .line 363
    return-void

    .line 296
    .end local v10           #delta:I
    .end local v12           #h:I
    .end local v13           #w:I
    .end local v14           #x:I
    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 302
    :cond_2
    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f00

    .line 303
    const/high16 v6, -0x100

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 302
    iput-object v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mShadowLinearGradient:Landroid/graphics/LinearGradient;

    goto/16 :goto_1

    .line 320
    .restart local v14       #x:I
    :cond_3
    iget-object v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mMatrix:[Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    aput-object v2, v1, v14

    .line 319
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 333
    .restart local v12       #h:I
    .restart local v13       #w:I
    :cond_4
    int-to-float v1, v12

    .line 334
    iget v2, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mNumberOfFolds:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_3

    .line 343
    .restart local v10       #delta:I
    :cond_5
    iget-boolean v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mIsHorizontal:Z

    if-eqz v1, :cond_7

    .line 344
    add-int/lit8 v1, v14, 0x1

    mul-int/2addr v1, v10

    if-le v1, v13, :cond_6

    mul-int v1, v14, v10

    sub-int v11, v13, v1

    .line 345
    .local v11, deltap:I
    :goto_6
    iget-object v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldRectArray:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    mul-int v3, v14, v10

    const/4 v4, 0x0

    mul-int v5, v14, v10

    add-int/2addr v5, v11

    .line 346
    invoke-direct {v2, v3, v4, v5, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 345
    aput-object v2, v1, v14

    .line 342
    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .end local v11           #deltap:I
    :cond_6
    move v11, v10

    .line 344
    goto :goto_6

    .line 348
    :cond_7
    add-int/lit8 v1, v14, 0x1

    mul-int/2addr v1, v10

    if-le v1, v12, :cond_8

    mul-int v1, v14, v10

    sub-int v11, v12, v1

    .line 349
    .restart local v11       #deltap:I
    :goto_8
    iget-object v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldRectArray:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    mul-int v4, v14, v10

    mul-int v5, v14, v10

    .line 350
    add-int/2addr v5, v11

    invoke-direct {v2, v3, v4, v13, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 349
    aput-object v2, v1, v14

    goto :goto_7

    .end local v11           #deltap:I
    :cond_8
    move v11, v10

    .line 348
    goto :goto_8

    .line 358
    :cond_9
    int-to-float v1, v10

    iput v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldMaxHeight:F

    .line 359
    int-to-float v1, v13

    iput v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldMaxWidth:F

    goto :goto_5
.end method

.method private throwCustomException(I)V
    .locals 2
    .parameter "numOfChildViews"

    .prologue
    .line 201
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 202
    new-instance v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$NumberOfFoldingLayoutChildrenException;

    .line 203
    const-string v1, "Folding Layout can only 1 child at most"

    .line 202
    invoke-direct {v0, p0, v1}, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$NumberOfFoldingLayoutChildrenException;-><init>(Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    return-void
.end method

.method private updateFold()V
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mOrientation:Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;

    iget v1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mAnchorFactor:F

    iget v2, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mNumberOfFolds:I

    invoke-direct {p0, v0, v1, v2}, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->prepareFold(Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;FI)V

    .line 265
    invoke-direct {p0}, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->calculateMatrices()V

    .line 266
    invoke-virtual {p0}, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->invalidate()V

    .line 267
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->throwCustomException(I)V

    .line 163
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 164
    return-void
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"
    .parameter "preventRequestLayout"

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->throwCustomException(I)V

    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    .line 157
    .local v0, returnValue:Z
    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 575
    iget-boolean v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mIsFoldPrepared:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldFactor:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 576
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 640
    :cond_1
    return-void

    .line 580
    :cond_2
    iget-boolean v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mShouldDraw:Z

    if-eqz v0, :cond_1

    .line 589
    const/4 v7, 0x0

    .local v7, x:I
    :goto_0
    iget v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mNumberOfFolds:I

    if-ge v7, v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldRectArray:[Landroid/graphics/Rect;

    aget-object v6, v0, v7

    .line 593
    .local v6, src:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 600
    iget-object v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mMatrix:[Landroid/graphics/Matrix;

    aget-object v0, v0, v7

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 601
    sget-boolean v0, Lcom/serajr/systemui/navigationdrawer/Util;->IS_JBMR2:Z

    if-eqz v0, :cond_3

    .line 602
    iget-object v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0, v8, v8, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 603
    iget-object v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFullBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mDstRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v6, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 630
    :goto_1
    rem-int/lit8 v0, v7, 0x2

    if-nez v0, :cond_6

    .line 631
    iget v3, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawWidth:F

    iget v4, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawHeight:F

    .line 632
    iget-object v5, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mSolidShadow:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    .line 631
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 638
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 589
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 612
    :cond_3
    iget v0, v6, Landroid/graphics/Rect;->right:I

    iget v2, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    iget v2, v6, Landroid/graphics/Rect;->bottom:I

    .line 613
    iget v3, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 612
    invoke-virtual {p1, v8, v8, v0, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 615
    iget-boolean v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mIsHorizontal:Z

    if-eqz v0, :cond_4

    .line 616
    iget v0, v6, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 621
    :goto_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 623
    iget-boolean v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mIsHorizontal:Z

    if-eqz v0, :cond_5

    .line 624
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 618
    :cond_4
    iget v0, v6, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_3

    .line 626
    :cond_5
    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 634
    :cond_6
    iget v3, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawWidth:F

    iget v4, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldDrawHeight:F

    .line 635
    iget-object v5, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mGradientShadow:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    .line 634
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public getAnchorFactor()F
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mAnchorFactor:F

    return v0
.end method

.method public getFoldFactor()F
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldFactor:F

    return v0
.end method

.method public getNumberOfFolds()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mNumberOfFolds:I

    return v0
.end method

.method public getOrientation()Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mOrientation:Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;

    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 148
    const/4 v0, 0x2

    iput v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mNumberOfFolds:I

    .line 149
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v3, 0x0

    .line 175
    invoke-virtual {p0, v3}, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 176
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 177
    invoke-direct {p0}, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->updateFold()V

    .line 178
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 168
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 169
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0, v0, p1, p2}, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->measureChild(Landroid/view/View;II)V

    .line 170
    invoke-virtual {p0, p1, p2}, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->setMeasuredDimension(II)V

    .line 171
    return-void
.end method

.method public setAnchorFactor(F)V
    .locals 1
    .parameter "anchorFactor"

    .prologue
    .line 234
    iget v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mAnchorFactor:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 235
    iput p1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mAnchorFactor:F

    .line 236
    invoke-direct {p0}, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->updateFold()V

    .line 238
    :cond_0
    return-void
.end method

.method public setFoldFactor(F)V
    .locals 1
    .parameter "foldFactor"

    .prologue
    .line 217
    iget v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldFactor:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 218
    iput p1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldFactor:F

    .line 219
    invoke-direct {p0}, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->calculateMatrices()V

    .line 220
    invoke-virtual {p0}, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->invalidate()V

    .line 222
    :cond_0
    return-void
.end method

.method public setFoldListener(Lcom/serajr/systemui/navigationdrawer/OnFoldListener;)V
    .locals 0
    .parameter "foldListener"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mFoldListener:Lcom/serajr/systemui/navigationdrawer/OnFoldListener;

    .line 209
    return-void
.end method

.method public setNumberOfFolds(I)V
    .locals 1
    .parameter "numberOfFolds"

    .prologue
    .line 241
    iget v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mNumberOfFolds:I

    if-eq p1, v0, :cond_0

    .line 242
    iput p1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mNumberOfFolds:I

    .line 243
    invoke-direct {p0}, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->updateFold()V

    .line 245
    :cond_0
    return-void
.end method

.method public setOrientation(Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mOrientation:Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;

    if-eq p1, v0, :cond_0

    .line 228
    iput-object p1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->mOrientation:Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;

    .line 229
    invoke-direct {p0}, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->updateFold()V

    .line 231
    :cond_0
    return-void
.end method
