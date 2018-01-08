.class Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$1;
.super Landroid/content/BroadcastReceiver;
.source "QuickSettingsDualAppsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/16 v2, -0x2710

    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_SWITCHED"

    if-ne v0, v1, :cond_0

    .line 79
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 80
    if-eq v0, v2, :cond_0

    .line 81
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/systemui/recent/DualAppsService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 85
    :cond_0
    return-void
.end method
