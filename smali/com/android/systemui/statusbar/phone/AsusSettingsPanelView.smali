.class public Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;
.super Lcom/android/systemui/statusbar/phone/PanelView;
.source "AsusSettingsPanelView.java"


# instance fields
.field mHandleBar:Landroid/graphics/drawable/Drawable;

.field mHandleBarHeight:I

.field mHandleView:Landroid/view/View;

.field mPulldownBar:Landroid/graphics/Bitmap;

.field private mQS:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

.field private mQSContainer:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 129
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0600fd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    const/4 v0, 0x1

    .line 134
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 150
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->draw(Landroid/graphics/Canvas;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;->mHandleBarHeight:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;->getPaddingBottom()I

    move-result v2

    sub-int v0, v1, v2

    .line 152
    .local v0, off:I
    int-to-float v1, v0

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 153
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;->mHandleBar:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;->mHandleView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 154
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;->mHandleBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 155
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;->mPulldownBar:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;->mPulldownBar:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;->mHandleBarHeight:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;->mPulldownBar:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 156
    neg-int v1, v0

    int-to-float v1, v1

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 157
    return-void
.end method

.method public fling(FZ)V
    .locals 4
    .parameter "vel"
    .parameter "always"

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    check-cast v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;

    move-result-object v0

    .line 112
    .local v0, gr:Lcom/android/systemui/statusbar/GestureRecorder;
    if-eqz v0, :cond_0

    .line 113
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

    const-string v3, "settings,v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/GestureRecorder;->tag(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    .line 118
    return-void

    .line 113
    :cond_1
    const-string v1, "closed"

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onFinishInflate()V

    .line 60
    const v1, 0x7f0b0005

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;->mQSContainer:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsContainerView;

    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 63
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f02021f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;->mHandleBar:Landroid/graphics/drawable/Drawable;

    .line 64
    const v1, 0x7f070056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;->mHandleBarHeight:I

    .line 65
    const v1, 0x7f0b001d

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;->mHandleView:Landroid/view/View;

    .line 66
    const v1, 0x7f020026

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;->mPulldownBar:Landroid/graphics/Bitmap;

    .line 67
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 140
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/PanelView;->onLayout(ZIIII)V

    .line 141
    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;->getPaddingLeft()I

    move-result v0

    .line 143
    .local v0, pl:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;->getPaddingRight()I

    move-result v1

    .line 144
    .local v1, pr:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;->mHandleBar:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;->mHandleBarHeight:I

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 146
    .end local v0           #pl:I
    .end local v1           #pr:I
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x2

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 163
    const v0, 0x8cbe

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

    .line 167
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V
    .locals 0
    .parameter "panelBar"

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V

    .line 81
    return-void
.end method

.method public setQuickSettings(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)V
    .locals 0
    .parameter "qs"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusSettingsPanelView;->mQS:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    .line 71
    return-void
.end method
