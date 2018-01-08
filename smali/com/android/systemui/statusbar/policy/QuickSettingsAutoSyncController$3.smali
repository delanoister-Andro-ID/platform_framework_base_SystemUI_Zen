.class Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$3;
.super Lcom/android/systemui/PerUserService$Connection;
.source "QuickSettingsAutoSyncController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->updateStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;I)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$3;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;

    invoke-direct {p0, p2}, Lcom/android/systemui/PerUserService$Connection;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onConnected(Lcom/android/systemui/IPerUserService;)V
    .locals 3
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-interface {p1}, Lcom/android/systemui/IPerUserService;->getMasterSyncAutomatically()Z

    move-result v0

    .line 69
    .local v0, on:Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$3;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    :goto_0
    #setter for: Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->access$302(Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;)Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 70
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$3;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;

    #getter for: Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->access$100(Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$3$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$3$1;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$3;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    return-void

    .line 69
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0
.end method
