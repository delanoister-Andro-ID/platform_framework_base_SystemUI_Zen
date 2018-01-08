.class public Lcom/android/systemui/statusbar/policy/QuickSettingsAutoRotateController;
.super Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
.source "QuickSettingsAutoRotateController.java"


# instance fields
.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V
    .locals 3
    .parameter "context"
    .parameter "itemview"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    .line 17
    new-instance v1, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoRotateController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoRotateController$1;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingsAutoRotateController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoRotateController;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 27
    const v1, 0x7f060005

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoRotateController;->mCheckText:I

    .line 28
    const v1, 0x7f060006

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoRotateController;->mToastTextOn:I

    .line 29
    const v1, 0x7f060007

    iput v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoRotateController;->mToastTextOff:I

    .line 31
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoRotateController;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    const/4 v2, -0x1

    invoke-static {p1, v1, v2}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;I)V

    .line 33
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 34
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 36
    return-void
.end method


# virtual methods
.method protected getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoRotateController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 44
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0
.end method

.method protected onReceiveModeChanged(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 1
    .parameter "intent"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoRotateController;->getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->release()V

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoRotateController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoRotateController;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 64
    return-void
.end method

.method protected setMode(Z)Z
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    .line 55
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsAutoRotateController;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    .line 56
    return v1

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
