.class Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$42;
.super Landroid/content/BroadcastReceiver;
.source "AsusPhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V
    .locals 0

    .prologue
    .line 3452
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$42;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3455
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3456
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3457
    const/4 v3, 0x0

    .line 3458
    .local v3, flags:I
    const-string v6, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3459
    const-string v6, "reason"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3460
    .local v4, reason:Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v6, "recentapps"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3461
    or-int/lit8 v3, v3, 0x2

    .line 3464
    .end local v4           #reason:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$42;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->animateCollapsePanels(I)V

    .line 3492
    .end local v3           #flags:I
    :cond_1
    :goto_0
    return-void

    .line 3466
    :cond_2
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3467
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$42;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mScreenOn:[Ljava/lang/Boolean;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$5100(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)[Ljava/lang/Boolean;

    move-result-object v6

    sget v7, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    .line 3469
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$42;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->makeExpandedInvisible()V

    .line 3470
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$42;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->notifyNavigationBarScreenOn(Z)V
    invoke-static {v6, v9}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$5200(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;Z)V

    .line 3471
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$42;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->notifyHeadsUpScreenOn(Z)V
    invoke-static {v6, v9}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$5300(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;Z)V

    goto :goto_0

    .line 3473
    :cond_3
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3474
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$42;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mScreenOn:[Ljava/lang/Boolean;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$5100(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)[Ljava/lang/Boolean;

    move-result-object v6

    sget v7, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    .line 3476
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$42;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->repositionNavigationBar()V
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$5400(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    .line 3477
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$42;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->notifyNavigationBarScreenOn(Z)V
    invoke-static {v6, v10}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$5200(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;Z)V

    goto :goto_0

    .line 3479
    :cond_4
    const-string v6, "com.android.systemui.demo"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3480
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 3481
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 3482
    const-string v6, "command"

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 3483
    .local v2, command:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 3485
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$42;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v6, v2, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3486
    :catch_0
    move-exception v5

    .line 3487
    .local v5, t:Ljava/lang/Throwable;
    const-string v6, "AsusPhoneStatusBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error running demo command, intent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
