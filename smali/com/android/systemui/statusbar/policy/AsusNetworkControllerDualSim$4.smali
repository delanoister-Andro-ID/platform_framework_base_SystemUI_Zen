.class Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$4;
.super Landroid/database/ContentObserver;
.source "AsusNetworkControllerDualSim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$4;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$4;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$4;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    #calls: Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->getMobileDataEnabled()Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->access$200(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;)Z

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->mIsMobileDataEnabled:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->access$102(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;Z)Z

    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$4;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->refreshViews()V

    .line 254
    return-void
.end method
