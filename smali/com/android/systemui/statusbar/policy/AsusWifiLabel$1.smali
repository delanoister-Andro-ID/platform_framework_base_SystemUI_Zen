.class Lcom/android/systemui/statusbar/policy/AsusWifiLabel$1;
.super Landroid/content/BroadcastReceiver;
.source "AsusWifiLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/AsusWifiLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/AsusWifiLabel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/AsusWifiLabel;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AsusWifiLabel$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusWifiLabel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusWifiLabel$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusWifiLabel;

    #calls: Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->updateWifiState(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->access$000(Lcom/android/systemui/statusbar/policy/AsusWifiLabel;Landroid/content/Intent;)V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusWifiLabel$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusWifiLabel;

    #getter for: Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->mParent:Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/AsusWifiLabel;->access$100(Lcom/android/systemui/statusbar/policy/AsusWifiLabel;)Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->invalidate()V

    .line 93
    return-void
.end method
