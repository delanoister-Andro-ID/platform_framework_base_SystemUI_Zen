.class public Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;
.super Lcom/android/systemui/statusbar/phone/PanelBar;
.source "AsusPhoneStatusBarView.java"


# instance fields
.field mBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

.field private final mBarTransitions:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;

.field mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field mFullWidthNotifications:Z

.field mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field mScrimColor:I

.field mSettingsPanel:Lcom/android/systemui/statusbar/phone/PanelView;

.field mSettingsPanelDragzoneFrac:F

.field mSettingsPanelDragzoneMin:F

.field private mShouldFade:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 46
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 55
    .local v1, res:Landroid/content/res/Resources;
    const v3, 0x7f0c0005

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mScrimColor:I

    .line 56
    const v3, 0x7f070040

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mSettingsPanelDragzoneMin:F

    .line 58
    const v3, 0x7f07003f

    const/4 v4, 0x1

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mSettingsPanelDragzoneFrac:F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mSettingsPanelDragzoneFrac:F

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_0

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mFullWidthNotifications:Z

    .line 63
    new-instance v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;

    .line 64
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, ex:Landroid/content/res/Resources$NotFoundException;
    iput v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mSettingsPanelDragzoneFrac:F

    goto :goto_0

    .line 62
    .end local v0           #ex:Landroid/content/res/Resources$NotFoundException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 2
    .parameter "pv"

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->addPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 89
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getId()I

    move-result v0

    const v1, 0x7f0b0057

    if-ne v0, v1, :cond_1

    .line 90
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 94
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mFullWidthNotifications:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setRubberbandingEnabled(Z)V

    .line 95
    return-void

    .line 91
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getId()I

    move-result v0

    const v1, 0x7f0b001c

    if-ne v0, v1, :cond_0

    .line 92
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mSettingsPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    goto :goto_0

    .line 94
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;

    return-object v0
.end method

.method public onAllPanelsCollapsed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 205
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onAllPanelsCollapsed()V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->makeExpandedInvisibleSoon()V

    .line 208
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 209
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 210
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 80
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mPanels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/PanelView;

    .line 81
    .local v1, pv:Lcom/android/systemui/statusbar/phone/PanelView;
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mFullWidthNotifications:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->setRubberbandingEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 83
    .end local v1           #pv:Lcom/android/systemui/statusbar/phone/PanelView;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarTransitions;->init()V

    .line 84
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPanelFullyOpened(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 1
    .parameter "openPanel"

    .prologue
    .line 214
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eq p1, v0, :cond_0

    .line 216
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->sendAccessibilityEvent(I)V

    .line 218
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 219
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mLastFullyOpenedPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mShouldFade:Z

    .line 221
    return-void
.end method

.method public onPanelPeeked()V
    .locals 1

    .prologue
    .line 187
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->makeExpandedVisible()V

    .line 189
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "child"
    .parameter "event"

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 109
    .local v0, record:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 111
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 112
    const/4 v1, 0x1

    .line 114
    .end local v0           #record:Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 225
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isUserSetup()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move v3, v2

    .line 238
    :cond_1
    :goto_0
    return v3

    .line 228
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 231
    .local v0, barConsumedEvent:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v6, :cond_3

    .line 232
    const v4, 0x8caa

    const/4 v1, 0x4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v6, 0x3

    if-eqz v0, :cond_5

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 238
    :cond_3
    if-nez v0, :cond_4

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_4
    move v3, v2

    goto :goto_0

    :cond_5
    move v1, v3

    .line 232
    goto :goto_1
.end method

.method public panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;F)V
    .locals 18
    .parameter "panel"
    .parameter "frac"

    .prologue
    .line 248
    invoke-super/range {p0 .. p2}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;F)V

    .line 256
    const/4 v6, 0x0

    cmpl-float v6, p2, v6

    if-nez v6, :cond_0

    .line 257
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->setBackgroundColor(I)V

    .line 261
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v0, p1

    if-ne v0, v6, :cond_1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mScrimColor:I

    if-eqz v6, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 262
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mShouldFade:Z

    if-eqz v6, :cond_1

    .line 263
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mPanelExpandedFractionSum:F

    move/from16 p2, v0

    .line 265
    const v6, 0x3f99999a

    mul-float v6, v6, p2

    const v7, 0x3e4ccccd

    sub-float p2, v6, v7

    .line 266
    const/4 v6, 0x0

    cmpg-float v6, p2, v6

    if-gtz v6, :cond_4

    .line 267
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    sget v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->setBackgroundColor(I)V

    .line 280
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->getStatusBarHeight()I

    move-result v1

    .line 281
    .local v1, H:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getPaddingBottom()I

    move-result v7

    int-to-float v7, v7

    add-float v5, v6, v7

    .line 282
    .local v5, ph:F
    const/high16 v2, 0x3f80

    .line 283
    .local v2, alpha:F
    mul-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    cmpg-float v6, v5, v6

    if-gez v6, :cond_2

    .line 284
    int-to-float v6, v1

    cmpg-float v6, v5, v6

    if-gez v6, :cond_5

    const/4 v2, 0x0

    .line 286
    :goto_1
    mul-float/2addr v2, v2

    .line 288
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getAlpha()F

    move-result v6

    cmpl-float v6, v6, v2

    if-eqz v6, :cond_3

    .line 289
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->setAlpha(F)V

    .line 292
    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    move-object/from16 v0, p1

    if-ne v6, v0, :cond_6

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mPanelExpandedFractionSum:F

    invoke-virtual {v7, v6, v8}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->animateHeadsUp(ZF)V

    .line 294
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->updateCarrierLabelVisibility(Z)V

    .line 295
    return-void

    .line 270
    .end local v1           #H:I
    .end local v2           #alpha:F
    .end local v5           #ph:F
    :cond_4
    const-wide/high16 v6, 0x3ff0

    const-wide/high16 v8, 0x3fe0

    const-wide/high16 v10, 0x3ff0

    const-wide v12, 0x400921fa00000000L

    const/high16 v14, 0x3f80

    sub-float v14, v14, p2

    float-to-double v14, v14

    const-wide/high16 v16, 0x4000

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-float v4, v6

    .line 272
    .local v4, k:F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mScrimColor:I

    ushr-int/lit8 v6, v6, 0x18

    int-to-float v6, v6

    mul-float/2addr v6, v4

    float-to-int v6, v6

    shl-int/lit8 v6, v6, 0x18

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mScrimColor:I

    const v8, 0xffffff

    and-int/2addr v7, v8

    or-int v3, v6, v7

    .line 273
    .local v3, color:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    sget v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v6, v6, v7

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 285
    .end local v3           #color:I
    .end local v4           #k:F
    .restart local v1       #H:I
    .restart local v2       #alpha:F
    .restart local v5       #ph:F
    :cond_5
    int-to-float v6, v1

    sub-float v6, v5, v6

    int-to-float v7, v1

    div-float v2, v6, v7

    goto :goto_1

    .line 292
    :cond_6
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public panelsEnabled()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->panelsEnabled()Z

    move-result v0

    return v0
.end method

.method public selectPanelForTouch(Landroid/view/MotionEvent;)Lcom/android/systemui/statusbar/phone/PanelView;
    .locals 7
    .parameter "touch"

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 120
    .local v4, x:F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->isLayoutRtl()Z

    move-result v0

    .line 142
    .local v0, isLayoutRtl:Z
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->getMeasuredWidth()I

    move-result v6

    int-to-float v3, v6

    .line 143
    .local v3, w:F
    iget v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mSettingsPanelDragzoneFrac:F

    mul-float v1, v3, v6

    .line 151
    .local v1, region:F
    iget v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mSettingsPanelDragzoneMin:F

    cmpg-float v6, v1, v6

    if-gez v6, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mSettingsPanelDragzoneMin:F

    .line 153
    :cond_0
    if-eqz v0, :cond_3

    cmpg-float v6, v4, v1

    if-gez v6, :cond_2

    .line 157
    .local v2, showSettings:Z
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_8

    .line 158
    if-eqz v2, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isNotifications()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 159
    sget-boolean v5, Lcom/asus/systemui/util/AsusQuicksettingUtil;->IS_SMALL_RAM:Z

    if-eqz v5, :cond_4

    .line 160
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->switchToSettingsNoAnim()V

    .line 171
    :goto_1
    const/4 v5, 0x0

    .line 181
    :goto_2
    return-object v5

    .end local v2           #showSettings:Z
    :cond_2
    move v2, v5

    .line 153
    goto :goto_0

    :cond_3
    sub-float v6, v3, v1

    cmpg-float v6, v6, v4

    if-ltz v6, :cond_1

    move v2, v5

    goto :goto_0

    .line 162
    .restart local v2       #showSettings:Z
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->fadeInToSettings()V

    goto :goto_1

    .line 163
    :cond_5
    if-nez v2, :cond_7

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isNotifications()Z

    move-result v5

    if-nez v5, :cond_7

    .line 164
    sget-boolean v5, Lcom/asus/systemui/util/AsusQuicksettingUtil;->IS_SMALL_RAM:Z

    if-eqz v5, :cond_6

    .line 165
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->switchToNotificationNoAnim()V

    goto :goto_1

    .line 167
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->fadeInToNotifications()V

    goto :goto_1

    .line 169
    :cond_7
    const-string v5, "AsusPhoneStatusBarView"

    const-string v6, "No double swiping"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 173
    :cond_8
    if-nez v2, :cond_9

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isKeyguardSecure()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isKeyguardLock()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 174
    :cond_9
    sget-boolean v5, Lcom/asus/systemui/util/AsusQuicksettingUtil;->IS_SMALL_RAM:Z

    if-eqz v5, :cond_b

    .line 175
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->switchToSettingsNoAnim()V

    .line 180
    :cond_a
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->scrollToDefaultPos()V

    .line 181
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    goto :goto_2

    .line 177
    :cond_b
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->switchToSettings()V

    goto :goto_3
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V
    .locals 0
    .parameter "bar"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    .line 72
    return-void
.end method

.method public startOpeningPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 1
    .parameter "panel"

    .prologue
    .line 193
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->startOpeningPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mShouldFade:Z

    .line 200
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mFadingPanel:Lcom/android/systemui/statusbar/phone/PanelView;

    .line 201
    return-void

    .line 196
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
