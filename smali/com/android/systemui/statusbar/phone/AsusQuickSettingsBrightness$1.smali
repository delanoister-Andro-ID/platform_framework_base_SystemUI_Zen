.class Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$1;
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
    .line 179
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$1;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$1;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #calls: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->updateHighBrightnessViews()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$2100(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)V

    .line 182
    return-void
.end method
