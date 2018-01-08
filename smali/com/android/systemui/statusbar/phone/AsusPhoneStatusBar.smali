.class public Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;
.super Lcom/android/systemui/statusbar/BaseStatusBar;
.source "AsusPhoneStatusBar.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$FastColorDrawable;,
        Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;,
        Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$ClickHandle;,
        Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$MyTicker;,
        Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$H;
    }
.end annotation


# static fields
.field private static isCapturing:Z

.field private static mFilter:Landroid/content/IntentFilter;

.field private static mIsInitial:[Z

.field private static mIsPop:[Z

.field private static mLastScreenLayout:I

.field public static mShowNav:[Z

.field private static mSignalClusterView:[Lcom/android/systemui/statusbar/AsusSignalClusterView;

.field private static mSignalClusterViewDualSim:[Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;

.field private static sIsDDS:Z


# instance fields
.field final FLIP_DURATION:I

.field final FLIP_DURATION_IN:I

.field final FLIP_DURATION_OUT:I

.field mAbsPos:[[I

.field final mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

.field mAlwaysTopItem:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

.field mAlwaysTopItemDelayDismiss:Z

.field private final mAutohide:Ljava/lang/Runnable;

.field private mAutohideSuspended:[Z

.field mBatteryController:[Lcom/android/systemui/statusbar/policy/AsusBatteryController;

.field mBluetoothController:[Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private mBoundary:[I

.field mBrightnessBarAnim:[Landroid/animation/Animator;

.field mBrightnessView:[Landroid/view/View;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCancelboundary:[I

.field private mCarrierLabel:[Landroid/widget/TextView;

.field private mCarrierLabelHeight:[I

.field private mCarrierLabelVisible:[Z

.field private final mCheckBarModes:Ljava/lang/Runnable;

.field mClearButton:[Landroid/view/View;

.field mClearButtonAnim:[Landroid/animation/Animator;

.field private mClearButtonListener:Landroid/view/View$OnClickListener;

.field private mClickHandle:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$ClickHandle;

.field private mClockClickListener:Landroid/view/View$OnClickListener;

.field private mCollapseAccelPx:[F

.field private mCollapseMinDisplayFraction:[F

.field mCurrentDisplaySize:[Landroid/graphics/Point;

.field mDateTimeView:[Landroid/view/View;

.field mDateView:[Lcom/android/systemui/statusbar/policy/DateView;

.field final mDecelerateInterpolator:Landroid/animation/TimeInterpolator;

.field private mDemoMode:Z

.field private mDemoModeAllowed:Z

.field private mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

.field private mDensity:[F

.field mDisabled:[I

.field mDisplay:Landroid/view/Display;

.field mDisplayMetrics:[Landroid/util/DisplayMetrics;

.field mEdgeBorder:[I

.field mEditPageView:[Landroid/widget/ImageView;

.field mEditPageViewAnim:[Landroid/animation/Animator;

.field private mEmergencyCallLabel:[Landroid/widget/TextView;

.field private mExpandAccelPx:[F

.field private mExpandMinDisplayFraction:[F

.field mExpandedContents:[Landroid/view/View;

.field mExpandedVisible:[Z

.field private mFlingCollapseMinVelocityPx:[F

.field private mFlingExpandMinVelocityPx:[F

.field private mFlingGestureMaxOutputVelocityPx:[F

.field private mFlingGestureMaxXVelocityPx:[F

.field mFlipSettingsView:[Landroid/view/View;

.field mFlipSettingsViewAnim:[Landroid/animation/Animator;

.field private mFloatingMenu:[Landroid/view/View;

.field private mFloatingShadow:[Landroid/view/View;

.field mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

.field mHasFlipSettings:[Z

.field mHasSettingsPanel:[Z

.field private mHeadsUpNotificationDecay:[I

.field private mHeadsUpNotificationView:[Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

.field private final mHeadsUpObserver:Landroid/database/ContentObserver;

.field private mHeadsUpVerticalOffset:[F

.field mHomeSearchActionListener:Landroid/view/View$OnTouchListener;

.field mIconHPadding:[I

.field mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

.field mIconSize:[I

.field private mInteractingWindows:[I

.field private mIsIMEVisible:Z

.field private mIsMenuVisible:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field mLocationController:[Lcom/android/systemui/statusbar/policy/LocationController;

.field private final mMakeIconsInvisible:Landroid/animation/Animator$AnimatorListener;

.field private final mMenuHandler:Landroid/os/Handler;

.field private mMenuHeight:[I

.field private mMenuMarginLeft:[I

.field private mMenuMarginRight:[I

.field private mMenuWidth:[I

.field mMoreButton:[Landroid/view/View;

.field mMoreButtonAnim:[Landroid/animation/Animator;

.field mMoreIcon:Landroid/view/View;

.field mNaturalBarHeight:[I

.field private mNavigationBarMode:[I

.field private mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

.field private mNavigationBarWindowState:[I

.field private mNavigationIconHints:[I

.field mNetworkController:[Lcom/android/systemui/statusbar/policy/AsusNetworkController;

.field mNetworkControllerDualSim:[Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

.field mNotificationButton:[Landroid/widget/ImageView;

.field mNotificationButtonAnim:[Landroid/animation/Animator;

.field private mNotificationButtonListener:Landroid/view/View$OnClickListener;

.field mNotificationHeader:[Landroid/view/View;

.field private mNotificationHeaderHeight:[I

.field mNotificationHeaderTitle:[Landroid/view/View;

.field mNotificationHeaderTop:[Landroid/view/View;

.field mNotificationHeaderTopTitle:[Landroid/view/View;

.field mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

.field mNotificationItems:[Landroid/view/View;

.field mNotificationItemsAnim:[Landroid/animation/Animator;

.field mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

.field mNotificationPanelDebugText:[Landroid/widget/TextView;

.field mNotificationPanelGravity:[I

.field mNotificationPanelHeader:[Landroid/view/View;

.field mNotificationPanelIsFullScreenWidth:[Z

.field mNotificationPanelMarginBottomPx:[I

.field mNotificationPanelMarginPx:[I

.field mNotificationPanelMinHeightFrac:[F

.field mNotificationTitle:[Landroid/widget/TextView;

.field mNotificationTitleAnim:[Landroid/animation/Animator;

.field mOnScrollViewListener:Lcom/android/systemui/statusbar/phone/AsusNotificationScrollView$OnScrollViewListener;

.field private mParamMenu:[Landroid/view/WindowManager$LayoutParams;

.field private mParamShadow:[Landroid/view/WindowManager$LayoutParams;

.field private mPilePosition:[[I

.field mPixelFormat:[I

.field mPositionTmp:[[I

.field mPostCollapseCleanup:Ljava/lang/Runnable;

.field mQS:[Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

.field private mQSListChnagedObserver:Landroid/database/ContentObserver;

.field mQueueLock:Ljava/lang/Object;

.field mQuickboxContainer:[Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;

.field mQuicksettingsTitle:[Landroid/widget/TextView;

.field mQuicksettingsTitleAnim:[Landroid/animation/Animator;

.field private mRecentsClickListener:Landroid/view/View$OnClickListener;

.field private mRecentsLongClickListener:Landroid/view/View$OnLongClickListener;

.field mRotationLockController:[Lcom/android/systemui/statusbar/policy/RotationLockController;

.field private mScreenOn:[Ljava/lang/Boolean;

.field mScroll:[Landroid/widget/ScrollView;

.field mScrollView:[Landroid/widget/ScrollView;

.field private mSelfCollapseVelocityPx:[F

.field private mSelfExpandVelocityPx:[F

.field mSettingsButton:[Landroid/widget/ImageView;

.field mSettingsButtonAnim:[Landroid/animation/Animator;

.field private mSettingsButtonListener:Landroid/view/View$OnClickListener;

.field mSettingsContainer:[Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;

.field mSettingsPanel:[Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;

.field mSettingsPanelGravity:[I

.field mSettingsView:[Landroid/widget/ImageView;

.field private mShowCarrierInPanel:[Z

.field private mShowSearchHoldoff:[I

.field private mShowSearchPanel:Ljava/lang/Runnable;

.field mStartTracing:Ljava/lang/Runnable;

.field mStatusBarContents:[Landroid/widget/LinearLayout;

.field private mStatusBarMode:[I

.field mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

.field mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

.field private mStatusBarWindowState:[I

.field mStatusIcons:Landroid/widget/LinearLayout;

.field mStopTracing:Ljava/lang/Runnable;

.field mSystemIconArea:[Landroid/widget/LinearLayout;

.field mSystemUiVisibility:[I

.field private mTicker:[Lcom/android/systemui/statusbar/phone/Ticker;

.field private mTickerView:[Landroid/view/View;

.field private mTicking:[Z

.field mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

.field mTitleHolder:[Landroid/view/View;

.field private mTouchHandle:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;

.field mTracking:[Z

.field mTrackingPosition:[I

.field private mUserSetup:Z

.field private mUserSetupObserver:Landroid/database/ContentObserver;

.field mVelocityTracker:[Landroid/view/VelocityTracker;

.field mWifiDirectController:[Lcom/android/systemui/statusbar/policy/WifiDirectController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 178
    sput v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mLastScreenLayout:I

    .line 179
    new-array v0, v1, [Z

    sput-object v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mIsInitial:[Z

    .line 335
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFilter:Landroid/content/IntentFilter;

    .line 336
    new-array v0, v1, [Z

    sput-object v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mIsPop:[Z

    .line 337
    sput-boolean v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isCapturing:Z

    .line 338
    sput-boolean v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->sIsDDS:Z

    .line 340
    new-array v0, v1, [Lcom/android/systemui/statusbar/AsusSignalClusterView;

    sput-object v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSignalClusterView:[Lcom/android/systemui/statusbar/AsusSignalClusterView;

    .line 341
    new-array v0, v1, [Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;

    sput-object v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSignalClusterViewDualSim:[Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;

    .line 349
    new-array v0, v1, [Z

    sput-object v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mShowNav:[Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x2

    .line 141
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;-><init>()V

    .line 182
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSelfExpandVelocityPx:[F

    .line 183
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSelfCollapseVelocityPx:[F

    .line 184
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlingExpandMinVelocityPx:[F

    .line 185
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlingCollapseMinVelocityPx:[F

    .line 186
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCollapseMinDisplayFraction:[F

    .line 187
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mExpandMinDisplayFraction:[F

    .line 188
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlingGestureMaxXVelocityPx:[F

    .line 190
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mExpandAccelPx:[F

    .line 191
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCollapseAccelPx:[F

    .line 193
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlingGestureMaxOutputVelocityPx:[F

    .line 199
    new-array v0, v3, [Lcom/android/systemui/statusbar/policy/BluetoothController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBluetoothController:[Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 200
    new-array v0, v3, [Lcom/android/systemui/statusbar/policy/AsusBatteryController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBatteryController:[Lcom/android/systemui/statusbar/policy/AsusBatteryController;

    .line 201
    new-array v0, v3, [Lcom/android/systemui/statusbar/policy/LocationController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mLocationController:[Lcom/android/systemui/statusbar/policy/LocationController;

    .line 202
    new-array v0, v3, [Lcom/android/systemui/statusbar/policy/AsusNetworkController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNetworkController:[Lcom/android/systemui/statusbar/policy/AsusNetworkController;

    .line 203
    new-array v0, v3, [Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNetworkControllerDualSim:[Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    .line 204
    new-array v0, v3, [Lcom/android/systemui/statusbar/policy/RotationLockController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mRotationLockController:[Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 205
    new-array v0, v3, [Lcom/android/systemui/statusbar/policy/WifiDirectController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mWifiDirectController:[Lcom/android/systemui/statusbar/policy/WifiDirectController;

    .line 207
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNaturalBarHeight:[I

    .line 208
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mIconSize:[I

    .line 209
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mIconHPadding:[I

    .line 211
    new-array v0, v3, [Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentDisplaySize:[Landroid/graphics/Point;

    .line 212
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHeadsUpVerticalOffset:[F

    .line 213
    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPilePosition:[[I

    .line 215
    new-array v0, v3, [Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    .line 216
    new-array v0, v3, [Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    .line 217
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindowState:[I

    .line 219
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPixelFormat:[I

    .line 220
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQueueLock:Ljava/lang/Object;

    .line 223
    new-array v0, v3, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarContents:[Landroid/widget/LinearLayout;

    .line 226
    new-array v0, v3, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSystemIconArea:[Landroid/widget/LinearLayout;

    .line 236
    new-array v0, v3, [Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    .line 237
    new-array v0, v3, [Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mScrollView:[Landroid/widget/ScrollView;

    .line 238
    new-array v0, v3, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mExpandedContents:[Landroid/view/View;

    .line 239
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelGravity:[I

    .line 240
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelMarginBottomPx:[I

    .line 241
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelMarginPx:[I

    .line 242
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelMinHeightFrac:[F

    .line 243
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelIsFullScreenWidth:[Z

    .line 244
    new-array v0, v3, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelDebugText:[Landroid/widget/TextView;

    .line 246
    new-array v0, v3, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItems:[Landroid/view/View;

    .line 247
    new-array v0, v3, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationHeader:[Landroid/view/View;

    .line 248
    new-array v0, v3, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationHeaderTitle:[Landroid/view/View;

    .line 250
    new-array v0, v3, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMoreButton:[Landroid/view/View;

    .line 253
    new-array v0, v3, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationHeaderTop:[Landroid/view/View;

    .line 254
    new-array v0, v3, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationHeaderTopTitle:[Landroid/view/View;

    .line 255
    new-instance v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$1;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mOnScrollViewListener:Lcom/android/systemui/statusbar/phone/AsusNotificationScrollView$OnScrollViewListener;

    .line 264
    new-array v0, v3, [Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQS:[Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    .line 265
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHasSettingsPanel:[Z

    .line 266
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHasFlipSettings:[Z

    .line 267
    new-array v0, v3, [Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsPanel:[Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;

    .line 268
    new-array v0, v3, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsView:[Landroid/view/View;

    .line 269
    new-array v0, v3, [Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsContainer:[Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;

    .line 270
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsPanelGravity:[I

    .line 271
    new-array v0, v3, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsView:[Landroid/widget/ImageView;

    .line 272
    new-array v0, v3, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationTitle:[Landroid/widget/TextView;

    .line 273
    new-array v0, v3, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuicksettingsTitle:[Landroid/widget/TextView;

    .line 274
    new-array v0, v3, [Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mScroll:[Landroid/widget/ScrollView;

    .line 275
    new-array v0, v3, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageView:[Landroid/widget/ImageView;

    .line 277
    new-array v0, v3, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessView:[Landroid/view/View;

    .line 278
    new-array v0, v3, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mTitleHolder:[Landroid/view/View;

    .line 279
    new-array v0, v3, [Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuickboxContainer:[Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;

    .line 282
    new-array v0, v3, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelHeader:[Landroid/view/View;

    .line 283
    new-array v0, v3, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDateTimeView:[Landroid/view/View;

    .line 284
    new-array v0, v3, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButton:[Landroid/view/View;

    .line 285
    new-array v0, v3, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButton:[Landroid/widget/ImageView;

    .line 286
    new-array v0, v3, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButton:[Landroid/widget/ImageView;

    .line 289
    new-array v0, v3, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;

    .line 290
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCarrierLabelVisible:[Z

    .line 291
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCarrierLabelHeight:[I

    .line 292
    new-array v0, v3, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEmergencyCallLabel:[Landroid/widget/TextView;

    .line 293
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationHeaderHeight:[I

    .line 295
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mShowCarrierInPanel:[Z

    .line 298
    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPositionTmp:[[I

    .line 299
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mExpandedVisible:[Z

    .line 302
    new-array v0, v3, [Lcom/android/systemui/statusbar/policy/DateView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDateView:[Lcom/android/systemui/statusbar/policy/DateView;

    .line 305
    new-array v0, v3, [Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHeadsUpNotificationView:[Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    .line 306
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHeadsUpNotificationDecay:[I

    .line 309
    new-array v0, v3, [Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    .line 310
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarWindowState:[I

    .line 313
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mTrackingPosition:[I

    .line 316
    new-array v0, v3, [Lcom/android/systemui/statusbar/phone/Ticker;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mTicker:[Lcom/android/systemui/statusbar/phone/Ticker;

    .line 317
    new-array v0, v3, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mTickerView:[Landroid/view/View;

    .line 318
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mTicking:[Z

    .line 321
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEdgeBorder:[I

    .line 322
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mTracking:[Z

    .line 323
    new-array v0, v3, [Landroid/view/VelocityTracker;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mVelocityTracker:[Landroid/view/VelocityTracker;

    .line 325
    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAbsPos:[[I

    .line 326
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPostCollapseCleanup:Ljava/lang/Runnable;

    .line 329
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDisabled:[I

    .line 332
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSystemUiVisibility:[I

    .line 334
    new-array v0, v3, [Landroid/util/DisplayMetrics;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDisplayMetrics:[Landroid/util/DisplayMetrics;

    move-object v0, v1

    .line 344
    check-cast v0, Lcom/android/systemui/statusbar/GestureRecorder;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    .line 348
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationIconHints:[I

    .line 351
    new-array v0, v3, [Landroid/view/WindowManager$LayoutParams;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mParamMenu:[Landroid/view/WindowManager$LayoutParams;

    .line 352
    new-array v0, v3, [Landroid/view/WindowManager$LayoutParams;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mParamShadow:[Landroid/view/WindowManager$LayoutParams;

    .line 353
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMenuWidth:[I

    .line 354
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMenuHeight:[I

    .line 355
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMenuMarginLeft:[I

    .line 356
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMenuMarginRight:[I

    .line 357
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCancelboundary:[I

    .line 358
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBoundary:[I

    .line 359
    new-array v0, v3, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFloatingMenu:[Landroid/view/View;

    .line 360
    new-array v0, v3, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFloatingShadow:[Landroid/view/View;

    .line 361
    new-instance v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$ClickHandle;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$ClickHandle;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClickHandle:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$ClickHandle;

    .line 362
    new-instance v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mTouchHandle:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;

    .line 363
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mIsMenuVisible:Z

    .line 364
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mIsIMEVisible:Z

    .line 367
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDensity:[F

    .line 369
    new-instance v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$2;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMakeIconsInvisible:Landroid/animation/Animator$AnimatorListener;

    .line 381
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mUserSetup:Z

    .line 382
    new-instance v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$3;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 419
    new-instance v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$4;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$4;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    .line 438
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mInteractingWindows:[I

    .line 439
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAutohideSuspended:[Z

    .line 440
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarMode:[I

    .line 441
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarMode:[I

    .line 442
    new-array v0, v3, [Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mScreenOn:[Ljava/lang/Boolean;

    .line 444
    new-instance v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$5;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    .line 453
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mShowSearchHoldoff:[I

    .line 1055
    new-instance v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$15;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$15;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mRecentsClickListener:Landroid/view/View$OnClickListener;

    .line 1066
    new-instance v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$16;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$16;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mRecentsLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1092
    new-instance v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$17;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$17;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;

    .line 1099
    new-instance v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$18;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$18;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHomeSearchActionListener:Landroid/view/View$OnTouchListener;

    .line 1793
    new-instance v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$22;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$22;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 1919
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    .line 1920
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    .line 1921
    const/16 v0, 0x7d

    iput v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->FLIP_DURATION_OUT:I

    .line 1922
    const/16 v0, 0xe1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->FLIP_DURATION_IN:I

    .line 1923
    const/16 v0, 0x15e

    iput v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->FLIP_DURATION:I

    .line 1925
    new-array v0, v3, [Landroid/animation/Animator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItemsAnim:[Landroid/animation/Animator;

    .line 1926
    new-array v0, v3, [Landroid/animation/Animator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsViewAnim:[Landroid/animation/Animator;

    .line 1927
    new-array v0, v3, [Landroid/animation/Animator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButtonAnim:[Landroid/animation/Animator;

    .line 1928
    new-array v0, v3, [Landroid/animation/Animator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButtonAnim:[Landroid/animation/Animator;

    .line 1929
    new-array v0, v3, [Landroid/animation/Animator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButtonAnim:[Landroid/animation/Animator;

    .line 1930
    new-array v0, v3, [Landroid/animation/Animator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationTitleAnim:[Landroid/animation/Animator;

    .line 1931
    new-array v0, v3, [Landroid/animation/Animator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuicksettingsTitleAnim:[Landroid/animation/Animator;

    .line 1932
    new-array v0, v3, [Landroid/animation/Animator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMoreButtonAnim:[Landroid/animation/Animator;

    .line 1933
    new-array v0, v3, [Landroid/animation/Animator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessBarAnim:[Landroid/animation/Animator;

    .line 1934
    new-array v0, v3, [Landroid/animation/Animator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageViewAnim:[Landroid/animation/Animator;

    .line 2773
    new-instance v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$35;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$35;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    .line 2929
    new-instance v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$36;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$36;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

    .line 3318
    new-instance v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$38;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$38;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButtonListener:Landroid/view/View$OnClickListener;

    .line 3420
    new-instance v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$39;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$39;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButtonListener:Landroid/view/View$OnClickListener;

    .line 3439
    new-instance v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$40;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$40;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClockClickListener:Landroid/view/View$OnClickListener;

    .line 3446
    new-instance v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$41;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$41;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButtonListener:Landroid/view/View$OnClickListener;

    .line 3452
    new-instance v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$42;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$42;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 3850
    new-instance v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$43;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$43;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStartTracing:Ljava/lang/Runnable;

    .line 3860
    new-instance v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$44;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$44;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStopTracing:Ljava/lang/Runnable;

    .line 3994
    new-instance v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$45;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$45;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQSListChnagedObserver:Landroid/database/ContentObserver;

    .line 4040
    new-instance v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$46;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$46;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMenuHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->updateNotificationHeaderTopVisibility()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->removeHeadsUpView()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->addHeadsUpView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->notifyUiVisibilityChanged(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->checkUserAutohide(Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1500()Z
    .locals 1

    .prologue
    .line 141
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isCapturing:Z

    return v0
.end method

.method static synthetic access$1502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 141
    sput-boolean p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isCapturing:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->awakenDreams()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->sendKeyEvent(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mShowSearchHoldoff:[I

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCarrierLabelVisible:[Z

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)[Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setHeadsUpVisibility(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->escalateHeadsUp()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->checkBarModes()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mTicking:[Z

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)[Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mTickerView:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCancelboundary:[I

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBoundary:[I

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->showShadow()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->assignShadow(F)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setDockPosition(IZ)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)[Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFloatingMenu:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mUserSetup:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMenuHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mUserSetup:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)[Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mScreenOn:[Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->notifyNavigationBarScreenOn(Z)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->notifyHeadsUpScreenOn(Z)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->repositionNavigationBar()V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->hideShadow()V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->gpuWorkaround()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mUseHeadsUp:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mUseHeadsUp:Z

    return v0
.end method

.method private addHeadsUpView()V
    .locals 6

    .prologue
    .line 1192
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x7de

    const v4, 0x820328

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1202
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1203
    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1204
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->getStatusBarHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1205
    const-string v1, "Heads Up"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1206
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1207
    const v1, 0x7f0e001a

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1209
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHeadsUpNotificationView:[Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    const-string v2, "AsusPhoneStatusBar.DDS"

    const-string v3, "addHeadsUpView"

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->addViewToWindowManager(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    return-void
.end method

.method private addNavigationBar()V
    .locals 4

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 1151
    :goto_0
    return-void

    .line 1148
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->prepareNavigationBarView()V

    .line 1150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const-string v2, "AsusPhoneStatusBar.DDS"

    const-string v3, "addNavigationBar"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->addViewToWindowManager(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addStatusBarWindow()V
    .locals 4

    .prologue
    .line 3063
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->getStatusBarWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3064
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->makeStatusBarView()Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    .line 3065
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    const-string v2, "AsusPhoneStatusBar.DDS"

    const-string v3, "addStatusBarWindow"

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->addViewToWindowManager(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;Ljava/lang/String;)V

    .line 3066
    sget-object v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mShowNav:[Z

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    .line 3067
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFloatingShadow:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mParamShadow:[Landroid/view/WindowManager$LayoutParams;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    const-string v2, "AsusPhoneStatusBar.DDS"

    const-string v3, "initFloatingView"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->addViewToWindowManager(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;Ljava/lang/String;)V

    .line 3068
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFloatingMenu:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mParamShadow:[Landroid/view/WindowManager$LayoutParams;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    const-string v2, "AsusPhoneStatusBar.DDS"

    const-string v3, "initFloatingView"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->addViewToWindowManager(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;Ljava/lang/String;)V

    .line 3069
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->hideShadow()V

    .line 3070
    const/16 v0, 0x2710

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setDockPosition(IZ)V

    .line 3071
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setMenuVisible(Z)V

    .line 3072
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setFloatingMenuListener()V

    .line 3074
    :cond_0
    return-void
.end method

.method private areLightsOn()Z
    .locals 2

    .prologue
    .line 2830
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSystemUiVisibility:[I

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v0, v0, v1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private assignShadow(F)V
    .locals 5

    .prologue
    .line 3119
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 3120
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 3122
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMenuWidth:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v1, v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 3123
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMenuMarginLeft:[I

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v0, v0, v1

    neg-int v0, v0

    int-to-float p1, v0

    .line 3129
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFloatingShadow:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const v1, 0x7f0b0070

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3130
    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    .line 3131
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 3132
    return-void

    .line 3125
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMenuWidth:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v1, v1, v2

    int-to-float v1, v1

    add-float/2addr v1, p1

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMenuWidth:[I

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v3, v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 3126
    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMenuWidth:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMenuMarginRight:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v1, v1, v2

    add-int/2addr v0, v1

    int-to-float p1, v0

    goto :goto_0
.end method

.method private awakenDreams()V
    .locals 1

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_0

    .line 1122
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1127
    :cond_0
    :goto_0
    return-void

    .line 1123
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private barMode(III)I
    .locals 1
    .parameter "vis"
    .parameter "transientFlag"
    .parameter "translucentFlag"

    .prologue
    .line 2748
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    and-int v0, p1, p3

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelAutohide()V
    .locals 3

    .prologue
    .line 2806
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAutohideSuspended:[Z

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 2807
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2808
    return-void
.end method

.method private checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V
    .locals 3
    .parameter "mode"
    .parameter "windowState"
    .parameter "transitions"

    .prologue
    .line 2769
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mScreenOn:[Ljava/lang/Boolean;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mScreenOn:[Ljava/lang/Boolean;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v0, 0x1

    .line 2770
    .local v0, anim:Z
    :goto_0
    invoke-virtual {p3, p1, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    .line 2771
    return-void

    .line 2769
    .end local v0           #anim:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkBarModes()V
    .locals 5

    .prologue
    .line 2755
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDemoMode:Z

    if-eqz v1, :cond_1

    .line 2766
    :cond_0
    :goto_0
    return-void

    .line 2756
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarMode:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v0, v1, v2

    .line 2757
    .local v0, sbMode:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->panelsEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mInteractingWindows:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v1, v1, v2

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 2759
    const/4 v0, 0x0

    .line 2761
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindowState:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 2762
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 2763
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarMode:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarWindowState:[I

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V

    goto :goto_0
.end method

.method private checkUserAutohide(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2816
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSystemUiVisibility:[I

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v0, v0, v1

    const/high16 v1, 0xc00

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 2820
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->userAutohide()V

    .line 2822
    :cond_0
    return-void
.end method

.method private computeBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;II)I
    .locals 2
    .parameter "oldVis"
    .parameter "newVis"
    .parameter "transitions"
    .parameter "transientFlag"
    .parameter "translucentFlag"

    .prologue
    .line 2739
    invoke-direct {p0, p1, p4, p5}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->barMode(III)I

    move-result v1

    .line 2740
    .local v1, oldMode:I
    invoke-direct {p0, p2, p4, p5}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->barMode(III)I

    move-result v0

    .line 2741
    .local v0, newMode:I
    if-ne v1, v0, :cond_0

    .line 2742
    const/4 v0, -0x1

    .line 2744
    .end local v0           #newMode:I
    :cond_0
    return v0
.end method

.method private dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 3
    .parameter "command"
    .parameter "args"
    .parameter "id"

    .prologue
    .line 3982
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    .line 3987
    :cond_0
    :goto_0
    return-void

    .line 3983
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3984
    .local v0, v:Landroid/view/View;
    instance-of v1, v0, Lcom/android/systemui/DemoMode;

    if-eqz v1, :cond_0

    .line 3985
    check-cast v0, Lcom/android/systemui/DemoMode;

    .end local v0           #v:Landroid/view/View;
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/DemoMode;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V
    .locals 1

    .prologue
    .line 3053
    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ".BarTransitions.mMode="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3054
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3055
    return-void
.end method

.method private escalateHeadsUp()V
    .locals 3

    .prologue
    .line 1775
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mInterruptingNotificationEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v2, :cond_0

    .line 1776
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mInterruptingNotificationEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 1777
    .local v1, sbn:Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 1778
    .local v0, notification:Landroid/app/Notification;
    iget-object v2, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 1782
    :try_start_0
    iget-object v2, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1787
    .end local v0           #notification:Landroid/app/Notification;
    .end local v1           #sbn:Landroid/service/notification/StatusBarNotification;
    :cond_0
    :goto_0
    return-void

    .line 1783
    .restart local v0       #notification:Landroid/app/Notification;
    .restart local v1       #sbn:Landroid/service/notification/StatusBarNotification;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 1171
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e3

    const v4, 0x840068

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1182
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1183
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1186
    :cond_0
    const-string v1, "NavigationBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1187
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1188
    return-object v0
.end method

.method public static getShowNav()Z
    .locals 2

    .prologue
    .line 4057
    sget-object v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mShowNav:[Z

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v0, v0, v1

    return v0
.end method

.method private getStatusBarWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    .line 3078
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->getStatusBarHeight()I

    move-result v2

    .line 3083
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7d0

    const v4, 0x840048

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 3093
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3095
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->getStatusBarGravity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 3096
    const-string v1, "StatusBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 3097
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3098
    return-object v0
.end method

.method private gpuWorkaround()V
    .locals 1

    .prologue
    .line 4052
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->hideShadow()V

    .line 4053
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mIsMenuVisible:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setMenuVisible(Z)V

    .line 4054
    return-void
.end method

.method private hideShadow()V
    .locals 2

    .prologue
    .line 3114
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFloatingMenu:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3115
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFloatingShadow:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3116
    return-void
.end method

.method private initFloatingView()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f040014

    const/4 v5, -0x2

    .line 3218
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mParamMenu:[Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    aput-object v2, v0, v1

    .line 3219
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mParamShadow:[Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    aput-object v2, v0, v1

    .line 3221
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mParamMenu:[Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3224
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mParamMenu:[Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x1000728

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3231
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mParamMenu:[Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 3233
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 3234
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 3235
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mParamMenu:[Landroid/view/WindowManager$LayoutParams;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMenuWidth:[I

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v3, v3, v4

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3236
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mParamMenu:[Landroid/view/WindowManager$LayoutParams;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    iget v2, v0, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMenuHeight:[I

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v3, v3, v4

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 3238
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mParamMenu:[Landroid/view/WindowManager$LayoutParams;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3239
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mParamMenu:[Landroid/view/WindowManager$LayoutParams;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3240
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mParamMenu:[Landroid/view/WindowManager$LayoutParams;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 3242
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mParamShadow:[Landroid/view/WindowManager$LayoutParams;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mParamMenu:[Landroid/view/WindowManager$LayoutParams;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 3244
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mParamShadow:[Landroid/view/WindowManager$LayoutParams;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3245
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mParamShadow:[Landroid/view/WindowManager$LayoutParams;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3247
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 3248
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFloatingMenu:[Landroid/view/View;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3249
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFloatingShadow:[Landroid/view/View;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    aput-object v0, v1, v2

    .line 3250
    return-void
.end method

.method private initialFloatMenuVariable()V
    .locals 6

    .prologue
    .line 519
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 520
    const/16 v1, 0xa0

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 521
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200cf

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 522
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDensity:[F

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    aput v3, v1, v2

    .line 523
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMenuWidth:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDensity:[F

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v4, v4, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v1, v2

    .line 524
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMenuHeight:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDensity:[F

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v4, v4, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v1, v2

    .line 525
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMenuMarginLeft:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const/high16 v3, 0x4150

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDensity:[F

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v4, v4, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v1, v2

    .line 526
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMenuMarginRight:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const/high16 v3, 0x4170

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDensity:[F

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v4, v4, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v1, v2

    .line 527
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCancelboundary:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const/high16 v3, 0x4204

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDensity:[F

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v4, v4, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v1, v2

    .line 528
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBoundary:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const/high16 v3, 0x4188

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDensity:[F

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v4, v4, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v1, v2

    .line 529
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 531
    return-void
.end method

.method private loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 2
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 2940
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2941
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz p2, :cond_0

    .line 2942
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2944
    :cond_0
    return-object v0
.end method

.method private loadNotificationShade()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    if-nez v0, :cond_1

    .line 1450
    :cond_0
    :goto_0
    return-void

    .line 1402
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v2

    .line 1404
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1406
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isDeviceProvisioned()Z

    move-result v4

    move v0, v1

    .line 1408
    :goto_1
    if-ge v0, v2, :cond_5

    .line 1409
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v6, v2, v0

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v5

    .line 1410
    if-nez v4, :cond_3

    iget-object v6, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1408
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1411
    :cond_3
    iget-object v6, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->notificationIsForCurrentUser(Landroid/service/notification/StatusBarNotification;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1414
    const-string v6, "com.asus.sitd.whatsnext"

    iget-object v7, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1416
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAlwaysTopItem:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->removeAllViews()V

    .line 1417
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAlwaysTopItem:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iget-object v5, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 1421
    :cond_4
    iget-object v5, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1424
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 1425
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 1426
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1427
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1428
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1425
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1432
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1433
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->removeView(Landroid/view/View;)V

    goto :goto_4

    .line 1436
    :cond_8
    :goto_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 1437
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1438
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_9

    .line 1440
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->addView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1436
    :cond_9
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1441
    :catch_0
    move-exception v2

    .line 1442
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 1447
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButton:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButton:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isDeviceProvisioned()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private notifyNavigationBarScreenOn(Z)V
    .locals 2
    .parameter "screenOn"

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 1168
    :goto_0
    return-void

    .line 1167
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->notifyScreenOn(Z)V

    goto :goto_0
.end method

.method private notifyUiVisibilityChanged(I)V
    .locals 1
    .parameter "vis"

    .prologue
    .line 2844
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->statusBarVisibilityChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2847
    :goto_0
    return-void

    .line 2845
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private prepareNavigationBarView()V
    .locals 2

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->reorient()V

    .line 1131
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setNavigationBarListener()V

    .line 1132
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->updateSearchPanel()V

    .line 1133
    return-void
.end method

.method private refreshAllIconsForLayout(Landroid/widget/LinearLayout;)V
    .locals 4
    .parameter "ll"

    .prologue
    .line 1222
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 1223
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1224
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1225
    .local v0, child:Landroid/view/View;
    instance-of v3, v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v3, :cond_0

    .line 1226
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable()V

    .line 1223
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1229
    :cond_1
    return-void
.end method

.method private releaseFocus()V
    .locals 4

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1845
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1846
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1847
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1848
    return-void
.end method

.method private removeHeadsUpView()V
    .locals 3

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHeadsUpNotificationView:[Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const-string v1, "AsusPhoneStatusBar.DDS"

    const-string v2, "removeHeadsUpView"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->removeViewFromWindowManager(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    return-void
.end method

.method private repositionNavigationBar()V
    .locals 3

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 1163
    :goto_0
    return-void

    .line 1156
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->prepareNavigationBarView()V

    .line 1159
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1160
    :catch_0
    move-exception v0

    .line 1161
    const-string v1, "AsusPhoneStatusBar.DDS"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetUserSetupObserver()V
    .locals 5

    .prologue
    .line 3678
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3679
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3680
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3684
    return-void
.end method

.method private resumeSuspendedAutohide()V
    .locals 4

    .prologue
    .line 2793
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAutohideSuspended:[Z

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 2794
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->scheduleAutohide()V

    .line 2795
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2797
    :cond_0
    return-void
.end method

.method private scheduleAutohide()V
    .locals 4

    .prologue
    .line 2811
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->cancelAutohide()V

    .line 2812
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2813
    return-void
.end method

.method private sendKeyEvent(I)Z
    .locals 13
    .parameter "event"

    .prologue
    .line 1080
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1081
    .local v1, now:J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 1082
    .local v0, down:Landroid/view/KeyEvent;
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-wide v4, v1

    move-wide v6, v1

    move v9, p1

    invoke-direct/range {v3 .. v10}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 1084
    .local v3, up:Landroid/view/KeyEvent;
    :try_start_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v11

    .line 1085
    .local v11, downResult:Z
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 1086
    .local v12, upResult:Z
    if-eqz v11, :cond_0

    if-eqz v12, :cond_0

    const/4 v4, 0x1

    .line 1089
    .end local v11           #downResult:Z
    .end local v12           #upResult:Z
    :goto_0
    return v4

    .line 1086
    .restart local v11       #downResult:Z
    .restart local v12       #upResult:Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1087
    .end local v11           #downResult:Z
    .end local v12           #upResult:Z
    :catch_0
    move-exception v4

    .line 1089
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private setCurrentType(I)V
    .locals 3

    .prologue
    .line 4061
    and-int/lit8 v0, p1, 0xf

    .line 4062
    const/4 v1, 0x0

    sput v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    .line 4063
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 4065
    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    .line 4068
    :cond_0
    const-string v0, "AsusPhoneStatusBar.DDS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4070
    return-void
.end method

.method private setDockPosition(IZ)V
    .locals 5
    .parameter "position"
    .parameter "force"

    .prologue
    .line 3176
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 3177
    .local v0, p:Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 3179
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMenuWidth:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v1, v1, v2

    div-int/lit8 v1, v1, 0x2

    if-ge p1, v1, :cond_2

    .line 3180
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMenuMarginLeft:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v1, v1, v2

    neg-int p1, v1

    .line 3185
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mParamMenu:[Landroid/view/WindowManager$LayoutParams;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3186
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mParamMenu:[Landroid/view/WindowManager$LayoutParams;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    iget v2, v0, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMenuHeight:[I

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v3, v3, v4

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 3188
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mParamShadow:[Landroid/view/WindowManager$LayoutParams;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    iget v2, v0, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMenuHeight:[I

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v3, v3, v4

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 3189
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mParamShadow:[Landroid/view/WindowManager$LayoutParams;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3191
    if-eqz p2, :cond_1

    .line 3192
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFloatingShadow:[Landroid/view/View;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mParamShadow:[Landroid/view/WindowManager$LayoutParams;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3194
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFloatingMenu:[Landroid/view/View;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mParamMenu:[Landroid/view/WindowManager$LayoutParams;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3195
    return-void

    .line 3181
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMenuWidth:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v1, v1, v2

    add-int/2addr v1, p1

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMenuWidth:[I

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v3, v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_0

    .line 3182
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMenuWidth:[I

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMenuMarginRight:[I

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v2, v2, v3

    add-int p1, v1, v2

    goto :goto_0
.end method

.method private setFloatingMenuListener()V
    .locals 2

    .prologue
    .line 3253
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFloatingMenu:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClickHandle:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$ClickHandle;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3254
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFloatingMenu:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mTouchHandle:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3255
    return-void
.end method

.method private setHeadsUpVisibility(Z)V
    .locals 2
    .parameter "vis"

    .prologue
    .line 3689
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHeadsUpNotificationView:[Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v0, v1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->setVisibility(I)V

    .line 3690
    if-nez p1, :cond_0

    .line 3692
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mInterruptingNotificationEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 3694
    :cond_0
    return-void

    .line 3689
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setMenuVisible(Z)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 3198
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "long_pressed_func"

    const/4 v3, -0x2

    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 3199
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mIsMenuVisible:Z

    .line 3200
    if-eq v0, v4, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mShowNav:[Z

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mIsIMEVisible:Z

    if-eqz v0, :cond_1

    :cond_0
    move p1, v1

    .line 3203
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFloatingMenu:[Landroid/view/View;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v2

    if-nez v0, :cond_2

    .line 3204
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 3205
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFloatingMenu:[Landroid/view/View;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const v4, 0x7f040014

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    aput-object v0, v2, v3

    .line 3206
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFloatingMenu:[Landroid/view/View;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v2

    if-nez v0, :cond_2

    .line 3215
    :goto_0
    return-void

    .line 3210
    :cond_2
    if-eqz p1, :cond_3

    .line 3211
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFloatingMenu:[Landroid/view/View;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3213
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFloatingMenu:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setNavigationBarListener()V
    .locals 2

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mRecentsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1137
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1138
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mRecentsLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1139
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHomeSearchActionListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1140
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getSearchLight()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHomeSearchActionListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1141
    return-void
.end method

.method private showShadow()V
    .locals 2

    .prologue
    .line 3109
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFloatingShadow:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3110
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFloatingMenu:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3111
    return-void
.end method

.method private suspendAutohide()V
    .locals 4

    .prologue
    .line 2800
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2801
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2802
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAutohideSuspended:[Z

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSystemUiVisibility:[I

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v0, v0, v3

    const/high16 v3, 0xc00

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    aput-boolean v0, v1, v2

    .line 2803
    return-void

    .line 2802
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateNotificationHeaderTopVisibility()V
    .locals 3

    .prologue
    .line 2366
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isAlwaysTopShow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationHeader:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mScrollView:[Landroid/widget/ScrollView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 2367
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationHeaderTop:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2371
    :goto_0
    return-void

    .line 2369
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationHeaderTop:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateShowSearchHoldoff()V
    .locals 4

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mShowSearchHoldoff:[I

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    aput v2, v0, v1

    .line 1397
    return-void
.end method

.method private userAutohide()V
    .locals 4

    .prologue
    .line 2825
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->cancelAutohide()V

    .line 2826
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2827
    return-void
.end method

.method public static viewInfo(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 6
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"
    .parameter "icon"

    .prologue
    .line 1234
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 1235
    .local v0, view:Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 1236
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mIconSize:[I

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mIconSize:[I

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v4, v4, v5

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, p3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1237
    return-void
.end method

.method public addNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    .locals 4
    .parameter "key"
    .parameter "notification"

    .prologue
    const/4 v3, 0x0

    .line 1254
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->createNotificationViews(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    .line 1255
    .local v1, shadeEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v1, :cond_0

    .line 1298
    :goto_0
    return-void

    .line 1258
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mUseHeadsUp:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->shouldInterrupt(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1260
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {v0, p1, p2, v3}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 1261
    .local v0, interruptionCandidate:Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHeadsUpNotificationView:[Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getHolder()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mInterruptingNotificationTime:J

    .line 1263
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mInterruptingNotificationEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 1264
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setInterruption()V

    .line 1267
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHeadsUpNotificationView:[Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mInterruptingNotificationEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->setNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    .line 1270
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v3, 0x402

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1273
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->resetHeadsUpDecayTimer()V

    .line 1294
    .end local v0           #interruptionCandidate:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->addNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 1296
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setAreThereNotifications()V

    .line 1297
    const/16 v2, -0x2710

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->updateExpandedViewPos(I)V

    goto :goto_0

    .line 1275
    :cond_2
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_3

    .line 1278
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->awakenDreams()V

    .line 1283
    :try_start_0
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1284
    :catch_0
    move-exception v2

    goto :goto_1

    .line 1290
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mInterruptingNotificationEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-nez v2, :cond_1

    .line 1291
    const/4 v2, 0x1

    invoke-virtual {p0, v3, p2, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->tick(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;Z)V

    goto :goto_1
.end method

.method public animateCollapsePanels()V
    .locals 1

    .prologue
    .line 1851
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->animateCollapsePanels(I)V

    .line 1852
    return-void
.end method

.method public animateCollapsePanels(I)V
    .locals 4

    .prologue
    const/16 v3, 0x401

    const/16 v2, 0x3fd

    .line 1862
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->releaseFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1867
    :goto_0
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    .line 1868
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1869
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1872
    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_1

    .line 1873
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1874
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1877
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->cancelExpandHelper()V

    .line 1878
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->collapseAllPanels(Z)V

    .line 1879
    return-void

    .line 1863
    :catch_0
    move-exception v0

    .line 1864
    const-string v1, "AsusPhoneStatusBar.DDS"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public animateCollapseQuickSettings()V
    .locals 2

    .prologue
    .line 2448
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->collapseAllPanels(Z)V

    .line 2449
    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .locals 2

    .prologue
    .line 1939
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1952
    :cond_0
    :goto_0
    return-void

    .line 1943
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->expand()V

    .line 1944
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHasFlipSettings:[Z

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItems:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1945
    sget-boolean v0, Lcom/asus/systemui/util/AsusQuicksettingUtil;->IS_SMALL_RAM:Z

    if-eqz v0, :cond_2

    .line 1946
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->switchToNotificationNoAnim()V

    goto :goto_0

    .line 1948
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->flipToNotifications()V

    goto :goto_0
.end method

.method public animateExpandSettingsPanel()V
    .locals 2

    .prologue
    .line 2121
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2141
    :cond_0
    :goto_0
    return-void

    .line 2126
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mUserSetup:Z

    if-eqz v0, :cond_0

    .line 2128
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHasFlipSettings:[Z

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_3

    .line 2129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->expand()V

    .line 2130
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsView:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2131
    sget-boolean v0, Lcom/asus/systemui/util/AsusQuicksettingUtil;->IS_SMALL_RAM:Z

    if-eqz v0, :cond_2

    .line 2132
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->switchToSettingsNoAnim()V

    goto :goto_0

    .line 2134
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->flipToSettings()V

    goto :goto_0

    .line 2136
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsPanel:[Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 2137
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsPanel:[Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;->expand()V

    goto :goto_0
.end method

.method public animateHeadsUp(ZF)V
    .locals 4

    .prologue
    const/high16 v1, 0x3f80

    .line 3697
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHeadsUpNotificationView:[Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    .line 3705
    :goto_0
    return-void

    .line 3698
    :cond_0
    const v0, 0x3ecccccd

    div-float v0, p2, v0

    .line 3699
    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    .line 3700
    :goto_1
    sub-float/2addr v1, v0

    .line 3701
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHeadsUpVerticalOffset:[F

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v2, v2, v3

    mul-float/2addr v0, v2

    .line 3702
    if-eqz p1, :cond_2

    .line 3703
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHeadsUpNotificationView:[Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->setAlpha(F)V

    .line 3704
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHeadsUpNotificationView:[Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->setY(F)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 3699
    goto :goto_1

    .line 3702
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public createAndAddWindows()V
    .locals 0

    .prologue
    .line 3059
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->addStatusBarWindow()V

    .line 3060
    return-void
.end method

.method protected createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 2

    .prologue
    .line 1740
    new-instance v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$H;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$1;)V

    return-object v0
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 3916
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->destroy()V

    .line 3917
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 3918
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 3919
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 3921
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 3922
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 3917
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3925
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3926
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQS:[Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_3

    .line 3927
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQS:[Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->detach()V

    .line 3928
    :cond_3
    return-void
.end method

.method public disable(I)V
    .locals 9

    .prologue
    const/high16 v8, 0x8

    const/high16 v7, 0x2

    const/high16 v6, 0x1

    const/high16 v5, 0x3fc0

    const/4 v4, 0x0

    .line 1629
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDisabled:[I

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v0, v0, v1

    .line 1630
    xor-int v1, p1, v0

    .line 1631
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDisabled:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aput p1, v0, v2

    .line 1638
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1639
    const-string v0, "disable: < "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1640
    and-int v0, p1, v6

    if-eqz v0, :cond_7

    const-string v0, "EXPAND"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1641
    and-int v0, v1, v6

    if-eqz v0, :cond_8

    const-string v0, "* "

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1642
    and-int v0, p1, v7

    if-eqz v0, :cond_9

    const-string v0, "ICONS"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1643
    and-int v0, v1, v7

    if-eqz v0, :cond_a

    const-string v0, "* "

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1644
    const/high16 v0, 0x4

    and-int/2addr v0, p1

    if-eqz v0, :cond_b

    const-string v0, "ALERTS"

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1645
    const/high16 v0, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    const-string v0, "* "

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1646
    and-int v0, p1, v8

    if-eqz v0, :cond_d

    const-string v0, "TICKER"

    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1647
    and-int v0, v1, v8

    if-eqz v0, :cond_e

    const-string v0, "* "

    :goto_7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1648
    const/high16 v0, 0x10

    and-int/2addr v0, p1

    if-eqz v0, :cond_f

    const-string v0, "SYSTEM_INFO"

    :goto_8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1649
    const/high16 v0, 0x10

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    const-string v0, "* "

    :goto_9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1650
    const/high16 v0, 0x40

    and-int/2addr v0, p1

    if-eqz v0, :cond_11

    const-string v0, "BACK"

    :goto_a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1651
    const/high16 v0, 0x40

    and-int/2addr v0, v1

    if-eqz v0, :cond_12

    const-string v0, "* "

    :goto_b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1652
    const/high16 v0, 0x20

    and-int/2addr v0, p1

    if-eqz v0, :cond_13

    const-string v0, "HOME"

    :goto_c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1653
    const/high16 v0, 0x20

    and-int/2addr v0, v1

    if-eqz v0, :cond_14

    const-string v0, "* "

    :goto_d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1654
    const/high16 v0, 0x100

    and-int/2addr v0, p1

    if-eqz v0, :cond_15

    const-string v0, "RECENT"

    :goto_e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1655
    const/high16 v0, 0x100

    and-int/2addr v0, v1

    if-eqz v0, :cond_16

    const-string v0, "* "

    :goto_f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1656
    const/high16 v0, 0x80

    and-int/2addr v0, p1

    if-eqz v0, :cond_17

    const-string v0, "CLOCK"

    :goto_10
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1657
    const/high16 v0, 0x80

    and-int/2addr v0, v1

    if-eqz v0, :cond_18

    const-string v0, "* "

    :goto_11
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1658
    const/high16 v0, 0x200

    and-int/2addr v0, p1

    if-eqz v0, :cond_19

    const-string v0, "SEARCH"

    :goto_12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1659
    const/high16 v0, 0x200

    and-int/2addr v0, v1

    if-eqz v0, :cond_1a

    const-string v0, "* "

    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1660
    const-string v0, ">"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1661
    const-string v0, "AsusPhoneStatusBar"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    const/high16 v0, 0x10

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1664
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSystemIconArea:[Landroid/widget/LinearLayout;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1665
    const/high16 v0, 0x10

    and-int/2addr v0, p1

    if-eqz v0, :cond_1b

    .line 1666
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSystemIconArea:[Landroid/widget/LinearLayout;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNaturalBarHeight:[I

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v2, v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xaf

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMakeIconsInvisible:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1685
    :cond_0
    :goto_14
    const/high16 v0, 0x80

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 1686
    const/high16 v0, 0x80

    and-int/2addr v0, p1

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    .line 1687
    :goto_15
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->showClock(Z)V

    .line 1689
    :cond_1
    and-int v0, v1, v6

    if-eqz v0, :cond_2

    .line 1690
    and-int v0, p1, v6

    if-eqz v0, :cond_2

    .line 1691
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->animateCollapsePanels()V

    .line 1694
    :cond_2
    const/high16 v0, 0x360

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 1699
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->setDisabledFlags(I)V

    .line 1701
    :cond_3
    const/high16 v0, 0x100

    and-int/2addr v0, p1

    if-eqz v0, :cond_4

    .line 1703
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v2, 0x3fd

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1704
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v2, 0x3fd

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1708
    :cond_4
    and-int v0, v1, v7

    if-eqz v0, :cond_1e

    .line 1709
    and-int v0, p1, v7

    if-eqz v0, :cond_1d

    .line 1710
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mTicking:[Z

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_5

    .line 1711
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->haltTicker()V

    .line 1714
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IconMerger;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNaturalBarHeight:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v1, v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xaf

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMakeIconsInvisible:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1736
    :cond_6
    :goto_16
    return-void

    .line 1640
    :cond_7
    const-string v0, "expand"

    goto/16 :goto_0

    .line 1641
    :cond_8
    const-string v0, " "

    goto/16 :goto_1

    .line 1642
    :cond_9
    const-string v0, "icons"

    goto/16 :goto_2

    .line 1643
    :cond_a
    const-string v0, " "

    goto/16 :goto_3

    .line 1644
    :cond_b
    const-string v0, "alerts"

    goto/16 :goto_4

    .line 1645
    :cond_c
    const-string v0, " "

    goto/16 :goto_5

    .line 1646
    :cond_d
    const-string v0, "ticker"

    goto/16 :goto_6

    .line 1647
    :cond_e
    const-string v0, " "

    goto/16 :goto_7

    .line 1648
    :cond_f
    const-string v0, "system_info"

    goto/16 :goto_8

    .line 1649
    :cond_10
    const-string v0, " "

    goto/16 :goto_9

    .line 1650
    :cond_11
    const-string v0, "back"

    goto/16 :goto_a

    .line 1651
    :cond_12
    const-string v0, " "

    goto/16 :goto_b

    .line 1652
    :cond_13
    const-string v0, "home"

    goto/16 :goto_c

    .line 1653
    :cond_14
    const-string v0, " "

    goto/16 :goto_d

    .line 1654
    :cond_15
    const-string v0, "recent"

    goto/16 :goto_e

    .line 1655
    :cond_16
    const-string v0, " "

    goto/16 :goto_f

    .line 1656
    :cond_17
    const-string v0, "clock"

    goto/16 :goto_10

    .line 1657
    :cond_18
    const-string v0, " "

    goto/16 :goto_11

    .line 1658
    :cond_19
    const-string v0, "search"

    goto/16 :goto_12

    .line 1659
    :cond_1a
    const-string v0, " "

    goto/16 :goto_13

    .line 1674
    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSystemIconArea:[Landroid/widget/LinearLayout;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1675
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSystemIconArea:[Landroid/widget/LinearLayout;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xaf

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_14

    .line 1686
    :cond_1c
    const/4 v0, 0x0

    goto/16 :goto_15

    .line 1722
    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->setVisibility(I)V

    .line 1723
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IconMerger;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xaf

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_16

    .line 1731
    :cond_1e
    and-int v0, v1, v8

    if-eqz v0, :cond_6

    .line 1732
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mTicking:[Z

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_6

    and-int v0, p1, v8

    if-eqz v0, :cond_6

    .line 1733
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->haltTicker()V

    goto/16 :goto_16
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3936
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDemoModeAllowed:Z

    if-nez v0, :cond_0

    .line 3937
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "sysui_demo_allowed"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDemoModeAllowed:Z

    .line 3940
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDemoModeAllowed:Z

    if-nez v0, :cond_3

    .line 3979
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 3937
    goto :goto_0

    .line 3941
    :cond_3
    const-string v0, "enter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3942
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDemoMode:Z

    .line 3950
    :cond_4
    :goto_2
    const-string v0, "enter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_5
    move v0, v1

    .line 3951
    :goto_3
    if-nez v0, :cond_6

    const-string v4, "clock"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3952
    :cond_6
    const v4, 0x7f0b0053

    invoke-direct {p0, p1, p2, v4}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 3954
    :cond_7
    if-nez v0, :cond_8

    const-string v4, "battery"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3955
    :cond_8
    const v4, 0x7f0b0052

    invoke-direct {p0, p1, p2, v4}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 3957
    :cond_9
    if-nez v0, :cond_a

    const-string v0, "status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3958
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    if-nez v0, :cond_b

    .line 3959
    new-instance v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mIconSize:[I

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v5, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;-><init>(Landroid/widget/LinearLayout;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    .line 3961
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3963
    :cond_c
    const-string v0, "bars"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3964
    const-string v0, "mode"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3965
    const-string v4, "opaque"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 3969
    :goto_4
    if-eq v2, v3, :cond_1

    .line 3971
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v3

    if-eqz v0, :cond_d

    .line 3972
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    .line 3974
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    .line 3975
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    goto/16 :goto_1

    .line 3943
    :cond_e
    const-string v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3944
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDemoMode:Z

    .line 3945
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->checkBarModes()V

    goto/16 :goto_2

    .line 3946
    :cond_f
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDemoMode:Z

    if-nez v0, :cond_4

    .line 3948
    const-string v0, "enter"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    :cond_10
    move v0, v2

    .line 3950
    goto/16 :goto_3

    .line 3965
    :cond_11
    const-string v2, "translucent"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x2

    goto :goto_4

    :cond_12
    const-string v2, "semi-transparent"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v2, v1

    goto :goto_4

    :cond_13
    move v2, v3

    goto :goto_4
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 2953
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2954
    :try_start_0
    const-string v2, "Current Status Bar state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2955
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mExpandedVisible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mExpandedVisible:[Z

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mTrackingPosition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mTrackingPosition:[I

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2957
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mTicking="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mTicking:[Z

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2958
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mTracking="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mTracking:[Z

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2959
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mDisplayMetrics="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDisplayMetrics:[Landroid/util/DisplayMetrics;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2960
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mPile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2961
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mTickerView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mTickerView:[Landroid/view/View;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2962
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mScrollView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mScrollView:[Landroid/widget/ScrollView;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " scroll "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mScrollView:[Landroid/widget/ScrollView;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mScrollView:[Landroid/widget/ScrollView;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2965
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mNotificationItems: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItems:[Landroid/view/View;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2967
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2969
    const-string v1, "  mInteractingWindows="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mInteractingWindows:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v1, v1, v2

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2970
    const-string v1, "  mStatusBarWindowState="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2971
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindowState:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v1, v1, v2

    invoke-static {v1}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2972
    const-string v1, "  mStatusBarMode="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2973
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarMode:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v1, v1, v2

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2974
    const-string v1, "mStatusBarView"

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 2975
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 2976
    const-string v1, "  mNavigationBarWindowState="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2977
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarWindowState:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v1, v1, v2

    invoke-static {v1}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2978
    const-string v1, "  mNavigationBarMode="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2979
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarMode:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v1, v1, v2

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2980
    const-string v1, "mNavigationBarView"

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 2983
    :cond_0
    const-string v1, "  mNavigationBarView="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2984
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    if-nez v1, :cond_3

    .line 2985
    const-string v1, "null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2990
    :goto_0
    const-string v1, "  Panels: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2991
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    .line 2992
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mNotificationPanel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2994
    const-string v1, "      "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2995
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2997
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsPanel:[Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    .line 2998
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mSettingsPanel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsPanel:[Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsPanel:[Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3000
    const-string v1, "      "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3001
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsPanel:[Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3005
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    monitor-enter v2

    .line 3006
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v3

    .line 3007
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  notification icons: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v0

    .line 3008
    :goto_1
    if-ge v1, v3, :cond_4

    .line 3009
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    .line 3010
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " icon="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3011
    iget-object v4, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 3012
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "         pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " score="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3013
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "         notification="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3014
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "         tickerText=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3008
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 2967
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2987
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3016
    :cond_4
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3018
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 3019
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  system icons: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v0

    .line 3020
    :goto_2
    if-ge v1, v2, :cond_5

    .line 3021
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 3022
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] icon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3020
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 3016
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 3045
    :cond_5
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyConstants;->IS_DSDS:Z

    if-eqz v0, :cond_6

    .line 3046
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNetworkControllerDualSim:[Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3050
    :goto_3
    return-void

    .line 3048
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNetworkController:[Lcom/android/systemui/statusbar/policy/AsusNetworkController;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_3
.end method

.method public fadeInToNotifications()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x15e

    const/high16 v8, 0x3f80

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2044
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isKeyguardLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2115
    :goto_0
    return-void

    .line 2046
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsViewAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsViewAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2047
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItemsAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItemsAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2048
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2049
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2050
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2051
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMoreButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMoreButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2052
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessBarAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessBarAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2053
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageViewAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageViewAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2055
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItems:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v8}, Landroid/view/View;->setScaleX(F)V

    .line 2056
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItems:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    .line 2057
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItems:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2058
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItemsAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItems:[Landroid/view/View;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    aput v8, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2061
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsView:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v8}, Landroid/view/View;->setScaleX(F)V

    .line 2062
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsViewAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsView:[Landroid/view/View;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x7d

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsView:[Landroid/view/View;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    const/4 v4, 0x4

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2067
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButton:[Landroid/widget/ImageView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButton:[Landroid/widget/ImageView;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    const/4 v4, 0x4

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2072
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButton:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2073
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButton:[Landroid/widget/ImageView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    aput v8, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2077
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuicksettingsTitleAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuicksettingsTitle:[Landroid/widget/TextView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x7d

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuicksettingsTitle:[Landroid/widget/TextView;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    const/16 v4, 0x8

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2082
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationTitle:[Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2083
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationTitleAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationTitle:[Landroid/widget/TextView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    aput v8, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0xe1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2086
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButton:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2087
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButton:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    .line 2088
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelHeader:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessView:[Landroid/view/View;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isPortrait()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2089
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessBarAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessView:[Landroid/view/View;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0xe1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessView:[Landroid/view/View;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    const/16 v4, 0x8

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2095
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageViewAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageView:[Landroid/widget/ImageView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x7d

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageView:[Landroid/widget/ImageView;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    const/16 v4, 0x8

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2101
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setAreThereNotifications()V

    .line 2102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$27;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$27;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2107
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$28;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$28;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    invoke-virtual {v0, v1, v9, v10}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2114
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mScrollView:[Landroid/widget/ScrollView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ScrollView;->requestLayout()V

    goto/16 :goto_0
.end method

.method public fadeInToSettings()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2273
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mUserSetup:Z

    if-nez v0, :cond_0

    .line 2340
    :goto_0
    return-void

    .line 2275
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsViewAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsViewAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2276
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItemsAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItemsAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2277
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2278
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2279
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2280
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMoreButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMoreButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2281
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessBarAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessBarAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2282
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageViewAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageViewAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2284
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsView:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Landroid/view/View;->setScaleX(F)V

    .line 2285
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsView:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v8}, Landroid/view/View;->setAlpha(F)V

    .line 2286
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsView:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2287
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsViewAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsView:[Landroid/view/View;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x15e

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2290
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItems:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Landroid/view/View;->setScaleX(F)V

    .line 2291
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItemsAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItems:[Landroid/view/View;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    aput v8, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x7d

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItems:[Landroid/view/View;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    invoke-virtual {p0, v2, v3, v9}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2296
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButton:[Landroid/widget/ImageView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    aput v8, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x15e

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItems:[Landroid/view/View;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    invoke-virtual {p0, v2, v3, v9}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2301
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButton:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2302
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButton:[Landroid/widget/ImageView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x15e

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2305
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButton:[Landroid/view/View;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    aput v8, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x7d

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButton:[Landroid/view/View;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    const/16 v4, 0x8

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2310
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMoreButton:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMoreButton:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v8}, Landroid/view/View;->setAlpha(F)V

    .line 2314
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationTitleAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationTitle:[Landroid/widget/TextView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    aput v8, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x7d

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationTitle:[Landroid/widget/TextView;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    invoke-virtual {p0, v2, v3, v9}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2319
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuicksettingsTitle:[Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2320
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuicksettingsTitleAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuicksettingsTitle:[Landroid/widget/TextView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0xe1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2323
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelHeader:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessView:[Landroid/view/View;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isPortrait()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2324
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessView:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2325
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessBarAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessView:[Landroid/view/View;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0xe1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2329
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageView:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2330
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageViewAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageView:[Landroid/widget/ImageView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0xe1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2334
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$30;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$30;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2339
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const v1, 0x7f02021e

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method public flipToNotifications()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/high16 v10, 0x3f80

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1955
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsViewAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsViewAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1956
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItemsAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItemsAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1957
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1958
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1959
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1960
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationTitleAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationTitleAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1961
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuicksettingsTitleAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuicksettingsTitleAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1962
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMoreButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMoreButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1963
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessBarAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessBarAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1964
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageViewAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageViewAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1967
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItems:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v10}, Landroid/view/View;->setAlpha(F)V

    .line 1968
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItems:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v8}, Landroid/view/View;->setScaleX(F)V

    .line 1969
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItems:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1970
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItemsAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const/16 v2, 0x7d

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItems:[Landroid/view/View;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v4, v4, v5

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0xe1

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->interpolator(Landroid/animation/TimeInterpolator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->startDelay(ILandroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1976
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsView:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v10}, Landroid/view/View;->setAlpha(F)V

    .line 1978
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsViewAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsView:[Landroid/view/View;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->interpolator(Landroid/animation/TimeInterpolator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    const-wide/16 v3, 0x7d

    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsView:[Landroid/view/View;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    const/4 v4, 0x4

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1985
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButton:[Landroid/widget/ImageView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v9, [F

    aput v8, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x15e

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButton:[Landroid/widget/ImageView;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    const/4 v4, 0x4

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1990
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButton:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1991
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButton:[Landroid/widget/ImageView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v9, [F

    aput v10, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x15e

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1995
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuicksettingsTitleAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuicksettingsTitle:[Landroid/widget/TextView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v9, [F

    aput v8, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x7d

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuicksettingsTitle:[Landroid/widget/TextView;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    invoke-virtual {p0, v2, v3, v11}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2000
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationTitle:[Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2001
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationTitleAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationTitle:[Landroid/widget/TextView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v9, [F

    aput v10, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0xe1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2004
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButton:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2005
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButton:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v8}, Landroid/view/View;->setAlpha(F)V

    .line 2006
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelHeader:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessView:[Landroid/view/View;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isPortrait()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2007
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessBarAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessView:[Landroid/view/View;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v9, [F

    aput v8, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0xe1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessView:[Landroid/view/View;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    invoke-virtual {p0, v2, v3, v11}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2013
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageViewAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageView:[Landroid/widget/ImageView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v9, [F

    aput v8, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x7d

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageView:[Landroid/widget/ImageView;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    invoke-virtual {p0, v2, v3, v11}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2021
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMoreButton:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2022
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMoreButton:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v8}, Landroid/view/View;->setAlpha(F)V

    .line 2024
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setAreThereNotifications()V

    .line 2025
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$25;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$25;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2031
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$26;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$26;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2038
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mScrollView:[Landroid/widget/ScrollView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 2040
    return-void

    .line 1970
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 1978
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public flipToSettings()V
    .locals 13

    .prologue
    const-wide/16 v11, 0xe1

    const/4 v10, 0x0

    const/high16 v9, 0x3f80

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2189
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mUserSetup:Z

    if-nez v0, :cond_0

    .line 2268
    :goto_0
    return-void

    .line 2191
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsViewAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsViewAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2192
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItemsAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItemsAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2193
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2194
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2195
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2196
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationTitleAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationTitleAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2197
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuicksettingsTitleAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuicksettingsTitleAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2198
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMoreButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMoreButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2199
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessBarAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessBarAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2200
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageViewAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageViewAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2202
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsView:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2203
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsView:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v10}, Landroid/view/View;->setScaleX(F)V

    .line 2205
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsView:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v9}, Landroid/view/View;->setAlpha(F)V

    .line 2207
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsViewAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const/16 v2, 0x7d

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsView:[Landroid/view/View;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v4, v4, v5

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->interpolator(Landroid/animation/TimeInterpolator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->startDelay(ILandroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2214
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItems:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v9}, Landroid/view/View;->setAlpha(F)V

    .line 2215
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItemsAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItems:[Landroid/view/View;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->interpolator(Landroid/animation/TimeInterpolator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    const-wide/16 v3, 0x7d

    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItems:[Landroid/view/View;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    const/4 v4, 0x4

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2222
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButton:[Landroid/widget/ImageView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v8, [F

    aput v10, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x15e

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItems:[Landroid/view/View;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    const/4 v4, 0x4

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2227
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButton:[Landroid/view/View;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v8, [F

    aput v10, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x7d

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButton:[Landroid/view/View;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    const/16 v4, 0x8

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2232
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMoreButton:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2233
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMoreButton:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v10}, Landroid/view/View;->setAlpha(F)V

    .line 2235
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButton:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2236
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButton:[Landroid/widget/ImageView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v8, [F

    aput v9, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x15e

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2240
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationTitleAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationTitle:[Landroid/widget/TextView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v8, [F

    aput v10, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x7d

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationTitle:[Landroid/widget/TextView;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    const/4 v4, 0x4

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2245
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuicksettingsTitle:[Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2246
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuicksettingsTitleAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuicksettingsTitle:[Landroid/widget/TextView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v8, [F

    aput v9, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2249
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelHeader:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessView:[Landroid/view/View;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isPortrait()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2250
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessView:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2251
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessBarAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessView:[Landroid/view/View;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v8, [F

    aput v9, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2255
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageView:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2256
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageViewAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageView:[Landroid/widget/ImageView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v8, [F

    aput v9, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2260
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$29;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$29;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2266
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const v1, 0x7f02021e

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2207
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 2215
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;
    .locals 1

    .prologue
    .line 2629
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    return-object v0
.end method

.method protected getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 986
    .line 987
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e8

    const v4, 0x820100

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 995
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 996
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 998
    :cond_0
    const v1, 0x800053

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 999
    const-string v1, "SearchPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1001
    const v1, 0x10301f5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1002
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1004
    return-object v0
.end method

.method protected getStatusBarGravity()I
    .locals 1

    .prologue
    .line 1045
    const/16 v0, 0x37

    return v0
.end method

.method public getStatusBarHeight()I
    .locals 4

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1050
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNaturalBarHeight:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const v3, 0x105000c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    aput v0, v1, v2

    .line 1052
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNaturalBarHeight:[I

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v0, v0, v1

    return v0
.end method

.method protected getStatusBarView()Landroid/view/View;
    .locals 2

    .prologue
    .line 981
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected haltTicker()V
    .locals 2

    .prologue
    .line 3870
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mTicker:[Lcom/android/systemui/statusbar/phone/Ticker;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/Ticker;->halt()V

    .line 3871
    return-void
.end method

.method public hideSearchPanel()V
    .locals 4

    .prologue
    .line 1035
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideSearchPanel()V

    .line 1036
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 1037
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1039
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1040
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1042
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2615
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindowState:[I

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v3, v3, v4

    if-nez v3, :cond_1

    .line 2616
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    :cond_0
    move v0, v2

    .line 2619
    .local v0, upOrCancel:Z
    :goto_0
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mExpandedVisible:[Z

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v3, v3, v4

    if-nez v3, :cond_3

    .line 2620
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setInteracting(IZ)V

    .line 2625
    .end local v0           #upOrCancel:Z
    :cond_1
    :goto_1
    return v1

    :cond_2
    move v0, v1

    .line 2616
    goto :goto_0

    .line 2622
    .restart local v0       #upOrCancel:Z
    :cond_3
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setInteracting(IZ)V

    goto :goto_1
.end method

.method public interpolator(Landroid/animation/TimeInterpolator;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .parameter "ti"
    .parameter "a"

    .prologue
    .line 1905
    invoke-virtual {p2, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1906
    return-object p2
.end method

.method public isAlwaysTopShow()Z
    .locals 1

    .prologue
    .line 2360
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAlwaysTopItem:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAlwaysTopItem:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAlwaysTopItemDelayDismiss:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullyCollapsed()Z
    .locals 2

    .prologue
    .line 4073
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    return v0
.end method

.method protected isKeyguardLock()Z
    .locals 2

    .prologue
    .line 4005
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 4006
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 4008
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    .line 4009
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    .line 4010
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isKeyguardSecure()Z
    .locals 2

    .prologue
    .line 4014
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 4015
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 4018
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    .line 4019
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    .line 4020
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotifications()Z
    .locals 2

    .prologue
    .line 2355
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHasFlipSettings:[Z

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsView:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPortrait()Z
    .locals 2

    .prologue
    .line 3610
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 3611
    .local v0, rot:I
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3612
    :cond_0
    const/4 v1, 0x1

    .line 3614
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUserSetup()Z
    .locals 1

    .prologue
    .line 4024
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mUserSetup:Z

    return v0
.end method

.method protected loadDimens()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3770
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3772
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNaturalBarHeight:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const v3, 0x105000c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    aput v3, v1, v2

    .line 3775
    const v1, 0x1050010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3777
    const v2, 0x7f070023

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 3780
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mIconHPadding:[I

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v3, v3, v4

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mIconSize:[I

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v3, v3, v4

    if-eq v1, v3, :cond_1

    .line 3782
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mIconHPadding:[I

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aput v2, v3, v4

    .line 3783
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mIconSize:[I

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aput v1, v2, v3

    .line 3787
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEdgeBorder:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const v3, 0x7f070001

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    aput v3, v1, v2

    .line 3789
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSelfExpandVelocityPx:[F

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const v3, 0x7f070025

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    aput v3, v1, v2

    .line 3790
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSelfCollapseVelocityPx:[F

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const v3, 0x7f070026

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    aput v3, v1, v2

    .line 3791
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlingExpandMinVelocityPx:[F

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const v3, 0x7f070027

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    aput v3, v1, v2

    .line 3792
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlingCollapseMinVelocityPx:[F

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const v3, 0x7f070028

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    aput v3, v1, v2

    .line 3794
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCollapseMinDisplayFraction:[F

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const v3, 0x7f07002c

    invoke-virtual {v0, v3, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    aput v3, v1, v2

    .line 3795
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mExpandMinDisplayFraction:[F

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const v3, 0x7f07002d

    invoke-virtual {v0, v3, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    aput v3, v1, v2

    .line 3797
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mExpandAccelPx:[F

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const v3, 0x7f07002e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    aput v3, v1, v2

    .line 3798
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCollapseAccelPx:[F

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const v3, 0x7f07002f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    aput v3, v1, v2

    .line 3800
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlingGestureMaxXVelocityPx:[F

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const v3, 0x7f070029

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    aput v3, v1, v2

    .line 3802
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlingGestureMaxOutputVelocityPx:[F

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const v3, 0x7f07002a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    aput v3, v1, v2

    .line 3804
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelMarginBottomPx:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const v3, 0x7f07003d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v1, v2

    .line 3806
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelMarginPx:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const v3, 0x7f07003e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v1, v2

    .line 3808
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelGravity:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const v3, 0x7f0a0035

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    aput v3, v1, v2

    .line 3809
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelGravity:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v1, v1, v2

    if-gtz v1, :cond_2

    .line 3810
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelGravity:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const v3, 0x800033

    aput v3, v1, v2

    .line 3812
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsPanelGravity:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const v3, 0x7f0a0036

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    aput v3, v1, v2

    .line 3813
    const-string v1, "AsusPhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSettingsPanelGravity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsPanelGravity:[I

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3814
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsPanelGravity:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v1, v1, v2

    if-gtz v1, :cond_3

    .line 3815
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsPanelGravity:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const v3, 0x800035

    aput v3, v1, v2

    .line 3818
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCarrierLabelHeight:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const v3, 0x7f070041

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    aput v3, v1, v2

    .line 3819
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationHeaderHeight:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const v3, 0x7f07003a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    aput v3, v1, v2

    .line 3821
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelMinHeightFrac:[F

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const v3, 0x7f070045

    invoke-virtual {v0, v3, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    aput v3, v1, v2

    .line 3822
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelMinHeightFrac:[F

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v1, v1, v2

    cmpg-float v1, v1, v6

    if-ltz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelMinHeightFrac:[F

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v1, v1, v2

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 3823
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelMinHeightFrac:[F

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aput v6, v1, v2

    .line 3826
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHeadsUpNotificationDecay:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const v3, 0x7f0a0030

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    aput v3, v1, v2

    .line 3827
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mRowHeight:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const v3, 0x7f07001f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    aput v3, v1, v2

    .line 3830
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationSubTextSize:[F

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const v3, 0x1050059

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    aput v0, v1, v2

    .line 3834
    return-void
.end method

.method makeExpandedInvisible()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/high16 v5, 0x3f80

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 2458
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mExpandedVisible:[Z

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    .line 2541
    :goto_0
    return-void

    .line 2463
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->collapseAllPanels(Z)V

    .line 2465
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHasFlipSettings:[Z

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_b

    .line 2467
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsViewAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsViewAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2468
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItemsAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItemsAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2469
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2470
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2471
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2472
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMoreButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMoreButtonAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2473
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageViewAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageViewAnim:[Landroid/animation/Animator;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 2475
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItems:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2476
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButton:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2477
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->setVisibility(I)V

    .line 2478
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsView:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2479
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButton:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2481
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationTitle:[Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2482
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuicksettingsTitle:[Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2483
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mScroll:[Landroid/widget/ScrollView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 2484
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsView:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2485
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageView:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2487
    sget-boolean v0, Lcom/asus/systemui/util/AsusQuicksettingUtil;->IS_SMALL_RAM:Z

    if-nez v0, :cond_8

    .line 2488
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItems:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleX(F)V

    .line 2489
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItems:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 2490
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButton:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2491
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMoreButton:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2492
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButton:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2493
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationTitle:[Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2494
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuicksettingsTitle:[Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2495
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageView:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2498
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelHeader:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessView:[Landroid/view/View;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eq v0, v6, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isPortrait()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2499
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessView:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2501
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelIsFullScreenWidth:[Z

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_a

    .line 2502
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2503
    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2504
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2506
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuickboxContainer:[Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v4, v4, v4, v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;->setPadding(IIII)V

    .line 2509
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setAreThereNotifications()V

    .line 2511
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const v1, 0x7f020220

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->setBackgroundResource(I)V

    .line 2515
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mExpandedVisible:[Z

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aput-boolean v4, v0, v1

    .line 2516
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setLayoutTransitionsEnabled(Z)V

    .line 2517
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_c

    .line 2518
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->setSlippery(Z)V

    .line 2519
    :cond_c
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->visibilityChanged(Z)V

    .line 2522
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 2523
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->getStatusBarHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2524
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2525
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2526
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2528
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDisabled:[I

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v0, v0, v1

    const/high16 v1, 0x2

    and-int/2addr v0, v1

    if-nez v0, :cond_d

    .line 2529
    const/4 v0, 0x1

    const/high16 v1, 0x10a

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setNotificationIconVisibility(ZI)V

    .line 2533
    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->dismissPopups()V

    .line 2535
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPostCollapseCleanup:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    .line 2536
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPostCollapseCleanup:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2537
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPostCollapseCleanup:Ljava/lang/Runnable;

    .line 2540
    :cond_e
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setInteracting(IZ)V

    goto/16 :goto_0
.end method

.method makeExpandedInvisibleSoon()V
    .locals 4

    .prologue
    .line 2452
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$34;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$34;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2453
    return-void
.end method

.method makeExpandedVisible()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1807
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mExpandedVisible:[Z

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1840
    :cond_0
    :goto_0
    return-void

    .line 1811
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mExpandedVisible:[Z

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aput-boolean v4, v0, v1

    .line 1814
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQS:[Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->refreshCheckboxView()V

    .line 1817
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setLayoutTransitionsEnabled(Z)V

    .line 1818
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 1819
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->setSlippery(Z)V

    .line 1821
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->updateCarrierLabelVisibility(Z)V

    .line 1824
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->updateNotificationHeaderTopVisibility()V

    .line 1827
    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->updateExpandedViewPos(I)V

    .line 1831
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1832
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1833
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1834
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1835
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1837
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->visibilityChanged(Z)V

    .line 1839
    invoke-virtual {p0, v4, v4}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setInteracting(IZ)V

    goto :goto_0
.end method

.method protected makeStatusBarView()Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 537
    sget-object v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mIsInitial:[Z

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const v1, 0x7f0b0046

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 539
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const v1, 0x7f0b0044

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IconMerger;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    .line 540
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const v1, 0x7f0b0043

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMoreIcon:Landroid/view/View;

    .line 541
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMoreIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->setOverflowIndicator(Landroid/view/View;)V

    .line 542
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const v1, 0x7f0b001a

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    .line 543
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setLayoutTransitionsEnabled(Z)V

    .line 544
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->getNotificationLongClicker()Landroid/view/View$OnLongClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setLongPressListener(Landroid/view/View$OnLongClickListener;)V

    .line 545
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mExpandedContents:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    aput-object v4, v0, v1

    .line 546
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->collapseAllPanels(Z)V

    .line 548
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const v1, 0x7f0b0018

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAlwaysTopItem:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    .line 549
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAlwaysTopItem:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setLayoutTransitionsEnabled(Z)V

    move-object v0, v3

    .line 962
    :goto_0
    return-object v0

    .line 553
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    .line 555
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 557
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->updateDisplaySize()V

    .line 558
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->loadDimens()V

    .line 560
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mIconSize:[I

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const v7, 0x1050010

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v0, v6

    .line 562
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const v0, 0x7f04000f

    invoke-static {v4, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    aput-object v0, v6, v7

    .line 564
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    iput-object p0, v0, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    .line 565
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    new-instance v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$6;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$6;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 577
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v8, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v8

    const v8, 0x7f0b003f

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    aput-object v0, v6, v7

    .line 578
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->setBar(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    .line 580
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    const v6, 0x7f0b006b

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PanelHolder;

    .line 581
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v6, v6, v7

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->setPanelHolder(Lcom/android/systemui/statusbar/phone/PanelHolder;)V

    .line 583
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v8, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v8

    const v8, 0x7f0b0057

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    aput-object v0, v6, v7

    .line 584
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->setStatusBar(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    .line 585
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelIsFullScreenWidth:[Z

    sget v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v8, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v10, :cond_14

    move v0, v1

    :goto_1
    aput-boolean v0, v6, v7

    .line 589
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    const v6, 0x7f0b005b

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$7;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$7;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 597
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    if-nez v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 599
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    new-instance v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$FastColorDrawable;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$FastColorDrawable;-><init>(I)V

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 603
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHeadsUpNotificationView:[Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    sget v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const v0, 0x7f040015

    invoke-static {v4, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    aput-object v0, v6, v7

    .line 605
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHeadsUpNotificationView:[Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->setVisibility(I)V

    .line 606
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHeadsUpNotificationView:[Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 613
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->updateShowSearchHoldoff()V

    .line 616
    :try_start_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mShowNav:[Z

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v7}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v7

    aput-boolean v7, v0, v6

    .line 618
    sget-object v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mShowNav:[Z

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_2

    .line 619
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const v0, 0x7f040002

    const/4 v8, 0x0

    invoke-static {v4, v0, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    aput-object v0, v6, v7

    .line 622
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDisabled:[I

    sget v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v6, v6, v7

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->setDisabledFlags(I)V

    .line 623
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 624
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    new-instance v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$8;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$8;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPixelFormat:[I

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aput v10, v0, v6

    .line 638
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSystemIconArea:[Landroid/widget/LinearLayout;

    sget v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v8, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v8

    const v8, 0x7f0b0045

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v6, v7

    .line 639
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    const v6, 0x7f0b0046

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 640
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    const v6, 0x7f0b0044

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IconMerger;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    .line 641
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    const v6, 0x7f0b0043

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMoreIcon:Landroid/view/View;

    .line 642
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMoreIcon:Landroid/view/View;

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/IconMerger;->setOverflowIndicator(Landroid/view/View;)V

    .line 643
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarContents:[Landroid/widget/LinearLayout;

    sget v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v8, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v8

    const v8, 0x7f0b0041

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v6, v7

    .line 644
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mTickerView:[Landroid/view/View;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v8, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v7, v7, v8

    const v8, 0x7f0b0054

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v0, v6

    .line 646
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    const v6, 0x7f0b001a

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    .line 647
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setLayoutTransitionsEnabled(Z)V

    .line 648
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->getNotificationLongClicker()Landroid/view/View$OnLongClickListener;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setLongPressListener(Landroid/view/View$OnLongClickListener;)V

    .line 649
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mExpandedContents:[Landroid/view/View;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    aput-object v7, v0, v6

    .line 651
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelHeader:[Landroid/view/View;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v8, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v7, v7, v8

    const v8, 0x7f0b005b

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v0, v6

    .line 653
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButton:[Landroid/view/View;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v8, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v7, v7, v8

    const v8, 0x7f0b0064

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v0, v6

    .line 654
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButton:[Landroid/view/View;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    sget-boolean v0, Lcom/asus/systemui/util/AsusQuicksettingUtil;->IS_SMALL_RAM:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButton:[Landroid/view/View;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 656
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButton:[Landroid/view/View;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 657
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButton:[Landroid/view/View;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 660
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMoreButton:[Landroid/view/View;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v8, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v7, v7, v8

    const v8, 0x7f0b0066

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v0, v6

    .line 661
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMoreButton:[Landroid/view/View;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    check-cast v0, Landroid/widget/Button;

    const v6, 0x10403c4

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 662
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMoreButton:[Landroid/view/View;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    new-instance v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$9;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$9;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 674
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationHeader:[Landroid/view/View;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v8, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v7, v7, v8

    const v8, 0x7f0b0019

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v0, v6

    .line 676
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationHeader:[Landroid/view/View;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    new-instance v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$10;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$10;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 683
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationHeaderTitle:[Landroid/view/View;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationHeader:[Landroid/view/View;

    sget v8, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v7, v7, v8

    const v8, 0x7f0b0015

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v0, v6

    .line 686
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationHeaderTop:[Landroid/view/View;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v8, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v7, v7, v8

    const v8, 0x7f0b001b

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v0, v6

    .line 688
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationHeaderTop:[Landroid/view/View;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    new-instance v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$11;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$11;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 695
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationHeaderTopTitle:[Landroid/view/View;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationHeaderTop:[Landroid/view/View;

    sget v8, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v7, v7, v8

    const v8, 0x7f0b0015

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v0, v6

    .line 697
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationTitle:[Landroid/widget/TextView;

    sget v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v8, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v8

    const v8, 0x7f0b0069

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v6, v7

    .line 698
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuicksettingsTitle:[Landroid/widget/TextView;

    sget v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v8, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v8

    const v8, 0x7f0b006a

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v6, v7

    .line 699
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    const v6, 0x7f0b0018

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAlwaysTopItem:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    .line 700
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAlwaysTopItem:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setLayoutTransitionsEnabled(Z)V

    .line 701
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItems:[Landroid/view/View;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v8, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v7, v7, v8

    const v8, 0x7f0b0016

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v0, v6

    .line 702
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationHeaderTitle:[Landroid/view/View;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v8, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v7, v7, v8

    const v8, 0x7f0b0015

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v0, v6

    .line 705
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDateView:[Lcom/android/systemui/statusbar/policy/DateView;

    sget v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v8, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v8

    const v8, 0x7f0b008c

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DateView;

    aput-object v0, v6, v7

    .line 707
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHasSettingsPanel:[Z

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const v7, 0x7f09000c

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    aput-boolean v7, v0, v6

    .line 708
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHasFlipSettings:[Z

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const v7, 0x7f09000d

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    aput-boolean v7, v0, v6

    .line 710
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDateTimeView:[Landroid/view/View;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelHeader:[Landroid/view/View;

    sget v8, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v7, v7, v8

    const v8, 0x7f0b005c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v0, v6

    .line 711
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDateTimeView:[Landroid/view/View;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    if-eqz v0, :cond_4

    .line 712
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDateTimeView:[Landroid/view/View;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClockClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 713
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDateTimeView:[Landroid/view/View;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 716
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButton:[Landroid/widget/ImageView;

    sget v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v8, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v8

    const v8, 0x7f0b0067

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v6, v7

    .line 717
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButton:[Landroid/widget/ImageView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    if-eqz v0, :cond_5

    .line 718
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButton:[Landroid/widget/ImageView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 719
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHasSettingsPanel:[Z

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_15

    .line 725
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButton:[Landroid/widget/ImageView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    const v6, 0x7f0200d7

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 726
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButton:[Landroid/widget/ImageView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 741
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHasFlipSettings:[Z

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_6

    .line 742
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButton:[Landroid/widget/ImageView;

    sget v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v8, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v8

    const v8, 0x7f0b0068

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v6, v7

    .line 743
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButton:[Landroid/widget/ImageView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    if-eqz v0, :cond_6

    .line 744
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButton:[Landroid/widget/ImageView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 748
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mScrollView:[Landroid/widget/ScrollView;

    sget v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v8, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v8

    const v8, 0x7f0b0017

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    aput-object v0, v6, v7

    .line 749
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mScrollView:[Landroid/widget/ScrollView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 750
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelIsFullScreenWidth:[Z

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v0, v0, v6

    if-nez v0, :cond_7

    .line 751
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mScrollView:[Landroid/widget/ScrollView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    const/high16 v6, 0x8a

    invoke-virtual {v0, v6}, Landroid/widget/ScrollView;->setSystemUiVisibility(I)V

    .line 757
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mScrollView:[Landroid/widget/ScrollView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    instance-of v0, v0, Lcom/android/systemui/statusbar/phone/AsusNotificationScrollView;

    if-eqz v0, :cond_8

    .line 758
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mScrollView:[Landroid/widget/ScrollView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    check-cast v0, Lcom/android/systemui/statusbar/phone/AsusNotificationScrollView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mOnScrollViewListener:Lcom/android/systemui/statusbar/phone/AsusNotificationScrollView$OnScrollViewListener;

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/AsusNotificationScrollView;->setOnScrollViewListener(Lcom/android/systemui/statusbar/phone/AsusNotificationScrollView$OnScrollViewListener;)V

    .line 762
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mTicker:[Lcom/android/systemui/statusbar/phone/Ticker;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    new-instance v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$MyTicker;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v9, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v8, v8, v9

    invoke-direct {v7, p0, v4, v8}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$MyTicker;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;Landroid/content/Context;Landroid/view/View;)V

    aput-object v7, v0, v6

    .line 764
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    const v6, 0x7f0b0056

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/TickerView;

    .line 765
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mTicker:[Lcom/android/systemui/statusbar/phone/Ticker;

    sget v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v6, v6, v7

    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/TickerView;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    .line 767
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEdgeBorder:[I

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const v7, 0x7f070001

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    aput v5, v0, v6

    .line 770
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setAreThereNotifications()V

    .line 773
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mLocationController:[Lcom/android/systemui/statusbar/policy/LocationController;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    new-instance v6, Lcom/android/systemui/statusbar/policy/LocationController;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/systemui/statusbar/policy/LocationController;-><init>(Landroid/content/Context;)V

    aput-object v6, v0, v5

    .line 774
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBatteryController:[Lcom/android/systemui/statusbar/policy/AsusBatteryController;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    new-instance v6, Lcom/android/systemui/statusbar/policy/AsusBatteryController;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/systemui/statusbar/policy/AsusBatteryController;-><init>(Landroid/content/Context;)V

    aput-object v6, v0, v5

    .line 775
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBatteryController:[Lcom/android/systemui/statusbar/policy/AsusBatteryController;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v5, v0, v5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    const v6, 0x7f0b0051

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->addPercentageView(Landroid/widget/TextView;)V

    .line 776
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBatteryController:[Lcom/android/systemui/statusbar/policy/AsusBatteryController;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v5, v0, v5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    const v6, 0x7f0b0052

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->addIconView(Landroid/widget/ImageView;)V

    .line 777
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "asus.hardware.battery.pad"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 778
    if-eqz v0, :cond_9

    .line 779
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBatteryController:[Lcom/android/systemui/statusbar/policy/AsusBatteryController;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v5, v0, v5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    const v6, 0x7f0b004f

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->addPadIconView(Landroid/widget/ImageView;)V

    .line 780
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBatteryController:[Lcom/android/systemui/statusbar/policy/AsusBatteryController;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v5, v0, v5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    const v6, 0x7f0b0050

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->addPadChargerIconView(Landroid/widget/ImageView;)V

    .line 781
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBatteryController:[Lcom/android/systemui/statusbar/policy/AsusBatteryController;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v5, v0, v5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    const v6, 0x7f0b004e

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->addPadPercentageView(Landroid/widget/TextView;)V

    .line 783
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "asus.hardware.battery.dock"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 784
    if-eqz v0, :cond_a

    .line 785
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBatteryController:[Lcom/android/systemui/statusbar/policy/AsusBatteryController;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v5, v0, v5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    const v6, 0x7f0b004c

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->addDockIconView(Landroid/widget/ImageView;)V

    .line 786
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBatteryController:[Lcom/android/systemui/statusbar/policy/AsusBatteryController;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v5, v0, v5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    const v6, 0x7f0b004d

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->addDockChargerIconView(Landroid/widget/ImageView;)V

    .line 787
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBatteryController:[Lcom/android/systemui/statusbar/policy/AsusBatteryController;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v5, v0, v5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    const v6, 0x7f0b004b

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->addDockPercentageView(Landroid/widget/TextView;)V

    .line 789
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBluetoothController:[Lcom/android/systemui/statusbar/policy/BluetoothController;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    new-instance v6, Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/systemui/statusbar/policy/BluetoothController;-><init>(Landroid/content/Context;)V

    aput-object v6, v0, v5

    .line 790
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mRotationLockController:[Lcom/android/systemui/statusbar/policy/RotationLockController;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    new-instance v6, Lcom/android/systemui/statusbar/policy/RotationLockController;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/systemui/statusbar/policy/RotationLockController;-><init>(Landroid/content/Context;)V

    aput-object v6, v0, v5

    .line 793
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyConstants;->IS_DSDS:Z

    if-eqz v0, :cond_16

    .line 794
    sget-object v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSignalClusterViewDualSim:[Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v7

    const v7, 0x7f0b004a

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;

    aput-object v0, v5, v6

    .line 796
    sget-object v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSignalClusterViewDualSim:[Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->setVisibility(I)V

    .line 797
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNetworkControllerDualSim:[Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    new-instance v6, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;-><init>(Landroid/content/Context;)V

    aput-object v6, v0, v5

    .line 798
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNetworkControllerDualSim:[Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v5

    sget-object v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSignalClusterViewDualSim:[Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->addSignalCluster(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$SignalCluster;)V

    .line 799
    sget-object v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSignalClusterViewDualSim:[Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNetworkControllerDualSim:[Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->setNetworkController(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;)V

    move v0, v1

    .line 810
    :goto_4
    if-eqz v0, :cond_b

    .line 811
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEmergencyCallLabel:[Landroid/widget/TextView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v7

    const v7, 0x7f0b008b

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v5, v6

    .line 813
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEmergencyCallLabel:[Landroid/widget/TextView;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v5

    if-eqz v0, :cond_b

    .line 814
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyConstants;->IS_DSDS:Z

    if-eqz v0, :cond_17

    .line 815
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNetworkControllerDualSim:[Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEmergencyCallLabel:[Landroid/widget/TextView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->addEmergencyLabelView(Landroid/widget/TextView;)V

    .line 819
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEmergencyCallLabel:[Landroid/widget/TextView;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v5

    new-instance v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$12;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$12;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 821
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEmergencyCallLabel:[Landroid/widget/TextView;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v5

    new-instance v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$13;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$13;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 830
    :cond_b
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v7

    const v7, 0x7f0b0071

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v5, v6

    .line 831
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mShowCarrierInPanel:[Z

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;

    sget v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v7

    if-eqz v0, :cond_18

    move v0, v1

    :goto_6
    aput-boolean v0, v5, v6

    .line 833
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mShowCarrierInPanel:[Z

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_c

    .line 834
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v5, v0, v5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCarrierLabelVisible:[Z

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_19

    move v0, v2

    :goto_7
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 838
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 840
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 841
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyConstants;->IS_DSDS:Z

    if-eqz v0, :cond_1a

    .line 842
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNetworkControllerDualSim:[Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->addMobileLabelView(Landroid/widget/TextView;)V

    .line 855
    :goto_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    new-instance v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$14;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$14;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setOnSizeChangedListener(Lcom/android/systemui/statusbar/policy/OnSizeChangedListener;)V

    .line 864
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHasSettingsPanel:[Z

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_10

    .line 867
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHasFlipSettings:[Z

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_1d

    .line 869
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v5

    const v5, 0x7f0b005a

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 870
    if-eqz v0, :cond_d

    .line 871
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsView:[Landroid/view/View;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    aput-object v0, v5, v6

    .line 872
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsView:[Landroid/view/View;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v5

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 873
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsView:[Landroid/view/View;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 893
    :cond_d
    :goto_9
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsContainer:[Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v7

    const v7, 0x7f0b0005

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;

    aput-object v0, v5, v6

    .line 895
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsContainer:[Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;->setQB(Z)V

    .line 896
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuickboxContainer:[Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    const v6, 0x7f0b0003

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;

    aput-object v0, v2, v5

    .line 898
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuickboxContainer:[Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;->setQB(Z)V

    .line 899
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsContainer:[Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v2

    if-eqz v0, :cond_1f

    .line 900
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQS:[Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    new-instance v3, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsContainer:[Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;

    sget v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v6, v6, v7

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuickboxContainer:[Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;

    sget v8, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v7, v7, v8

    invoke-direct {v3, v5, v6, v7}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;)V

    aput-object v3, v0, v2

    .line 901
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelIsFullScreenWidth:[Z

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v0, v0, v2

    if-nez v0, :cond_e

    .line 902
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsContainer:[Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v2

    const/high16 v2, 0x18

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;->setSystemUiVisibility(I)V

    .line 906
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsPanel:[Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v2

    if-eqz v0, :cond_f

    .line 907
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsPanel:[Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQS:[Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;->setQuickSettings(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)V

    .line 912
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQS:[Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->setService(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    .line 913
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQS:[Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->setup()V

    .line 919
    :cond_10
    :goto_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsView:[Landroid/widget/ImageView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v5

    const v5, 0x7f0b0062

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v2, v3

    .line 920
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsView:[Landroid/widget/ImageView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 921
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageView:[Landroid/widget/ImageView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v5

    const v5, 0x7f0b0061

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v2, v3

    .line 922
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageView:[Landroid/widget/ImageView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 923
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageView:[Landroid/widget/ImageView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v2

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 924
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mScroll:[Landroid/widget/ScrollView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v5

    const v5, 0x7f0b0004

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    aput-object v0, v2, v3

    .line 926
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessView:[Landroid/view/View;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v5

    const v5, 0x7f0b0002

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v0, v2

    .line 927
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelIsFullScreenWidth:[Z

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_11

    .line 928
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mTitleHolder:[Landroid/view/View;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v5

    const v5, 0x7f0b0065

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v0, v2

    .line 931
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 934
    sget-object v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_12

    .line 935
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFilter:Landroid/content/IntentFilter;

    .line 936
    sget-object v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 937
    sget-object v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 938
    sget-object v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 939
    sget-object v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.systemui.demo"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 940
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v4, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 944
    :cond_12
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->resetUserSetupObserver()V

    .line 947
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "QUICK_SETTINGS_ENABLED_CONTROLLERS"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQSListChnagedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 951
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mWifiDirectController:[Lcom/android/systemui/statusbar/policy/WifiDirectController;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    new-instance v3, Lcom/android/systemui/statusbar/policy/WifiDirectController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/WifiDirectController;-><init>(Landroid/content/Context;)V

    aput-object v3, v0, v2

    .line 952
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mWifiDirectController:[Lcom/android/systemui/statusbar/policy/WifiDirectController;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v0, v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v3

    const v3, 0x7f0b0048

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/WifiDirectController;->addIconView(Landroid/widget/ImageView;)V

    .line 954
    sget-object v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mShowNav:[Z

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v0, v0, v2

    if-nez v0, :cond_13

    .line 955
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->initialFloatMenuVariable()V

    .line 956
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->initFloatingView()V

    .line 959
    :cond_13
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->updateSearchPanel()V

    .line 961
    sget-object v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mIsInitial:[Z

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aput-boolean v1, v0, v2

    .line 962
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    goto/16 :goto_0

    :cond_14
    move v0, v2

    .line 585
    goto/16 :goto_1

    .line 737
    :cond_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButton:[Landroid/widget/ImageView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 738
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButton:[Landroid/widget/ImageView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v6

    const v6, 0x7f0200d7

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 802
    :cond_16
    sget-object v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSignalClusterView:[Lcom/android/systemui/statusbar/AsusSignalClusterView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v7

    const v7, 0x7f0b0049

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/AsusSignalClusterView;

    aput-object v0, v5, v6

    .line 804
    sget-object v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSignalClusterView:[Lcom/android/systemui/statusbar/AsusSignalClusterView;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/AsusSignalClusterView;->setVisibility(I)V

    .line 805
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNetworkController:[Lcom/android/systemui/statusbar/policy/AsusNetworkController;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    new-instance v6, Lcom/android/systemui/statusbar/policy/AsusNetworkController;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;-><init>(Landroid/content/Context;)V

    aput-object v6, v0, v5

    .line 806
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNetworkController:[Lcom/android/systemui/statusbar/policy/AsusNetworkController;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v5

    sget-object v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSignalClusterView:[Lcom/android/systemui/statusbar/AsusSignalClusterView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->addSignalCluster(Lcom/android/systemui/statusbar/policy/AsusNetworkController$SignalCluster;)V

    .line 807
    sget-object v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSignalClusterView:[Lcom/android/systemui/statusbar/AsusSignalClusterView;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNetworkController:[Lcom/android/systemui/statusbar/policy/AsusNetworkController;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/AsusSignalClusterView;->setNetworkController(Lcom/android/systemui/statusbar/policy/AsusNetworkController;)V

    .line 808
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNetworkController:[Lcom/android/systemui/statusbar/policy/AsusNetworkController;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->hasVoiceCallingFeature()Z

    move-result v0

    goto/16 :goto_4

    .line 817
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNetworkController:[Lcom/android/systemui/statusbar/policy/AsusNetworkController;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEmergencyCallLabel:[Landroid/widget/TextView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->addEmergencyLabelView(Landroid/widget/TextView;)V

    goto/16 :goto_5

    :cond_18
    move v0, v2

    .line 831
    goto/16 :goto_6

    .line 834
    :cond_19
    const/4 v0, 0x4

    goto/16 :goto_7

    .line 844
    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNetworkController:[Lcom/android/systemui/statusbar/policy/AsusNetworkController;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->addMobileLabelView(Landroid/widget/TextView;)V

    goto/16 :goto_8

    .line 847
    :cond_1b
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyConstants;->IS_DSDS:Z

    if-eqz v0, :cond_1c

    .line 848
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNetworkControllerDualSim:[Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->addCombinedLabelView(Landroid/widget/TextView;)V

    goto/16 :goto_8

    .line 850
    :cond_1c
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNetworkController:[Lcom/android/systemui/statusbar/policy/AsusNetworkController;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->addCombinedLabelView(Landroid/widget/TextView;)V

    goto/16 :goto_8

    .line 877
    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v5

    const v5, 0x7f0b006c

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 878
    if-eqz v0, :cond_1e

    .line 879
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsPanel:[Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;

    aput-object v0, v5, v6

    .line 884
    :goto_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsPanel:[Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v5

    if-eqz v0, :cond_d

    .line 885
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    if-nez v0, :cond_d

    .line 886
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsPanel:[Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v5

    new-instance v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$FastColorDrawable;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$FastColorDrawable;-><init>(I)V

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 881
    :cond_1e
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsPanel:[Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v7

    const v7, 0x7f0b001c

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;

    aput-object v0, v5, v6

    goto :goto_b

    .line 915
    :cond_1f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQS:[Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aput-object v3, v0, v2

    goto/16 :goto_a

    .line 631
    :catch_0
    move-exception v0

    goto/16 :goto_2
.end method

.method needToRefresh(I)V
    .locals 4

    .prologue
    .line 3601
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelIsFullScreenWidth:[Z

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 3602
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    .line 3604
    :goto_0
    const-string v1, "AsusPhoneStatusBar.DDS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New config orientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Display getRotation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3605
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->updateQuickSettingLayout(Z)V

    .line 3607
    :cond_0
    return-void

    .line 3602
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3499
    const-string v0, "AsusPhoneStatusBar.DDS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfigurationChanged newConfig: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3501
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 3502
    and-int/lit8 v3, v0, 0xf

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mLastScreenLayout:I

    and-int/lit8 v4, v4, 0xf

    if-eq v3, v4, :cond_b

    .line 3503
    sput-boolean v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->sIsDDS:Z

    .line 3504
    monitor-enter p0

    .line 3505
    :try_start_0
    sput v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mLastScreenLayout:I

    .line 3506
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    const-string v4, "AsusPhoneStatusBar.DDS"

    const-string v5, "onConfigurationChanged"

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->removeViewFromWindowManager(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 3507
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    const-string v4, "AsusPhoneStatusBar.DDS"

    const-string v5, "onConfigurationChanged"

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->removeViewFromWindowManager(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 3508
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHeadsUpNotificationView:[Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    const-string v4, "AsusPhoneStatusBar.DDS"

    const-string v5, "onConfigurationChanged"

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->removeViewFromWindowManager(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 3509
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    const-string v4, "AsusPhoneStatusBar.DDS"

    const-string v5, "onConfigurationChanged"

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->removeViewFromWindowManager(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 3511
    sget-object v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mShowNav:[Z

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v3, v3, v4

    if-nez v3, :cond_0

    .line 3512
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFloatingMenu:[Landroid/view/View;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    const-string v4, "AsusPhoneStatusBar.DDS"

    const-string v5, "onConfigurationChanged"

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->removeViewFromWindowManager(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 3513
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFloatingShadow:[Landroid/view/View;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    const-string v4, "AsusPhoneStatusBar.DDS"

    const-string v5, "onConfigurationChanged"

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->removeViewFromWindowManager(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 3516
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->haltTicker()V

    .line 3517
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3518
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 3519
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/IconMerger;->removeAllViews()V

    .line 3520
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    .line 3521
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->removeAllViews()V

    .line 3522
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    .line 3523
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAlwaysTopItem:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->removeAllViews()V

    .line 3524
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAlwaysTopItem:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    .line 3526
    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    .line 3527
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setCurrentType(I)V

    .line 3528
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->loadDimens()V

    .line 3529
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->createAndAddWindows()V

    .line 3531
    sget-object v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mIconList:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v0}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v5

    move v3, v2

    move v0, v2

    .line 3533
    :goto_0
    if-ge v3, v5, :cond_2

    .line 3534
    sget-object v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mIconList:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v6, v3}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v6

    .line 3535
    if-eqz v6, :cond_1

    .line 3536
    sget-object v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mIconList:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v7, v3}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlot(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v3, v0, v6}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 3537
    add-int/lit8 v0, v0, 0x1

    .line 3533
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3541
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->refreshNotificationViews()V

    .line 3542
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->updateNotificationIcons()V

    .line 3543
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setAreThereNotifications()V

    .line 3544
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBatteryController:[Lcom/android/systemui/statusbar/policy/AsusBatteryController;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->show_views()V

    .line 3545
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyConstants;->IS_DSDS:Z

    if-eqz v0, :cond_7

    .line 3546
    sget-object v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSignalClusterViewDualSim:[Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->resetSignalCluster()V

    .line 3550
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v3

    if-eqz v0, :cond_4

    .line 3551
    sget-object v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mIsInitial:[Z

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v0, v0, v3

    if-nez v0, :cond_3

    .line 3552
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->reorient()V

    .line 3554
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setNavigationBarListener()V

    .line 3555
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const-string v5, "AsusPhoneStatusBar.DDS"

    const-string v6, "onConfigurationChanged"

    invoke-virtual {p0, v0, v3, v5, v6}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->addViewToWindowManager(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;Ljava/lang/String;)V

    .line 3557
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDisabled:[I

    aget v0, v0, v4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->disable(I)V

    .line 3558
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSystemUiVisibility:[I

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v0, v0, v3

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setSystemUiVisibility(II)V

    .line 3559
    sget-object v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSwitches:[I

    const/4 v3, 0x2

    aget v0, v0, v3

    if-eqz v0, :cond_8

    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->topAppWindowChanged(Z)V

    .line 3560
    sget-object v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBinders:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    sget-object v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSwitches:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    sget-object v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSwitches:[I

    const/4 v5, 0x4

    aget v4, v4, v5

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setImeWindowStatus(Landroid/os/IBinder;II)V

    .line 3561
    sget-object v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSwitches:[I

    const/4 v3, 0x5

    aget v0, v0, v3

    if-eqz v0, :cond_9

    move v3, v1

    :goto_3
    sget-object v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSwitches:[I

    const/4 v4, 0x6

    aget v0, v0, v4

    if-eqz v0, :cond_a

    move v0, v1

    :goto_4
    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setHardKeyboardStatus(ZZ)V

    .line 3562
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mLocale:Ljava/util/Locale;

    .line 3563
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mLocale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mLayoutDirection:I

    .line 3564
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mLayoutDirection:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->refreshLayout(I)V

    .line 3565
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQS:[Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    .line 3566
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQS:[Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->updateResources()V

    .line 3568
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQS:[Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->resetToast()V

    .line 3570
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->updateSearchPanel()V

    .line 3571
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->updateShowSearchHoldoff()V

    .line 3574
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->needToRefresh(I)V

    .line 3576
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3577
    sput-boolean v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->sIsDDS:Z

    .line 3598
    :cond_6
    :goto_5
    return-void

    .line 3548
    :cond_7
    :try_start_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSignalClusterView:[Lcom/android/systemui/statusbar/AsusSignalClusterView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/AsusSignalClusterView;->resetSignalCluster()V

    goto/16 :goto_1

    .line 3576
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_8
    move v0, v2

    .line 3559
    goto :goto_2

    :cond_9
    move v3, v2

    .line 3561
    goto :goto_3

    :cond_a
    move v0, v2

    goto :goto_4

    .line 3579
    :cond_b
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->sIsDDS:Z

    if-nez v0, :cond_6

    .line 3582
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3586
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->updateDisplaySize()V

    .line 3589
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->needToRefresh(I)V

    .line 3592
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->updateResources()V

    .line 3593
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->repositionNavigationBar()V

    .line 3594
    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->updateExpandedViewPos(I)V

    .line 3595
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->updateSearchPanel()V

    .line 3596
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->updateShowSearchHoldoff()V

    goto :goto_5
.end method

.method public onHeadsUpDismissed()V
    .locals 4

    .prologue
    .line 3708
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mInterruptingNotificationEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-nez v0, :cond_1

    .line 3720
    :cond_0
    :goto_0
    return-void

    .line 3709
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v1, 0x403

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 3710
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHeadsUpNotificationView:[Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->isClearable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3712
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mInterruptingNotificationEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mInterruptingNotificationEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mInterruptingNotificationEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v3, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3716
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onHideSearchPanel()V
    .locals 2

    .prologue
    .line 974
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->transitionCameraAndSearchButtonAlpha(F)V

    .line 977
    :cond_0
    return-void
.end method

.method protected onShowSearchPanel()V
    .locals 2

    .prologue
    .line 967
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->transitionCameraAndSearchButtonAlpha(F)V

    .line 970
    :cond_0
    return-void
.end method

.method panelsEnabled()Z
    .locals 2

    .prologue
    .line 1802
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDisabled:[I

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v0, v0, v1

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshAllStatusBarIcons()V
    .locals 1

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->refreshAllIconsForLayout(Landroid/widget/LinearLayout;)V

    .line 1218
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->refreshAllIconsForLayout(Landroid/widget/LinearLayout;)V

    .line 1219
    return-void
.end method

.method protected refreshLayout(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1369
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 1370
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->setLayoutDirection(I)V

    .line 1373
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButton:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButton:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1375
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButton:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1376
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButton:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0200d4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1379
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButton:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 1381
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButton:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1382
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButton:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const v1, 0x7f0200d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1385
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButton:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    .line 1387
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButton:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1388
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButton:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const v1, 0x7f0200d2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1390
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->setLayoutDirection(I)V

    .line 1391
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->refreshAllStatusBarIcons()V

    .line 1392
    return-void
.end method

.method public removeIcon(Ljava/lang/String;II)V
    .locals 1
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1250
    return-void
.end method

.method public removeNotification(Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->findByKey(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    .line 1312
    if-eqz v1, :cond_0

    .line 1313
    const-string v0, "com.asus.sitd.whatsnext"

    iget-object v2, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAlwaysTopItemDelayDismiss:Z

    .line 1316
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAlwaysTopItem:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1317
    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1318
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAlwaysTopItem:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1320
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$19;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$19;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1341
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->removeNotificationViews(Landroid/os/IBinder;)Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 1344
    if-eqz v0, :cond_2

    .line 1346
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mTicker:[Lcom/android/systemui/statusbar/phone/Ticker;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/Ticker;->removeEntry(Landroid/service/notification/StatusBarNotification;)V

    .line 1349
    const/16 v1, -0x2710

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->updateExpandedViewPos(I)V

    .line 1351
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mInterruptingNotificationEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mInterruptingNotificationEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    if-ne v0, v1, :cond_1

    .line 1353
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v1, 0x403

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1357
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->isTracking()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isAlwaysTopShow()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1359
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->animateCollapsePanels()V

    .line 1364
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setAreThereNotifications()V

    .line 1365
    return-void
.end method

.method public resetHeadsUpDecayTimer()V
    .locals 4

    .prologue
    const/16 v3, 0x403

    .line 1302
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mUseHeadsUp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHeadsUpNotificationDecay:[I

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHeadsUpNotificationView:[Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->isClearable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1304
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1305
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHeadsUpNotificationDecay:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v1, v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessageDelayed(IJ)Z

    .line 1307
    :cond_0
    return-void
.end method

.method public scrollToDefaultPos()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3991
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mScroll:[Landroid/widget/ScrollView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 3992
    return-void
.end method

.method protected setAreThereNotifications()V
    .locals 14

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1553
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    if-lez v0, :cond_2

    move v6, v1

    .line 1555
    :goto_0
    if-eqz v6, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->hasClearableItems()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 1563
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHasFlipSettings:[Z

    sget v8, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsView:[Landroid/view/View;

    sget v8, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v7, v7, v8

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsView:[Landroid/view/View;

    sget v8, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItems:[Landroid/view/View;

    sget v8, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_4

    .line 1568
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButton:[Landroid/view/View;

    sget v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v7

    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1591
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButton:[Landroid/view/View;

    sget v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v7

    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1594
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v3

    const v3, 0x7f0b0040

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1595
    if-eqz v6, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->areLightsOn()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    .line 1596
    :goto_3
    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v4

    if-nez v3, :cond_9

    :goto_4
    if-eq v0, v1, :cond_1

    .line 1597
    if-eqz v0, :cond_0

    .line 1598
    invoke-virtual {v7, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1599
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1601
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz v0, :cond_a

    move v1, v4

    :goto_5
    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v0, :cond_b

    const-wide/16 v3, 0x2ee

    :goto_6
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v4, 0x4000

    invoke-direct {v3, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1614
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->updateCarrierLabelVisibility(Z)V

    .line 1615
    return-void

    :cond_2
    move v6, v2

    .line 1553
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 1555
    goto/16 :goto_1

    .line 1570
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButton:[Landroid/view/View;

    sget v8, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v7, v7, v8

    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1571
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMoreButton:[Landroid/view/View;

    sget v8, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v7, v7, v8

    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1572
    sget-boolean v7, Lcom/asus/systemui/util/AsusQuicksettingUtil;->IS_SMALL_RAM:Z

    if-nez v7, :cond_5

    .line 1573
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButtonAnim:[Landroid/animation/Animator;

    sget v8, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const/16 v9, 0x7d

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButton:[Landroid/view/View;

    sget v12, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v11, v11, v12

    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v13, v1, [F

    aput v4, v13, v2

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    const-wide/16 v12, 0xe1

    invoke-virtual {v11, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->interpolator(Landroid/animation/TimeInterpolator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->startDelay(ILandroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v9

    aput-object v9, v7, v8

    .line 1580
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMoreButtonAnim:[Landroid/animation/Animator;

    sget v8, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    const/16 v9, 0x7d

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMoreButton:[Landroid/view/View;

    sget v12, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v11, v11, v12

    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v13, v1, [F

    aput v4, v13, v2

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    const-wide/16 v12, 0xe1

    invoke-virtual {v11, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->interpolator(Landroid/animation/TimeInterpolator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->startDelay(ILandroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v9

    aput-object v9, v7, v8

    .line 1587
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationHeader:[Landroid/view/View;

    sget v8, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v7, v7, v8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isAlwaysTopShow()Z

    move-result v8

    if-eqz v8, :cond_6

    move v3, v2

    :cond_6
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1588
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationTitle:[Landroid/widget/TextView;

    sget v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v7, v3, v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isAlwaysTopShow()Z

    move-result v3

    if-eqz v3, :cond_7

    const v3, 0x7f060051

    :goto_8
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1589
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->updateNotificationHeaderTopVisibility()V

    goto/16 :goto_2

    .line 1588
    :cond_7
    const v3, 0x7f06004a

    goto :goto_8

    :cond_8
    move v0, v2

    .line 1595
    goto/16 :goto_3

    :cond_9
    move v1, v2

    .line 1596
    goto/16 :goto_4

    :cond_a
    move v1, v5

    .line 1601
    goto/16 :goto_5

    :cond_b
    const-wide/16 v3, 0xfa

    goto/16 :goto_6

    :cond_c
    new-instance v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$21;

    invoke-direct {v0, p0, v7}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$21;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;Landroid/view/View;)V

    goto/16 :goto_7
.end method

.method public setFloatingMenu(IZI)V
    .locals 2
    .parameter "type"
    .parameter "lastFocusNeedsMenu"
    .parameter "lastSystemUiFlags"

    .prologue
    .line 4028
    move v0, p2

    .line 4029
    .local v0, visible:Z
    const/16 v1, 0x2ee6

    if-ne p1, v1, :cond_2

    .line 4030
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_0

    .line 4031
    const/4 v0, 0x0

    .line 4033
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setMenuVisible(Z)V

    .line 4038
    :cond_1
    :goto_0
    return-void

    .line 4034
    :cond_2
    const/16 v1, 0x2ee7

    if-ne p1, v1, :cond_1

    .line 4035
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mIsIMEVisible:Z

    .line 4036
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mIsMenuVisible:Z

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setMenuVisible(Z)V

    goto :goto_0
.end method

.method public setHardKeyboardStatus(ZZ)V
    .locals 0
    .parameter "available"
    .parameter "enabled"

    .prologue
    .line 2873
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;II)V
    .locals 4
    .parameter "token"
    .parameter "vis"
    .parameter "backDisposition"

    .prologue
    .line 2863
    const/4 v1, 0x2

    if-eq p3, v1, :cond_0

    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2866
    .local v0, altBack:Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationIconHints:[I

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v1, v1, v3

    or-int/lit8 v1, v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/CommandQueue;->setNavigationIconHints(I)V

    .line 2870
    return-void

    .line 2863
    .end local v0           #altBack:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2866
    .restart local v0       #altBack:Z
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationIconHints:[I

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v1, v1, v3

    and-int/lit8 v1, v1, -0x9

    goto :goto_1
.end method

.method public setInteracting(IZ)V
    .locals 4
    .parameter "barWindow"
    .parameter "interacting"

    .prologue
    .line 2781
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mInteractingWindows:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mInteractingWindows:[I

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v0, v0, v3

    or-int/2addr v0, p1

    :goto_0
    aput v0, v1, v2

    .line 2784
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mInteractingWindows:[I

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v0, v0, v1

    if-eqz v0, :cond_1

    .line 2785
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->suspendAutohide()V

    .line 2789
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->checkBarModes()V

    .line 2790
    return-void

    .line 2781
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mInteractingWindows:[I

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v0, v0, v3

    xor-int/lit8 v3, p1, -0x1

    and-int/2addr v0, v3

    goto :goto_0

    .line 2787
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->resumeSuspendedAutohide()V

    goto :goto_1
.end method

.method public setLightsOn(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2834
    const-string v0, "AsusPhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLightsOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2835
    if-eqz p1, :cond_0

    .line 2836
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setSystemUiVisibility(II)V

    .line 2840
    :goto_0
    return-void

    .line 2838
    :cond_0
    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setSystemUiVisibility(II)V

    goto :goto_0
.end method

.method public setNavigationIconHints(I)V
    .locals 2
    .parameter "hints"

    .prologue
    .line 2634
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationIconHints:[I

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v0, v0, v1

    if-ne p1, v0, :cond_0

    .line 2642
    :goto_0
    return-void

    .line 2636
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationIconHints:[I

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aput p1, v0, v1

    .line 2638
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 2639
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->setNavigationIconHints(I)V

    .line 2641
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->checkBarModes()V

    goto :goto_0
.end method

.method setNotificationIconVisibility(ZI)V
    .locals 4
    .parameter "visible"
    .parameter "anim"

    .prologue
    .line 3258
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/IconMerger;->getVisibility()I

    move-result v0

    .line 3259
    .local v0, old:I
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 3260
    .local v1, v:I
    :goto_0
    if-eq v0, v1, :cond_0

    .line 3261
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->setVisibility(I)V

    .line 3262
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/IconMerger;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3264
    :cond_0
    return-void

    .line 3259
    .end local v1           #v:I
    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public setSystemUiVisibility(II)V
    .locals 10

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2666
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSystemUiVisibility:[I

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v1, v0, v1

    .line 2667
    xor-int/lit8 v0, p2, -0x1

    and-int/2addr v0, v1

    and-int v2, p1, p2

    or-int/2addr v2, v0

    .line 2668
    xor-int v0, v2, v1

    .line 2674
    if-eqz v0, :cond_9

    .line 2675
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSystemUiVisibility:[I

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aput v2, v3, v4

    .line 2678
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2679
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_a

    move v0, v6

    .line 2680
    :goto_0
    if-eqz v0, :cond_0

    .line 2681
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->animateCollapsePanels()V

    .line 2682
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mTicking:[Z

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_0

    .line 2683
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->haltTicker()V

    .line 2687
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setAreThereNotifications()V

    .line 2691
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v3

    const/high16 v4, 0x400

    const/high16 v5, 0x4000

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->computeBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;II)I

    move-result v9

    .line 2695
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v3

    if-nez v0, :cond_b

    move v3, v8

    .line 2698
    :goto_1
    if-eq v9, v8, :cond_c

    move v2, v6

    .line 2699
    :goto_2
    if-eq v3, v8, :cond_d

    move v1, v6

    .line 2701
    :goto_3
    if-eqz v2, :cond_f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarMode:[I

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v0, v0, v4

    if-eq v9, v0, :cond_f

    .line 2702
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarMode:[I

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aput v9, v0, v4

    move v0, v6

    .line 2705
    :goto_4
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarMode:[I

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v4, v4, v5

    if-eq v3, v4, :cond_2

    .line 2706
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarMode:[I

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aput v3, v0, v4

    move v0, v6

    .line 2709
    :cond_2
    if-eqz v0, :cond_3

    .line 2710
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->checkBarModes()V

    .line 2712
    :cond_3
    if-nez v2, :cond_4

    if-eqz v1, :cond_6

    .line 2714
    :cond_4
    if-eq v9, v6, :cond_5

    if-ne v3, v6, :cond_e

    .line 2715
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->scheduleAutohide()V

    .line 2722
    :cond_6
    :goto_5
    const/high16 v0, 0x1000

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    .line 2723
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSystemUiVisibility:[I

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v2, v0, v1

    const v3, -0x10000001

    and-int/2addr v2, v3

    aput v2, v0, v1

    .line 2725
    :cond_7
    const/high16 v0, 0x2000

    and-int/2addr v0, p1

    if-eqz v0, :cond_8

    .line 2726
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSystemUiVisibility:[I

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v2, v0, v1

    const v3, -0x20000001

    and-int/2addr v2, v3

    aput v2, v0, v1

    .line 2730
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSystemUiVisibility:[I

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 2733
    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSwitches:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSystemUiVisibility:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v1, v1, v2

    aput v1, v0, v6

    .line 2735
    return-void

    :cond_a
    move v0, v7

    .line 2679
    goto/16 :goto_0

    .line 2695
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v3

    const/high16 v4, 0x800

    const/high16 v5, -0x8000

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->computeBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;II)I

    move-result v0

    move v3, v0

    goto/16 :goto_1

    :cond_c
    move v2, v7

    .line 2698
    goto/16 :goto_2

    :cond_d
    move v1, v7

    .line 2699
    goto/16 :goto_3

    .line 2717
    :cond_e
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->cancelAutohide()V

    goto :goto_5

    :cond_f
    move v0, v7

    goto :goto_4
.end method

.method public setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;
    .locals 1
    .parameter "a"
    .parameter "v"
    .parameter "vis"

    .prologue
    .line 1895
    new-instance v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$24;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$24;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;Landroid/view/View;I)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1901
    return-object p1
.end method

.method public setWindowState(II)V
    .locals 5
    .parameter "window"
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2646
    if-nez p2, :cond_2

    move v0, v1

    .line 2647
    .local v0, showing:Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindowState:[I

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v1, v1, v3

    if-eq v1, p2, :cond_0

    .line 2650
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindowState:[I

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aput p2, v1, v3

    .line 2652
    if-nez v0, :cond_0

    .line 2653
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->collapseAllPanels(Z)V

    .line 2656
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarWindowState:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v1, v1, v2

    if-eq v1, p2, :cond_1

    .line 2659
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarWindowState:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aput p2, v1, v2

    .line 2662
    :cond_1
    return-void

    .end local v0           #showing:Z
    :cond_2
    move v0, v2

    .line 2646
    goto :goto_0
.end method

.method protected shouldDisableNavbarGestures()Z
    .locals 2

    .prologue
    .line 3875
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mExpandedVisible:[Z

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDisabled:[I

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v0, v0, v1

    const/high16 v1, 0x200

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showClock(Z)V
    .locals 2

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 1623
    :cond_0
    :goto_0
    return-void

    .line 1619
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const v1, 0x7f0b0053

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1620
    if-eqz v1, :cond_0

    .line 1621
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public showSearchPanel()V
    .locals 4

    .prologue
    .line 1017
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->showSearchPanel()V

    .line 1018
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1021
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    if-eqz v1, :cond_0

    .line 1022
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSystemUiVisibility:[I

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/SearchPanelView;->setSystemUiVisibility(I)V

    .line 1025
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    .line 1026
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1028
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1029
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1031
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return-void
.end method

.method public start(Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .parameter "a"

    .prologue
    .line 1915
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 1916
    return-object p1
.end method

.method public start()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 457
    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    .line 458
    sget-object v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mIsInitial:[Z

    aput-boolean v1, v2, v0

    .line 459
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNaturalBarHeight:[I

    aput v6, v2, v0

    .line 460
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mIconSize:[I

    aput v6, v2, v0

    .line 461
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mIconHPadding:[I

    aput v6, v2, v0

    .line 462
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCarrierLabelVisible:[Z

    aput-boolean v1, v2, v0

    .line 463
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mShowCarrierInPanel:[Z

    aput-boolean v1, v2, v0

    .line 464
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    aput-object v4, v2, v0

    .line 465
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarWindowState:[I

    aput v1, v2, v0

    .line 466
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDisabled:[I

    aput v1, v2, v0

    .line 467
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSystemUiVisibility:[I

    aput v1, v2, v0

    .line 468
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationIconHints:[I

    aput v1, v2, v0

    .line 469
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mShowSearchHoldoff:[I

    aput v1, v2, v0

    .line 470
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentDisplaySize:[Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    aput-object v3, v2, v0

    .line 471
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPilePosition:[[I

    new-array v3, v5, [I

    aput-object v3, v2, v0

    .line 472
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPositionTmp:[[I

    new-array v3, v5, [I

    aput-object v3, v2, v0

    .line 473
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAbsPos:[[I

    new-array v3, v5, [I

    aput-object v3, v2, v0

    .line 474
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDisplayMetrics:[Landroid/util/DisplayMetrics;

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    aput-object v3, v2, v0

    .line 475
    sget-object v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSignalClusterView:[Lcom/android/systemui/statusbar/AsusSignalClusterView;

    aput-object v4, v2, v0

    .line 476
    sget-object v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSignalClusterViewDualSim:[Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;

    aput-object v4, v2, v0

    .line 477
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMenuWidth:[I

    aput v1, v2, v0

    .line 478
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMenuHeight:[I

    aput v1, v2, v0

    .line 479
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMenuMarginLeft:[I

    aput v1, v2, v0

    .line 480
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMenuMarginRight:[I

    aput v1, v2, v0

    .line 481
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCancelboundary:[I

    aput v1, v2, v0

    .line 482
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBoundary:[I

    aput v1, v2, v0

    .line 483
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFloatingMenu:[Landroid/view/View;

    aput-object v4, v2, v0

    .line 484
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFloatingShadow:[Landroid/view/View;

    aput-object v4, v2, v0

    .line 485
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDensity:[F

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 486
    sget-object v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mShowNav:[Z

    aput-boolean v7, v2, v0

    .line 487
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mParamMenu:[Landroid/view/WindowManager$LayoutParams;

    aput-object v4, v2, v0

    .line 488
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mParamShadow:[Landroid/view/WindowManager$LayoutParams;

    aput-object v4, v2, v0

    .line 457
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 491
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 493
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    sput v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mLastScreenLayout:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :goto_1
    sget v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mLastScreenLayout:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setCurrentType(I)V

    .line 498
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDisplay:Landroid/view/Display;

    .line 500
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->updateDisplaySize()V

    .line 502
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->start()V

    .line 504
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->addNavigationBar()V

    .line 507
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 509
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v7}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 511
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "heads_up_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 516
    return-void

    .line 494
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public startActivityDismissingKeyguard(Landroid/content/Intent;Z)V
    .locals 3

    .prologue
    .line 3409
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3418
    :goto_0
    return-void

    .line 3412
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3415
    :goto_1
    const/high16 v0, 0x1400

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3416
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3417
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->animateCollapsePanels()V

    goto :goto_0

    .line 3413
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public startDelay(ILandroid/animation/Animator;)Landroid/animation/Animator;
    .locals 2
    .parameter "d"
    .parameter "a"

    .prologue
    .line 1910
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1911
    return-object p2
.end method

.method public switchToNotificationNoAnim()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 2408
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isKeyguardLock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2444
    :goto_0
    return-void

    .line 2410
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItems:[Landroid/view/View;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2411
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButton:[Landroid/widget/ImageView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2412
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsView:[Landroid/view/View;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2413
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButton:[Landroid/widget/ImageView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2414
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationTitle:[Landroid/widget/TextView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2415
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuicksettingsTitle:[Landroid/widget/TextView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2416
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mScroll:[Landroid/widget/ScrollView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 2417
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsView:[Landroid/widget/ImageView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2418
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageView:[Landroid/widget/ImageView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2420
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelHeader:[Landroid/view/View;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    check-cast v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessView:[Landroid/view/View;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-eq v1, v6, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isPortrait()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2421
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessView:[Landroid/view/View;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2423
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelIsFullScreenWidth:[Z

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_2

    .line 2424
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2425
    .local v0, panelLP:Landroid/view/ViewGroup$LayoutParams;
    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2426
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2428
    .end local v0           #panelLP:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuickboxContainer:[Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v4, v4, v4, v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;->setPadding(IIII)V

    .line 2430
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setAreThereNotifications()V

    .line 2431
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    new-instance v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$32;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$32;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2436
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    new-instance v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$33;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$33;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    const-wide/16 v3, 0x15e

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2443
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mScrollView:[Landroid/widget/ScrollView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/ScrollView;->requestLayout()V

    goto/16 :goto_0
.end method

.method public switchToSettings()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 2145
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mUserSetup:Z

    if-nez v0, :cond_1

    .line 2185
    :cond_0
    :goto_0
    return-void

    .line 2147
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsView:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleX(F)V

    .line 2148
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsView:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2149
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButton:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButton:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2151
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButton:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2152
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButton:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2153
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButton:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 2155
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationTitle:[Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2156
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuicksettingsTitle:[Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2157
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuicksettingsTitle:[Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2158
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelHeader:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessView:[Landroid/view/View;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isPortrait()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2159
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessView:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 2160
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessView:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2162
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageView:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2163
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageView:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2166
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsView:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 2167
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItems:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2168
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItems:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v6}, Landroid/view/View;->setScaleX(F)V

    .line 2169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItems:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 2170
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMoreButton:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2171
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMoreButton:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 2172
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const v1, 0x7f02021e

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->setBackgroundResource(I)V

    .line 2174
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isKeyguardLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2175
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2176
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2177
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2178
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuickboxContainer:[Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v4, v4, v4, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;->setPadding(IIII)V

    .line 2179
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mScroll:[Landroid/widget/ScrollView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 2180
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButton:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2181
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsView:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2182
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageView:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public switchToSettingsNoAnim()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 2376
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsView:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2377
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButton:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2378
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButton:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2379
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButton:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2380
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationTitle:[Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2381
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuicksettingsTitle:[Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2382
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelHeader:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessView:[Landroid/view/View;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isPortrait()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2383
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessView:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2385
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItems:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2386
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMoreButton:[Landroid/view/View;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2387
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageView:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2389
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isKeyguardLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2390
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2391
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2392
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2393
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuickboxContainer:[Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v4, v4, v4, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;->setPadding(IIII)V

    .line 2394
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mScroll:[Landroid/widget/ScrollView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 2395
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationButton:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2396
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsView:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2397
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEditPageView:[Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2399
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$31;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$31;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2404
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const v1, 0x7f02021e

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->setBackgroundResource(I)V

    .line 2405
    return-void
.end method

.method protected tick(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;Z)V
    .locals 2

    .prologue
    .line 2878
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->areLightsOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2896
    :cond_0
    :goto_0
    return-void

    .line 2881
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2884
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->notificationIsForCurrentUser(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2890
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2891
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDisabled:[I

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v0, v0, v1

    const/high16 v1, 0xa

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 2893
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mTicker:[Lcom/android/systemui/statusbar/phone/Ticker;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/Ticker;->addEntry(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0
.end method

.method public topAppWindowChanged(Z)V
    .locals 2
    .parameter "showMenu"

    .prologue
    .line 2853
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 2854
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->setMenuVisibility(Z)V

    .line 2858
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setLightsOn(Z)V

    .line 2859
    :cond_1
    return-void
.end method

.method protected updateCarrierLabelVisibility(Z)V
    .locals 9
    .parameter "force"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1507
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mShowCarrierInPanel:[Z

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v5, v5, v6

    if-nez v5, :cond_1

    .line 1549
    :cond_0
    :goto_0
    return-void

    .line 1515
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mEmergencyCallLabel:[Landroid/widget/TextView;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v5, v5, v6

    if-eqz v5, :cond_5

    move v0, v3

    .line 1516
    .local v0, emergencyCallsShownElsewhere:Z
    :goto_1
    sget-boolean v5, Lcom/android/internal/telephony/TelephonyConstants;->IS_DSDS:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNetworkControllerDualSim:[Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->isEmergencyOnly()Z

    move-result v1

    .line 1519
    .local v1, isEmergencyOnly:Z
    :goto_2
    if-eqz v0, :cond_2

    if-nez v1, :cond_7

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCarrierLabelHeight:[I

    sget v8, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v7, v7, v8

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationHeaderHeight:[I

    sget v8, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v7, v7, v8

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_7

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationItems:[Landroid/view/View;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_7

    move v2, v3

    .line 1524
    .local v2, makeVisible:Z
    :goto_3
    if-nez p1, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCarrierLabelVisible:[Z

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v3, v3, v5

    if-eq v3, v2, :cond_0

    .line 1525
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCarrierLabelVisible:[Z

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aput-boolean v2, v3, v5

    .line 1529
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1530
    if-eqz v2, :cond_4

    .line 1531
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1533
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz v2, :cond_8

    const/high16 v3, 0x3f80

    :goto_4
    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz v2, :cond_9

    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .end local v0           #emergencyCallsShownElsewhere:Z
    .end local v1           #isEmergencyOnly:Z
    .end local v2           #makeVisible:Z
    :cond_5
    move v0, v4

    .line 1515
    goto/16 :goto_1

    .line 1516
    .restart local v0       #emergencyCallsShownElsewhere:Z
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNetworkController:[Lcom/android/systemui/statusbar/policy/AsusNetworkController;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->isEmergencyOnly()Z

    move-result v1

    goto/16 :goto_2

    .restart local v1       #isEmergencyOnly:Z
    :cond_7
    move v2, v4

    .line 1519
    goto :goto_3

    .line 1533
    .restart local v2       #makeVisible:Z
    :cond_8
    const/4 v3, 0x0

    goto :goto_4

    :cond_9
    new-instance v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$20;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$20;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    goto :goto_5
.end method

.method updateDisplaySize()V
    .locals 3

    .prologue
    .line 3310
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDisplayMetrics:[Landroid/util/DisplayMetrics;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentDisplaySize:[Landroid/graphics/Point;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 3316
    return-void
.end method

.method public updateExpandedViewPos(I)V
    .locals 6
    .parameter "thingy"

    .prologue
    .line 3284
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelMinHeightFrac:[F

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentDisplaySize:[Landroid/graphics/Point;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->setMinimumHeight(I)V

    .line 3287
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3288
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelGravity:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v1, v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3289
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelMarginPx:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 3290
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3292
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsPanel:[Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 3293
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsPanel:[Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3294
    .restart local v0       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsPanelGravity:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v1, v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3295
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelMarginPx:[I

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 3296
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsPanel:[Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3299
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHeadsUpNotificationView:[Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    .line 3300
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHeadsUpNotificationView:[Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelMarginPx:[I

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->setMargin(I)V

    .line 3301
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPilePosition:[[I

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getLocationOnScreen([I)V

    .line 3302
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHeadsUpVerticalOffset:[F

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPilePosition:[[I

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNaturalBarHeight:[I

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v4, v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v1, v2

    .line 3305
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->updateCarrierLabelVisibility(Z)V

    .line 3306
    return-void
.end method

.method public updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 2
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"
    .parameter "old"
    .parameter "icon"

    .prologue
    .line 1243
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 1244
    .local v0, view:Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p5}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 1245
    return-void
.end method

.method protected updateNotificationIcons()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 1454
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    if-nez v0, :cond_1

    .line 1504
    :cond_0
    return-void

    .line 1455
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->loadNotificationShade()V

    .line 1457
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mIconSize:[I

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v0, v0, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mIconHPadding:[I

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v3, v3, v4

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNaturalBarHeight:[I

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget v3, v3, v4

    invoke-direct {v2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1460
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v3

    .line 1466
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1468
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isDeviceProvisioned()Z

    move-result v5

    move v0, v1

    .line 1470
    :goto_0
    if-ge v0, v3, :cond_5

    .line 1471
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v7, v3, v0

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v6

    .line 1472
    if-eqz v5, :cond_2

    iget-object v7, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v7

    const/16 v8, -0xa

    if-ge v7, v8, :cond_4

    :cond_2
    iget-object v7, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1470
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1474
    :cond_4
    iget-object v7, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->notificationIsForCurrentUser(Landroid/service/notification/StatusBarNotification;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1475
    iget-object v6, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1478
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 1479
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_7

    .line 1480
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1481
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1482
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1479
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1486
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1487
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/phone/IconMerger;->removeView(Landroid/view/View;)V

    goto :goto_3

    .line 1490
    :cond_8
    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1491
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1492
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_9

    .line 1494
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/IconMerger;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1490
    :cond_9
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1495
    :catch_0
    move-exception v3

    .line 1497
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v3, v0, v2}, Lcom/android/systemui/statusbar/phone/IconMerger;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 1498
    :catch_1
    move-exception v0

    .line 1499
    const-string v3, "AsusPhoneStatusBar.DDS"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method updateQuickSettingLayout(Z)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/high16 v9, 0x3f80

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 3619
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mScroll:[Landroid/widget/ScrollView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 3620
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuickboxContainer:[Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 3621
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3622
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessView:[Landroid/view/View;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3623
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessView:[Landroid/view/View;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessView:[Landroid/view/View;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3625
    :cond_0
    if-eqz p1, :cond_2

    .line 3626
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessView:[Landroid/view/View;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v4

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3627
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessView:[Landroid/view/View;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v9

    if-eqz v2, :cond_1

    .line 3628
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessView:[Landroid/view/View;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v4

    invoke-virtual {v2, v9}, Landroid/view/View;->setAlpha(F)V

    .line 3630
    :cond_1
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3632
    const v2, 0x7f070058

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v4, v7, v7, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 3634
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsView:[Landroid/view/View;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v5

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessView:[Landroid/view/View;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v5, v5, v6

    invoke-virtual {v2, v5, v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3636
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsView:[Landroid/view/View;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v4

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3637
    iput v10, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 3638
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 3639
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 3640
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQS:[Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v4

    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->updateItemLayout(Z)V

    .line 3661
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mScroll:[Landroid/widget/ScrollView;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v4

    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3662
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuickboxContainer:[Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;

    sget v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3663
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsContainer:[Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const v1, 0x7f070052

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v7, v7, v7, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;->setPadding(IIII)V

    .line 3664
    return-void

    .line 3642
    :cond_2
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const v2, 0x7f070067

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v4, v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3645
    const/16 v2, 0xb

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 3646
    const/16 v2, 0x8

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mTitleHolder:[Landroid/view/View;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3647
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelHeader:[Landroid/view/View;

    sget v5, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v5

    check-cast v2, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessView:[Landroid/view/View;

    sget v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v5, v5, v6

    invoke-virtual {v2, v5, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3648
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsView:[Landroid/view/View;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 3649
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessView:[Landroid/view/View;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v4

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3654
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFlipSettingsView:[Landroid/view/View;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v4

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3655
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 3656
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 3657
    const/high16 v2, 0x4040

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 3658
    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 3659
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQS:[Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v4

    invoke-virtual {v2, v11}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->updateItemLayout(Z)V

    goto/16 :goto_0

    .line 3651
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBrightnessView:[Landroid/view/View;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v4

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method updateResources()V
    .locals 5

    .prologue
    const v4, 0x7f060081

    const v1, 0x7f06004a

    .line 3730
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    .line 3731
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 3733
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButton:[Landroid/view/View;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v3

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3734
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButton:[Landroid/view/View;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v3

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3738
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButton:[Landroid/view/View;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v3

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 3739
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mClearButton:[Landroid/view/View;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v3

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3742
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationTitle:[Landroid/widget/TextView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v3

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 3743
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationTitle:[Landroid/widget/TextView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v3, v0, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isAlwaysTopShow()Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f060051

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3746
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuicksettingsTitle:[Landroid/widget/TextView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v3

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 3747
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQuicksettingsTitle:[Landroid/widget/TextView;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v3

    const v3, 0x7f06004b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3750
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMoreButton:[Landroid/view/View;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v3

    instance-of v0, v0, Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 3751
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMoreButton:[Landroid/view/View;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v3

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x10403c4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3754
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationHeaderTitle:[Landroid/view/View;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v3

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 3755
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationHeaderTitle:[Landroid/view/View;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v3

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3758
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationHeaderTopTitle:[Landroid/view/View;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v3

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 3759
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationHeaderTopTitle:[Landroid/view/View;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v3

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3764
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQS:[Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQS:[Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->updateResources()V

    .line 3766
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->loadDimens()V

    .line 3767
    return-void

    :cond_8
    move v0, v1

    .line 3743
    goto/16 :goto_0
.end method

.method protected updateSearchPanel()V
    .locals 2

    .prologue
    .line 1009
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateSearchPanel()V

    .line 1010
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->setDelegateView(Landroid/view/View;)V

    .line 1013
    :cond_0
    return-void
.end method

.method public userSwitched(I)V
    .locals 2
    .parameter "newUserId"

    .prologue
    .line 3669
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->animateCollapsePanels()V

    .line 3670
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->updateNotificationIcons()V

    .line 3671
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->resetUserSetupObserver()V

    .line 3672
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQS:[Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 3673
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQS:[Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    sget v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->notifyUserSwitched()V

    .line 3675
    :cond_0
    return-void
.end method

.method vibrate()V
    .locals 3

    .prologue
    .line 3845
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 3847
    .local v0, vib:Landroid/os/Vibrator;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 3848
    return-void
.end method
