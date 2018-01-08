.class Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$2;
.super Landroid/content/BroadcastReceiver;
.source "QuickSettingsAutoSyncController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V
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
    .line 48
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$2;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v3, -0x2710

    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.USER_SWITCHED"

    if-ne v1, v2, :cond_0

    .line 52
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 53
    .local v0, userId:I
    if-eq v0, v3, :cond_0

    .line 54
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$2;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;

    #setter for: Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->mCurrentUser:I
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->access$202(Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;I)I

    .line 55
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController$2;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;

    #calls: Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->updateStatus()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;->access$000(Lcom/android/systemui/statusbar/policy/QuickSettingsAutoSyncController;)V

    .line 58
    .end local v0           #userId:I
    :cond_0
    return-void
.end method
