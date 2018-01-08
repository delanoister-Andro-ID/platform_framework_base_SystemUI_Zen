.class Lcom/android/systemui/recent/DualAppsService$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "DualAppsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/DualAppsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Receiver"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 285
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 286
    iput-object p1, p0, Lcom/android/systemui/recent/DualAppsService$Receiver;->mContext:Landroid/content/Context;

    .line 287
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 291
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, action:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    .line 293
    const-string v6, "ACTION_DUAL_APP_ACTIVITY_IDLE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 294
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 295
    .local v1, bundle:Landroid/os/Bundle;
    const-string v6, "id"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 296
    .local v2, displayId:I
    const-string v6, "taskId"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 297
    .local v5, taskId:I
    const-string v6, "packageName"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, pkg:Ljava/lang/String;
    const-string v6, "intent"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 299
    .local v3, i:Landroid/content/Intent;
    if-nez v2, :cond_0

    const-string v6, "com.android.systemui"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 301
    iget-object v6, p0, Lcom/android/systemui/recent/DualAppsService$Receiver;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/android/systemui/recent/DualAppsService;

    invoke-virtual {v6, v4}, Lcom/android/systemui/recent/DualAppsService;->setFocusApp(Ljava/lang/String;)V

    .line 302
    iget-object v6, p0, Lcom/android/systemui/recent/DualAppsService$Receiver;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/android/systemui/recent/DualAppsService;

    invoke-virtual {v6, v5}, Lcom/android/systemui/recent/DualAppsService;->setFocusedAppTaskId(I)V

    .line 303
    iget-object v6, p0, Lcom/android/systemui/recent/DualAppsService$Receiver;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/android/systemui/recent/DualAppsService;

    invoke-virtual {v6, v3}, Lcom/android/systemui/recent/DualAppsService;->setFocusedAppIntent(Landroid/content/Intent;)V

    .line 308
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #displayId:I
    .end local v3           #i:Landroid/content/Intent;
    .end local v4           #pkg:Ljava/lang/String;
    .end local v5           #taskId:I
    :cond_0
    const-string v6, "com.android.systemui.recent.action.DUAL_APPS_LIST_READY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 309
    iget-object v6, p0, Lcom/android/systemui/recent/DualAppsService$Receiver;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/android/systemui/recent/DualAppsService;

    const/4 v7, 0x1

    #calls: Lcom/android/systemui/recent/DualAppsService;->setDualAppReady(Z)V
    invoke-static {v6, v7}, Lcom/android/systemui/recent/DualAppsService;->access$000(Lcom/android/systemui/recent/DualAppsService;Z)V

    .line 313
    :cond_1
    return-void

    .line 291
    .end local v0           #action:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
