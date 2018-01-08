.class Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$4;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    const/4 v1, 0x0

    .line 422
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mUseHeadsUp:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$500(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Z

    move-result v0

    .line 423
    .local v0, wasUsing:Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "heads_up_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    #setter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mUseHeadsUp:Z
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$602(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;Z)Z

    .line 425
    const-string v2, "AsusPhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "heads up is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mUseHeadsUp:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$700(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "enabled"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mUseHeadsUp:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$800(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 427
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mUseHeadsUp:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$900(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 428
    const-string v1, "AsusPhoneStatusBar"

    const-string v2, "dismissing any existing heads up notification on disable event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$1000(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v1

    const/16 v2, 0x403

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 430
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->removeHeadsUpView()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$1100(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    .line 435
    :cond_1
    :goto_1
    return-void

    .line 425
    :cond_2
    const-string v1, "disabled"

    goto :goto_0

    .line 432
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$4;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->addHeadsUpView()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$1200(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    goto :goto_1
.end method
