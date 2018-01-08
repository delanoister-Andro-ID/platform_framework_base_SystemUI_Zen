.class public Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;
.super Landroid/widget/FrameLayout;
.source "AsusStatusBarWindowView.java"


# instance fields
.field private latestItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

.field private mAlwaysTopItem:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

.field private mExpandHelper:Lcom/android/systemui/ExpandHelper;

.field private mNotificationItems:Landroid/view/View;

.field private mNotificationPanel:Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

.field private mScrollView:Landroid/widget/ScrollView;

.field mService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->setMotionEventSplittingEnabled(Z)V

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->setWillNotDraw(Z)V

    .line 57
    return-void
.end method


# virtual methods
.method public cancelExpandHelper()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v0}, Lcom/android/systemui/ExpandHelper;->cancel()V

    .line 151
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 87
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 88
    .local v0, down:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 95
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_1
    return v1

    .line 87
    .end local v0           #down:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    .restart local v0       #down:Z
    :pswitch_0
    if-nez v0, :cond_0

    .line 91
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->animateCollapsePanels()V

    goto :goto_1

    .line 88
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 61
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 62
    const v3, 0x7f0b001a

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->latestItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    .line 63
    const v3, 0x7f0b0017

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->mScrollView:Landroid/widget/ScrollView;

    .line 64
    const v3, 0x7f0b0057

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 66
    .local v1, minHeight:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 67
    .local v0, maxHeight:I
    new-instance v3, Lcom/android/systemui/ExpandHelper;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->latestItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-direct {v3, v4, v5, v1, v0}, Lcom/android/systemui/ExpandHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    .line 68
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v3, p0}, Lcom/android/systemui/ExpandHelper;->setEventSource(Landroid/view/View;)V

    .line 69
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/ExpandHelper;->setScrollView(Landroid/view/View;)V

    .line 72
    const v3, 0x7f0b0016

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->mNotificationItems:Landroid/view/View;

    .line 73
    const v3, 0x7f0b0018

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->mAlwaysTopItem:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    .line 74
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->mAlwaysTopItem:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v3, v4}, Lcom/android/systemui/ExpandHelper;->setAlwaysTopItem(Landroid/view/View;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 80
    .local v2, root:Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_0

    .line 81
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewRootImpl;->setDrawDuringWindowsAnimating(Z)V

    .line 83
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 145
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, intercept:Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->isFullyExpanded()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->mNotificationItems:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 102
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/ExpandHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 104
    :cond_0
    if-nez v1, :cond_1

    .line 105
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 107
    :cond_1
    if-eqz v1, :cond_2

    .line 108
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 109
    .local v0, cancellation:Landroid/view/MotionEvent;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 110
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->latestItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 112
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->mAlwaysTopItem:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 114
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 116
    .end local v0           #cancellation:Landroid/view/MotionEvent;
    :cond_2
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v4, 0x1

    .line 121
    const/4 v1, 0x0

    .line 122
    .local v1, handled:Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->isFullyExpanded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/ExpandHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 125
    :cond_0
    if-nez v1, :cond_1

    .line 126
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 128
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 129
    .local v0, action:I
    if-eq v0, v4, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 130
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setInteracting(IZ)V

    .line 132
    :cond_3
    return v1
.end method
