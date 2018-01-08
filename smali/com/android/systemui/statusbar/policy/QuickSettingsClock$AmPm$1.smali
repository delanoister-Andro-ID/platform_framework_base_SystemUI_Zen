.class Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm$1;
.super Landroid/content/BroadcastReceiver;
.source "QuickSettingsClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm$1;->this$1:Lcom/android/systemui/statusbar/policy/QuickSettingsClock$AmPm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 99
    return-void
.end method
