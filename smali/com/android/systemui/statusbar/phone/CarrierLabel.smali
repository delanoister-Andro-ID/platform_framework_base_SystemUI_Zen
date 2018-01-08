.class public Lcom/android/systemui/statusbar/phone/CarrierLabel;
.super Landroid/widget/TextView;
.source "CarrierLabel.java"


# instance fields
.field private mAttached:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSlot:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    iput v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSlot:I

    .line 101
    new-instance v0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;-><init>(Lcom/android/systemui/statusbar/phone/CarrierLabel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    invoke-virtual {p0, v1, v2, v1, v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/CarrierLabel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSlot:I

    return v0
.end method

.method private isSim1Primary()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mobile_data_sim"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 98
    .local v0, curId:I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 66
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 68
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mAttached:Z

    if-nez v1, :cond_0

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mAttached:Z

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 71
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v1, "com.pekall.intent.SPN_STRINGS_UPDATED.phone2"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 75
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 80
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mAttached:Z

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mAttached:Z

    .line 84
    :cond_0
    return-void
.end method

.method public setSimSlot(I)V
    .locals 3
    .parameter "slot"

    .prologue
    .line 87
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyConstants;->IS_DSDS:Z

    if-eqz v0, :cond_0

    .line 88
    iput p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSlot:I

    .line 89
    const-string v0, "CarrierLabel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 9
    .parameter "showSpn"
    .parameter "spn"
    .parameter "showPlmn"
    .parameter "plmn"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 125
    if-eqz p3, :cond_3

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    move v1, v4

    .line 126
    .local v1, plmnValid:Z
    :goto_0
    if-eqz p1, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    move v2, v4

    .line 127
    .local v2, spnValid:Z
    :goto_1
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 128
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, str:Ljava/lang/String;
    :goto_2
    sget-boolean v6, Lcom/android/internal/telephony/TelephonyConstants;->IS_DSDS:Z

    if-eqz v6, :cond_2

    .line 140
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->isSim1Primary()Z

    move-result v0

    .line 141
    .local v0, isSim1DataSim:Z
    if-eqz v0, :cond_0

    iget v6, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSlot:I

    if-eqz v6, :cond_1

    :cond_0
    if-nez v0, :cond_9

    iget v6, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSlot:I

    if-ne v6, v4, :cond_9

    .line 143
    :cond_1
    invoke-virtual {p0, v8, v4}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 148
    :goto_3
    iget v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSlot:I

    if-nez v4, :cond_a

    .line 149
    const/16 v4, -0x7800

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setTextColor(I)V

    .line 155
    .end local v0           #isSim1DataSim:Z
    :cond_2
    :goto_4
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setText(Ljava/lang/CharSequence;)V

    .line 156
    return-void

    .end local v1           #plmnValid:Z
    .end local v2           #spnValid:Z
    .end local v3           #str:Ljava/lang/String;
    :cond_3
    move v1, v5

    .line 125
    goto :goto_0

    .restart local v1       #plmnValid:Z
    :cond_4
    move v2, v5

    .line 126
    goto :goto_1

    .line 129
    .restart local v2       #spnValid:Z
    :cond_5
    if-eqz v1, :cond_6

    .line 130
    move-object v3, p4

    .restart local v3       #str:Ljava/lang/String;
    goto :goto_2

    .line 131
    .end local v3           #str:Ljava/lang/String;
    :cond_6
    if-eqz v2, :cond_7

    .line 132
    move-object v3, p2

    .restart local v3       #str:Ljava/lang/String;
    goto :goto_2

    .line 134
    .end local v3           #str:Ljava/lang/String;
    :cond_7
    sget-boolean v6, Lcom/android/internal/telephony/TelephonyConstants;->IS_DSDS:Z

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x104030b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #str:Ljava/lang/String;
    :goto_5
    goto :goto_2

    .end local v3           #str:Ljava/lang/String;
    :cond_8
    const-string v3, ""

    goto :goto_5

    .line 145
    .restart local v0       #isSim1DataSim:Z
    .restart local v3       #str:Ljava/lang/String;
    :cond_9
    invoke-virtual {p0, v8, v5}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_3

    .line 151
    :cond_a
    const v4, -0xcc4a1b

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setTextColor(I)V

    goto :goto_4
.end method
