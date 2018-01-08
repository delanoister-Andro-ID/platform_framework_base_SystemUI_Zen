.class public Lcom/android/systemui/recent/RecentsPanelView;
.super Landroid/widget/FrameLayout;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/systemui/recent/RecentsCallback;
.implements Lcom/android/systemui/statusbar/StatusBarPanel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;,
        Lcom/android/systemui/recent/RecentsPanelView$DragHolder;,
        Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;,
        Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;,
        Lcom/android/systemui/recent/RecentsPanelView$OnLongClickDelegate;,
        Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    }
.end annotation


# instance fields
.field private mAnimateIconOfFirstTask:Z

.field mAppLockMonitor:Lcom/asus/applock/AppLockMonitor;

.field private mCallUiHiddenBeforeNextReload:Z

.field private mClearAllButton:Landroid/widget/Button;

.field private mController:Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;

.field mEnableLock:Z

.field private mFitThumbnailToXY:Z

.field mHandler:Landroid/os/Handler;

.field private mHighEndGfx:Z

.field mIsClickable:Z

.field private mItemToAnimateInWhenWindowAnimationIsFinished:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

.field private mPopup:Landroid/widget/PopupMenu;

.field private mRecentItemLayoutId:I

.field private mRecentTaskDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

.field private mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

.field private mRecentsNoApps:Landroid/view/View;

.field private mRecentsScrim:Landroid/view/View;

.field private mShowing:Z

.field private mStatusBarHeight:I

.field private mThumbnailWidth:I

.field private mWaitingForWindowAnimation:Z

.field private mWaitingToShow:Z

.field private mWindowAnimationStartTime:J

.field protected mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 417
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recent/RecentsPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 418
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    .line 421
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 159
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mHandler:Landroid/os/Handler;

    .line 161
    iput-boolean v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mEnableLock:Z

    .line 422
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->updateValuesFromResources()V

    .line 424
    sget-object v1, Lcom/android/systemui/R$styleable;->RecentsPanelView:[I

    invoke-virtual {p1, p2, v1, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 427
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentItemLayoutId:I

    .line 428
    invoke-static {p1}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    .line 429
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 431
    new-instance v1, Lcom/asus/applock/AppLockMonitor;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3}, Lcom/asus/applock/AppLockMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mAppLockMonitor:Lcom/asus/applock/AppLockMonitor;

    .line 433
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mStatusBarHeight:I

    .line 434
    iput-boolean v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsClickable:Z

    .line 435
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentsPanelView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentItemLayoutId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/recent/RecentsPanelView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentItemLayoutId:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsPanelView;->getViewLeft(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/recent/RecentsPanelView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mStatusBarHeight:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsPanelView;->getViewTop(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/recent/RecentsPanelView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsPanelView;->startApplicationDetailsActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/systemui/recent/RecentsPanelView;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/recent/RecentsPanelView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsPanelView;->showImpl(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentTasksLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recent/RecentsPanelView;->updateThumbnail(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 110
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/recent/RecentsPanelView;->updateIcon(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/recent/RecentsPanelView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mAnimateIconOfFirstTask:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mItemToAnimateInWhenWindowAnimationIsFinished:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;)Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mItemToAnimateInWhenWindowAnimationIsFinished:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/recent/RecentsPanelView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingForWindowAnimation:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/recent/RecentsPanelView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->animateInIconOfFirstTask()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private animateInIconOfFirstTask()V
    .locals 15

    .prologue
    .line 873
    iget-object v11, p0, Lcom/android/systemui/recent/RecentsPanelView;->mItemToAnimateInWhenWindowAnimationIsFinished:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v11}, Lcom/android/systemui/recent/RecentTasksLoader;->isFirstScreenful()Z

    move-result v11

    if-nez v11, :cond_2

    .line 875
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWindowAnimationStartTime:J

    sub-long/2addr v11, v13

    long-to-int v8, v11

    .line 877
    .local v8, timeSinceWindowAnimation:I
    const/16 v6, 0x96

    .line 878
    .local v6, minStartDelay:I
    const/4 v11, 0x0

    rsub-int v12, v8, 0x96

    const/16 v13, 0x96

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 880
    .local v7, startDelay:I
    const/16 v2, 0xfa

    .line 881
    .local v2, duration:I
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mItemToAnimateInWhenWindowAnimationIsFinished:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 882
    .local v3, holder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v11, 0x3fc0

    invoke-direct {v1, v11}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 883
    .local v1, cubic:Landroid/animation/TimeInterpolator;
    iget-object v11, v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-static {v11}, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->initializeDrawListener(Landroid/view/View;)V

    .line 896
    const/4 v11, 0x3

    new-array v0, v11, [Landroid/view/View;

    const/4 v11, 0x0

    iget-object v12, v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    aput-object v12, v0, v11

    const/4 v11, 0x1

    iget-object v12, v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->labelView:Landroid/widget/TextView;

    aput-object v12, v0, v11

    const/4 v11, 0x2

    iget-object v12, v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->calloutLine:Landroid/view/View;

    aput-object v12, v0, v11

    .local v0, arr$:[Landroid/view/View;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v9, v0, v4

    .line 898
    .local v9, v:Landroid/view/View;
    if-eqz v9, :cond_0

    .line 899
    invoke-virtual {v9}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const/high16 v12, 0x3f80

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    int-to-long v12, v7

    invoke-virtual {v11, v12, v13}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const-wide/16 v12, 0xfa

    invoke-virtual {v11, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    .line 902
    .local v10, vpa:Landroid/view/ViewPropertyAnimator;
    new-instance v11, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;

    invoke-direct {v11, v10, v9}, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;-><init>(Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    .line 896
    .end local v10           #vpa:Landroid/view/ViewPropertyAnimator;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 906
    .end local v9           #v:Landroid/view/View;
    :cond_1
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/systemui/recent/RecentsPanelView;->mItemToAnimateInWhenWindowAnimationIsFinished:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 907
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/systemui/recent/RecentsPanelView;->mAnimateIconOfFirstTask:Z

    .line 909
    .end local v0           #arr$:[Landroid/view/View;
    .end local v1           #cubic:Landroid/animation/TimeInterpolator;
    .end local v2           #duration:I
    .end local v3           #holder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #minStartDelay:I
    .end local v7           #startDelay:I
    .end local v8           #timeSinceWindowAnimation:I
    :cond_2
    return-void
.end method

.method private createCustomAnimations(Landroid/animation/LayoutTransition;)V
    .locals 3
    .parameter "transitioner"

    .prologue
    .line 773
    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 774
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 775
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 776
    return-void
.end method

.method private getViewLeft(Landroid/view/View;)I
    .locals 1
    .parameter "v"

    .prologue
    .line 446
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0
.end method

.method private getViewTop(Landroid/view/View;)I
    .locals 1
    .parameter "v"

    .prologue
    .line 442
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method private final isLocked(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkg"

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mAppLockMonitor:Lcom/asus/applock/AppLockMonitor;

    invoke-virtual {v0, p1}, Lcom/asus/applock/AppLockMonitor;->isLocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private pointInside(IILandroid/view/View;)Z
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "v"

    .prologue
    .line 450
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 451
    .local v1, l:I
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v2

    .line 453
    .local v2, r:I
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v4

    .line 454
    .local v4, top:I
    iget v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mStatusBarHeight:I

    if-ge v4, v5, :cond_0

    .line 455
    iget v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mStatusBarHeight:I

    .line 457
    :cond_0
    move v3, v4

    .line 459
    .local v3, t:I
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 460
    .local v0, b:I
    if-lt p1, v1, :cond_1

    if-ge p1, v2, :cond_1

    if-lt p2, v3, :cond_1

    if-ge p2, v0, :cond_1

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private refreshRecentTasksList(Ljava/util/ArrayList;Z)V
    .locals 1
    .parameter
    .parameter "firstScreenful"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 945
    .local p1, recentTasksList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 946
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recent/RecentsPanelView;->onTasksLoaded(Ljava/util/ArrayList;Z)V

    .line 950
    :goto_0
    return-void

    .line 948
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->loadTasksInBackground()V

    goto :goto_0
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "reason"

    .prologue
    .line 500
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 503
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showIfReady()V
    .locals 1

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingToShow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 495
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->showImpl(Z)V

    .line 497
    :cond_0
    return-void
.end method

.method private showImpl(Z)V
    .locals 6
    .parameter "show"

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 509
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const-string v5, "recentapps"

    invoke-static {v3, v5}, Lcom/android/systemui/recent/RecentsPanelView;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 511
    iput-boolean p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    .line 513
    if-eqz p1, :cond_4

    .line 515
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 517
    .local v0, noApps:Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    const/high16 v5, 0x3f80

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 518
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    if-eqz v0, :cond_2

    move v3, v2

    :goto_1
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 519
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mClearAllButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 520
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 521
    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->setFocusable(Z)V

    .line 522
    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->setFocusableInTouchMode(Z)V

    .line 523
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->requestFocus()Z

    .line 532
    .end local v0           #noApps:Z
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v0, v2

    .line 515
    goto :goto_0

    .restart local v0       #noApps:Z
    :cond_2
    move v3, v4

    .line 518
    goto :goto_1

    :cond_3
    move v4, v2

    .line 519
    goto :goto_2

    .line 525
    .end local v0           #noApps:Z
    :cond_4
    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingToShow:Z

    .line 527
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mCallUiHiddenBeforeNextReload:Z

    .line 528
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    if-eqz v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->dismiss()V

    goto :goto_3
.end method

.method private startApplicationDetailsActivity(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1115
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1116
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/TaskStackBuilder;->startActivities()V

    .line 1118
    return-void
.end method

.method private updateIcon(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 3
    .parameter "h"
    .parameter "icon"
    .parameter "containerIcon"
    .parameter "show"
    .parameter "anim"

    .prologue
    .line 780
    if-eqz p2, :cond_1

    .line 781
    iget-object v0, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 782
    if-eqz p4, :cond_1

    iget-object v0, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 783
    if-eqz p5, :cond_0

    .line 784
    iget-object v0, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const v2, 0x7f05000b

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 787
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 804
    :cond_1
    return-void
.end method

.method private updateThumbnail(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 5
    .parameter "h"
    .parameter "thumbnail"
    .parameter "show"
    .parameter "anim"

    .prologue
    .line 807
    if-eqz p2, :cond_4

    .line 811
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 815
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 818
    :cond_0
    sget-boolean v2, Lcom/asus/systemui/util/AsusQuicksettingUtil;->IS_SMALL_RAM:Z

    if-eqz v2, :cond_5

    .line 819
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 830
    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    .line 831
    if-eqz p4, :cond_2

    .line 832
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const v4, 0x7f05000b

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 835
    :cond_2
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 837
    :cond_3
    iput-object p2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewDrawable:Landroid/graphics/drawable/Drawable;

    .line 839
    :cond_4
    return-void

    .line 820
    :cond_5
    iget-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFitThumbnailToXY:Z

    if-eqz v2, :cond_6

    .line 821
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 823
    :cond_6
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 824
    .local v1, scaleMatrix:Landroid/graphics/Matrix;
    iget v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mThumbnailWidth:I

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 825
    .local v0, scale:F
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 826
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 827
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method private updateUiElements()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 974
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 977
    .local v0, items:I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    check-cast v3, Landroid/view/View;

    if-lez v0, :cond_1

    move v5, v4

    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 980
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 983
    .local v1, numRecentApps:I
    :goto_2
    if-nez v1, :cond_3

    .line 984
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060084

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 990
    .local v2, recentAppsAccessibilityDescription:Ljava/lang/String;
    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 991
    return-void

    .end local v0           #items:I
    .end local v1           #numRecentApps:I
    .end local v2           #recentAppsAccessibilityDescription:Ljava/lang/String;
    :cond_0
    move v0, v4

    .line 974
    goto :goto_0

    .line 977
    .restart local v0       #items:I
    :cond_1
    const/16 v5, 0x8

    goto :goto_1

    :cond_2
    move v1, v4

    .line 980
    goto :goto_2

    .line 987
    .restart local v1       #numRecentApps:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v5, 0x7f0d

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v3, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #recentAppsAccessibilityDescription:Ljava/lang/String;
    goto :goto_3
.end method


# virtual methods
.method public clearRecentTasksList()V
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelLoadingThumbnailsAndIcons(Lcom/android/systemui/recent/RecentsPanelView;)V

    .line 921
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->onTaskLoadingCancelled()V

    .line 923
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/systemui/recent/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsActivity;->dismissAndGoHome()V

    .line 552
    return-void
.end method

.method public dismissAndGoBack()V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/systemui/recent/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsActivity;->dismissAndGoBack()V

    .line 556
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 1182
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1184
    iget v7, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPaddingLeft:I

    .line 1185
    .local v7, paddingLeft:I
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->isPaddingOffsetRequired()Z

    move-result v6

    .line 1186
    .local v6, offsetRequired:Z
    if-eqz v6, :cond_0

    .line 1187
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getLeftPaddingOffset()I

    move-result v0

    add-int/2addr v7, v0

    .line 1190
    :cond_0
    iget v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mScrollX:I

    add-int v2, v0, v7

    .line 1191
    .local v2, left:I
    iget v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRight:I

    add-int/2addr v0, v2

    iget v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPaddingRight:I

    sub-int/2addr v0, v1

    sub-int v3, v0, v7

    .line 1192
    .local v3, right:I
    iget v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mScrollY:I

    invoke-virtual {p0, v6}, Lcom/android/systemui/recent/RecentsPanelView;->getFadeTop(Z)I

    move-result v1

    add-int v4, v0, v1

    .line 1193
    .local v4, top:I
    invoke-virtual {p0, v6}, Lcom/android/systemui/recent/RecentsPanelView;->getFadeHeight(Z)I

    move-result v0

    add-int v5, v4, v0

    .line 1195
    .local v5, bottom:I
    if-eqz v6, :cond_1

    .line 1196
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getRightPaddingOffset()I

    move-result v0

    add-int/2addr v3, v0

    .line 1197
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getBottomPaddingOffset()I

    move-result v0

    add-int/2addr v5, v0

    .line 1199
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->drawFadedEdges(Landroid/graphics/Canvas;IIII)V

    .line 1200
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 582
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 583
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 584
    .local v1, y:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 585
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 587
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public handleLongPress(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1147
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/view/View;->setSelected(Z)V

    .line 1148
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    if-nez p2, :cond_0

    move-object p2, p1

    :cond_0
    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1150
    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    .line 1151
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0f0001

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1152
    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recent/RecentsPanelView$3;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1171
    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$4;

    invoke-direct {v1, p0, p3}, Lcom/android/systemui/recent/RecentsPanelView$4;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 1177
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 1178
    return-void
.end method

.method public handleOnClick(Landroid/view/View;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1003
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 1004
    iget-object v7, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    .line 1005
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 1006
    const-string v1, "activity"

    invoke-virtual {v8, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1011
    iget-object v2, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_5

    .line 1012
    iget-object v2, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1013
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v9, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getWidth()I

    move-result v9

    if-ne v4, v9, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v9, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    if-ne v4, v9, :cond_4

    move v4, v5

    .line 1018
    :goto_0
    if-eqz v4, :cond_0

    .line 1019
    iget-object v2, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 1020
    iget-object v2, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1022
    :cond_0
    if-nez v2, :cond_2

    move-object v2, v3

    .line 1027
    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/systemui/recent/RecentsPanelView;->show(Z)V

    .line 1028
    iget v3, v7, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    if-ltz v3, :cond_3

    .line 1030
    iget v3, v7, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    invoke-virtual {v1, v3, v6, v2}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 1066
    :goto_2
    if-eqz v4, :cond_1

    .line 1067
    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 1069
    :cond_1
    return-void

    .line 1022
    :cond_2
    iget-object v9, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-static {v9, v2, v5, v5, v3}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_1

    .line 1033
    :cond_3
    iget-object v3, v7, Lcom/android/systemui/recent/TaskDescription;->intent:Landroid/content/Intent;

    .line 1034
    const v1, 0x10104000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1057
    :try_start_0
    new-instance v1, Landroid/os/UserHandle;

    const/4 v6, -0x2

    invoke-direct {v1, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v3, v2, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 1060
    :catch_0
    move-exception v1

    .line 1061
    const-string v2, "RecentsPanelView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Recents does not have the permission to launch "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1062
    :catch_1
    move-exception v1

    .line 1063
    const-string v2, "RecentsPanelView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error launching activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_4
    move v4, v6

    goto :goto_0

    :cond_5
    move v4, v6

    move-object v2, v3

    goto :goto_0
.end method

.method public handleSwipe(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1076
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    iget-object v1, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    .line 1077
    if-nez v1, :cond_1

    .line 1078
    const-string v0, "RecentsPanelView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not able to find activity description for swiped task; view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :cond_0
    :goto_0
    return-void

    .line 1083
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1084
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentTasksLoader;->remove(Lcom/android/systemui/recent/TaskDescription;)V

    .line 1093
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 1094
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->dismissAndGoBack()V

    .line 1099
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1101
    if-eqz v0, :cond_0

    .line 1102
    iget v2, v1, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    invoke-virtual {v0, v2, v3}, Landroid/app/ActivityManager;->removeTask(II)Z

    .line 1105
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const v2, 0x7f0600fa

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1107
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->sendAccessibilityEvent(I)V

    .line 1108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public isInContentArea(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recent/RecentsPanelView;->pointInside(IILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 595
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    return v0
.end method

.method public numItemsInOneScreenful()I
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    invoke-interface {v0}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->numItemsInOneScreenful()I

    move-result v0

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 559
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 562
    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    if-eqz v1, :cond_0

    .line 563
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 564
    .local v0, transitioner:Landroid/animation/LayoutTransition;
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 565
    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->createCustomAnimations(Landroid/animation/LayoutTransition;)V

    .line 569
    .end local v0           #transitioner:Landroid/animation/LayoutTransition;
    :goto_0
    return-void

    .line 567
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 572
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 575
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 535
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 536
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 537
    .local v0, root:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 538
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->setDrawDuringWindowsAnimating(Z)V

    .line 540
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 610
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 612
    const v8, 0x7f0b00a2

    invoke-virtual {p0, v8}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    iput-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    .line 613
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    new-instance v9, Lcom/android/systemui/recent/RecentsPanelView$1;

    invoke-direct {v9, p0}, Lcom/android/systemui/recent/RecentsPanelView$1;-><init>(Lcom/android/systemui/recent/RecentsPanelView;)V

    invoke-interface {v8, v9}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->setOnScrollListener(Ljava/lang/Runnable;)V

    .line 619
    new-instance v8, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    iget-object v9, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-direct {v8, p0, v9}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    .line 620
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    iget-object v9, p0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-interface {v8, v9}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->setAdapter(Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;)V

    .line 621
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    invoke-interface {v8, p0}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->setCallback(Lcom/android/systemui/recent/RecentsCallback;)V

    .line 623
    const v8, 0x7f0b00a1

    invoke-virtual {p0, v8}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    .line 624
    const v8, 0x7f0b00a5

    invoke-virtual {p0, v8}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    .line 627
    const v8, 0x7f0b00a3

    invoke-virtual {p0, v8}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 628
    const v8, 0x7f0b00a4

    invoke-virtual {p0, v8}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView;->mClearAllButton:Landroid/widget/Button;

    .line 629
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView;->mClearAllButton:Landroid/widget/Button;

    new-instance v9, Lcom/android/systemui/recent/RecentsPanelView$2;

    invoke-direct {v9, p0}, Lcom/android/systemui/recent/RecentsPanelView$2;-><init>(Lcom/android/systemui/recent/RecentsPanelView;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 717
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 719
    .local v4, lp_rc:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView;->mClearAllButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 722
    .local v3, lp_btn:Landroid/view/ViewGroup$MarginLayoutParams;
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 723
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v8}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v2

    .line 724
    .local v2, hasNavigationBar:Z
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v6, v8, Landroid/content/res/Configuration;->orientation:I

    .line 725
    .local v6, orientation:I
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x105000c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 727
    .local v7, sb_Height:I
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070075

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 729
    .local v0, btn_Height:I
    if-eqz v2, :cond_1

    .line 730
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x105000d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 732
    .local v5, nb_Height:I
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07007d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 735
    .local v1, btn_margin_left:I
    const/4 v8, 0x2

    if-ne v6, v8, :cond_0

    .line 736
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v8, v7, v9, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 738
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v3, v1, v8, v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    .end local v0           #btn_Height:I
    .end local v1           #btn_margin_left:I
    .end local v2           #hasNavigationBar:Z
    .end local v5           #nb_Height:I
    .end local v6           #orientation:I
    .end local v7           #sb_Height:I
    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    if-eqz v8, :cond_2

    .line 749
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/systemui/recent/RecentsPanelView;->mHighEndGfx:Z

    .line 750
    iget-boolean v8, p0, Lcom/android/systemui/recent/RecentsPanelView;->mHighEndGfx:Z

    if-nez v8, :cond_3

    .line 751
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 758
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView;->mAppLockMonitor:Lcom/asus/applock/AppLockMonitor;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    invoke-virtual {v8, v9, v11}, Lcom/asus/applock/AppLockMonitor;->startMonitor(ILcom/asus/applock/AppLockMonitor$IAppLockObserver;)V

    .line 766
    return-void

    .line 752
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    instance-of v8, v8, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v8, :cond_2

    .line 754
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v9, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    goto :goto_1

    .line 744
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 1122
    const/4 v0, 0x1

    .line 1124
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1072
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p2}, Lcom/android/systemui/recent/RecentsPanelView;->handleOnClick(Landroid/view/View;)V

    .line 1073
    return-void
.end method

.method public onTaskLoadingCancelled()V
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 928
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    .line 929
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->notifyDataSetInvalidated()V

    .line 931
    :cond_0
    return-void
.end method

.method onTaskThumbnailLoaded(Lcom/android/systemui/recent/TaskDescription;)V
    .locals 9
    .parameter "td"

    .prologue
    .line 842
    monitor-enter p1

    .line 843
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    if-eqz v0, :cond_2

    .line 844
    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    check-cast v6, Landroid/view/ViewGroup;

    .line 845
    .local v6, container:Landroid/view/ViewGroup;
    instance-of v0, v6, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    if-eqz v0, :cond_0

    .line 846
    const v0, 0x7f0b00a3

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #container:Landroid/view/ViewGroup;
    check-cast v6, Landroid/view/ViewGroup;

    .line 850
    .restart local v6       #container:Landroid/view/ViewGroup;
    :cond_0
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 851
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 852
    .local v8, v:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    if-eqz v0, :cond_1

    .line 853
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 854
    .local v1, h:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    iget-boolean v0, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->loadedThumbnailAndIcon:Z

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    if-ne v0, p1, :cond_1

    .line 859
    const/4 v5, 0x0

    .line 861
    .local v5, animateShow:Z
    invoke-virtual {p1}, Lcom/android/systemui/recent/TaskDescription;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/recent/TaskDescription;->getContainerIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recent/RecentsPanelView;->updateIcon(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)V

    .line 862
    invoke-virtual {p1}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2, v5}, Lcom/android/systemui/recent/RecentsPanelView;->updateThumbnail(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/drawable/Drawable;ZZ)V

    .line 863
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->loadedThumbnailAndIcon:Z

    .line 850
    .end local v1           #h:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .end local v5           #animateShow:Z
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 868
    .end local v6           #container:Landroid/view/ViewGroup;
    .end local v7           #i:I
    .end local v8           #v:Landroid/view/View;
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 869
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->showIfReady()V

    .line 870
    return-void

    .line 868
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onTasksLoaded(Ljava/util/ArrayList;Z)V
    .locals 4
    .parameter
    .parameter "firstScreenful"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 953
    .local p1, tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 954
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    .line 960
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 961
    .local v2, tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/TaskDescription;

    .line 962
    .local v1, t:Lcom/android/systemui/recent/TaskDescription;
    iget-object v3, v1, Lcom/android/systemui/recent/TaskDescription;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/systemui/recent/RecentsPanelView;->isLocked(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 963
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 956
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #t:Lcom/android/systemui/recent/TaskDescription;
    .end local v2           #tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 966
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    :cond_2
    iput-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    .line 968
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/systemui/recent/RecentsActivity;

    invoke-virtual {v3}, Lcom/android/systemui/recent/RecentsActivity;->isActivityShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 969
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->refreshViews()V

    .line 971
    :cond_3
    return-void
.end method

.method public onUiHidden()V
    .locals 1

    .prologue
    .line 543
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mCallUiHiddenBeforeNextReload:Z

    .line 544
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 545
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 546
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->clearRecentTasksList()V

    .line 548
    :cond_0
    return-void
.end method

.method public onWindowAnimationStart()V
    .locals 2

    .prologue
    .line 912
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingForWindowAnimation:Z

    .line 913
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWindowAnimationStartTime:J

    .line 914
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->animateInIconOfFirstTask()V

    .line 915
    return-void
.end method

.method public refreshRecentTasksList()V
    .locals 2

    .prologue
    .line 940
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->refreshRecentTasksList(Ljava/util/ArrayList;Z)V

    .line 941
    return-void
.end method

.method public refreshViews()V
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->notifyDataSetInvalidated()V

    .line 935
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->updateUiElements()V

    .line 936
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->showIfReady()V

    .line 937
    return-void
.end method

.method public sendButtonClickable(Z)V
    .locals 0
    .parameter "clickable"

    .prologue
    .line 1833
    iput-boolean p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsClickable:Z

    .line 1835
    return-void
.end method

.method public setBinder(Landroid/os/IBinder;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 1814
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mController:Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;

    if-eqz v0, :cond_0

    .line 1815
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mController:Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->setSerivceBinder(Landroid/os/IBinder;)V

    .line 1817
    :cond_0
    return-void
.end method

.method public setMinSwipeAlpha(F)V
    .locals 1
    .parameter "minAlpha"

    .prologue
    .line 769
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    invoke-interface {v0, p1}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->setMinSwipeAlpha(F)V

    .line 770
    return-void
.end method

.method public show(Z)V
    .locals 2
    .parameter "show"

    .prologue
    const/4 v1, 0x0

    .line 468
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZLjava/util/ArrayList;ZZ)V

    .line 469
    return-void
.end method

.method public show(ZLjava/util/ArrayList;ZZ)V
    .locals 2
    .parameter "show"
    .parameter
    .parameter "firstScreenful"
    .parameter "animateIconOfFirstTask"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .local p2, recentTaskDescriptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const/4 v1, 0x0

    .line 473
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mCallUiHiddenBeforeNextReload:Z

    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->onUiHidden()V

    .line 475
    const/4 p2, 0x0

    .line 476
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mAnimateIconOfFirstTask:Z

    .line 477
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingForWindowAnimation:Z

    .line 482
    :goto_0
    if-eqz p1, :cond_1

    .line 483
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingToShow:Z

    .line 484
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/recent/RecentsPanelView;->refreshRecentTasksList(Ljava/util/ArrayList;Z)V

    .line 485
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->showIfReady()V

    .line 489
    :goto_1
    return-void

    .line 479
    :cond_0
    iput-boolean p4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mAnimateIconOfFirstTask:Z

    .line 480
    iput-boolean p4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWaitingForWindowAnimation:Z

    goto :goto_0

    .line 487
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->showImpl(Z)V

    goto :goto_1
.end method

.method public simulateClick(I)Z
    .locals 2
    .parameter "persistentTaskId"

    .prologue
    .line 994
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    invoke-interface {v1, p1}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->findViewForTask(I)Landroid/view/View;

    move-result-object v0

    .line 995
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 996
    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->handleOnClick(Landroid/view/View;)V

    .line 997
    const/4 v1, 0x1

    .line 999
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stopAppLockMonitor()V
    .locals 1

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mAppLockMonitor:Lcom/asus/applock/AppLockMonitor;

    invoke-virtual {v0}, Lcom/asus/applock/AppLockMonitor;->stopMonitor()V

    .line 1207
    return-void
.end method

.method public updateValuesFromResources()V
    .locals 2

    .prologue
    .line 603
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 604
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mThumbnailWidth:I

    .line 605
    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFitThumbnailToXY:Z

    .line 606
    return-void
.end method
