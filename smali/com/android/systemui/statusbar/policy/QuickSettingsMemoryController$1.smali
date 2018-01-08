.class Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$1;
.super Ljava/lang/Object;
.source "QuickSettingsMemoryController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;

    invoke-static {p2}, Lcom/asus/quickclean/IBoost$Stub;->asInterface(Landroid/os/IBinder;)Lcom/asus/quickclean/IBoost;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->boostServer:Lcom/asus/quickclean/IBoost;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;

    const/4 v1, 0x1

    #setter for: Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mBound:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->access$002(Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;Z)Z

    .line 64
    const-string v0, "Quicksettings.Boost"

    const-string v1, "bindService success!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->boostServer:Lcom/asus/quickclean/IBoost;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;

    const/4 v1, 0x0

    #setter for: Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mBound:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->access$002(Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;Z)Z

    .line 58
    return-void
.end method
