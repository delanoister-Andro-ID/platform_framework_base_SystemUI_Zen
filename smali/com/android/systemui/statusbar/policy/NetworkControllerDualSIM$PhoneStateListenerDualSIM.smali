.class abstract Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkControllerDualSIM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "PhoneStateListenerDualSIM"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getSlot()I
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->getSlot()I

    move-result v0

    .line 525
    .local v0, slot:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->isCdma(I)Z
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$500(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateTelephonySignalStrength(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;I)V

    .line 527
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshViews()V

    .line 529
    :cond_0
    return-void
.end method

.method public onDataActivity(I)V
    .locals 3
    .parameter "direction"

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->getSlot()I

    move-result v0

    .line 551
    .local v0, slot:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataActivity:[I

    aput p1, v1, v0

    .line 552
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataNetType:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getNetworkType(I)I
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;I)I

    move-result v2

    aput v2, v1, v0

    .line 553
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataIcon(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$400(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;I)V

    .line 554
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataNetType(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;I)V

    .line 555
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshViews()V

    .line 556
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 2
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->getSlot()I

    move-result v0

    .line 538
    .local v0, slot:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataState:[I

    aput p1, v1, v0

    .line 539
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataNetType:[I

    aput p2, v1, v0

    .line 540
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataNetType(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;I)V

    .line 541
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataIcon(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$400(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;I)V

    .line 542
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshViews()V

    .line 543
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->getSlot()I

    move-result v0

    .line 507
    .local v0, slot:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mServiceState:[Landroid/telephony/ServiceState;

    aput-object p1, v1, v0

    .line 508
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->hasService(I)Z
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mToos:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 509
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mToos:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 511
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataNetType:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getNetworkType(I)I
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;I)I

    move-result v2

    aput v2, v1, v0

    .line 512
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateTelephonySignalStrength(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;I)V

    .line 513
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataNetType(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;I)V

    .line 514
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataIcon(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$400(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;I)V

    .line 515
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshViews()V

    .line 516
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3
    .parameter "signalStrength"

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->getSlot()I

    move-result v0

    .line 493
    .local v0, slot:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aput-object p1, v1, v0

    .line 494
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mDataNetType:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getNetworkType(I)I
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;I)I

    move-result v2

    aput v2, v1, v0

    .line 495
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateTelephonySignalStrength(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;I)V

    .line 496
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->updateDataNetType(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;I)V

    .line 497
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshViews()V

    .line 498
    return-void
.end method
