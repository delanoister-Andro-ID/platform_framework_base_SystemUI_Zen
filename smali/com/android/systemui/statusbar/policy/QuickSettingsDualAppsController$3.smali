.class Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$3;
.super Ljava/lang/Object;
.source "QuickSettingsDualAppsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->startOrHideAsusOverlayDelayed(ZIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;

.field final synthetic val$display:I

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;ZI)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$3;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$3;->val$enabled:Z

    iput p3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$3;->val$display:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$3;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$3;->val$enabled:Z

    iget v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$3;->val$display:I

    #calls: Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->startOrHideAsusOverlay(ZI)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->access$100(Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;ZI)V

    .line 211
    return-void
.end method
