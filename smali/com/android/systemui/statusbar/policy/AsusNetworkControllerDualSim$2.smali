.class Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$2;
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
    .line 217
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$2;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$2;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    const/4 v1, 0x0

    #calls: Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->refreshSimStatus(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->access$000(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;I)V

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$2;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->refreshViews()V

    .line 222
    return-void
.end method
