.class Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$5;
.super Ljava/lang/Object;
.source "QuickSettingsDualAppsController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
.method constructor <init>(Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$5;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 320
    if-eqz p2, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$5;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->setSerivceBinder(Landroid/os/IBinder;)V

    .line 323
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$5;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->setSerivceBinder(Landroid/os/IBinder;)V

    .line 328
    return-void
.end method
