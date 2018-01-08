.class Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$WifiHandler;
.super Landroid/os/Handler;
.source "NetworkControllerDualSIM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V
    .locals 0

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1015
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1034
    :cond_0
    :goto_0
    return-void

    .line 1017
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    .line 1018
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x11001

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1021
    :cond_1
    const-string v0, "StatusBar.NetworkControllerDualSIM"

    const-string v1, "Failed to connect to wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1025
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiActivity:I

    if-eq v0, v1, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->mWifiActivity:I

    .line 1027
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->refreshViews()V

    goto :goto_0

    .line 1015
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x11000 -> :sswitch_0
    .end sparse-switch
.end method
