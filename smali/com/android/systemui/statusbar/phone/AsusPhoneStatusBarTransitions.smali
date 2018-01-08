.class public final Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;
.super Lcom/android/systemui/statusbar/phone/BarTransitions;
.source "AsusPhoneStatusBarTransitions.java"


# instance fields
.field private mBattery:Landroid/view/View;

.field private mClock:Landroid/view/View;

.field private mCurrentAnimation:Landroid/animation/Animator;

.field private final mIconAlphaWhenOpaque:F

.field private mLeftSide:Landroid/view/View;

.field private mSignalCluster:Landroid/view/View;

.field private mStatusIcons:Landroid/view/View;

.field private final mView:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    .line 39
    const v1, 0x7f020222

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/BarTransitions;-><init>(Landroid/view/View;I)V

    .line 40
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    .line 41
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 42
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f070022

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->mIconAlphaWhenOpaque:F

    .line 43
    return-void
.end method

.method private applyMode(IZ)V
    .locals 7
    .parameter "mode"
    .parameter "animate"

    .prologue
    const/4 v6, 0x3

    .line 81
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->mLeftSide:Landroid/view/View;

    if-nez v3, :cond_0

    .line 108
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->getNonBatteryClockAlphaFor(I)F

    move-result v1

    .line 83
    .local v1, newAlpha:F
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->getBatteryClockAlpha(I)F

    move-result v2

    .line 84
    .local v2, newAlphaBC:F
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->mCurrentAnimation:Landroid/animation/Animator;

    if-eqz v3, :cond_1

    .line 85
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->mCurrentAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 87
    :cond_1
    if-eqz p2, :cond_3

    .line 88
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 89
    .local v0, anims:Landroid/animation/AnimatorSet;
    const/4 v3, 0x5

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->mLeftSide:Landroid/view/View;

    invoke-virtual {p0, v5, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->mStatusIcons:Landroid/view/View;

    invoke-virtual {p0, v5, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->mSignalCluster:Landroid/view/View;

    invoke-virtual {p0, v5, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->mBattery:Landroid/view/View;

    invoke-virtual {p0, v4, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->mClock:Landroid/view/View;

    invoke-virtual {p0, v5, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 96
    if-ne p1, v6, :cond_2

    .line 97
    const-wide/16 v3, 0x2ee

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 99
    :cond_2
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 100
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->mCurrentAnimation:Landroid/animation/Animator;

    goto :goto_0

    .line 102
    .end local v0           #anims:Landroid/animation/AnimatorSet;
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->mLeftSide:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 103
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->mStatusIcons:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 104
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 105
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->mBattery:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 106
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->mClock:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private getBatteryClockAlpha(I)F
    .locals 1
    .parameter "mode"

    .prologue
    .line 66
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x3f00

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->getNonBatteryClockAlphaFor(I)F

    move-result v0

    goto :goto_0
.end method

.method private getNonBatteryClockAlphaFor(I)F
    .locals 1
    .parameter "mode"

    .prologue
    .line 60
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->isOpaque(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, 0x3f80

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->mIconAlphaWhenOpaque:F

    goto :goto_0
.end method

.method private isOpaque(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v0, 0x1

    .line 71
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 4
    .parameter "v"
    .parameter "toAlpha"

    .prologue
    .line 56
    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    const v1, 0x7f0b0042

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->mLeftSide:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    const v1, 0x7f0b0046

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->mStatusIcons:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    const v1, 0x7f0b0049

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->mSignalCluster:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    const v1, 0x7f0b0052

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->mBattery:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    const v1, 0x7f0b0053

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->mClock:Landroid/view/View;

    .line 51
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->getMode()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->applyModeBackground(IIZ)V

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->getMode()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->applyMode(IZ)V

    .line 53
    return-void
.end method

.method protected onTransition(IIZ)V
    .locals 0
    .parameter "oldMode"
    .parameter "newMode"
    .parameter "animate"

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->onTransition(IIZ)V

    .line 77
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->applyMode(IZ)V

    .line 78
    return-void
.end method
