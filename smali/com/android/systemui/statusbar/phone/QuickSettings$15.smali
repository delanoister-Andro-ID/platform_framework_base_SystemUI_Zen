.class Lcom/android/systemui/statusbar/phone/QuickSettings$15;
.super Ljava/lang/Object;
.source "QuickSettings.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickSettings;->addSystemTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

.field final synthetic val$rotationLockTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$15;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$15;->val$rotationLockTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V
    .locals 3
    .parameter "view"
    .parameter "state"

    .prologue
    .line 552
    move-object v0, p2

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RotationLockState;

    .line 554
    .local v0, rotationLockState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RotationLockState;
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RotationLockState;->visible:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setVisibility(I)V

    .line 556
    iget v1, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    if-eqz v1, :cond_0

    .line 558
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$15;->val$rotationLockTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 559
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$15;->val$rotationLockTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget v2, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setImageResource(I)V

    .line 561
    :cond_0
    iget-object v1, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 562
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$15;->val$rotationLockTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v2, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setText(Ljava/lang/CharSequence;)V

    .line 564
    :cond_1
    return-void

    .line 554
    :cond_2
    const/16 v1, 0x8

    goto :goto_0
.end method