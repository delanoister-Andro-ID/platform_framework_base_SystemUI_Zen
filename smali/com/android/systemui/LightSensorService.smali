.class public Lcom/android/systemui/LightSensorService;
.super Landroid/app/Service;
.source "LightSensorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/LightSensorService$SensorReceiver;,
        Lcom/android/systemui/LightSensorService$LoadView;
    }
.end annotation


# instance fields
.field private mAdjustment:F

.field private mAmbientLux:F

.field private mBrightnessString:Ljava/lang/String;

.field private mFormat:Ljava/text/DecimalFormat;

.field private mGainString:Ljava/lang/String;

.field private mLastObservedLux:F

.field private mLuxString:Ljava/lang/String;

.field private mSensorReceiver:Landroid/content/BroadcastReceiver;

.field private mView:Landroid/view/View;

.field private newScreenAutoBrightness:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, -0x4080

    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 47
    iput v0, p0, Lcom/android/systemui/LightSensorService;->mAmbientLux:F

    .line 48
    iput v0, p0, Lcom/android/systemui/LightSensorService;->mLastObservedLux:F

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/LightSensorService;->newScreenAutoBrightness:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/LightSensorService;->mAdjustment:F

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/LightSensorService;->mLuxString:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/LightSensorService;->mGainString:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/LightSensorService;->mBrightnessString:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/android/systemui/LightSensorService;->mFormat:Ljava/text/DecimalFormat;

    .line 55
    iput-object v1, p0, Lcom/android/systemui/LightSensorService;->mSensorReceiver:Landroid/content/BroadcastReceiver;

    .line 219
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/LightSensorService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/LightSensorService;->mLuxString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/LightSensorService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/systemui/LightSensorService;->mLuxString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/LightSensorService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/LightSensorService;->mGainString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/LightSensorService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/systemui/LightSensorService;->mGainString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/LightSensorService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/LightSensorService;->mBrightnessString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/LightSensorService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/systemui/LightSensorService;->mBrightnessString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/LightSensorService;)Ljava/text/DecimalFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/LightSensorService;->mFormat:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/LightSensorService;Ljava/text/DecimalFormat;)Ljava/text/DecimalFormat;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/systemui/LightSensorService;->mFormat:Ljava/text/DecimalFormat;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/LightSensorService;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/systemui/LightSensorService;->mAmbientLux:F

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/LightSensorService;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/android/systemui/LightSensorService;->mAmbientLux:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/LightSensorService;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/systemui/LightSensorService;->mAdjustment:F

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/LightSensorService;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/android/systemui/LightSensorService;->mAdjustment:F

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/LightSensorService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/systemui/LightSensorService;->newScreenAutoBrightness:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/LightSensorService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/android/systemui/LightSensorService;->newScreenAutoBrightness:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/LightSensorService;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/LightSensorService;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/systemui/LightSensorService;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/android/systemui/LightSensorService;->mLastObservedLux:F

    return p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 216
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 185
    new-instance v1, Lcom/android/systemui/LightSensorService$LoadView;

    invoke-direct {v1, p0, p0}, Lcom/android/systemui/LightSensorService$LoadView;-><init>(Lcom/android/systemui/LightSensorService;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/LightSensorService;->mView:Landroid/view/View;

    .line 186
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x7df

    const/16 v4, 0x18

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 193
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x35

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 194
    const-string v1, "Load Sensor"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 195
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/systemui/LightSensorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 196
    .local v7, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/systemui/LightSensorService;->mView:Landroid/view/View;

    invoke-interface {v7, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    new-instance v1, Lcom/android/systemui/LightSensorService$SensorReceiver;

    invoke-direct {v1, p0}, Lcom/android/systemui/LightSensorService$SensorReceiver;-><init>(Lcom/android/systemui/LightSensorService;)V

    iput-object v1, p0, Lcom/android/systemui/LightSensorService;->mSensorReceiver:Landroid/content/BroadcastReceiver;

    .line 199
    new-instance v6, Landroid/content/IntentFilter;

    const-string v1, "com.asus.power.ACTION_LIGHT_SENSOR"

    invoke-direct {v6, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 200
    .local v6, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/systemui/LightSensorService;->mSensorReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v6}, Lcom/android/systemui/LightSensorService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 201
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 206
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/systemui/LightSensorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/LightSensorService;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/LightSensorService;->mView:Landroid/view/View;

    .line 209
    iget-object v0, p0, Lcom/android/systemui/LightSensorService;->mSensorReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/systemui/LightSensorService;->mSensorReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/LightSensorService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 212
    :cond_0
    return-void
.end method
