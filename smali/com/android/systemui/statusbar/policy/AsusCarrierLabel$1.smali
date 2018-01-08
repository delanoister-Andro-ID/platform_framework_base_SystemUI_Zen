.class Lcom/android/systemui/statusbar/policy/AsusCarrierLabel$1;
.super Landroid/content/BroadcastReceiver;
.source "AsusCarrierLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 99
    const-string v0, "slot"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 100
    .local v5, slot:I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, action:Ljava/lang/String;
    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.pekall.intent.SPN_STRINGS_UPDATED.phone2"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;

    const-string v1, "showSpn"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "spn"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "showPlmn"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "plmn"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;I)V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->mParent:Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->access$000(Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;)Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->invalidate()V

    .line 116
    :goto_0
    return-void

    .line 109
    :cond_1
    const-string v0, "ss"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 110
    .local v7, stateExtra:Ljava/lang/String;
    const-string v0, "ABSENT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->mIsSimAbsent:[Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->access$100(Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;)[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v5

    goto :goto_0

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->mIsSimAbsent:[Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;->access$100(Lcom/android/systemui/statusbar/policy/AsusCarrierLabel;)[Z

    move-result-object v0

    aput-boolean v4, v0, v5

    goto :goto_0
.end method
