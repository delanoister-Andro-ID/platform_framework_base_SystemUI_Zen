.class Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$6;
.super Ljava/lang/Object;
.source "AsusQuickSettingsBrightness.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


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
.method constructor <init>(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$6;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 497
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 480
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$6;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mOutdoor:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1500(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)Z

    move-result v1

    .line 481
    .local v1, mTemp:Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$6;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mSlider:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$3000(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 482
    .local v0, brighness:I
    if-nez v1, :cond_2

    .line 483
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$6;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->THRESHOLD_HIGH:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$3100(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    move v1, v2

    .line 487
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$6;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mOutdoor:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1500(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1400()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 490
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$6;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1600()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$6;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->RATIO:F
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1800(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    #calls: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->setBrightnessValue(I)V
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$2000(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;I)V

    .line 491
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$6;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mSlider:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$3000(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1400()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 493
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$6;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #setter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mOutdoor:Z
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$1502(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;Z)Z

    .line 494
    return-void

    :cond_1
    move v1, v3

    .line 483
    goto :goto_0

    .line 485
    :cond_2
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$6;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->THRESHOLD_LOW:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$3200(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-lez v4, :cond_3

    move v1, v2

    :goto_1
    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1
.end method
