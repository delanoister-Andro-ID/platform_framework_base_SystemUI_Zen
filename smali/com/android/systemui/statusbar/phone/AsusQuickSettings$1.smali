.class Lcom/android/systemui/statusbar/phone/AsusQuickSettings$1;
.super Ljava/lang/Object;
.source "AsusQuickSettings.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 501
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$1;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 506
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 507
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Landroid/provider/Settings$System;->QUICK_SETTINGS_WIFI_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 508
    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$1;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->access$000(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;Z)V

    .line 534
    return v3

    .line 509
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Landroid/provider/Settings$System;->QUICK_SETTINGS_BLUETOOTH_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 510
    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 511
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Landroid/provider/Settings$System;->QUICK_SETTINGS_GPS_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 512
    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 513
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Landroid/provider/Settings$System;->QUICK_SETTINGS_MOBILEDATA_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 514
    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 515
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Landroid/provider/Settings$System;->QUICK_SETTINGS_WIFISHARING_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 516
    const-string v1, "android.intent.TETHER_SETTING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 517
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Landroid/provider/Settings$System;->QUICK_SETTINGS_POWERSAVING2_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 518
    const-string v1, "com.asus.powersaver"

    const-string v2, "com.asus.powersaver.PowerSaverSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 519
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Landroid/provider/Settings$System;->QUICK_SETTINGS_SPLENDID_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 520
    const-string v1, "com.asus.splendid"

    const-string v2, "com.asus.splendid.ModeSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 521
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Landroid/provider/Settings$System;->QUICK_SETTINGS_DO_NOT_DISTURB_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    const-string v1, "android.intent.action.ASUS_ENTER_TIMEBLOCK_SETTING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0
.end method
