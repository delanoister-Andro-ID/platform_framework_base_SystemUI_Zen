.class Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$5;
.super Landroid/os/IBrightnessListener$Stub;
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

.field uuid:Landroid/os/ParcelUuid;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)V
    .locals 2

    .prologue
    .line 452
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$5;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    invoke-direct {p0}, Landroid/os/IBrightnessListener$Stub;-><init>()V

    .line 453
    new-instance v0, Landroid/os/ParcelUuid;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$5;->uuid:Landroid/os/ParcelUuid;

    return-void
.end method


# virtual methods
.method public getUUID()Landroid/os/ParcelUuid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$5;->uuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public onBrightnessChanged(II)V
    .locals 1
    .parameter "brightness"
    .parameter "policy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 456
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$2902(I)I

    .line 457
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$5;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #calls: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->updateBrightnessViews()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$2600(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)V

    .line 458
    return-void
.end method
