.class Lcom/android/systemui/statusbar/policy/QuickSettingsAirplaneModeController$1;
.super Ljava/lang/Object;
.source "QuickSettingsAirplaneModeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/QuickSettingsAirplaneModeController;->setMode(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsAirplaneModeController;

.field final synthetic val$mEnabled:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/QuickSettingsAirplaneModeController;Z)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAirplaneModeController$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsAirplaneModeController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAirplaneModeController$1;->val$mEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 57
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAirplaneModeController$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsAirplaneModeController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/QuickSettingsAirplaneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAirplaneModeController$1;->val$mEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 61
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    const-string v1, "state"

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAirplaneModeController$1;->val$mEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 64
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAirplaneModeController$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsAirplaneModeController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/QuickSettingsAirplaneModeController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 65
    return-void

    .line 57
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
