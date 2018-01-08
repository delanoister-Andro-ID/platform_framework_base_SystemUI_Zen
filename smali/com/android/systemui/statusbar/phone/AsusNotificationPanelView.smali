.class public Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;
.super Lcom/android/systemui/statusbar/phone/PanelView;
.source "AsusNotificationPanelView.java"


# static fields
.field private static final IS_WIFI_ONLY:Z


# instance fields
.field isSupportPhone:Z

.field private mDebugFireable:Z

.field private final mDownPointerId:[I

.field private mDownPointers:I

.field private final mDownTime:[J

.field private final mDownX:[F

.field private final mDownY:[F

.field mHandleBar:Landroid/graphics/drawable/Drawable;

.field mHandleBarHeight:I

.field mHandleView:Landroid/view/View;

.field mOkToFlip:Z

.field mPulldownBar:Landroid/graphics/Bitmap;

.field mSimCallrierLabel:Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;

.field mSimText:Ljava/lang/String;

.field mStatusBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

.field private final mSwipeDistanceThreshold:I

.field private mSwipeFireable:Z

.field private final mSwipeStartThreshold:I

.field private mTManager:Landroid/telephony/TelephonyManager;

.field mTextPadding:I

.field mTextPaint:Landroid/graphics/Paint;

.field mWifiLabel:Lcom/android/systemui/statusbar/policy/AsusWifiLabel;

.field mWifiText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    const-string v0, "ro.carrier"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi-only"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->IS_WIFI_ONLY:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v1, 0x20

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->isSupportPhone:Z

    .line 79
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mDownPointerId:[I

    .line 80
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mDownX:[F

    .line 81
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mDownY:[F

    .line 82
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mDownTime:[J

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mSwipeStartThreshold:I

    .line 94
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mSwipeStartThreshold:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mSwipeDistanceThreshold:I

    .line 98
    return-void
.end method

.method private captureDown(Landroid/view/MotionEvent;I)V
    .locals 5
    .parameter "event"
    .parameter "pointerIndex"

    .prologue
    .line 333
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 334
    .local v1, pointerId:I
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->findIndex(I)I

    move-result v0

    .line 337
    .local v0, i:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 338
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mDownX:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v2, v0

    .line 339
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mDownY:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v2, v0

    .line 340
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mDownTime:[J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    aput-wide v3, v2, v0

    .line 344
    :cond_0
    return-void
.end method

.method private detectSwipe(IJFF)I
    .locals 6
    .parameter "i"
    .parameter "time"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 385
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mDownX:[F

    aget v2, v4, p1

    .line 386
    .local v2, fromX:F
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mDownY:[F

    aget v3, v4, p1

    .line 387
    .local v3, fromY:F
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mDownTime:[J

    aget-wide v4, v4, p1

    sub-long v0, p2, v4

    .line 390
    .local v0, elapsed:J
    iget v4, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mSwipeStartThreshold:I

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_0

    iget v4, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mSwipeDistanceThreshold:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    cmpl-float v4, p5, v4

    if-lez v4, :cond_0

    const-wide/16 v4, 0x1f4

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 393
    const/4 v4, 0x1

    .line 395
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private detectSwipe(Landroid/view/MotionEvent;)I
    .locals 20
    .parameter "move"

    .prologue
    .line 360
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v15

    .line 361
    .local v15, historySize:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v17

    .line 362
    .local v17, pointerCount:I
    const/16 v16, 0x0

    .local v16, p:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 363
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    .line 364
    .local v18, pointerId:I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->findIndex(I)I

    move-result v3

    .line 365
    .local v3, i:I
    const/4 v2, -0x1

    if-eq v3, v2, :cond_3

    .line 366
    const/4 v14, 0x0

    .local v14, h:I
    :goto_1
    if-ge v14, v15, :cond_2

    .line 367
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v4

    .line 368
    .local v4, time:J
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v6

    .line 369
    .local v6, x:F
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v7

    .local v7, y:F
    move-object/from16 v2, p0

    .line 370
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->detectSwipe(IJFF)I

    move-result v19

    .line 371
    .local v19, swipe:I
    if-eqz v19, :cond_1

    .line 381
    .end local v3           #i:I
    .end local v4           #time:J
    .end local v6           #x:F
    .end local v7           #y:F
    .end local v14           #h:I
    .end local v18           #pointerId:I
    .end local v19           #swipe:I
    :cond_0
    :goto_2
    return v19

    .line 366
    .restart local v3       #i:I
    .restart local v4       #time:J
    .restart local v6       #x:F
    .restart local v7       #y:F
    .restart local v14       #h:I
    .restart local v18       #pointerId:I
    .restart local v19       #swipe:I
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 375
    .end local v4           #time:J
    .end local v6           #x:F
    .end local v7           #y:F
    .end local v19           #swipe:I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    move-object/from16 v8, p0

    move v9, v3

    invoke-direct/range {v8 .. v13}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->detectSwipe(IJFF)I

    move-result v19

    .line 376
    .restart local v19       #swipe:I
    if-nez v19, :cond_0

    .line 362
    .end local v14           #h:I
    .end local v19           #swipe:I
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 381
    .end local v3           #i:I
    .end local v18           #pointerId:I
    :cond_4
    const/16 v19, 0x0

    goto :goto_2
.end method

.method private findIndex(I)I
    .locals 4
    .parameter "pointerId"

    .prologue
    const/4 v1, -0x1

    .line 347
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mDownPointers:I

    if-ge v0, v2, :cond_1

    .line 348
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mDownPointerId:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 356
    .end local v0           #i:I
    :goto_1
    return v0

    .line 347
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mDownPointers:I

    const/16 v3, 0x20

    if-eq v2, v3, :cond_2

    if-ne p1, v1, :cond_3

    :cond_2
    move v0, v1

    .line 353
    goto :goto_1

    .line 355
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mDownPointerId:[I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mDownPointers:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mDownPointers:I

    aput p1, v1, v2

    .line 356
    iget v1, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mDownPointers:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_1
.end method

.method private processCrossWord(Landroid/graphics/Canvas;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "canvas"
    .parameter "text"

    .prologue
    .line 401
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mTextPadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mPulldownBar:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v0, v2, v3

    .line 402
    .local v0, maxSimAllowLength:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    float-to-int v2, v2

    div-int v1, v0, v2

    .line 403
    .local v1, maxSimTextLength:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 406
    :cond_0
    return-object p2
.end method

.method private selectAndSwitchPanel(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 314
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->selectPanelForTouch(Landroid/view/MotionEvent;)Lcom/android/systemui/statusbar/phone/PanelView;

    move-result-object v1

    .line 315
    .local v1, panel:Lcom/android/systemui/statusbar/phone/PanelView;
    if-nez v1, :cond_0

    .line 317
    sget-object v2, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->TAG:Ljava/lang/String;

    const-string v3, "selectAndSwitchPanel: no panel for touch at (%d,%d)"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :goto_0
    return v6

    .line 321
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelView;->isEnabled()Z

    move-result v0

    .line 322
    .local v0, enabled:Z
    if-nez v0, :cond_1

    .line 324
    sget-object v2, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->TAG:Ljava/lang/String;

    const-string v3, "selectAndSwitchPanel: panel (%s) is disabled, ignoring touch at (%d,%d)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 328
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    sget v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->startOpeningPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 147
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 148
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0600fc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    const/4 v0, 0x1

    .line 153
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->draw(Landroid/graphics/Canvas;)V

    .line 171
    const-string v8, ""

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mSimText:Ljava/lang/String;

    .line 172
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mSimCallrierLabel:Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;

    if-eqz v8, :cond_0

    sget-boolean v8, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->IS_WIFI_ONLY:Z

    if-nez v8, :cond_0

    .line 173
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mSimCallrierLabel:Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->setVisibility(I)V

    .line 174
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mSimText:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mSimCallrierLabel:Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mSimText:Ljava/lang/String;

    .line 176
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mTManager:Landroid/telephony/TelephonyManager;

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->isSupportPhone:Z

    if-eqz v8, :cond_1

    const-string v8, ""

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mSimText:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 177
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mContext:Landroid/content/Context;

    const v9, 0x1040325

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mSimText:Ljava/lang/String;

    .line 180
    :cond_1
    const-string v8, ""

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mWifiText:Ljava/lang/String;

    .line 181
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mWifiLabel:Lcom/android/systemui/statusbar/policy/AsusWifiLabel;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->setVisibility(I)V

    .line 182
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mWifiText:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mWifiLabel:Lcom/android/systemui/statusbar/policy/AsusWifiLabel;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mWifiText:Ljava/lang/String;

    .line 184
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mHandleBarHeight:I

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->getPaddingBottom()I

    move-result v9

    sub-int v5, v8, v9

    .line 185
    .local v5, off:I
    const/4 v8, 0x0

    int-to-float v9, v5

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 186
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mHandleBar:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mHandleView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getDrawableState()[I

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 187
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mHandleBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 189
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mPulldownBar:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mPulldownBar:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    iget v10, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mHandleBarHeight:I

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mPulldownBar:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 191
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 192
    .local v1, bounds2:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mWifiText:Ljava/lang/String;

    invoke-direct {p0, p1, v8}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->processCrossWord(Landroid/graphics/Canvas;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mWifiText:Ljava/lang/String;

    .line 193
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mWifiText:Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mWifiText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 194
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 195
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mWifiText:Ljava/lang/String;

    invoke-direct {p0, p1, v8}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->processCrossWord(Landroid/graphics/Canvas;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mWifiText:Ljava/lang/String;

    .line 196
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mWifiText:Ljava/lang/String;

    iget v9, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mTextPadding:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mHandleBarHeight:I

    div-int/lit8 v10, v10, 0x2

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    iget v12, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 199
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 200
    .local v0, bounds:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mSimText:Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mSimText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 201
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 202
    iget v8, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mHandleBarHeight:I

    div-int/lit8 v8, v8, 0x2

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    iget v10, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-float v3, v8

    .line 203
    .local v3, heightPos:F
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v2, v8, Landroid/util/DisplayMetrics;->density:F

    .line 204
    .local v2, density:F
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mSimText:Ljava/lang/String;

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 206
    .local v6, tempStr:[Ljava/lang/String;
    array-length v8, v6

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 207
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mSimText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    iget v10, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mTextPadding:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x4080

    sub-float v10, v3, v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 220
    :cond_2
    const/4 v8, 0x0

    neg-int v9, v5

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 221
    return-void

    .line 210
    :cond_3
    iget v8, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mHandleBarHeight:I

    div-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, -0x4

    int-to-float v3, v8

    .line 212
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v8, v6

    if-ge v4, v8, :cond_2

    .line 213
    aget-object v7, v6, v4

    .line 214
    .local v7, text:Ljava/lang/String;
    invoke-direct {p0, p1, v7}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->processCrossWord(Landroid/graphics/Canvas;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 215
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mTextPadding:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v3, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 216
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    add-float/2addr v3, v8

    .line 212
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public fling(FZ)V
    .locals 4
    .parameter "vel"
    .parameter "always"

    .prologue
    .line 136
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    check-cast v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;

    move-result-object v0

    .line 137
    .local v0, gr:Lcom/android/systemui/statusbar/GestureRecorder;
    if-eqz v0, :cond_0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    const-string v1, "open"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifications,v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/GestureRecorder;->tag(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    .line 143
    return-void

    .line 138
    :cond_1
    const-string v1, "closed"

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 106
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onFinishInflate()V

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 109
    .local v1, resources:Landroid/content/res/Resources;
    const v2, 0x7f02021f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mHandleBar:Landroid/graphics/drawable/Drawable;

    .line 110
    const v2, 0x7f070056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mHandleBarHeight:I

    .line 111
    const v2, 0x7f0b001d

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mHandleView:Landroid/view/View;

    .line 112
    const v2, 0x7f020026

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mPulldownBar:Landroid/graphics/Bitmap;

    .line 114
    const v2, 0x7f07005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mTextPadding:I

    .line 116
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mTManager:Landroid/telephony/TelephonyManager;

    .line 117
    const v2, 0x7f0b0058

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mSimCallrierLabel:Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;

    .line 118
    const-string v2, "sans-serif"

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 119
    .local v0, font:Landroid/graphics/Typeface;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mSimCallrierLabel:Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->setMyParent(Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;)V

    .line 121
    const v2, 0x7f0b0059

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mWifiLabel:Lcom/android/systemui/statusbar/policy/AsusWifiLabel;

    .line 122
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mWifiLabel:Lcom/android/systemui/statusbar/policy/AsusWifiLabel;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->setMyParent(Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;)V

    .line 124
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mSimCallrierLabel:Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mWifiLabel:Lcom/android/systemui/statusbar/policy/AsusWifiLabel;

    if-eqz v2, :cond_1

    .line 125
    :cond_0
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mTextPaint:Landroid/graphics/Paint;

    .line 126
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mTextPaint:Landroid/graphics/Paint;

    const v3, 0x7f070061

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 127
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mTextPaint:Landroid/graphics/Paint;

    const v3, -0x2a0b01

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 129
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 273
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanelIsFullScreenWidth:[Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    sget v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v3, v3, v4

    if-nez v3, :cond_1

    .line 309
    :cond_0
    :goto_0
    return v2

    .line 275
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 277
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mSwipeFireable:Z

    .line 278
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mDebugFireable:Z

    .line 279
    iput v2, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mDownPointers:I

    .line 280
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->captureDown(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 283
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->captureDown(Landroid/view/MotionEvent;I)V

    .line 284
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mDebugFireable:Z

    if-eqz v3, :cond_0

    .line 285
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mDebugFireable:Z

    .line 286
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mDebugFireable:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_2
    move v1, v2

    .line 285
    goto :goto_1

    .line 292
    :pswitch_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mSwipeFireable:Z

    if-eqz v3, :cond_0

    .line 293
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->detectSwipe(Landroid/view/MotionEvent;)I

    move-result v0

    .line 294
    .local v0, swipe:I
    if-nez v0, :cond_3

    move v3, v1

    :goto_2
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mSwipeFireable:Z

    .line 295
    if-ne v0, v1, :cond_0

    .line 297
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->selectAndSwitchPanel(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_3
    move v3, v2

    .line 294
    goto :goto_2

    .line 303
    .end local v0           #swipe:I
    :pswitch_4
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mSwipeFireable:Z

    .line 304
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mDebugFireable:Z

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 159
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/PanelView;->onLayout(ZIIII)V

    .line 160
    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->getPaddingLeft()I

    move-result v0

    .line 162
    .local v0, pl:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->getPaddingRight()I

    move-result v1

    .line 163
    .local v1, pr:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mHandleBar:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mHandleBarHeight:I

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 165
    .end local v0           #pl:I
    .end local v1           #pr:I
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-eq v4, v9, :cond_0

    .line 227
    const v4, 0x8cb4

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v4, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 231
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mTManager:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mTManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->isSupportPhone:Z

    .line 233
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHasFlipSettings:[Z

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    sget v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentType:I

    aget-boolean v4, v4, v7

    if-eqz v4, :cond_1

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 266
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mHandleView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    :cond_2
    move v4, v6

    .line 231
    goto :goto_0

    .line 236
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->getExpandedHeight()F

    move-result v4

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-nez v4, :cond_3

    :goto_2
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mOkToFlip:Z

    goto :goto_1

    :cond_3
    move v5, v6

    goto :goto_2

    .line 239
    :sswitch_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mOkToFlip:Z

    if-eqz v4, :cond_1

    .line 240
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 241
    .local v2, miny:F
    move v1, v2

    .line 242
    .local v1, maxy:F
    const/4 v0, 0x1

    .local v0, i:I
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 243
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 244
    .local v3, y:F
    cmpg-float v4, v3, v2

    if-gez v4, :cond_4

    move v2, v3

    .line 245
    :cond_4
    cmpl-float v4, v3, v1

    if-lez v4, :cond_5

    move v1, v3

    .line 242
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 247
    .end local v3           #y:F
    :cond_6
    sub-float v4, v1, v2

    iget v5, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mHandleBarHeight:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 248
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mHandleBarHeight:I

    if-ge v4, v5, :cond_8

    .line 249
    sget-boolean v4, Lcom/asus/systemui/util/AsusQuicksettingUtil;->IS_SMALL_RAM:Z

    if-eqz v4, :cond_7

    .line 250
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->switchToSettingsNoAnim()V

    .line 259
    :goto_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->scrollToDefaultPos()V

    .line 260
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mOkToFlip:Z

    goto :goto_1

    .line 252
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->switchToSettings()V

    goto :goto_4

    .line 254
    :cond_8
    sget-boolean v4, Lcom/asus/systemui/util/AsusQuicksettingUtil;->IS_SMALL_RAM:Z

    if-eqz v4, :cond_9

    .line 255
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->switchToSettingsNoAnim()V

    goto :goto_4

    .line 257
    :cond_9
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->flipToSettings()V

    goto :goto_4

    .line 234
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V
    .locals 0
    .parameter "bar"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    .line 102
    return-void
.end method
