.class Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$4;
.super Ljava/lang/Object;
.source "AsusQuickSettingsBrightness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->setBrightnessValue(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;I)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$4;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$4;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$4;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->mCr:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;->access$2400(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsBrightness$4;->val$value:I

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 441
    return-void
.end method
