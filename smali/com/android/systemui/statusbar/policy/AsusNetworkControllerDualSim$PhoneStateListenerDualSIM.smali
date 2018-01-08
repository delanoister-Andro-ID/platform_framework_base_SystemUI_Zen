.class abstract Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;
.super Landroid/telephony/PhoneStateListener;
.source "AsusNetworkControllerDualSim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "PhoneStateListenerDualSIM"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPhoneName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Phone["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;->getSlot()I

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

.method protected abstract getSlot()I
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 612
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 613
    const-string v1, "StatusBar.AsusNetworkControllerDualSim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": onCallStateChanged state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;->getSlot()I

    move-result v0

    .line 617
    .local v0, slot:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    #calls: Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->isCdma(I)Z
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->access$600(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 618
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    #calls: Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->updateTelephonySignalStrength(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->access$300(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;I)V

    .line 619
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->refreshViews()V

    .line 621
    :cond_1
    return-void
.end method

.method public onDataActivity(I)V
    .locals 4
    .parameter "direction"

    .prologue
    .line 642
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 643
    const-string v1, "StatusBar.AsusNetworkControllerDualSim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": onDataActivity: direction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;->getSlot()I

    move-result v0

    .line 646
    .local v0, slot:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataActivity:[I

    aput p1, v1, v0

    .line 647
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->refreshViews()V

    .line 648
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 4
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 625
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 626
    const-string v1, "StatusBar.AsusNetworkControllerDualSim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": onDataConnectionStateChanged: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;->getSlot()I

    move-result v0

    .line 630
    .local v0, slot:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataState:[I

    aput p1, v1, v0

    .line 631
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->IS_CUCC:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->getDataSimId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 632
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataNetType:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    #calls: Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->getNetworkType(I)I
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->access$700(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;I)I

    move-result v2

    aput v2, v1, v0

    .line 636
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    #calls: Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->updateDataNetType(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->access$500(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;I)V

    .line 637
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->refreshViews()V

    .line 638
    return-void

    .line 634
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mDataNetType:[I

    aput p2, v1, v0

    goto :goto_0
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 597
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 598
    const-string v1, "StatusBar.AsusNetworkControllerDualSim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": onServiceStateChanged state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;->getSlot()I

    move-result v0

    .line 601
    .local v0, slot:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mServiceState:[Landroid/telephony/ServiceState;

    aput-object p1, v1, v0

    .line 602
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    #calls: Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->hasService(I)Z
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->access$400(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mToos:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 603
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mToos:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 605
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    #calls: Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->updateTelephonySignalStrength(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->access$300(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;I)V

    .line 606
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    #calls: Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->updateDataNetType(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->access$500(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;I)V

    .line 607
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->refreshViews()V

    .line 608
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 5
    .parameter "signalStrength"

    .prologue
    .line 585
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 586
    const-string v2, "StatusBar.AsusNetworkControllerDualSim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": onSignalStrengthsChanged signalStrength="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_1

    const-string v1, ""

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;->getSlot()I

    move-result v0

    .line 590
    .local v0, slot:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aput-object p1, v1, v0

    .line 591
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    #calls: Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->updateTelephonySignalStrength(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->access$300(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;I)V

    .line 592
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->refreshViews()V

    .line 593
    return-void

    .line 586
    .end local v0           #slot:I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " level="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
