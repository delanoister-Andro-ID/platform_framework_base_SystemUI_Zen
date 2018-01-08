.class public Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;
.super Landroid/widget/LinearLayout;
.source "AsusNavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/AsusNavigationBarView$H;
    }
.end annotation


# instance fields
.field private final mAccessibilityClickListener:Landroid/view/View$OnClickListener;

.field private mBackAltIcon:Landroid/graphics/drawable/Drawable;

.field private mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

.field private mBackIcon:Landroid/graphics/drawable/Drawable;

.field private mBackLandIcon:Landroid/graphics/drawable/Drawable;

.field mBarSize:I

.field private final mBarTransitions:Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;

.field private mCameraDisabledByDpm:Z

.field private final mCameraTouchListener:Landroid/view/View$OnTouchListener;

.field mCurrentView:Landroid/view/View;

.field private mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

.field private mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

.field mDisabledFlags:I

.field final mDisplay:Landroid/view/Display;

.field private mHandler:Lcom/android/systemui/statusbar/phone/AsusNavigationBarView$H;

.field mNavigationIconHints:I

.field private mRecentIcon:Landroid/graphics/drawable/Drawable;

.field private mRecentLandIcon:Landroid/graphics/drawable/Drawable;

.field mRotatedViews:[Landroid/view/View;

.field mScreenOn:Z

.field mShowMenu:Z

.field mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 148
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mCurrentView:Landroid/view/View;

    .line 68
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mRotatedViews:[Landroid/view/View;

    .line 75
    iput v2, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mDisabledFlags:I

    .line 76
    iput v2, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mNavigationIconHints:I

    .line 94
    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mAccessibilityClickListener:Landroid/view/View$OnClickListener;

    .line 105
    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mCameraTouchListener:Landroid/view/View$OnTouchListener;

    .line 222
    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView$H;

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView$H;-><init>(Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;Lcom/android/systemui/statusbar/phone/AsusNavigationBarView$1;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/AsusNavigationBarView$H;

    .line 150
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mDisplay:Landroid/view/Display;

    .line 153
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 154
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mBarSize:I

    .line 155
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mVertical:Z

    .line 156
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mShowMenu:Z

    .line 157
    new-instance v1, Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/DelegateViewHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    .line 159
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getIcons(Landroid/content/res/Resources;)V

    .line 161
    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;-><init>(Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->isCameraDisabledByDpm()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mCameraDisabledByDpm:Z

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->watchForDevicePolicyChanges()V

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;)Lcom/android/systemui/statusbar/DelegateViewHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mCameraDisabledByDpm:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->isCameraDisabledByDpm()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->enableAccessibility(Z)V

    return-void
.end method

.method private enableAccessibility(Z)V
    .locals 9
    .parameter "touchEnabled"

    .prologue
    const/4 v4, 0x0

    .line 436
    const-string v6, "PhoneStatusBar/AsusNavigationBarView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "touchEnabled:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mAccessibilityClickListener:Landroid/view/View$OnClickListener;

    .line 441
    .local v3, onClickListener:Landroid/view/View$OnClickListener;
    :goto_0
    if-eqz p1, :cond_3

    .line 442
    .local v4, onTouchListener:Landroid/view/View$OnTouchListener;
    :goto_1
    const/4 v1, 0x0

    .line 443
    .local v1, hasCamera:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mRotatedViews:[Landroid/view/View;

    array-length v6, v6

    if-ge v2, v6, :cond_4

    .line 444
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v6, v6, v2

    const v7, 0x7f0b0011

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 445
    .local v0, cameraButton:Landroid/view/View;
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v6, v6, v2

    const v7, 0x7f0b0010

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 446
    .local v5, searchLight:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 447
    const/4 v1, 0x1

    .line 448
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 449
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    :cond_0
    if-eqz v5, :cond_1

    .line 452
    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0           #cameraButton:Landroid/view/View;
    .end local v1           #hasCamera:Z
    .end local v2           #i:I
    .end local v3           #onClickListener:Landroid/view/View$OnClickListener;
    .end local v4           #onTouchListener:Landroid/view/View$OnTouchListener;
    .end local v5           #searchLight:Landroid/view/View;
    :cond_2
    move-object v3, v4

    .line 440
    goto :goto_0

    .line 441
    .restart local v3       #onClickListener:Landroid/view/View$OnClickListener;
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mCameraTouchListener:Landroid/view/View$OnTouchListener;

    goto :goto_1

    .line 455
    .restart local v1       #hasCamera:Z
    .restart local v2       #i:I
    .restart local v4       #onTouchListener:Landroid/view/View$OnTouchListener;
    :cond_4
    if-eqz v1, :cond_5

    .line 458
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    .line 460
    :cond_5
    return-void
.end method

.method private getIcons(Landroid/content/res/Resources;)V
    .locals 2
    .parameter "res"

    .prologue
    const v1, 0x7f02014f

    .line 255
    const v0, 0x7f02014e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 256
    const v0, 0x7f020150

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    .line 257
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    .line 258
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    .line 259
    const v0, 0x7f02015a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mRecentIcon:Landroid/graphics/drawable/Drawable;

    .line 260
    const v0, 0x7f02015b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mRecentLandIcon:Landroid/graphics/drawable/Drawable;

    .line 261
    return-void
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 3
    .parameter "resId"

    .prologue
    .line 533
    if-eqz p1, :cond_0

    .line 534
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 536
    .local v1, res:Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 541
    .end local v1           #res:Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 537
    .restart local v1       #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 538
    .local v0, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v2, "(unknown)"

    goto :goto_0

    .line 541
    .end local v0           #ex:Landroid/content/res/Resources$NotFoundException;
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_0
    const-string v2, "(null)"

    goto :goto_0
.end method

.method private isCameraDisabledByDpm()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 358
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mContext:Landroid/content/Context;

    const-string v8, "device_policy"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 360
    .local v2, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v2, :cond_1

    .line 362
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v7

    iget v4, v7, Landroid/content/pm/UserInfo;->id:I

    .line 363
    .local v4, userId:I
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v4}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    .line 364
    .local v1, disabledFlags:I
    and-int/lit8 v7, v1, 0x2

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->isSecure()Z

    move-result v7

    if-eqz v7, :cond_2

    move v0, v6

    .line 367
    .local v0, disabledBecauseKeyguardSecure:Z
    :goto_0
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v5, v6

    .line 372
    .end local v0           #disabledBecauseKeyguardSecure:Z
    .end local v1           #disabledFlags:I
    .end local v4           #userId:I
    :cond_1
    :goto_1
    return v5

    .restart local v1       #disabledFlags:I
    .restart local v4       #userId:I
    :cond_2
    move v0, v5

    .line 364
    goto :goto_0

    .line 368
    .end local v1           #disabledFlags:I
    .end local v4           #userId:I
    :catch_0
    move-exception v3

    .line 369
    .local v3, e:Landroid/os/RemoteException;
    const-string v6, "PhoneStatusBar/AsusNavigationBarView"

    const-string v7, "Can\'t get userId"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private postCheckForInvalidLayout(Ljava/lang/String;)V
    .locals 3
    .parameter "how"

    .prologue
    const/4 v2, 0x0

    .line 546
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/AsusNavigationBarView$H;

    const/16 v1, 0x21ee

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 547
    return-void
.end method

.method private static visibilityToString(I)Ljava/lang/String;
    .locals 1
    .parameter "vis"

    .prologue
    .line 550
    sparse-switch p0, :sswitch_data_0

    .line 556
    const-string v0, "VISIBLE"

    :goto_0
    return-object v0

    .line 552
    :sswitch_0
    const-string v0, "INVISIBLE"

    goto :goto_0

    .line 554
    :sswitch_1
    const-string v0, "GONE"

    goto :goto_0

    .line 550
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method private watchForAccessibilityChanges()V
    .locals 3

    .prologue
    .line 420
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 424
    .local v0, am:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->enableAccessibility(Z)V

    .line 427
    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView$4;-><init>(Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 433
    return-void
.end method

.method private watchForDevicePolicyChanges()V
    .locals 3

    .prologue
    .line 179
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 180
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView$3;-><init>(Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 561
    const-string v7, "AsusNavigationBarView {"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 563
    .local v4, r:Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 564
    .local v6, size:Landroid/graphics/Point;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 566
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "      this: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getVisibility()I

    move-result v8

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 570
    iget v7, v4, Landroid/graphics/Rect;->right:I

    iget v8, v6, Landroid/graphics/Point;->x:I

    if-gt v7, v8, :cond_0

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    iget v8, v6, Landroid/graphics/Point;->y:I

    if-le v7, v8, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 571
    .local v3, offscreen:Z
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "      window: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getWindowVisibility()I

    move-result v8

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v3, :cond_2

    const-string v7, " OFFSCREEN!"

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 576
    const-string v7, "      mCurrentView: id=%s (%dx%d) %s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getResourceName(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    const-string v8, "      disabled=0x%08x vertical=%s menu=%s"

    const/4 v7, 0x3

    new-array v9, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v10, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mDisabledFlags:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v10, 0x1

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mVertical:Z

    if-eqz v7, :cond_3

    const-string v7, "true"

    :goto_2
    aput-object v7, v9, v10

    const/4 v10, 0x2

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mShowMenu:Z

    if-eqz v7, :cond_4

    const-string v7, "true"

    :goto_3
    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v0

    .line 587
    .local v0, back:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v1

    .line 588
    .local v1, home:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v5

    .line 589
    .local v5, recent:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v2

    .line 591
    .local v2, menu:Landroid/view/View;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "      back: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 595
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "      home: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "      rcnt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v8

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "      menu: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v8

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 607
    const-string v7, "    }"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 608
    return-void

    .line 570
    .end local v0           #back:Landroid/view/View;
    .end local v1           #home:Landroid/view/View;
    .end local v2           #menu:Landroid/view/View;
    .end local v3           #offscreen:Z
    .end local v5           #recent:Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 571
    .restart local v3       #offscreen:Z
    :cond_2
    const-string v7, ""

    goto/16 :goto_1

    .line 581
    :cond_3
    const-string v7, "false"

    goto/16 :goto_2

    :cond_4
    const-string v7, "false"

    goto/16 :goto_3
.end method

.method public getBackButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;

    return-object v0
.end method

.method public getCameraButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getHomeButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenuButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0b000e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getRecentsButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0b000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSearchLight()Landroid/view/View;
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0b0010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyScreenOn(Z)V
    .locals 2
    .parameter "screenOn"

    .prologue
    .line 272
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mScreenOn:Z

    .line 273
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mDisabledFlags:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->setDisabledFlags(IZ)V

    .line 274
    return-void
.end method

.method public onFinishInflate()V
    .locals 6

    .prologue
    const v5, 0x7f0b0013

    const/4 v4, 0x0

    .line 405
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mRotatedViews:[Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v2, 0x2

    const v3, 0x7f0b0009

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object v3, v0, v4

    .line 408
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 410
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v1, 0x3

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 414
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mCurrentView:Landroid/view/View;

    .line 416
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->watchForAccessibilityChanges()V

    .line 417
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 490
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 491
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setInitialTouchRegion([Landroid/view/View;)V

    .line 492
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 499
    if-lez p1, :cond_1

    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    .line 500
    .local v0, newVertical:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mVertical:Z

    if-eq v0, v1, :cond_0

    .line 501
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mVertical:Z

    .line 503
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->reorient()V

    .line 506
    :cond_0
    const-string v1, "sizeChanged"

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->postCheckForInvalidLayout(Ljava/lang/String;)V

    .line 507
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 508
    return-void

    .line 499
    .end local v0           #newVertical:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 207
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/DeadZone;->poke(Landroid/view/MotionEvent;)V

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    if-eqz v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 212
    .local v0, ret:Z
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 214
    .end local v0           #ret:Z
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public reorient()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 467
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 468
    .local v1, rot:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 469
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v2, v0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 468
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 471
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mCurrentView:Landroid/view/View;

    .line 472
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mCurrentView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 474
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mCurrentView:Landroid/view/View;

    const v3, 0x7f0b0012

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/DeadZone;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    .line 477
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mVertical:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarTransitions;->init(Z)V

    .line 478
    iget v2, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mDisabledFlags:I

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->setDisabledFlags(IZ)V

    .line 479
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mShowMenu:Z

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->setMenuVisibility(ZZ)V

    .line 485
    iget v2, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mNavigationIconHints:I

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->setNavigationIconHints(IZ)V

    .line 486
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 1
    .parameter "phoneStatusBar"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 203
    return-void
.end method

.method public setDelegateView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setDelegateView(Landroid/view/View;)V

    .line 199
    return-void
.end method

.method public setDisabledFlags(I)V
    .locals 1
    .parameter "disabledFlags"

    .prologue
    .line 309
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->setDisabledFlags(IZ)V

    .line 310
    return-void
.end method

.method public setDisabledFlags(IZ)V
    .locals 11
    .parameter "disabledFlags"
    .parameter "force"

    .prologue
    .line 313
    if-nez p2, :cond_1

    iget v9, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mDisabledFlags:I

    if-ne v9, p1, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mDisabledFlags:I

    .line 317
    const/high16 v9, 0x20

    and-int/2addr v9, p1

    if-eqz v9, :cond_3

    const/4 v2, 0x1

    .line 318
    .local v2, disableHome:Z
    :goto_1
    const/high16 v9, 0x100

    and-int/2addr v9, p1

    if-eqz v9, :cond_4

    const/4 v3, 0x1

    .line 319
    .local v3, disableRecent:Z
    :goto_2
    const/high16 v9, 0x40

    and-int/2addr v9, p1

    if-eqz v9, :cond_5

    iget v9, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_5

    const/4 v1, 0x1

    .line 321
    .local v1, disableBack:Z
    :goto_3
    const/high16 v9, 0x200

    and-int/2addr v9, p1

    if-eqz v9, :cond_6

    const/4 v4, 0x1

    .line 324
    .local v4, disableSearch:Z
    :goto_4
    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    if-eqz v1, :cond_7

    if-eqz v4, :cond_7

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->setSlippery(Z)V

    .line 327
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mScreenOn:Z

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mCurrentView:Landroid/view/View;

    if-eqz v9, :cond_2

    .line 328
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mCurrentView:Landroid/view/View;

    const v10, 0x7f0b000a

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 329
    .local v7, navButtons:Landroid/view/ViewGroup;
    if-nez v7, :cond_8

    const/4 v6, 0x0

    .line 330
    .local v6, lt:Landroid/animation/LayoutTransition;
    :goto_6
    if-eqz v6, :cond_2

    .line 331
    const/4 v9, 0x3

    invoke-virtual {v6, v9}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 337
    .end local v6           #lt:Landroid/animation/LayoutTransition;
    .end local v7           #navButtons:Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v10

    if-eqz v1, :cond_9

    const/4 v9, 0x4

    :goto_7
    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    .line 338
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v10

    if-eqz v2, :cond_a

    const/4 v9, 0x4

    :goto_8
    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    .line 339
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v10

    if-eqz v3, :cond_b

    const/4 v9, 0x4

    :goto_9
    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    .line 341
    if-eqz v2, :cond_c

    if-nez v4, :cond_c

    const/4 v8, 0x1

    .line 342
    .local v8, shouldShowSearch:Z
    :goto_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getSearchLight()Landroid/view/View;

    move-result-object v10

    if-eqz v8, :cond_d

    const/4 v9, 0x0

    :goto_b
    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    .line 343
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getCameraButton()Landroid/view/View;

    move-result-object v0

    .line 344
    .local v0, cameraButton:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 345
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mContext:Landroid/content/Context;

    const-string v10, "keyguard"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    .line 347
    .local v5, keyguardManager:Landroid/app/KeyguardManager;
    invoke-virtual {v5}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 348
    if-eqz v8, :cond_e

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mCameraDisabledByDpm:Z

    if-nez v9, :cond_e

    const/4 v9, 0x0

    :goto_c
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 317
    .end local v0           #cameraButton:Landroid/view/View;
    .end local v1           #disableBack:Z
    .end local v2           #disableHome:Z
    .end local v3           #disableRecent:Z
    .end local v4           #disableSearch:Z
    .end local v5           #keyguardManager:Landroid/app/KeyguardManager;
    .end local v8           #shouldShowSearch:Z
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 318
    .restart local v2       #disableHome:Z
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 319
    .restart local v3       #disableRecent:Z
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 321
    .restart local v1       #disableBack:Z
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 324
    .restart local v4       #disableSearch:Z
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 329
    .restart local v7       #navButtons:Landroid/view/ViewGroup;
    :cond_8
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v6

    goto :goto_6

    .line 337
    .end local v7           #navButtons:Landroid/view/ViewGroup;
    :cond_9
    const/4 v9, 0x0

    goto :goto_7

    .line 338
    :cond_a
    const/4 v9, 0x0

    goto :goto_8

    .line 339
    :cond_b
    const/4 v9, 0x0

    goto :goto_9

    .line 341
    :cond_c
    const/4 v8, 0x0

    goto :goto_a

    .line 342
    .restart local v8       #shouldShowSearch:Z
    :cond_d
    const/16 v9, 0x8

    goto :goto_b

    .line 348
    .restart local v0       #cameraButton:Landroid/view/View;
    .restart local v5       #keyguardManager:Landroid/app/KeyguardManager;
    :cond_e
    const/16 v9, 0x8

    goto :goto_c

    .line 351
    :cond_f
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public setLayoutDirection(I)V
    .locals 2
    .parameter "layoutDirection"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getIcons(Landroid/content/res/Resources;)V

    .line 267
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 268
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mNavigationIconHints:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->setNavigationIconHints(IZ)V

    .line 269
    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 392
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->setMenuVisibility(ZZ)V

    .line 393
    return-void
.end method

.method public setMenuVisibility(ZZ)V
    .locals 2
    .parameter "show"
    .parameter "force"

    .prologue
    .line 396
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mShowMenu:Z

    if-ne v0, p1, :cond_0

    .line 401
    :goto_0
    return-void

    .line 398
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mShowMenu:Z

    .line 400
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getMenuButton()Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mShowMenu:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public setNavigationIconHints(I)V
    .locals 1
    .parameter "hints"

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->setNavigationIconHints(IZ)V

    .line 278
    return-void
.end method

.method public setNavigationIconHints(IZ)V
    .locals 4
    .parameter "hints"
    .parameter "force"

    .prologue
    const/high16 v2, 0x3f80

    const/high16 v1, 0x3f00

    .line 281
    if-nez p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mNavigationIconHints:I

    if-ne p1, v0, :cond_0

    .line 306
    :goto_0
    return-void

    .line 289
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mNavigationIconHints:I

    .line 291
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v3

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 293
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v3

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 295
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 298
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mVertical:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 303
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mVertical:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mRecentLandIcon:Landroid/graphics/drawable/Drawable;

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mDisabledFlags:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->setDisabledFlags(IZ)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 291
    goto :goto_1

    :cond_2
    move v0, v2

    .line 293
    goto :goto_2

    :cond_3
    move v1, v2

    .line 295
    goto :goto_3

    .line 298
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mVertical:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    .line 303
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mRecentIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_5
.end method

.method public setSlippery(Z)V
    .locals 5
    .parameter "newSlippery"

    .prologue
    const/high16 v4, 0x2000

    .line 376
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 377
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_0

    .line 378
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 379
    .local v1, oldSlippery:Z
    :goto_0
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 380
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 386
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 387
    .local v2, wm:Landroid/view/WindowManager;
    invoke-interface {v2, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    .end local v1           #oldSlippery:Z
    .end local v2           #wm:Landroid/view/WindowManager;
    :cond_0
    return-void

    .line 378
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 381
    .restart local v1       #oldSlippery:Z
    :cond_2
    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 382
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x20000001

    and-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1
.end method

.method protected transitionCameraAndSearchButtonAlpha(F)V
    .locals 5
    .parameter "alpha"

    .prologue
    const-wide/16 v3, 0xc8

    .line 168
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getCameraButton()Landroid/view/View;

    move-result-object v0

    .line 169
    .local v0, cameraButtonView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getSearchLight()Landroid/view/View;

    move-result-object v1

    .line 173
    .local v1, searchLight:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 174
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 176
    :cond_1
    return-void
.end method
