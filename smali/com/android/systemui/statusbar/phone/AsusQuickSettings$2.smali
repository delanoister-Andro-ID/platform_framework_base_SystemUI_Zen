.class Lcom/android/systemui/statusbar/phone/AsusQuickSettings$2;
.super Ljava/lang/Object;
.source "AsusQuickSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/AsusQuickSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, -0x2

    const/high16 v6, 0x80

    const/4 v5, 0x1

    .line 541
    move-object v3, p1

    check-cast v3, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getSharfKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "quickbox_camera_order"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 542
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 543
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->access$000(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isKeyguardSecure()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->access$000(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isKeyguardLock()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 544
    const-string v3, "com.asus.camera.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 545
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 549
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->access$000(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    move-result-object v3

    invoke-virtual {v3, v2, v5}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;Z)V

    .line 612
    .end local v2           #intent:Landroid/content/Intent;
    .end local p1
    :cond_0
    :goto_1
    return-void

    .line 547
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local p1
    :cond_1
    const-string v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    move-object v3, p1

    .line 550
    check-cast v3, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getSharfKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "quickbox_flashlight_order"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 551
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 552
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v3, "FROM_QUICKSETTING"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 553
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.asus.flashlight"

    const-string v4, "com.asus.flashlight.FlashLightMainActivity"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    .local v1, cn:Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 556
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->access$000(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    move-result-object v3

    invoke-virtual {v3, v2, v5}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;Z)V

    goto :goto_1

    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    move-object v3, p1

    .line 557
    check-cast v3, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getSharfKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "quickbox_calculator_order"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 558
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->access$100(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.asus.calculator"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 559
    .local v0, cIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->access$000(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    move-result-object v3

    invoke-virtual {v3, v0, v5}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;Z)V

    goto :goto_1

    .end local v0           #cIntent:Landroid/content/Intent;
    :cond_4
    move-object v3, p1

    .line 560
    check-cast v3, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getSharfKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "quickbox_dictionary_order"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 561
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->access$100(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.asus.mydictionary"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 562
    .restart local v0       #cIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->access$000(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    move-result-object v3

    invoke-virtual {v3, v0, v5}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;Z)V

    goto/16 :goto_1

    .end local v0           #cIntent:Landroid/content/Intent;
    :cond_5
    move-object v3, p1

    .line 563
    check-cast v3, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getSharfKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "quickbox_soundrecord_order"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 564
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->access$100(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.asus.soundrecorder"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 565
    .restart local v0       #cIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->access$000(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    move-result-object v3

    invoke-virtual {v3, v0, v5}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;Z)V

    goto/16 :goto_1

    .end local v0           #cIntent:Landroid/content/Intent;
    :cond_6
    move-object v3, p1

    .line 566
    check-cast v3, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getSharfKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "quickbox_audiowizard_order"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 567
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->access$100(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.asus.maxxaudio.action.START_FLOATING_VIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 570
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->access$000(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->animateCollapsePanels()V

    goto/16 :goto_1

    :cond_7
    move-object v3, p1

    .line 571
    check-cast v3, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getSharfKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "quickbox_quickmemo_order"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 572
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->access$100(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.asus.quickmemo"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 573
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->access$000(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isKeyguardSecure()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->access$000(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isKeyguardLock()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 574
    const-string v3, "FROM_LOCK_SCREEN"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 575
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 579
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->access$000(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    move-result-object v3

    invoke-virtual {v3, v2, v5}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;Z)V

    goto/16 :goto_1

    .line 577
    :cond_8
    const-string v3, "FROM_LOCK_SCREEN"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    .end local v2           #intent:Landroid/content/Intent;
    :cond_9
    move-object v3, p1

    .line 580
    check-cast v3, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getSharfKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "quickbox_fmradio_order"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 581
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->access$100(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.asus.fmradio"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 582
    .restart local v0       #cIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->access$000(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    move-result-object v3

    invoke-virtual {v3, v0, v5}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;Z)V

    goto/16 :goto_1

    .end local v0           #cIntent:Landroid/content/Intent;
    :cond_a
    move-object v3, p1

    .line 583
    check-cast v3, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getSharfKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "quickbox_boost_order"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 586
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->access$000(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->animateCollapsePanels()V

    .line 590
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mMemInfo:Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->access$200(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->isBound()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 591
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mMemInfo:Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->access$200(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->boost()J

    goto/16 :goto_1

    .line 593
    :cond_b
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.asus.intent.action.FREE_MEMORY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 594
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->access$100(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 596
    const-string v3, "Quicksettings.Boost"

    const-string v4, "Start boost through intent!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v2           #intent:Landroid/content/Intent;
    :cond_c
    move-object v3, p1

    .line 598
    check-cast v3, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getSharfKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "quickbox_mirror_order"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 599
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 600
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->access$000(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isKeyguardSecure()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->access$000(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isKeyguardLock()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 601
    const-string v3, "intent.action.ASUS_MIRROR_SECURE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 606
    :goto_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->access$000(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    move-result-object v3

    invoke-virtual {v3, v2, v5}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;Z)V

    goto/16 :goto_1

    .line 604
    :cond_d
    const-string v3, "intent.action.ASUS_MIRROR"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 607
    .end local v2           #intent:Landroid/content/Intent;
    :cond_e
    check-cast p1, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    .end local p1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getSharfKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "quickbox_screenshot_order"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 608
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->access$000(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->animateCollapsePanels()V

    .line 609
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    #calls: Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->takeScreenShot()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->access$300(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)V

    goto/16 :goto_1

    .line 587
    .restart local p1
    :catch_0
    move-exception v3

    goto/16 :goto_3
.end method
