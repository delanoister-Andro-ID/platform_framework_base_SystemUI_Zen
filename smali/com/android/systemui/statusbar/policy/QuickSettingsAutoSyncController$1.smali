.class Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$1;
.super Ljava/lang/Object;
.source "QuickSettingsAutoSyncController.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 2
    .parameter "which"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;

    #getter for: Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->access$100(Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$1$1;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    return-void
.end method
