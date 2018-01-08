.class Lcom/android/systemui/statusbar/policy/QuickSettingsAutoRotateController$1;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "QuickSettingsAutoRotateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/QuickSettingsAutoRotateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsAutoRotateController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/QuickSettingsAutoRotateController;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoRotateController$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsAutoRotateController;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 3

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoRotateController$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsAutoRotateController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoRotateController$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsAutoRotateController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoRotateController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoRotateController;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 22
    return-void
.end method
