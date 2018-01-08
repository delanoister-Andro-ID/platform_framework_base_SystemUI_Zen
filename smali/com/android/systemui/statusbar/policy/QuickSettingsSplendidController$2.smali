.class Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController$2;
.super Ljava/lang/Object;
.source "QuickSettingsSplendidController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController;->setMode(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController;

.field final synthetic val$mEnabled:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController;Z)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController$2;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController$2;->val$mEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, -0x2

    .line 65
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController$2;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "asus_splendid_reading_mode_main_switch"

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController$2;->val$mEnabled:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "asus.splendid.quicksetting.intent.action.READER_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "asus.splendid.quicksetting.intent.extra.READER_MODE"

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController$2;->val$mEnabled:Z

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController$2;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/QuickSettingsSplendidController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 71
    return-void

    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    move v1, v3

    .line 65
    goto :goto_0

    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    move v2, v3

    .line 69
    goto :goto_1
.end method
