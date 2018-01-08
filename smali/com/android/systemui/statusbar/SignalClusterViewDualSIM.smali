.class public Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;
.super Landroid/widget/LinearLayout;
.source "SignalClusterViewDualSIM.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$SignalCluster;


# instance fields
.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneIconId:I

.field private mIsAirplaneMode:Z

.field mMobile:Landroid/widget/ImageView;

.field mMobile2:Landroid/widget/ImageView;

.field private mMobileDescription:Ljava/lang/String;

.field private mMobileDescription2:Ljava/lang/String;

.field mMobileGroup:Landroid/view/ViewGroup;

.field mMobileGroup2:Landroid/view/ViewGroup;

.field private mMobileStrengthId:I

.field private mMobileStrengthId2:I

.field mMobileType:Landroid/widget/ImageView;

.field mMobileType2:Landroid/widget/ImageView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileTypeDescription2:Ljava/lang/String;

.field private mMobileTypeId:I

.field private mMobileTypeId2:I

.field private mMobileVisible:Z

.field mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

.field mSpacer:Landroid/view/View;

.field mWifi:Landroid/widget/ImageView;

.field private mWifiDescription:Ljava/lang/String;

.field mWifiGroup:Landroid/view/ViewGroup;

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiVisible:Z

    .line 44
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiStrengthId:I

    .line 45
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileVisible:Z

    .line 46
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileStrengthId:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileTypeId:I

    .line 47
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileStrengthId2:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileTypeId2:I

    .line 48
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mIsAirplaneMode:Z

    .line 49
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mAirplaneIconId:I

    .line 68
    return-void
.end method

.method private apply()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiVisible:Z

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifi:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiStrengthId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 188
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileVisible:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mIsAirplaneMode:Z

    if-nez v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobile:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileStrengthId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileType:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileTypeId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileGroup:Landroid/view/ViewGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileGroup2:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobile2:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileStrengthId2:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileType2:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileTypeId2:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileGroup2:Landroid/view/ViewGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileTypeDescription2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileDescription2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 203
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mIsAirplaneMode:Z

    if-eqz v0, :cond_3

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mAirplane:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mAirplaneIconId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    :goto_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileVisible:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiVisible:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mIsAirplaneMode:Z

    if-eqz v0, :cond_4

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mSpacer:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 221
    :goto_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileType:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiVisible:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileType2:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiVisible:Z

    if-nez v3, :cond_6

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileGroup2:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 213
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mSpacer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_5
    move v0, v2

    .line 221
    goto :goto_5

    :cond_6
    move v1, v2

    .line 224
    goto :goto_6
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileGroup2:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileGroup2:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 165
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileGroup2:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 79
    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiGroup:Landroid/view/ViewGroup;

    .line 80
    const v0, 0x7f0b0029

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifi:Landroid/widget/ImageView;

    .line 81
    const v0, 0x7f0b002c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileGroup:Landroid/view/ViewGroup;

    .line 82
    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobile:Landroid/widget/ImageView;

    .line 83
    const v0, 0x7f0b002d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileType:Landroid/widget/ImageView;

    .line 84
    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mSpacer:Landroid/view/View;

    .line 85
    const v0, 0x7f0b0038

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileGroup2:Landroid/view/ViewGroup;

    .line 86
    const v0, 0x7f0b003d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobile2:Landroid/widget/ImageView;

    .line 87
    const v0, 0x7f0b0039

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileType2:Landroid/widget/ImageView;

    .line 88
    const v0, 0x7f0b0034

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mAirplane:Landroid/widget/ImageView;

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->apply()V

    .line 91
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiGroup:Landroid/view/ViewGroup;

    .line 96
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifi:Landroid/widget/ImageView;

    .line 97
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileGroup:Landroid/view/ViewGroup;

    .line 98
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobile:Landroid/widget/ImageView;

    .line 99
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileType:Landroid/widget/ImageView;

    .line 100
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mSpacer:Landroid/view/View;

    .line 101
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileGroup2:Landroid/view/ViewGroup;

    .line 102
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobile2:Landroid/widget/ImageView;

    .line 103
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileType2:Landroid/widget/ImageView;

    .line 104
    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mAirplane:Landroid/widget/ImageView;

    .line 105
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 106
    return-void
.end method

.method public setIsAirplaneMode(ZI)V
    .locals 0
    .parameter "is"
    .parameter "airplaneIconId"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mIsAirplaneMode:Z

    .line 151
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mAirplaneIconId:I

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->apply()V

    .line 154
    return-void
.end method

.method public setMobileDataIndicators(ZIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "visible"
    .parameter "strengthIcon"
    .parameter "typeIcon"
    .parameter "contentDescription"
    .parameter "typeContentDescription"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileVisible:Z

    .line 121
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileStrengthId:I

    .line 122
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileTypeId:I

    .line 123
    iput-object p4, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileDescription:Ljava/lang/String;

    .line 124
    iput-object p5, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileTypeDescription:Ljava/lang/String;

    .line 126
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->apply()V

    .line 127
    return-void
.end method

.method public setMobileDataIndicators2(ZIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "visible"
    .parameter "strengthIcon"
    .parameter "typeIcon"
    .parameter "contentDescription"
    .parameter "typeContentDescription"
    .parameter "strengthIcon2"
    .parameter "typeIcon2"
    .parameter "contentDescription2"
    .parameter "typeContentDescription2"

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileVisible:Z

    .line 135
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileStrengthId:I

    .line 136
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileTypeId:I

    .line 137
    iput-object p4, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileDescription:Ljava/lang/String;

    .line 138
    iput-object p5, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileTypeDescription:Ljava/lang/String;

    .line 140
    iput p6, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileStrengthId2:I

    .line 141
    iput p7, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileTypeId2:I

    .line 142
    iput-object p8, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileDescription2:Ljava/lang/String;

    .line 143
    iput-object p9, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mMobileTypeDescription2:Ljava/lang/String;

    .line 145
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->apply()V

    .line 146
    return-void
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V
    .locals 0
    .parameter "nc"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    .line 73
    return-void
.end method

.method public setWifiIndicators(ZILjava/lang/String;)V
    .locals 0
    .parameter "visible"
    .parameter "strengthIcon"
    .parameter "contentDescription"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiVisible:Z

    .line 111
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiStrengthId:I

    .line 112
    iput-object p3, p0, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->mWifiDescription:Ljava/lang/String;

    .line 114
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterViewDualSIM;->apply()V

    .line 115
    return-void
.end method
