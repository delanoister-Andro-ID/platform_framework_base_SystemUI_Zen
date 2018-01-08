.class Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;
.super Ljava/lang/Object;
.source "AsusQuickSettingsBrightness.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;-><init>(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 84
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mHighBrightnessToggle:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$100(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)Landroid/widget/CheckBox;

    move-result-object v4

    if-ne p1, v4, :cond_2

    .line 85
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 86
    .local v1, checked:Z
    if-eqz v1, :cond_1

    const v2, 0x7f060021

    .line 89
    .local v2, text:I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #calls: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->showToast(I)V
    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$200(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;I)V

    .line 90
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #calls: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->setHighBrightnessMode(Z)V
    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$300(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;Z)V

    .line 112
    .end local v1           #checked:Z
    .end local v2           #text:I
    :cond_0
    :goto_1
    return-void

    .line 86
    .restart local v1       #checked:Z
    :cond_1
    const v2, 0x7f060022

    goto :goto_0

    .line 91
    .end local v1           #checked:Z
    .restart local p1
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mAutoToggle:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$400(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)Landroid/widget/CheckBox;

    move-result-object v4

    if-ne p1, v4, :cond_4

    .line 92
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 93
    .local v0, auto:Z
    if-eqz v0, :cond_3

    const v2, 0x7f06001f

    .line 96
    .restart local v2       #text:I
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #calls: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->showToast(I)V
    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$200(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;I)V

    .line 97
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #calls: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->setAutoMode(Z)V
    invoke-static {v4, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$500(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;Z)V

    .line 98
    if-nez v0, :cond_0

    .line 99
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #calls: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->getBrightnessValue()I
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$600(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)I

    move-result v3

    .line 100
    .local v3, value:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #calls: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->changeBrightness(I)V
    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$700(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;I)V

    goto :goto_1

    .line 93
    .end local v2           #text:I
    .end local v3           #value:I
    :cond_3
    const v2, 0x7f060020

    goto :goto_2

    .line 102
    .end local v0           #auto:Z
    .restart local p1
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mBrightness:Landroid/view/View;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$800(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)Landroid/view/View;

    move-result-object v4

    if-ne p1, v4, :cond_0

    .line 104
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x1400

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v5

    new-instance v6, Landroid/os/UserHandle;

    const/4 v7, -0x2

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 110
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "statusbar"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    invoke-virtual {v4}, Landroid/app/StatusBarManager;->collapsePanels()V

    goto :goto_1

    .line 105
    :catch_0
    move-exception v4

    goto :goto_3
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 115
    if-nez p3, :cond_0

    .line 135
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$900()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mIsTracking:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1000(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    if-ltz p2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->GAIN_ARRAY:[F
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1100(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)[F

    move-result-object v2

    array-length v2, v2

    if-ge p2, v2, :cond_1

    .line 121
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->GAIN_ARRAY:[F
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1100(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)[F

    move-result-object v3

    aget v3, v3, p2

    #setter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mGain:F
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1202(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;F)F

    .line 122
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mPower:Landroid/os/IPowerManager;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1300(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)Landroid/os/IPowerManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mGain:F
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1200(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)F

    move-result v3

    invoke-interface {v2, v3}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    goto :goto_0

    .line 127
    :catch_0
    move-exception v2

    goto :goto_0

    .line 124
    :cond_1
    const-string v2, "QuickSettingsBrightness"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onProgressChanged progress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " index out of range."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :cond_2
    invoke-static {}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1400()I

    move-result v2

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mOutdoor:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1500(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 129
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1600()I

    move-result v3

    #calls: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->changeBrightness(I)V
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$700(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;I)V

    goto :goto_0

    .line 131
    :cond_3
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff0

    mul-double/2addr v2, v4

    invoke-static {}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1400()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    const-wide v4, 0x400199999999999aL

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1400()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1700()I

    move-result v4

    int-to-double v4, v4

    add-double v0, v2, v4

    .line 132
    .local v0, value:D
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->RATIO:F
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1800(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    .line 133
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    double-to-int v3, v0

    #calls: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->changeBrightness(I)V
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$700(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;I)V

    goto/16 :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    const/4 v1, 0x1

    #setter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mIsTracking:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1002(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;Z)Z

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$900()Z

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mTempAutoMode:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1902(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;Z)Z

    .line 140
    invoke-static {}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 7
    .parameter "seekBar"

    .prologue
    .line 153
    invoke-static {}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$900()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mIsTracking:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1000(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 156
    .local v0, progress:I
    if-ltz v0, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->GAIN_ARRAY:[F
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1100(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)[F

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 157
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->GAIN_ARRAY:[F
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1100(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)[F

    move-result-object v4

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    aget v4, v4, v5

    #setter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mGain:F
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1202(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;F)F

    .line 158
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mPower:Landroid/os/IPowerManager;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1300(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)Landroid/os/IPowerManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mGain:F
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1200(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)F

    move-result v4

    invoke-interface {v3, v4}, Landroid/os/IPowerManager;->setAutoBrightnessGain(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v0           #progress:I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    const/4 v4, 0x0

    #setter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mIsTracking:Z
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1002(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;Z)Z

    .line 176
    return-void

    .line 160
    .restart local v0       #progress:I
    :cond_0
    :try_start_1
    const-string v3, "QuickSettingsBrightness"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onProgressChanged progress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " index out of range."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v3

    goto :goto_0

    .line 166
    .end local v0           #progress:I
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-static {}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1400()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mOutdoor:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1500(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    invoke-static {}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1600()I

    move-result v3

    int-to-double v1, v3

    .line 172
    .local v1, value:D
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    double-to-int v4, v1

    #calls: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->changeBrightness(I)V
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$700(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;I)V

    .line 173
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    double-to-int v4, v1

    #calls: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->setBrightnessValue(I)V
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$2000(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;I)V

    goto :goto_0

    .line 169
    .end local v1           #value:D
    :cond_2
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x3ff0

    mul-double/2addr v3, v5

    invoke-static {}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1400()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v3, v5

    const-wide v5, 0x400199999999999aL

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    invoke-static {}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1400()I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v3, v5

    invoke-static {}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1700()I

    move-result v5

    int-to-double v5, v5

    add-double v1, v3, v5

    .line 170
    .restart local v1       #value:D
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$OnChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->RATIO:F
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1800(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)F

    move-result v3

    float-to-double v3, v3

    mul-double/2addr v1, v3

    goto :goto_1
.end method
