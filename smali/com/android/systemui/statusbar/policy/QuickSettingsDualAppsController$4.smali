.class Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$4;
.super Ljava/lang/Object;
.source "QuickSettingsDualAppsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->launchAllAppsOnOverlayDisplayDelayed(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;

.field final synthetic val$displayID:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;I)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$4;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;

    iput p2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$4;->val$displayID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$4;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController$4;->val$displayID:I

    #calls: Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->launchAllAppsOnOverlayDisplay(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;->access$200(Lcom/android/systemui/statusbar/policy/QuickSettingsDualAppsController;I)V

    .line 221
    return-void
.end method
