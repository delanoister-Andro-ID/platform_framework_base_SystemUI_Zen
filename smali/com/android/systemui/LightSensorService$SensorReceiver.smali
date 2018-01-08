.class public Lcom/android/systemui/LightSensorService$SensorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LightSensorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/LightSensorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SensorReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/LightSensorService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/LightSensorService;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/systemui/LightSensorService$SensorReceiver;->this$0:Lcom/android/systemui/LightSensorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/high16 v3, -0x4080

    .line 222
    iget-object v1, p0, Lcom/android/systemui/LightSensorService$SensorReceiver;->this$0:Lcom/android/systemui/LightSensorService;

    #getter for: Lcom/android/systemui/LightSensorService;->mView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/LightSensorService;->access$700(Lcom/android/systemui/LightSensorService;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/LightSensorService$SensorReceiver;->this$0:Lcom/android/systemui/LightSensorService;

    #getter for: Lcom/android/systemui/LightSensorService;->mView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/LightSensorService;->access$700(Lcom/android/systemui/LightSensorService;)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/LightSensorService$LoadView;

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/android/systemui/LightSensorService$SensorReceiver;->this$0:Lcom/android/systemui/LightSensorService;

    const-string v2, "mAmbientLux"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v2

    #setter for: Lcom/android/systemui/LightSensorService;->mAmbientLux:F
    invoke-static {v1, v2}, Lcom/android/systemui/LightSensorService;->access$402(Lcom/android/systemui/LightSensorService;F)F

    .line 224
    iget-object v1, p0, Lcom/android/systemui/LightSensorService$SensorReceiver;->this$0:Lcom/android/systemui/LightSensorService;

    const-string v2, "mLastObservedLux"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v2

    #setter for: Lcom/android/systemui/LightSensorService;->mLastObservedLux:F
    invoke-static {v1, v2}, Lcom/android/systemui/LightSensorService;->access$802(Lcom/android/systemui/LightSensorService;F)F

    .line 225
    iget-object v1, p0, Lcom/android/systemui/LightSensorService$SensorReceiver;->this$0:Lcom/android/systemui/LightSensorService;

    const-string v2, "newScreenAutoBrightness"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/systemui/LightSensorService;->newScreenAutoBrightness:I
    invoke-static {v1, v2}, Lcom/android/systemui/LightSensorService;->access$602(Lcom/android/systemui/LightSensorService;I)I

    .line 226
    iget-object v1, p0, Lcom/android/systemui/LightSensorService$SensorReceiver;->this$0:Lcom/android/systemui/LightSensorService;

    const-string v2, "adjustment"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v2

    #setter for: Lcom/android/systemui/LightSensorService;->mAdjustment:F
    invoke-static {v1, v2}, Lcom/android/systemui/LightSensorService;->access$502(Lcom/android/systemui/LightSensorService;F)F

    .line 228
    iget-object v1, p0, Lcom/android/systemui/LightSensorService$SensorReceiver;->this$0:Lcom/android/systemui/LightSensorService;

    #getter for: Lcom/android/systemui/LightSensorService;->mView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/LightSensorService;->access$700(Lcom/android/systemui/LightSensorService;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/LightSensorService$LoadView;

    .line 229
    .local v0, v:Lcom/android/systemui/LightSensorService$LoadView;
    invoke-virtual {v0}, Lcom/android/systemui/LightSensorService$LoadView;->updateDisplay()V

    .line 231
    .end local v0           #v:Lcom/android/systemui/LightSensorService$LoadView;
    :cond_0
    return-void
.end method
