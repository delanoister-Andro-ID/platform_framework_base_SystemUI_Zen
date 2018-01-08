.class public Lcom/android/systemui/ExpandHelper;
.super Ljava/lang/Object;
.source "ExpandHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ExpandHelper$ViewScaler;,
        Lcom/android/systemui/ExpandHelper$Callback;
    }
.end annotation


# instance fields
.field private mAlwaysTopItem:Lcom/android/systemui/ExpandHelper$Callback;

.field private mCallback:Lcom/android/systemui/ExpandHelper$Callback;

.field private mContext:Landroid/content/Context;

.field private mCurrView:Landroid/view/View;

.field private mCurrViewBottomGlow:Landroid/view/View;

.field private mCurrViewTopGlow:Landroid/view/View;

.field private mEventSource:Landroid/view/View;

.field private mExpanding:Z

.field private mExpansionStyle:I

.field private mGlowAnimationSet:Landroid/animation/AnimatorSet;

.field private mGlowBottomAnimation:Landroid/animation/ObjectAnimator;

.field private mGlowTopAnimation:Landroid/animation/ObjectAnimator;

.field private mGravity:I

.field private mHasPopped:Z

.field private mInitialTouchFocusY:F

.field private mInitialTouchSpan:F

.field private mInitialTouchY:F

.field private mLargeSize:I

.field private mLastFocusY:F

.field private mLastMotionY:I

.field private mLastSpanY:F

.field private mMaximumStretch:F

.field private mNaturalHeight:F

.field private mNotificationItem:Lcom/android/systemui/ExpandHelper$Callback;

.field private mOldHeight:F

.field private mPopDuration:I

.field private mPopLimit:F

.field private mPullGestureMinXSpan:F

.field private mSGD:Landroid/view/ScaleGestureDetector;

.field private mScaleAnimation:Landroid/animation/ObjectAnimator;

.field private mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

.field private mScrollView:Landroid/view/View;

.field private mSmallSize:I

.field private mTouchSlop:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWatchingForPull:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V
    .locals 9
    .parameter "context"
    .parameter "callback"
    .parameter "small"
    .parameter "large"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput v5, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    .line 117
    new-instance v2, Lcom/android/systemui/ExpandHelper$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/ExpandHelper$1;-><init>(Lcom/android/systemui/ExpandHelper;)V

    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 191
    iput p3, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    .line 192
    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mMaximumStretch:F

    .line 193
    iput p4, p0, Lcom/android/systemui/ExpandHelper;->mLargeSize:I

    .line 194
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    .line 195
    iput-object p2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 196
    new-instance v2, Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-direct {v2, p0}, Lcom/android/systemui/ExpandHelper$ViewScaler;-><init>(Lcom/android/systemui/ExpandHelper;)V

    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    .line 197
    const/16 v2, 0x30

    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mGravity:I

    .line 198
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    const-string v3, "height"

    new-array v4, v7, [F

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    .line 199
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 200
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070046

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mPopLimit:F

    .line 201
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mPopDuration:I

    .line 202
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mPullGestureMinXSpan:F

    .line 204
    new-instance v1, Lcom/android/systemui/ExpandHelper$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/ExpandHelper$2;-><init>(Lcom/android/systemui/ExpandHelper;)V

    .line 222
    .local v1, glowVisibilityController:Landroid/animation/AnimatorListenerAdapter;
    const-string v2, "alpha"

    new-array v3, v7, [F

    aput v6, v3, v5

    invoke-static {v8, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->mGlowTopAnimation:Landroid/animation/ObjectAnimator;

    .line 223
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mGlowTopAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 224
    const-string v2, "alpha"

    new-array v3, v7, [F

    aput v6, v3, v5

    invoke-static {v8, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->mGlowBottomAnimation:Landroid/animation/ObjectAnimator;

    .line 225
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mGlowBottomAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 226
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->mGlowAnimationSet:Landroid/animation/AnimatorSet;

    .line 227
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mGlowAnimationSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/systemui/ExpandHelper;->mGlowTopAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/ExpandHelper;->mGlowBottomAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 228
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mGlowAnimationSet:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 230
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 231
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    .line 233
    new-instance v2, Landroid/view/ScaleGestureDetector;

    iget-object v3, p0, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v2, p1, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 236
    iput-object p2, p0, Lcom/android/systemui/ExpandHelper;->mNotificationItem:Lcom/android/systemui/ExpandHelper$Callback;

    .line 238
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/ExpandHelper;FF)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/ExpandHelper;->findView(FF)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/ExpandHelper;Landroid/view/View;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/ExpandHelper;->startExpanding(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/ExpandHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    return v0
.end method

.method private calculateGlow(FF)F
    .locals 9
    .parameter "target"
    .parameter "actual"

    .prologue
    const/high16 v8, 0x3f80

    const/high16 v7, 0x3f00

    .line 319
    sub-float v2, p1, p2

    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mMaximumStretch:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 320
    .local v1, stretch:F
    const-wide v2, 0x4005bf0a8b145769L

    const/high16 v4, -0x4080

    const/high16 v5, 0x4100

    mul-float/2addr v5, v1

    const/high16 v6, 0x40a0

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr v2, v8

    div-float v0, v8, v2

    .line 322
    .local v0, strength:F
    mul-float v2, v0, v7

    add-float/2addr v2, v7

    return v2
.end method

.method private clamp(F)F
    .locals 2
    .parameter "target"

    .prologue
    .line 260
    move v0, p1

    .line 261
    .local v0, out:F
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v0, v1

    .line 262
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    .line 263
    :cond_1
    return v0

    .line 261
    :cond_2
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mLargeSize:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mLargeSize:I

    int-to-float v0, v1

    goto :goto_0
.end method

.method private clearView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 588
    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrView:Landroid/view/View;

    .line 589
    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewTopGlow:Landroid/view/View;

    .line 590
    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewBottomGlow:Landroid/view/View;

    .line 591
    return-void
.end method

.method private findView(FF)Landroid/view/View;
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 267
    const/4 v1, 0x0

    .line 268
    .local v1, v:Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 269
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 270
    .local v0, location:[I
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 271
    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    add-float/2addr p1, v2

    .line 272
    const/4 v2, 0x1

    aget v2, v0, v2

    int-to-float v2, v2

    add-float/2addr p2, v2

    .line 273
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v2, p1, p2}, Lcom/android/systemui/ExpandHelper$Callback;->getChildAtRawPosition(FF)Landroid/view/View;

    move-result-object v1

    .line 277
    .end local v0           #location:[I
    :goto_0
    return-object v1

    .line 275
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v2, p1, p2}, Lcom/android/systemui/ExpandHelper$Callback;->getChildAtPosition(FF)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method private finishExpanding(Z)V
    .locals 9
    .parameter "force"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 546
    iget-boolean v4, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-nez v4, :cond_0

    .line 585
    :goto_0
    return-void

    .line 550
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v4}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getHeight()F

    move-result v0

    .line 551
    .local v0, currentHeight:F
    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v2, v4

    .line 552
    .local v2, targetHeight:F
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v4}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getHeight()F

    move-result v1

    .line 553
    .local v1, h:F
    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iget v7, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v7, v7

    cmpl-float v4, v4, v7

    if-nez v4, :cond_4

    move v3, v5

    .line 554
    .local v3, wasClosed:Z
    :goto_1
    if-eqz v3, :cond_6

    .line 555
    if-nez p1, :cond_1

    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_5

    :cond_1
    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    .line 559
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 560
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 562
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/systemui/ExpandHelper;->setGlow(F)V

    .line 564
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mAlwaysTopItem:Lcom/android/systemui/ExpandHelper$Callback;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mAlwaysTopItem:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 565
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v4, v7, v5}, Lcom/android/systemui/ExpandHelper$Callback;->setUserExpandedChild(Landroid/view/View;Z)V

    .line 570
    :goto_3
    cmpl-float v4, v2, v0

    if-eqz v4, :cond_3

    .line 571
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    new-array v5, v5, [F

    aput v2, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 572
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->setupStartValues()V

    .line 573
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 575
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v5, p0, Lcom/android/systemui/ExpandHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v4, v5, v6}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    .line 577
    iput-boolean v6, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 578
    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    goto :goto_0

    .end local v3           #wasClosed:Z
    :cond_4
    move v3, v6

    .line 553
    goto :goto_1

    .line 555
    .restart local v3       #wasClosed:Z
    :cond_5
    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v2, v4

    goto :goto_2

    .line 557
    :cond_6
    if-nez p1, :cond_7

    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_8

    :cond_7
    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v2, v4

    :goto_4
    goto :goto_2

    :cond_8
    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    goto :goto_4

    .line 567
    :cond_9
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mCurrView:Landroid/view/View;

    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpl-float v4, v1, v4

    if-nez v4, :cond_a

    move v4, v5

    :goto_5
    invoke-interface {v7, v8, v4}, Lcom/android/systemui/ExpandHelper$Callback;->setUserExpandedChild(Landroid/view/View;Z)V

    goto :goto_3

    :cond_a
    move v4, v6

    goto :goto_5
.end method

.method private handleGlowVisibility()V
    .locals 5

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 350
    iget-object v3, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewTopGlow:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewTopGlow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewBottomGlow:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewBottomGlow:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 354
    return-void

    :cond_0
    move v0, v2

    .line 350
    goto :goto_0

    :cond_1
    move v1, v2

    .line 352
    goto :goto_1
.end method

.method private isInside(Landroid/view/View;FF)Z
    .locals 7
    .parameter "v"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 283
    if-nez p1, :cond_0

    .line 301
    :goto_0
    return v4

    .line 287
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 288
    new-array v1, v6, [I

    .line 289
    .local v1, location:[I
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 290
    aget v2, v1, v4

    int-to-float v2, v2

    add-float/2addr p2, v2

    .line 291
    aget v2, v1, v3

    int-to-float v2, v2

    add-float/2addr p3, v2

    .line 294
    .end local v1           #location:[I
    :cond_1
    new-array v1, v6, [I

    .line 295
    .restart local v1       #location:[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 296
    aget v2, v1, v4

    int-to-float v2, v2

    sub-float/2addr p2, v2

    .line 297
    aget v2, v1, v3

    int-to-float v2, v2

    sub-float/2addr p3, v2

    .line 300
    cmpl-float v2, p2, v5

    if-lez v2, :cond_4

    cmpl-float v2, p3, v5

    if-lez v2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, p3, v5

    if-gez v5, :cond_3

    move v5, v3

    :goto_2
    and-int/2addr v2, v5

    if-eqz v2, :cond_4

    move v0, v3

    .local v0, inside:Z
    :goto_3
    move v4, v0

    .line 301
    goto :goto_0

    .end local v0           #inside:Z
    :cond_2
    move v2, v4

    .line 300
    goto :goto_1

    :cond_3
    move v5, v4

    goto :goto_2

    :cond_4
    move v0, v4

    goto :goto_3
.end method

.method private setView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 594
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mCurrView:Landroid/view/View;

    .line 595
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 596
    check-cast v0, Landroid/view/ViewGroup;

    .line 597
    .local v0, g:Landroid/view/ViewGroup;
    const v1, 0x7f0b008d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewTopGlow:Landroid/view/View;

    .line 598
    const v1, 0x7f0b0091

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewBottomGlow:Landroid/view/View;

    .line 606
    .end local v0           #g:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private startExpanding(Landroid/view/View;I)V
    .locals 3
    .parameter "v"
    .parameter "expandType"

    .prologue
    const/4 v2, 0x1

    .line 522
    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    .line 523
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 543
    :goto_0
    return-void

    .line 526
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 528
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v0, p1, v2}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    .line 529
    invoke-direct {p0, p1}, Lcom/android/systemui/ExpandHelper;->setView(Landroid/view/View;)V

    .line 530
    const/high16 v0, 0x3f00

    invoke-virtual {p0, v0}, Lcom/android/systemui/ExpandHelper;->setGlow(F)V

    .line 531
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setView(Landroid/view/View;)V

    .line 532
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v0}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    .line 533
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/ExpandHelper$Callback;->canChildBeExpanded(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mLargeSize:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getNaturalHeight(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    .line 542
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 538
    :cond_1
    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    goto :goto_1
.end method

.method private updateExpansion()V
    .locals 9

    .prologue
    const/high16 v7, 0x3f80

    .line 243
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v6

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    sub-float v4, v6, v8

    .line 244
    .local v4, span:F
    mul-float/2addr v4, v7

    .line 245
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v6

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    sub-float v0, v6, v8

    .line 246
    .local v0, drag:F
    mul-float/2addr v0, v7

    .line 247
    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mGravity:I

    const/16 v8, 0x50

    if-ne v6, v8, :cond_0

    const/high16 v6, -0x4080

    :goto_0
    mul-float/2addr v0, v6

    .line 248
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    add-float/2addr v6, v8

    add-float v3, v6, v7

    .line 249
    .local v3, pull:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v6, v0

    div-float/2addr v6, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v7, v4

    div-float/2addr v7, v3

    add-float v1, v6, v7

    .line 250
    .local v1, hand:F
    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    add-float v5, v1, v6

    .line 251
    .local v5, target:F
    invoke-direct {p0, v5}, Lcom/android/systemui/ExpandHelper;->clamp(F)F

    move-result v2

    .line 252
    .local v2, newHeight:F
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v6, v2}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setHeight(F)V

    .line 254
    invoke-direct {p0, v5, v2}, Lcom/android/systemui/ExpandHelper;->calculateGlow(FF)F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/systemui/ExpandHelper;->setGlow(F)V

    .line 255
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    .line 256
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    .line 257
    return-void

    .end local v1           #hand:F
    .end local v2           #newHeight:F
    .end local v3           #pull:F
    .end local v5           #target:F
    :cond_0
    move v6, v7

    .line 247
    goto :goto_0
.end method

.method private declared-synchronized vibrate(J)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 630
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVibrator:Landroid/os/Vibrator;

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    monitor-exit p0

    return-void

    .line 630
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 619
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/ExpandHelper;->finishExpanding(Z)V

    .line 620
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->clearView()V

    .line 623
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 624
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 610
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/ExpandHelper;->startExpanding(Landroid/view/View;I)V

    .line 611
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/ExpandHelper;->finishExpanding(Z)V

    .line 612
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->clearView()V

    .line 613
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v11, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 358
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 365
    .local v0, action:I
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 366
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v6

    float-to-int v2, v6

    .line 367
    .local v2, x:I
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v6

    float-to-int v4, v6

    .line 369
    .local v4, y:I
    int-to-float v6, v4

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    .line 370
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    .line 371
    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    .line 372
    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    .line 375
    iget-boolean v6, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v6, :cond_0

    move v6, v7

    .line 440
    :goto_0
    return v6

    .line 379
    :cond_0
    if-nez v0, :cond_1

    .line 380
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mNotificationItem:Lcom/android/systemui/ExpandHelper$Callback;

    check-cast v6, Landroid/view/View;

    int-to-float v9, v2

    int-to-float v10, v4

    invoke-direct {p0, v6, v9, v10}, Lcom/android/systemui/ExpandHelper;->isInside(Landroid/view/View;FF)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 381
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mNotificationItem:Lcom/android/systemui/ExpandHelper$Callback;

    iput-object v6, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 387
    :cond_1
    :goto_1
    if-ne v0, v11, :cond_3

    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    move v6, v7

    .line 389
    goto :goto_0

    .line 383
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mAlwaysTopItem:Lcom/android/systemui/ExpandHelper$Callback;

    iput-object v6, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    goto :goto_1

    .line 391
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v3

    .line 392
    .local v3, xspan:F
    if-ne v0, v11, :cond_5

    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mPullGestureMinXSpan:F

    cmpl-float v6, v3, v6

    if-lez v6, :cond_5

    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v6

    cmpl-float v6, v3, v6

    if-lez v6, :cond_5

    .line 398
    int-to-float v6, v2

    int-to-float v8, v4

    invoke-direct {p0, v6, v8}, Lcom/android/systemui/ExpandHelper;->findView(FF)Landroid/view/View;

    move-result-object v1

    .line 399
    .local v1, underFocus:Landroid/view/View;
    if-eqz v1, :cond_4

    .line 400
    invoke-direct {p0, v1, v11}, Lcom/android/systemui/ExpandHelper;->startExpanding(Landroid/view/View;I)V

    :cond_4
    move v6, v7

    .line 402
    goto :goto_0

    .line 405
    .end local v1           #underFocus:Landroid/view/View;
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mScrollView:Landroid/view/View;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mScrollView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getScrollY()I

    move-result v6

    if-lez v6, :cond_6

    move v6, v8

    .line 406
    goto :goto_0

    .line 410
    :cond_6
    and-int/lit16 v6, v0, 0xff

    packed-switch v6, :pswitch_data_0

    .line 440
    :cond_7
    :goto_2
    iget-boolean v6, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    goto :goto_0

    .line 412
    :pswitch_0
    iget-boolean v6, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    if-eqz v6, :cond_7

    .line 413
    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:I

    sub-int v5, v4, v6

    .line 414
    .local v5, yDiff:I
    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    if-le v5, v6, :cond_7

    .line 416
    iput v4, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:I

    .line 417
    int-to-float v6, v2

    int-to-float v9, v4

    invoke-direct {p0, v6, v9}, Lcom/android/systemui/ExpandHelper;->findView(FF)Landroid/view/View;

    move-result-object v1

    .line 418
    .restart local v1       #underFocus:Landroid/view/View;
    if-eqz v1, :cond_7

    .line 419
    invoke-direct {p0, v1, v7}, Lcom/android/systemui/ExpandHelper;->startExpanding(Landroid/view/View;I)V

    .line 420
    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:I

    int-to-float v6, v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 421
    iput-boolean v8, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    goto :goto_2

    .line 429
    .end local v1           #underFocus:Landroid/view/View;
    .end local v5           #yDiff:I
    :pswitch_1
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mScrollView:Landroid/view/View;

    int-to-float v7, v2

    int-to-float v8, v4

    invoke-direct {p0, v6, v7, v8}, Lcom/android/systemui/ExpandHelper;->isInside(Landroid/view/View;FF)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 430
    iput v4, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:I

    goto :goto_2

    .line 436
    :pswitch_2
    invoke-direct {p0, v8}, Lcom/android/systemui/ExpandHelper;->finishExpanding(Z)V

    .line 437
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->clearView()V

    goto :goto_2

    .line 410
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 446
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 453
    .local v0, action:I
    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v11, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 455
    packed-switch v0, :pswitch_data_0

    .line 518
    :cond_0
    :goto_0
    :pswitch_0
    return v9

    .line 457
    :pswitch_1
    iget v11, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_7

    .line 458
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    add-float v4, v11, v12

    .line 459
    .local v4, rawHeight:F
    invoke-direct {p0, v4}, Lcom/android/systemui/ExpandHelper;->clamp(F)F

    move-result v2

    .line 460
    .local v2, newHeight:F
    iget v11, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-nez v11, :cond_5

    move v6, v9

    .line 461
    .local v6, wasClosed:Z
    :goto_1
    const/4 v1, 0x0

    .line 462
    .local v1, isFinished:Z
    iget v11, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpl-float v11, v4, v11

    if-lez v11, :cond_1

    .line 463
    const/4 v1, 0x1

    .line 465
    :cond_1
    iget v11, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v11, v11

    cmpg-float v11, v4, v11

    if-gez v11, :cond_2

    .line 466
    const/4 v1, 0x1

    .line 469
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 470
    .local v3, pull:F
    iget-boolean v11, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    if-nez v11, :cond_3

    iget v11, p0, Lcom/android/systemui/ExpandHelper;->mPopLimit:F

    cmpl-float v11, v3, v11

    if-lez v11, :cond_4

    .line 471
    :cond_3
    iget-boolean v11, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    if-nez v11, :cond_4

    .line 472
    iget v11, p0, Lcom/android/systemui/ExpandHelper;->mPopDuration:I

    int-to-long v11, v11

    invoke-direct {p0, v11, v12}, Lcom/android/systemui/ExpandHelper;->vibrate(J)V

    .line 473
    iput-boolean v9, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    .line 477
    :cond_4
    iget-boolean v11, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    if-eqz v11, :cond_6

    .line 478
    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v11, v2}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setHeight(F)V

    .line 479
    const/high16 v11, 0x3f00

    invoke-virtual {p0, v11}, Lcom/android/systemui/ExpandHelper;->setGlow(F)V

    .line 484
    :goto_2
    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v11}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v11

    float-to-int v7, v11

    .line 485
    .local v7, x:I
    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v11}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v11

    float-to-int v8, v11

    .line 486
    .local v8, y:I
    int-to-float v11, v7

    int-to-float v12, v8

    invoke-direct {p0, v11, v12}, Lcom/android/systemui/ExpandHelper;->findView(FF)Landroid/view/View;

    move-result-object v5

    .line 487
    .local v5, underFocus:Landroid/view/View;
    if-eqz v1, :cond_0

    if-eqz v5, :cond_0

    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mCurrView:Landroid/view/View;

    if-eq v5, v11, :cond_0

    .line 488
    invoke-direct {p0, v10}, Lcom/android/systemui/ExpandHelper;->finishExpanding(Z)V

    .line 489
    invoke-direct {p0, v5, v9}, Lcom/android/systemui/ExpandHelper;->startExpanding(Landroid/view/View;I)V

    .line 490
    int-to-float v11, v8

    iput v11, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 491
    iput-boolean v10, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    goto/16 :goto_0

    .end local v1           #isFinished:Z
    .end local v3           #pull:F
    .end local v5           #underFocus:Landroid/view/View;
    .end local v6           #wasClosed:Z
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_5
    move v6, v10

    .line 460
    goto :goto_1

    .line 481
    .restart local v1       #isFinished:Z
    .restart local v3       #pull:F
    .restart local v6       #wasClosed:Z
    :cond_6
    const/high16 v11, 0x4080

    mul-float/2addr v11, v3

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/android/systemui/ExpandHelper;->calculateGlow(FF)F

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/systemui/ExpandHelper;->setGlow(F)V

    goto :goto_2

    .line 496
    .end local v1           #isFinished:Z
    .end local v2           #newHeight:F
    .end local v3           #pull:F
    .end local v4           #rawHeight:F
    .end local v6           #wasClosed:Z
    :cond_7
    iget-boolean v10, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v10, :cond_0

    .line 497
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->updateExpansion()V

    goto/16 :goto_0

    .line 507
    :pswitch_2
    iget v10, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v11}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v11

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    sub-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 508
    iget v10, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v11}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v11

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    sub-float/2addr v11, v12

    add-float/2addr v10, v11

    iput v10, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    goto/16 :goto_0

    .line 514
    :pswitch_3
    invoke-direct {p0, v10}, Lcom/android/systemui/ExpandHelper;->finishExpanding(Z)V

    .line 515
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->clearView()V

    goto/16 :goto_0

    .line 455
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setAlwaysTopItem(Landroid/view/View;)V
    .locals 1
    .parameter "alwaysTopItem"

    .prologue
    .line 639
    instance-of v0, p1, Lcom/android/systemui/ExpandHelper$Callback;

    if-eqz v0, :cond_0

    .line 640
    check-cast p1, Lcom/android/systemui/ExpandHelper$Callback;

    .end local p1
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mAlwaysTopItem:Lcom/android/systemui/ExpandHelper$Callback;

    .line 642
    :cond_0
    return-void
.end method

.method public setEventSource(Landroid/view/View;)V
    .locals 0
    .parameter "eventSource"

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    .line 306
    return-void
.end method

.method public setGlow(F)V
    .locals 4
    .parameter "glow"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 326
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mGlowAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    cmpl-float v0, p1, v1

    if-nez v0, :cond_3

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mGlowAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mGlowAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewTopGlow:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewBottomGlow:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 331
    cmpl-float v0, p1, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewTopGlow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mGlowTopAnimation:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewTopGlow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 334
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mGlowBottomAnimation:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewBottomGlow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mGlowTopAnimation:Landroid/animation/ObjectAnimator;

    new-array v1, v3, [F

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 336
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mGlowBottomAnimation:Landroid/animation/ObjectAnimator;

    new-array v1, v3, [F

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 337
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mGlowAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->setupStartValues()V

    .line 338
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mGlowAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 347
    :cond_3
    :goto_0
    return-void

    .line 341
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewTopGlow:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 342
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrViewBottomGlow:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 343
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->handleGlowVisibility()V

    goto :goto_0
.end method

.method public setScrollView(Landroid/view/View;)V
    .locals 0
    .parameter "scrollView"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mScrollView:Landroid/view/View;

    .line 314
    return-void
.end method
