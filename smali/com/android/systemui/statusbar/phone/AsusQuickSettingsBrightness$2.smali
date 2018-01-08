.class Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$2;
.super Landroid/database/ContentObserver;
.source "AsusQuickSettingsBrightness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #calls: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->getAutoMode()Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$2200(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$902(Z)Z

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mAutoToggle:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$400(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$900()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 189
    invoke-static {}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$900()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mCr:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$2400(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mBrightnessObserver:Landroid/database/ContentObserver;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$2300(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)Landroid/database/ContentObserver;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 195
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$900()Z

    move-result v1

    #calls: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->registerAutoBrightness(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$2500(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;Z)V

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #calls: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->updateBrightnessViews()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$2600(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)V

    .line 198
    invoke-static {}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$900()Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #calls: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->startGetLux()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$2700(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)V

    .line 203
    :goto_1
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mCr:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$2400(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mBrightnessObserver:Landroid/database/ContentObserver;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$2300(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #calls: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->endGetLux()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$2800(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)V

    goto :goto_1
.end method
