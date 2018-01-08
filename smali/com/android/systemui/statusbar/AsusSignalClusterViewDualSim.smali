.class public Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;
.super Landroid/widget/LinearLayout;
.source "AsusSignalClusterViewDualSim.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$SignalCluster;


# static fields
.field static final DEBUG:Z


# instance fields
.field private mAirplane:Landroid/widget/ImageView;

.field private mEthernet:Landroid/widget/ImageView;

.field private mEthernetId:I

.field private mEthernetVisible:Z

.field private mIsAirplaneMode:Z

.field private mMobile:[Landroid/widget/ImageView;

.field private mMobileActivity:[Landroid/widget/ImageView;

.field private mMobileActivityId:[I

.field private mMobileDescription:[Ljava/lang/String;

.field private mMobileGroup:[Landroid/view/ViewGroup;

.field private mMobileNum:[Landroid/widget/ImageView;

.field private mMobileNumId:[I

.field private mMobileSignalGroup:[Landroid/view/ViewGroup;

.field private mMobileStrengthId:[I

.field private mMobileType:[Landroid/widget/ImageView;

.field private mMobileTypeDescription:[Ljava/lang/String;

.field private mMobileTypeId:[I

.field private mMobileVisible:Z

.field mNC:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

.field private mNoSimSlot:[Landroid/widget/ImageView;

.field private mRoamType:[Landroid/widget/ImageView;

.field private mRoamTypeId:[I

.field private mSpacer:Landroid/view/View;

.field private mWifi:Landroid/widget/ImageView;

.field private mWifiActivity:Landroid/widget/ImageView;

.field private mWifiActivityId:I

.field private mWifiDescription:Ljava/lang/String;

.field private mWifiGroup:Landroid/view/ViewGroup;

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
    sput-boolean v0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->DEBUG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifiVisible:Z

    .line 45
    iput v2, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifiStrengthId:I

    iput v2, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifiActivityId:I

    .line 46
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileVisible:Z

    .line 47
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileStrengthId:[I

    .line 48
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileActivityId:[I

    .line 49
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileTypeId:[I

    .line 50
    iput v2, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mEthernetId:I

    .line 51
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mRoamTypeId:[I

    .line 53
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mIsAirplaneMode:Z

    .line 55
    new-array v0, v3, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileNumId:[I

    .line 57
    new-array v0, v3, [Ljava/lang/String;

    aput-object v1, v0, v2

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileDescription:[Ljava/lang/String;

    .line 58
    new-array v0, v3, [Ljava/lang/String;

    aput-object v1, v0, v2

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileTypeDescription:[Ljava/lang/String;

    .line 60
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mEthernetVisible:Z

    .line 62
    new-array v0, v3, [Landroid/view/ViewGroup;

    aput-object v1, v0, v2

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileGroup:[Landroid/view/ViewGroup;

    .line 63
    new-array v0, v3, [Landroid/view/ViewGroup;

    aput-object v1, v0, v2

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileSignalGroup:[Landroid/view/ViewGroup;

    .line 65
    new-array v0, v3, [Landroid/widget/ImageView;

    aput-object v1, v0, v2

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobile:[Landroid/widget/ImageView;

    .line 67
    new-array v0, v3, [Landroid/widget/ImageView;

    aput-object v1, v0, v2

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileActivity:[Landroid/widget/ImageView;

    .line 68
    new-array v0, v3, [Landroid/widget/ImageView;

    aput-object v1, v0, v2

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileType:[Landroid/widget/ImageView;

    .line 70
    new-array v0, v3, [Landroid/widget/ImageView;

    aput-object v1, v0, v2

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mNoSimSlot:[Landroid/widget/ImageView;

    .line 71
    new-array v0, v3, [Landroid/widget/ImageView;

    aput-object v1, v0, v2

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mRoamType:[Landroid/widget/ImageView;

    .line 73
    new-array v0, v3, [Landroid/widget/ImageView;

    aput-object v1, v0, v2

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileNum:[Landroid/widget/ImageView;

    .line 86
    return-void

    .line 47
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 48
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 49
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 51
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 55
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private apply()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x1

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/16 v10, 0x8

    .line 188
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mEthernet:Landroid/widget/ImageView;

    if-nez v6, :cond_1

    .line 310
    :cond_0
    return-void

    .line 190
    :cond_1
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mEthernetVisible:Z

    if-eqz v6, :cond_5

    .line 191
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mEthernet:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mEthernet:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mEthernetId:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    :goto_0
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifiVisible:Z

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mEthernetVisible:Z

    if-nez v6, :cond_6

    .line 198
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 199
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifi:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifiStrengthId:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 200
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifiActivity:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifiActivityId:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 206
    :goto_1
    sget-boolean v6, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v7, "AsusSignalClusterViewDualSim"

    const-string v8, "wifi: %s sig=%d act=%d"

    new-array v9, v14, [Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifiVisible:Z

    if-eqz v6, :cond_7

    const-string v6, "VISIBLE"

    :goto_2
    aput-object v6, v9, v11

    iget v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifiStrengthId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v13

    iget v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifiActivityId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1110038

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 213
    .local v3, isPhone:Z
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileVisible:Z

    if-eqz v6, :cond_15

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifiVisible:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mEthernetVisible:Z

    if-eqz v6, :cond_4

    :cond_3
    if-eqz v3, :cond_15

    :cond_4
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mIsAirplaneMode:Z

    if-nez v6, :cond_15

    .line 214
    const/4 v4, 0x1

    .line 215
    .local v4, showNum:Z
    new-array v2, v12, [Z

    fill-array-data v2, :array_0

    .line 216
    .local v2, isNoSim:[Z
    const/4 v1, 0x0

    .line 217
    .local v1, invalidCount:I
    const/4 v5, 0x0

    .line 218
    .local v5, validCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    if-ge v0, v12, :cond_9

    .line 219
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileStrengthId:[I

    aget v6, v6, v0

    if-nez v6, :cond_8

    .line 220
    add-int/lit8 v1, v1, 0x1

    .line 218
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 194
    .end local v0           #i:I
    .end local v1           #invalidCount:I
    .end local v2           #isNoSim:[Z
    .end local v3           #isPhone:Z
    .end local v4           #showNum:Z
    .end local v5           #validCount:I
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mEthernet:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 203
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 206
    :cond_7
    const-string v6, "GONE"

    goto :goto_2

    .line 222
    .restart local v0       #i:I
    .restart local v1       #invalidCount:I
    .restart local v2       #isNoSim:[Z
    .restart local v3       #isPhone:Z
    .restart local v4       #showNum:Z
    .restart local v5       #validCount:I
    :cond_8
    aput-boolean v11, v2, v0

    goto :goto_4

    .line 225
    :cond_9
    rsub-int/lit8 v6, v1, 0x2

    if-gt v6, v13, :cond_a

    .line 226
    const/4 v4, 0x0

    .line 228
    :cond_a
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v12, :cond_f

    .line 229
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileStrengthId:[I

    aget v6, v6, v0

    if-eqz v6, :cond_e

    .line 230
    if-eqz v4, :cond_b

    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileStrengthId:[I

    aget v6, v6, v0

    const v7, 0x7f0201db

    if-eq v6, v7, :cond_b

    .line 231
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileNum:[Landroid/widget/ImageView;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileNumId:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 232
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileNum:[Landroid/widget/ImageView;

    aget-object v6, v6, v0

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    :goto_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileTypeId:[I

    aget v6, v6, v0

    if-eqz v6, :cond_c

    .line 237
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileType:[Landroid/widget/ImageView;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileTypeId:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 238
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileActivityId:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 239
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v6, v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileTypeDescription:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileDescription:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v6, v6, v0

    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 244
    :goto_7
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobile:[Landroid/widget/ImageView;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileStrengthId:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 245
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileSignalGroup:[Landroid/view/ViewGroup;

    aget-object v6, v6, v0

    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 246
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mRoamTypeId:[I

    aget v6, v6, v0

    if-eqz v6, :cond_d

    .line 247
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mRoamType:[Landroid/widget/ImageView;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mRoamTypeId:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 248
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mRoamType:[Landroid/widget/ImageView;

    aget-object v6, v6, v0

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    .line 234
    :cond_b
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileNum:[Landroid/widget/ImageView;

    aget-object v6, v6, v0

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 242
    :cond_c
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v6, v6, v0

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_7

    .line 250
    :cond_d
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mRoamType:[Landroid/widget/ImageView;

    aget-object v6, v6, v0

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    .line 253
    :cond_e
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v6, v6, v0

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 254
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileSignalGroup:[Landroid/view/ViewGroup;

    aget-object v6, v6, v0

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 255
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mRoamType:[Landroid/widget/ImageView;

    aget-object v6, v6, v0

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    .line 258
    :cond_f
    sget-boolean v6, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->IS_CUCC:Z

    if-eqz v6, :cond_11

    .line 259
    const/4 v0, 0x0

    :goto_9
    if-ge v0, v12, :cond_13

    .line 260
    aget-boolean v6, v2, v0

    if-nez v6, :cond_10

    .line 261
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v6, v6, v0

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 263
    :cond_10
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v6, v6, v0

    const v7, 0x7f0201cd

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 264
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v6, v6, v0

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a

    .line 268
    :cond_11
    const/4 v0, 0x1

    :goto_b
    if-ge v0, v12, :cond_12

    .line 269
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v6, v6, v0

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 271
    :cond_12
    if-ge v1, v12, :cond_14

    .line 272
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v6, v6, v11

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 289
    .end local v1           #invalidCount:I
    .end local v2           #isNoSim:[Z
    .end local v4           #showNum:Z
    .end local v5           #validCount:I
    :cond_13
    :goto_c
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mIsAirplaneMode:Z

    if-eqz v6, :cond_18

    .line 290
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mAirplane:Landroid/widget/ImageView;

    const v7, 0x7f0201d7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 291
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    :goto_d
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileVisible:Z

    if-eqz v6, :cond_19

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifiVisible:Z

    if-eqz v6, :cond_19

    .line 297
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mSpacer:Landroid/view/View;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 302
    :goto_e
    sget-boolean v6, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 303
    const/4 v0, 0x0

    :goto_f
    if-ge v0, v12, :cond_0

    .line 304
    const-string v7, "AsusSignalClusterViewDualSim"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mobile["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "]: %s sig=%d typ=%d"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v14, [Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileVisible:Z

    if-eqz v6, :cond_1a

    const-string v6, "VISIBLE"

    :goto_10
    aput-object v6, v9, v11

    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileStrengthId:[I

    aget v6, v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v13

    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileTypeId:[I

    aget v6, v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 274
    .restart local v1       #invalidCount:I
    .restart local v2       #isNoSim:[Z
    .restart local v4       #showNum:Z
    .restart local v5       #validCount:I
    :cond_14
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v6, v6, v11

    const v7, 0x7f0201cd

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 275
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v6, v6, v11

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_c

    .line 279
    .end local v0           #i:I
    .end local v1           #invalidCount:I
    .end local v2           #isNoSim:[Z
    .end local v4           #showNum:Z
    .end local v5           #validCount:I
    :cond_15
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_11
    if-ge v0, v12, :cond_13

    .line 280
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v6, v6, v0

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v6, v6, v0

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 282
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mRoamType:[Landroid/widget/ImageView;

    aget-object v6, v6, v0

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 283
    if-eqz v3, :cond_16

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mIsAirplaneMode:Z

    if-eqz v6, :cond_17

    .line 284
    :cond_16
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileSignalGroup:[Landroid/view/ViewGroup;

    aget-object v6, v6, v0

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 279
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 293
    :cond_18
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_d

    .line 299
    :cond_19
    iget-object v6, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mSpacer:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e

    .line 304
    :cond_1a
    const-string v6, "GONE"

    goto :goto_10

    .line 215
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x1t
    .end array-data
.end method

.method private assignViews()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 319
    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifiGroup:Landroid/view/ViewGroup;

    .line 320
    const v0, 0x7f0b0029

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifi:Landroid/widget/ImageView;

    .line 321
    const v0, 0x7f0b002a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifiActivity:Landroid/widget/ImageView;

    .line 322
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileGroup:[Landroid/view/ViewGroup;

    const v0, 0x7f0b002c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    aput-object v0, v1, v2

    .line 323
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobile:[Landroid/widget/ImageView;

    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 324
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileActivity:[Landroid/widget/ImageView;

    const v0, 0x7f0b002e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 325
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileType:[Landroid/widget/ImageView;

    const v0, 0x7f0b002d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 326
    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mSpacer:Landroid/view/View;

    .line 327
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileGroup:[Landroid/view/ViewGroup;

    const v0, 0x7f0b0038

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    aput-object v0, v1, v3

    .line 328
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobile:[Landroid/widget/ImageView;

    const v0, 0x7f0b003d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    .line 329
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileActivity:[Landroid/widget/ImageView;

    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    .line 330
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileType:[Landroid/widget/ImageView;

    const v0, 0x7f0b0039

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    .line 331
    const v0, 0x7f0b0034

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mAirplane:Landroid/widget/ImageView;

    .line 332
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mRoamType:[Landroid/widget/ImageView;

    const v0, 0x7f0b0030

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 333
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mRoamType:[Landroid/widget/ImageView;

    const v0, 0x7f0b0037

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    .line 334
    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mEthernet:Landroid/widget/ImageView;

    .line 335
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileNum:[Landroid/widget/ImageView;

    const v0, 0x7f0b0036

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 336
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileNum:[Landroid/widget/ImageView;

    const v0, 0x7f0b003c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    .line 337
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mNoSimSlot:[Landroid/widget/ImageView;

    const v0, 0x7f0b0033

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 338
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mNoSimSlot:[Landroid/widget/ImageView;

    const v0, 0x7f0b003e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    .line 339
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileSignalGroup:[Landroid/view/ViewGroup;

    const v0, 0x7f0b0035

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    aput-object v0, v1, v2

    .line 340
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileSignalGroup:[Landroid/view/ViewGroup;

    const v0, 0x7f0b003b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    aput-object v0, v1, v3

    .line 341
    return-void
.end method

.method private resetViews()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 344
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifi:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifiActivity:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 349
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifiActivity:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 352
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mAirplane:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 353
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 356
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mEthernet:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 357
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mEthernet:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 360
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_a

    .line 361
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobile:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4

    .line 362
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobile:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 364
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    .line 365
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 367
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileType:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_6

    .line 368
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileType:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 370
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mRoamType:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_7

    .line 371
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mRoamType:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 373
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileNum:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_8

    .line 374
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileNum:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 376
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_9

    .line 377
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mNoSimSlot:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 360
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 380
    :cond_a
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 166
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifiVisible:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileVisible:Z

    if-eqz v1, :cond_2

    .line 169
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 170
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 171
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    .end local v0           #i:I
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->assignViews()V

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->apply()V

    .line 99
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    iput-object v2, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifiGroup:Landroid/view/ViewGroup;

    .line 104
    iput-object v2, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifi:Landroid/widget/ImageView;

    .line 105
    iput-object v2, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifiActivity:Landroid/widget/ImageView;

    .line 106
    iput-object v2, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mSpacer:Landroid/view/View;

    .line 107
    iput-object v2, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mAirplane:Landroid/widget/ImageView;

    .line 108
    iput-object v2, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mEthernet:Landroid/widget/ImageView;

    .line 109
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileGroup:[Landroid/view/ViewGroup;

    aput-object v2, v1, v0

    .line 111
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobile:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 112
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileActivity:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 113
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileType:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 114
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mRoamType:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 115
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileNum:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 116
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileSignalGroup:[Landroid/view/ViewGroup;

    aput-object v2, v1, v0

    .line 117
    iget-object v1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mNoSimSlot:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 120
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .parameter "layoutDirection"

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 182
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->resetViews()V

    .line 183
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->apply()V

    .line 184
    return-void
.end method

.method public resetSignalCluster()V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->assignViews()V

    .line 384
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->resetViews()V

    .line 385
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->apply()V

    .line 386
    return-void
.end method

.method public setEthernetIndicators(ZI)V
    .locals 0
    .parameter "visible"
    .parameter "activityIcon"

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mEthernetVisible:Z

    .line 124
    iput p2, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mEthernetId:I

    .line 125
    return-void
.end method

.method public setIsAirplaneMode(Z)V
    .locals 0
    .parameter "is"

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mIsAirplaneMode:Z

    .line 160
    return-void
.end method

.method public setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "visible"
    .parameter "strengthIcon"
    .parameter "activityIcon"
    .parameter "typeIcon"
    .parameter "contentDescription"
    .parameter "typeContentDescription"
    .parameter "numIcon"
    .parameter "strengthIcon2"
    .parameter "activityIcon2"
    .parameter "typeIcon2"
    .parameter "contentDescription2"
    .parameter "typeContentDescription2"
    .parameter "numIcon2"

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileVisible:Z

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileStrengthId:[I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileActivityId:[I

    const/4 v1, 0x0

    aput p3, v0, v1

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileTypeId:[I

    const/4 v1, 0x0

    aput p4, v0, v1

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileDescription:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileTypeDescription:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p6, v0, v1

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileNumId:[I

    const/4 v1, 0x0

    aput p7, v0, v1

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileStrengthId:[I

    const/4 v1, 0x1

    aput p8, v0, v1

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileActivityId:[I

    const/4 v1, 0x1

    aput p9, v0, v1

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileTypeId:[I

    const/4 v1, 0x1

    aput p10, v0, v1

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileDescription:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p11, v0, v1

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileTypeDescription:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p12, v0, v1

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mMobileNumId:[I

    const/4 v1, 0x1

    aput p13, v0, v1

    .line 154
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->apply()V

    .line 155
    return-void
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;)V
    .locals 3
    .parameter "nc"

    .prologue
    .line 89
    sget-boolean v0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AsusSignalClusterViewDualSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsusNetworkControllerDualSim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mNC:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    .line 91
    return-void
.end method

.method public setRoamTypeIcon(II)V
    .locals 2
    .parameter "typeIcon"
    .parameter "typeIcon2"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mRoamTypeId:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mRoamTypeId:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 316
    return-void
.end method

.method public setWifiIndicators(ZIILjava/lang/String;)V
    .locals 0
    .parameter "visible"
    .parameter "strengthIcon"
    .parameter "activityIcon"
    .parameter "contentDescription"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifiVisible:Z

    .line 131
    iput p2, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifiStrengthId:I

    .line 132
    iput p3, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifiActivityId:I

    .line 133
    iput-object p4, p0, Lcom/android/systemui/statusbar/AsusSignalClusterViewDualSim;->mWifiDescription:Ljava/lang/String;

    .line 134
    return-void
.end method
