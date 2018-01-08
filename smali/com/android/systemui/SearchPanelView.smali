.class public Lcom/android/systemui/SearchPanelView;
.super Landroid/widget/FrameLayout;
.source "SearchPanelView.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;
.implements Lcom/android/systemui/statusbar/StatusBarPanel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;
    }
.end annotation


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

.field private final mContext:Landroid/content/Context;

.field private mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

.field final mGlowPadViewListener:Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;

.field private mHasTouched:Z

.field private mHideRunnable:Ljava/lang/Runnable;

.field private final mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mSearchTargetsContainer:Landroid/view/View;

.field private mShowing:Z

.field private mWm:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/SearchPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/SearchPanelView;->mHasTouched:Z

    .line 182
    new-instance v0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;-><init>(Lcom/android/systemui/SearchPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadViewListener:Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;

    .line 229
    new-instance v0, Lcom/android/systemui/SearchPanelView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/SearchPanelView$2;-><init>(Lcom/android/systemui/SearchPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 249
    new-instance v0, Lcom/android/systemui/SearchPanelView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/SearchPanelView$3;-><init>(Lcom/android/systemui/SearchPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mHideRunnable:Ljava/lang/Runnable;

    .line 81
    iput-object p1, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    .line 82
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mWm:Landroid/view/IWindowManager;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/SearchPanelView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/SearchPanelView;->mHasTouched:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/SearchPanelView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/SearchPanelView;->mHasTouched:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/SearchPanelView;)Lcom/android/systemui/statusbar/BaseStatusBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/SearchPanelView;)Lcom/android/internal/widget/multiwaveview/GlowPadView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/SearchPanelView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->startAssistActivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/SearchPanelView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->vibrate()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/systemui/SearchPanelView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/SearchPanelView;->mShowing:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/SearchPanelView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createLayoutTransitioner()Landroid/animation/LayoutTransition;
    .locals 4

    .prologue
    .line 402
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 403
    .local v0, transitioner:Landroid/animation/LayoutTransition;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 404
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 405
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 406
    return-object v0
.end method

.method private maybeSwapSearchIcon()V
    .locals 6

    .prologue
    .line 205
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v1

    .line 207
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 209
    .local v0, component:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const-string v3, "com.android.systemui.action_assist_icon"

    const v4, 0x1080531

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 215
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_0
    return-void
.end method

.method private pointInside(IILandroid/view/View;)Z
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "v"

    .prologue
    .line 218
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 219
    .local v1, l:I
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v2

    .line 220
    .local v2, r:I
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 221
    .local v3, t:I
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 222
    .local v0, b:I
    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    if-lt p2, v3, :cond_0

    if-ge p2, v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private startAssistActivity()Z
    .locals 15

    .prologue
    const/4 v13, -0x2

    const/4 v11, 0x1

    .line 86
    iget-object v10, p0, Lcom/android/systemui/SearchPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceProvisioned()Z

    move-result v10

    if-nez v10, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v11

    .line 89
    :cond_1
    iget-object v10, p0, Lcom/android/systemui/SearchPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(I)V

    .line 90
    const/4 v5, 0x0

    .line 92
    .local v5, isKeyguardShowing:Z
    :try_start_0
    iget-object v10, p0, Lcom/android/systemui/SearchPanelView;->mWm:Landroid/view/IWindowManager;

    invoke-interface {v10}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v5

    .line 98
    :goto_1
    const/4 v6, 0x0

    .line 100
    .local v6, isLocked:Z
    if-eqz v5, :cond_2

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->showAssistant()V

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->onAnimationStarted()V

    .line 147
    :goto_2
    if-nez v6, :cond_3

    move v10, v11

    :goto_3
    move v11, v10

    goto :goto_0

    .line 106
    :cond_2
    iget-object v10, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const-string v12, "search"

    invoke-virtual {v10, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/SearchManager;

    iget-object v12, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v12, v11, v13}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v4

    .line 109
    .local v4, intent:Landroid/content/Intent;
    if-eqz v4, :cond_0

    .line 110
    const/4 v8, 0x0

    .line 112
    .local v8, packageName:Ljava/lang/String;
    :try_start_1
    iget-object v10, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 113
    .local v9, pm:Landroid/content/pm/PackageManager;
    const/high16 v10, 0x1

    invoke-virtual {v9, v4, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 114
    .local v3, info:Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_0

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v10, :cond_0

    .line 117
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 118
    .local v0, aInfo:Landroid/content/pm/ActivityInfo;
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    iget-object v10, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const-string v12, "activity"

    invoke-virtual {v10, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 125
    .local v1, am:Landroid/app/ActivityManager;
    invoke-virtual {v1, v8}, Landroid/app/ActivityManager;->isPackageLocked(Ljava/lang/String;)Z

    move-result v6

    .line 129
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 135
    :goto_4
    :try_start_3
    iget-object v10, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const v12, 0x7f050010

    const v13, 0x7f050011

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getHandler()Landroid/os/Handler;

    move-result-object v14

    invoke-static {v10, v12, v13, v14, p0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v7

    .line 138
    .local v7, opts:Landroid/app/ActivityOptions;
    const/high16 v10, 0x1000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 139
    iget-object v10, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v12

    new-instance v13, Landroid/os/UserHandle;

    const/4 v14, -0x2

    invoke-direct {v13, v14}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v10, v4, v12, v13}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 141
    .end local v7           #opts:Landroid/app/ActivityOptions;
    :catch_0
    move-exception v2

    .line 142
    .local v2, e:Landroid/content/ActivityNotFoundException;
    const-string v10, "SearchPanelView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Activity not found for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->onAnimationStarted()V

    goto/16 :goto_2

    .line 119
    .end local v0           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v1           #am:Landroid/app/ActivityManager;
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    .end local v9           #pm:Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v2

    .line 120
    .local v2, e:Ljava/lang/Exception;
    const-string v10, "SearchPanelView"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 147
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v8           #packageName:Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 130
    .restart local v0       #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v1       #am:Landroid/app/ActivityManager;
    .restart local v3       #info:Landroid/content/pm/ResolveInfo;
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v8       #packageName:Ljava/lang/String;
    .restart local v9       #pm:Landroid/content/pm/PackageManager;
    :catch_2
    move-exception v10

    goto :goto_4

    .line 93
    .end local v0           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v1           #am:Landroid/app/ActivityManager;
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v6           #isLocked:Z
    .end local v8           #packageName:Ljava/lang/String;
    .end local v9           #pm:Landroid/content/pm/PackageManager;
    :catch_3
    move-exception v10

    goto/16 :goto_1
.end method

.method private vibrate()V
    .locals 7

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 241
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "haptic_feedback_enabled"

    const/4 v5, 0x1

    const/4 v6, -0x2

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_0

    .line 243
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 244
    .local v1, res:Landroid/content/res/Resources;
    const-string v3, "vibrator"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 245
    .local v2, vibrator:Landroid/os/Vibrator;
    const v3, 0x7f0a0025

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 247
    .end local v1           #res:Landroid/content/res/Resources;
    .end local v2           #vibrator:Landroid/os/Vibrator;
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 349
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 350
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 351
    .local v1, y:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 352
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 354
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 371
    invoke-static {}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->getShowNav()Z

    move-result v2

    if-nez v2, :cond_0

    .line 372
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 373
    .local v0, action:I
    if-eq v0, v4, :cond_1

    .line 374
    iput-boolean v4, p0, Lcom/android/systemui/SearchPanelView;->mHasTouched:Z

    .line 375
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 376
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 377
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 387
    .end local v0           #action:I
    .end local v1           #handler:Landroid/os/Handler;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 379
    .restart local v0       #action:I
    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/SearchPanelView;->mHasTouched:Z

    .line 380
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 381
    .restart local v1       #handler:Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 382
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 383
    invoke-virtual {p0, v3, v3, v3}, Lcom/android/systemui/SearchPanelView;->show(ZZZ)V

    goto :goto_0
.end method

.method public isAssistantAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 410
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const-string v2, "search"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const/4 v3, -0x2

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isInContentArea(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mSearchTargetsContainer:Landroid/view/View;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/SearchPanelView;->pointInside(IILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/android/systemui/SearchPanelView;->mShowing:Z

    return v0
.end method

.method public onAnimationStarted()V
    .locals 3

    .prologue
    .line 186
    new-instance v0, Lcom/android/systemui/SearchPanelView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/SearchPanelView$1;-><init>(Lcom/android/systemui/SearchPanelView;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/SearchPanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 192
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 197
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 198
    const v0, 0x7f0b00aa

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mSearchTargetsContainer:Landroid/view/View;

    .line 200
    const v0, 0x7f0b00ac

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .line 201
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadViewListener:Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 202
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 340
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 342
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x2

    .line 393
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 394
    const v0, 0x8cd2

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 398
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .parameter "bar"

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/systemui/SearchPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    .line 367
    return-void
.end method

.method public show(ZZ)V
    .locals 1
    .parameter "show"
    .parameter "animate"

    .prologue
    .line 268
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/SearchPanelView;->show(ZZZ)V

    .line 269
    return-void
.end method

.method public show(ZZZ)V
    .locals 13
    .parameter "show"
    .parameter "animate"
    .parameter "hideDelayed"

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getHandler()Landroid/os/Handler;

    move-result-object v9

    .line 273
    .local v9, handler:Landroid/os/Handler;
    if-eqz v9, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 275
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/SearchPanelView;->mHasTouched:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->getShowNav()Z

    move-result v0

    if-nez v0, :cond_2

    .line 322
    :cond_1
    :goto_0
    return-void

    .line 277
    :cond_2
    if-nez p1, :cond_3

    .line 278
    if-eqz p2, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->createLayoutTransitioner()Landroid/animation/LayoutTransition;

    move-result-object v10

    .line 279
    .local v10, transitioner:Landroid/animation/LayoutTransition;
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mSearchTargetsContainer:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 281
    .end local v10           #transitioner:Landroid/animation/LayoutTransition;
    :cond_3
    if-eqz p1, :cond_7

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/SearchPanelView;->mShowing:Z

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/SearchPanelView;->mHasTouched:Z

    .line 284
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->maybeSwapSearchIcon()V

    .line 285
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    .line 286
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelView;->setVisibility(I)V

    .line 289
    invoke-static {}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->getShowNav()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 290
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->suspendAnimations()V

    .line 291
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->ping()V

    .line 292
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 293
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->vibrate()V

    .line 305
    :cond_4
    :goto_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelView;->setFocusable(Z)V

    .line 306
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelView;->setFocusableInTouchMode(Z)V

    .line 307
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->requestFocus()Z

    goto :goto_0

    .line 278
    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    .line 295
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v11, v0, 0x2

    .line 296
    .local v11, x:I
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v12, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 298
    .local v12, y:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    int-to-float v5, v11

    int-to-float v6, v12

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 300
    .local v8, fakeEvent:Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0, v8}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 301
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->vibrate()V

    .line 302
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_2

    .line 309
    .end local v8           #fakeEvent:Landroid/view/MotionEvent;
    .end local v11           #x:I
    .end local v12           #y:I
    :cond_7
    invoke-static {}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->getShowNav()Z

    move-result v0

    if-nez v0, :cond_9

    .line 310
    if-eqz v9, :cond_1

    .line 311
    if-eqz p3, :cond_8

    .line 312
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x96

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 314
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 318
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/SearchPanelView;->mShowing:Z

    .line 319
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelView;->setVisibility(I)V

    goto/16 :goto_0
.end method
