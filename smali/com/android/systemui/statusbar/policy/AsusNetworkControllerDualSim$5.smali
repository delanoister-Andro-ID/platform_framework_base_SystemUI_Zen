.class Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$5;
.super Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;
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
.method constructor <init>(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;)V
    .locals 0

    .prologue
    .line 651
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$5;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$PhoneStateListenerDualSIM;-><init>(Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;)V

    return-void
.end method


# virtual methods
.method protected getSlot()I
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim$5;->this$0:Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AsusNetworkControllerDualSim;->getDataSlot()I

    move-result v0

    return v0
.end method
