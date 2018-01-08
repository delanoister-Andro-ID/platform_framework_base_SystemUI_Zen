.class Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem$1;
.super Ljava/lang/Object;
.source "AsusQuickSettingsControllerItem.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem$1;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem$1;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 123
    return-void
.end method
