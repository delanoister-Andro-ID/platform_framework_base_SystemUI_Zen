.class public Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;
.super Landroid/widget/TextView;
.source "AsusCarrierLabel.java"


# static fields
.field private static final mMultiSimEnabled:Z


# instance fields
.field private final SIM_COUNT:I

.field private mAttached:Z

.field private mCarrier:[Ljava/lang/String;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsSimAbsent:[Z

.field private mParent:Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyConstants;->IS_DSDS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->mMultiSimEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x2

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    iput v6, p0, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->SIM_COUNT:I

    .line 41
    new-array v0, v6, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->mCarrier:[Ljava/lang/String;

    .line 44
    new-array v0, v6, [Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->mIsSimAbsent:[Z

    .line 96
    new-instance v0, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel$1;-><init>(Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 56
    const/4 v5, 0x0

    .local v5, sub:I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->mIsSimAbsent:[Z

    aput-boolean v1, v0, v5

    .line 56
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 59
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->mMultiSimEnabled:Z

    if-eqz v0, :cond_1

    .line 60
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_2

    move-object v0, p0

    move v3, v1

    move-object v4, v2

    .line 61
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;I)V

    .line 60
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move-object v6, p0

    move v7, v1

    move-object v8, v2

    move v9, v1

    move-object v10, v2

    move v11, v1

    .line 64
    invoke-virtual/range {v6 .. v11}, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;I)V

    .line 66
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;)Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->mParent:Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->mIsSimAbsent:[Z

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 74
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 76
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->mAttached:Z

    if-nez v1, :cond_0

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->mAttached:Z

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 79
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v1, "com.pekall.intent.SPN_STRINGS_UPDATED.phone2"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string v1, "com.pekall.intent.SIM_STATE_CHANGED2"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 85
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->mAttached:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->mAttached:Z

    .line 94
    :cond_0
    return-void
.end method

.method public setMyParent(Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->mParent:Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    .line 70
    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;I)V
    .locals 13
    .parameter "showSpn"
    .parameter "spn"
    .parameter "showPlmn"
    .parameter "plmn"
    .parameter "subscription"

    .prologue
    .line 126
    if-eqz p3, :cond_0

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const/4 v7, 0x1

    .line 127
    .local v7, plmnValid:Z
    :goto_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    const/4 v8, 0x1

    .line 128
    .local v8, spnValid:Z
    :goto_1
    if-eqz v7, :cond_2

    if-eqz v8, :cond_2

    .line 129
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "|"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 137
    .local v9, str:Ljava/lang/String;
    :goto_2
    sget-boolean v11, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->mMultiSimEnabled:Z

    if-nez v11, :cond_5

    .line 138
    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :goto_3
    return-void

    .line 126
    .end local v7           #plmnValid:Z
    .end local v8           #spnValid:Z
    .end local v9           #str:Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 127
    .restart local v7       #plmnValid:Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 130
    .restart local v8       #spnValid:Z
    :cond_2
    if-eqz v7, :cond_3

    .line 131
    move-object/from16 v9, p4

    .restart local v9       #str:Ljava/lang/String;
    goto :goto_2

    .line 132
    .end local v9           #str:Ljava/lang/String;
    :cond_3
    if-eqz v8, :cond_4

    .line 133
    move-object v9, p2

    .restart local v9       #str:Ljava/lang/String;
    goto :goto_2

    .line 135
    .end local v9           #str:Ljava/lang/String;
    :cond_4
    const-string v9, ""

    .restart local v9       #str:Ljava/lang/String;
    goto :goto_2

    .line 141
    :cond_5
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->mCarrier:[Ljava/lang/String;

    aput-object v9, v11, p5

    .line 142
    const-string v9, ""

    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x104030b

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 145
    .local v6, networkNameDefault:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1110038

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 146
    .local v5, isPhone:Z
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x1040325

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, emergencyStr:Ljava/lang/String;
    const/4 v1, 0x0

    .line 148
    .local v1, emergencyCount:I
    const/4 v3, 0x0

    .line 149
    .local v3, hasValidCarrier:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_4
    const/4 v11, 0x2

    if-ge v4, v11, :cond_a

    .line 150
    if-eqz v5, :cond_7

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->mIsSimAbsent:[Z

    aget-boolean v11, v11, v4

    if-eqz v11, :cond_7

    .line 149
    :cond_6
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 153
    :cond_7
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->mCarrier:[Ljava/lang/String;

    aget-object v10, v11, v4

    .line 154
    .local v10, tempStr:Ljava/lang/String;
    if-eqz v10, :cond_8

    invoke-virtual {v10, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 155
    if-gtz v1, :cond_6

    .line 158
    add-int/lit8 v1, v1, 0x1

    .line 160
    :cond_8
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 161
    if-lez v4, :cond_9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    .line 162
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 164
    :cond_9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 165
    if-nez v3, :cond_6

    .line 166
    const/4 v3, 0x1

    goto :goto_5

    .line 170
    .end local v10           #tempStr:Ljava/lang/String;
    :cond_a
    if-eqz v3, :cond_b

    if-lez v1, :cond_b

    .line 171
    const-string v11, ""

    invoke-virtual {v9, v2, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 172
    const-string v11, "\n\n"

    const-string v12, "\n"

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 174
    :cond_b
    const-string v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 175
    const/4 v11, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 177
    :cond_c
    const-string v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 178
    const/4 v11, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 180
    :cond_d
    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method
