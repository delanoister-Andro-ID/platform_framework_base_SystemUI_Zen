.class Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$4;
.super Lcom/android/systemui/PerUserService$Connection;
.source "QuickSettingsAutoSyncController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->setMode(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;IZ)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$4;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$4;->val$enabled:Z

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
    .line 97
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$4;->val$enabled:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/IPerUserService;->setMasterSyncAutomatically(Z)V

    .line 98
    return-void
.end method
