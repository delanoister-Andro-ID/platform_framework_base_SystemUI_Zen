.class Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$2;
.super Landroid/database/ContentObserver;
.source "QuickSettingsDualAppsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$2;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$2;->onChange(ZLandroid/net/Uri;)V

    .line 94
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 98
    invoke-static {}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->access$000()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$2;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$2;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 102
    :cond_0
    return-void
.end method
