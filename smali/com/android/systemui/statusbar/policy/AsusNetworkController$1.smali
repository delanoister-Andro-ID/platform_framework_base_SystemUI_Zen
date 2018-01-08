.class Lcom/android/systemui/statusbar/policy/AsusNetworkController$1;
.super Landroid/telephony/PhoneStateListener;
.source "AsusNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/AsusNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/AsusNetworkController;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 445
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 446
    const-string v0, "StatusBar.AsusNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/AsusNetworkController;->isCdma()Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->access$200(Lcom/android/systemui/statusbar/policy/AsusNetworkController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/AsusNetworkController;->updateTelephonySignalStrength()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->access$000(Lcom/android/systemui/statusbar/policy/AsusNetworkController;)V

    .line 451
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->refreshViews()V

    .line 453
    :cond_1
    return-void
.end method

.method public onDataActivity(I)V
    .locals 3
    .parameter "direction"

    .prologue
    .line 469
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 470
    const-string v0, "StatusBar.AsusNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataActivity: direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkController;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataActivity:I

    .line 473
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->refreshViews()V

    .line 474
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 3
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 457
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 458
    const-string v0, "StatusBar.AsusNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkController;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataState:I

    .line 462
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkController;

    iput p2, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mDataNetType:I

    .line 463
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/AsusNetworkController;->updateDataNetType()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->access$100(Lcom/android/systemui/statusbar/policy/AsusNetworkController;)V

    .line 464
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->refreshViews()V

    .line 465
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 434
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 435
    const-string v0, "StatusBar.AsusNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkController;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    .line 438
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/AsusNetworkController;->updateTelephonySignalStrength()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->access$000(Lcom/android/systemui/statusbar/policy/AsusNetworkController;)V

    .line 439
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/AsusNetworkController;->updateDataNetType()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->access$100(Lcom/android/systemui/statusbar/policy/AsusNetworkController;)V

    .line 440
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->refreshViews()V

    .line 441
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 4
    .parameter "signalStrength"

    .prologue
    .line 423
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 424
    const-string v1, "StatusBar.AsusNetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrengthsChanged signalStrength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkController;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 428
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/AsusNetworkController;->updateTelephonySignalStrength()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->access$000(Lcom/android/systemui/statusbar/policy/AsusNetworkController;)V

    .line 429
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkController$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkController;->refreshViews()V

    .line 430
    return-void

    .line 424
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " level="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
