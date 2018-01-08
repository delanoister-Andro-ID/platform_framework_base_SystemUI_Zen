.class Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController$2;
.super Lcom/android/systemui/PerUserService$Connection;
.source "QuickSettingsBluetoothController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController;->setMode(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController;IZ)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController$2;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController$2;->val$enabled:Z

    invoke-direct {p0, p2}, Lcom/android/systemui/PerUserService$Connection;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onConnected(Lcom/android/systemui/IPerUserService;)V
    .locals 1
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBluetoothController$2;->val$enabled:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/IPerUserService;->setBluetoothAdapter(Z)V

    .line 115
    return-void
.end method
