.class Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$1$1;
.super Ljava/lang/Object;
.source "QuickSettingsAutoSyncController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$1;->onStatusChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$1;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$1$1;->this$1:Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$1$1;->this$1:Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;

    #calls: Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->updateStatus()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->access$000(Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;)V

    .line 31
    return-void
.end method
