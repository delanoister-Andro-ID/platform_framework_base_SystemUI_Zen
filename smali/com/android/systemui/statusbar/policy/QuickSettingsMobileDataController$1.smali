.class Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController$1;
.super Ljava/lang/Object;
.source "QuickSettingsMobileDataController.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4
    .parameter "o"
    .parameter "arg"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "null"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsMobileDataController;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 51
    return-void
.end method
