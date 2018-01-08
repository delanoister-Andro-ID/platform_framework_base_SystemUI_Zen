.class Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController$2;
.super Ljava/lang/Object;
.source "QuickSettingsInstantDicController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;->setMode(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;

.field final synthetic val$mEnabled:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;Z)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController$2;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController$2;->val$mEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 109
    const-string v1, "com.asus.translator.service.ScreenDictHost"

    .line 110
    .local v1, className:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController$2;->val$mEnabled:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController$2;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController$2;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;->mContext:Landroid/content/Context;

    #calls: Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z
    invoke-static {v2, v3, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;->access$000(Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    const-string v2, "QuickSettingsInstantDicController"

    const-string v3, "startService com.asus.translator.service.ScreenDictHost , com.asus.translator"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 113
    .local v0, INTENT_FOR_SERVICE:Landroid/content/Intent;
    const-string v2, "com.asus.services.ScreenDictHost"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController$2;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 115
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController$2;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;->mContext:Landroid/content/Context;

    const-string v3, "android.intent.SWITCH_ON_INSTANT_DICTIONARY"

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;->NotifyAsusTranslator(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    .end local v0           #INTENT_FOR_SERVICE:Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController$2;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "setting_instant_dictionary"

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsInstantDicController$2;->val$mEnabled:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    const/4 v5, -0x2

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 119
    return-void

    .line 118
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
