.class public final Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;
.super Lcom/android/systemui/statusbar/phone/BarTransitions;
.source "AsusNavigationBarTransitions.java"


# instance fields
.field private final mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mLightsOut:Z

.field private final mLightsOutListener:Landroid/view/View$OnTouchListener;

.field private mRequestedMode:I

.field private mVertical:Z

.field private final mView:Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 41
    const v0, 0x7f02015e

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;-><init>(Landroid/view/View;I)V

    .line 139
    new-instance v0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions$2;-><init>(Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;->mLightsOutListener:Landroid/view/View$OnTouchListener;

    .line 42
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    .line 43
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;ZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;->applyLightsOut(ZZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method private applyLightsOut(ZZZ)V
    .locals 11
    .parameter "lightsOut"
    .parameter "animate"
    .parameter "force"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/high16 v2, 0x3f80

    const/4 v7, 0x0

    .line 95
    if-nez p3, :cond_0

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;->mLightsOut:Z

    if-ne p1, v8, :cond_0

    .line 137
    :goto_0
    return-void

    .line 97
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;->mLightsOut:Z

    .line 99
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0b000a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 100
    .local v3, navButtons:Landroid/view/View;
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0b000f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 103
    .local v1, lowLights:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 104
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 106
    if-eqz p1, :cond_1

    move v4, v7

    .line 107
    .local v4, navButtonsAlpha:F
    :goto_1
    if-eqz p1, :cond_2

    .line 109
    .local v2, lowLightsAlpha:F
    :goto_2
    if-nez p2, :cond_4

    .line 110
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 111
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 112
    if-eqz p1, :cond_3

    :goto_3
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .end local v2           #lowLightsAlpha:F
    .end local v4           #navButtonsAlpha:F
    :cond_1
    move v4, v2

    .line 106
    goto :goto_1

    .restart local v4       #navButtonsAlpha:F
    :cond_2
    move v2, v7

    .line 107
    goto :goto_2

    .restart local v2       #lowLightsAlpha:F
    :cond_3
    move v5, v6

    .line 112
    goto :goto_3

    .line 114
    :cond_4
    if-eqz p1, :cond_6

    const/16 v0, 0x2ee

    .line 115
    .local v0, duration:I
    :goto_4
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    int-to-long v9, v0

    invoke-virtual {v8, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 120
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;->mLightsOutListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 121
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-ne v8, v6, :cond_5

    .line 122
    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 123
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 125
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v7, 0x4000

    invoke-direct {v6, v7}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    if-eqz p1, :cond_7

    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v6, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 114
    .end local v0           #duration:I
    :cond_6
    const/16 v0, 0xfa

    goto :goto_4

    .line 125
    .restart local v0       #duration:I
    :cond_7
    new-instance v5, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions$1;

    invoke-direct {v5, p0, v1}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions$1;-><init>(Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;Landroid/view/View;)V

    goto :goto_5
.end method

.method private applyMode(IZZ)V
    .locals 6
    .parameter "mode"
    .parameter "animate"
    .parameter "force"

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 76
    if-eqz p1, :cond_0

    if-ne p1, v5, :cond_1

    :cond_0
    move v1, v2

    .line 77
    .local v1, isOpaque:Z
    :goto_0
    if-eqz v1, :cond_2

    const v0, 0x3f333333

    .line 78
    .local v0, alpha:F
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, v0, p2}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;->setKeyButtonViewQuiescentAlpha(Landroid/view/View;FZ)V

    .line 79
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, v0, p2}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;->setKeyButtonViewQuiescentAlpha(Landroid/view/View;FZ)V

    .line 80
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, v0, p2}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;->setKeyButtonViewQuiescentAlpha(Landroid/view/View;FZ)V

    .line 81
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, v0, p2}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;->setKeyButtonViewQuiescentAlpha(Landroid/view/View;FZ)V

    .line 82
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getCameraButton()Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, v0, p2}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;->setKeyButtonViewQuiescentAlpha(Landroid/view/View;FZ)V

    .line 85
    if-ne p1, v5, :cond_3

    :goto_2
    invoke-direct {p0, v2, p2, p3}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;->applyLightsOut(ZZZ)V

    .line 86
    return-void

    .end local v0           #alpha:F
    .end local v1           #isOpaque:Z
    :cond_1
    move v1, v3

    .line 76
    goto :goto_0

    .line 77
    .restart local v1       #isOpaque:Z
    :cond_2
    const/high16 v0, 0x3f80

    goto :goto_1

    .restart local v0       #alpha:F
    :cond_3
    move v2, v3

    .line 85
    goto :goto_2
.end method

.method private setKeyButtonViewQuiescentAlpha(Landroid/view/View;FZ)V
    .locals 1
    .parameter "button"
    .parameter "alpha"
    .parameter "animate"

    .prologue
    .line 89
    instance-of v0, p1, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    if-eqz v0, :cond_0

    .line 90
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .end local p1
    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setQuiescentAlpha(FZ)V

    .line 92
    :cond_0
    return-void
.end method


# virtual methods
.method public init(Z)V
    .locals 3
    .parameter "isVertical"

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;->setVertical(Z)V

    .line 49
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;->getMode()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;->applyModeBackground(IIZ)V

    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;->getMode()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;->applyMode(IZZ)V

    .line 51
    return-void
.end method

.method protected onTransition(IIZ)V
    .locals 1
    .parameter "oldMode"
    .parameter "newMode"
    .parameter "animate"

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->onTransition(IIZ)V

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;->applyMode(IZZ)V

    .line 72
    return-void
.end method

.method public setVertical(Z)V
    .locals 2
    .parameter "isVertical"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;->mVertical:Z

    .line 55
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;->mRequestedMode:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;->transitionTo(IZ)V

    .line 56
    return-void
.end method

.method public transitionTo(IZ)V
    .locals 1
    .parameter "mode"
    .parameter "animate"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;->mRequestedMode:I

    .line 61
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;->mVertical:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 63
    const/4 p1, 0x0

    .line 65
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    .line 66
    return-void
.end method
