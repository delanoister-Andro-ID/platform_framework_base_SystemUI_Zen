.class public Lcom/android/systemui/statusbar/AsusSignalClusterView;
.super Landroid/widget/LinearLayout;
.source "AsusSignalClusterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/AsusNetworkController$SignalCluster;


# static fields
.field static final DEBUG:Z


# instance fields
.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneIconId:I

.field mEthernet:Landroid/widget/ImageView;

.field private mEthernetId:I

.field private mEthernetVisible:Z

.field private mIsAirplaneMode:Z

.field private mIsBluetoothTethered:Z

.field private mIsDataConnected:Z

.field mMobile:Landroid/widget/ImageView;

.field mMobileActivity:Landroid/widget/ImageView;

.field private mMobileActivityId:I

.field private mMobileDescription:Ljava/lang/String;

.field mMobileGroup:Landroid/view/ViewGroup;

.field private mMobileStrengthId:I

.field mMobileType:Landroid/widget/ImageView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileTypeId:I

.field private mMobileVisible:Z

.field mNC:Lcom/android/systemui/statusbar/policy/AsusNetworkController;

.field mNoSimSlot:Landroid/widget/ImageView;

.field mRoamActivity:Landroid/widget/ImageView;

.field mRoamActivityId:I

.field mRoamGroup:Landroid/view/ViewGroup;

.field mRoamType:Landroid/widget/ImageView;

.field mRoamTypeId:I

.field mSpacer:Landroid/view/View;

.field mWifi:Landroid/widget/ImageView;

.field mWifiActivity:Landroid/widget/ImageView;

.field private mWifiActivityId:I

.field private mWifiDescription:Ljava/lang/String;

.field mWifiGroup:Landroid/view/ViewGroup;

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 38
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->DEBUG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifiVisible:Z

    .line 44
    iput v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifiStrengthId:I

    iput v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifiActivityId:I

    .line 45
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileVisible:Z

    .line 46
    iput v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileStrengthId:I

    iput v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileActivityId:I

    iput v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileTypeId:I

    iput v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mEthernetId:I

    .line 48
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mIsAirplaneMode:Z

    .line 49
    const v0, 0x7f0201d7

    iput v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mAirplaneIconId:I

    .line 51
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mEthernetVisible:Z

    .line 52
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mIsDataConnected:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mIsBluetoothTethered:Z

    .line 71
    return-void
.end method

.method private apply()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 159
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mEthernet:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mEthernetVisible:Z

    if-eqz v1, :cond_5

    .line 162
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mEthernet:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mEthernet:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mEthernetId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifiVisible:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mEthernetVisible:Z

    if-nez v1, :cond_6

    .line 169
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 170
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifiStrengthId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifiActivityId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 177
    :goto_2
    sget-boolean v1, Lcom/android/systemui/statusbar/AsusSignalClusterView;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v2, "AsusSignalClusterView"

    const-string v3, "wifi: %s sig=%d act=%d"

    new-array v4, v9, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifiVisible:Z

    if-eqz v1, :cond_7

    const-string v1, "VISIBLE"

    :goto_3
    aput-object v1, v4, v6

    iget v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifiStrengthId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    iget v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifiActivityId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 184
    .local v0, isPhone:Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileVisible:Z

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifiVisible:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mEthernetVisible:Z

    if-eqz v1, :cond_4

    :cond_3
    if-eqz v0, :cond_b

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mIsAirplaneMode:Z

    if-nez v1, :cond_b

    .line 185
    iget v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileStrengthId:I

    if-nez v1, :cond_8

    .line 186
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    const v2, 0x7f0201cd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 189
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mRoamGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 220
    :goto_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mIsAirplaneMode:Z

    if-eqz v1, :cond_e

    .line 221
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mAirplaneIconId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 222
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    :goto_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileVisible:Z

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifiVisible:Z

    if-eqz v1, :cond_f

    .line 228
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mSpacer:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 233
    :goto_6
    sget-boolean v1, Lcom/android/systemui/statusbar/AsusSignalClusterView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v2, "AsusSignalClusterView"

    const-string v3, "mobile: %s sig=%d typ=%d"

    new-array v4, v9, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileVisible:Z

    if-eqz v1, :cond_10

    const-string v1, "VISIBLE"

    :goto_7
    aput-object v1, v4, v6

    iget v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileStrengthId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    iget v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileTypeId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 165
    .end local v0           #isPhone:Z
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mEthernet:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 174
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 177
    :cond_7
    const-string v1, "GONE"

    goto/16 :goto_3

    .line 192
    .restart local v0       #isPhone:Z
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    iget v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileTypeId:I

    if-lez v1, :cond_9

    .line 194
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileActivityId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileTypeId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 201
    :goto_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobile:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileStrengthId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 202
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mIsDataConnected:Z

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileTypeId:I

    const v2, 0x7f0201aa

    if-ne v1, v2, :cond_a

    iget v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mRoamTypeId:I

    if-eqz v1, :cond_a

    .line 204
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mRoamType:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mRoamTypeId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 205
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mRoamActivity:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mRoamActivityId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mRoamGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_4

    .line 199
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_8

    .line 208
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mRoamGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_4

    .line 212
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 213
    if-eqz v0, :cond_c

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mIsAirplaneMode:Z

    if-eqz v1, :cond_d

    .line 214
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    :cond_d
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mRoamGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_4

    .line 224
    :cond_e
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 230
    :cond_f
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mSpacer:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 233
    :cond_10
    const-string v1, "GONE"

    goto/16 :goto_7
.end method

.method private assignViews()V
    .locals 1

    .prologue
    .line 247
    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 248
    const v0, 0x7f0b0029

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 249
    const v0, 0x7f0b002a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 250
    const v0, 0x7f0b002c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    .line 251
    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobile:Landroid/widget/ImageView;

    .line 252
    const v0, 0x7f0b002e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    .line 253
    const v0, 0x7f0b002d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    .line 254
    const v0, 0x7f0b0033

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    .line 255
    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mSpacer:Landroid/view/View;

    .line 256
    const v0, 0x7f0b0034

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 257
    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mEthernet:Landroid/widget/ImageView;

    .line 258
    const v0, 0x7f0b0030

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mRoamType:Landroid/widget/ImageView;

    .line 259
    const v0, 0x7f0b0031

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mRoamActivity:Landroid/widget/ImageView;

    .line 260
    const v0, 0x7f0b002f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mRoamGroup:Landroid/view/ViewGroup;

    .line 261
    return-void
.end method

.method private resetViews()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifi:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobile:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 280
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 281
    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mRoamType:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 285
    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mRoamType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mRoamActivity:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mRoamActivity:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mEthernet:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mEthernet:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 303
    :cond_9
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AsusSignalClusterView;->assignViews()V

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AsusSignalClusterView;->apply()V

    .line 84
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 89
    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 90
    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    .line 91
    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileGroup:Landroid/view/ViewGroup;

    .line 92
    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobile:Landroid/widget/ImageView;

    .line 93
    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileType:Landroid/widget/ImageView;

    .line 94
    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileActivity:Landroid/widget/ImageView;

    .line 95
    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mNoSimSlot:Landroid/widget/ImageView;

    .line 96
    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mSpacer:Landroid/view/View;

    .line 97
    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 98
    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mEthernet:Landroid/widget/ImageView;

    .line 99
    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mRoamType:Landroid/widget/ImageView;

    .line 100
    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mRoamActivity:Landroid/widget/ImageView;

    .line 101
    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mRoamGroup:Landroid/view/ViewGroup;

    .line 103
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 104
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .parameter "layoutDirection"

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AsusSignalClusterView;->resetViews()V

    .line 154
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AsusSignalClusterView;->apply()V

    .line 155
    return-void
.end method

.method public resetSignalCluster()V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AsusSignalClusterView;->assignViews()V

    .line 307
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AsusSignalClusterView;->resetViews()V

    .line 308
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AsusSignalClusterView;->apply()V

    .line 309
    return-void
.end method

.method public setEthernetIndicators(ZI)V
    .locals 0
    .parameter "visible"
    .parameter "activityIcon"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mEthernetVisible:Z

    .line 108
    iput p2, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mEthernetId:I

    .line 109
    return-void
.end method

.method public setIsAirplaneMode(Z)V
    .locals 0
    .parameter "is"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mIsAirplaneMode:Z

    .line 136
    return-void
.end method

.method public setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "visible"
    .parameter "strengthIcon"
    .parameter "activityIcon"
    .parameter "typeIcon"
    .parameter "contentDescription"
    .parameter "typeContentDescription"

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileVisible:Z

    .line 124
    iput p2, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileStrengthId:I

    .line 125
    iput p3, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileActivityId:I

    .line 126
    iput p4, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileTypeId:I

    .line 127
    iput-object p5, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileDescription:Ljava/lang/String;

    .line 128
    iput-object p6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mMobileTypeDescription:Ljava/lang/String;

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AsusSignalClusterView;->apply()V

    .line 131
    return-void
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/AsusNetworkController;)V
    .locals 3
    .parameter "nc"

    .prologue
    .line 74
    sget-boolean v0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AsusSignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsusNetworkController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/AsusNetworkController;

    .line 76
    return-void
.end method

.method public setRoamTypeActivityIcon(IIZ)V
    .locals 0
    .parameter "typeIcon"
    .parameter "activityIcon"
    .parameter "isDataConnected"

    .prologue
    .line 241
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mIsDataConnected:Z

    .line 242
    iput p1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mRoamTypeId:I

    .line 243
    iput p2, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mRoamActivityId:I

    .line 244
    return-void
.end method

.method public setWifiIndicators(ZIILjava/lang/String;)V
    .locals 0
    .parameter "visible"
    .parameter "strengthIcon"
    .parameter "activityIcon"
    .parameter "contentDescription"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifiVisible:Z

    .line 115
    iput p2, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifiStrengthId:I

    .line 116
    iput p3, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifiActivityId:I

    .line 117
    iput-object p4, p0, Lcom/android/systemui/statusbar/AsusSignalClusterView;->mWifiDescription:Ljava/lang/String;

    .line 118
    return-void
.end method
