.class Lcom/android/systemui/statusbar/policy/QuickSettingsGloveModeController$1;
.super Landroid/database/ContentObserver;
.source "QuickSettingsGloveModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/QuickSettingsGloveModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsGloveModeController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/QuickSettingsGloveModeController;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsGloveModeController$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsGloveModeController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsGloveModeController$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsGloveModeController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsGloveModeController$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsGloveModeController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/QuickSettingsGloveModeController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsGloveModeController;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 36
    return-void
.end method
