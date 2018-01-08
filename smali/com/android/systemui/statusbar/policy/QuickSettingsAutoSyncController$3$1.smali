.class Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$3$1;
.super Ljava/lang/Object;
.source "QuickSettingsAutoSyncController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$3;->onConnected(Lcom/android/systemui/IPerUserService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$3;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$3$1;->this$1:Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$3$1;->this$1:Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$3;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$3;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$3$1;->this$1:Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$3;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$3;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 73
    return-void
.end method
