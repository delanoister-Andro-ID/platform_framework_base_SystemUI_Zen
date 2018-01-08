.class Lcom/android/systemui/statusbar/phone/AsusQuickSettings$4;
.super Landroid/content/BroadcastReceiver;
.source "AsusQuickSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/AsusQuickSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)V
    .locals 0

    .prologue
    .line 633
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$4;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 636
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, action:Ljava/lang/String;
    const-string v2, "asus.intent.action.quicksettings.reorder"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 640
    const-string v2, "CMD"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 641
    .local v1, cmd:I
    packed-switch v1, :pswitch_data_0

    .line 659
    .end local v1           #cmd:I
    :cond_0
    :goto_0
    return-void

    .line 643
    .restart local v1       #cmd:I
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$4;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    #calls: Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->refreshQBContainerView()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->access$400(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)V

    goto :goto_0

    .line 646
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$4;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    #calls: Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->refreshContainerView()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->access$500(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)V

    goto :goto_0

    .line 649
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$4;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    #calls: Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->refreshQBContainerView()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->access$400(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)V

    .line 650
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$4;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    #calls: Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->refreshContainerView()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->access$500(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)V

    goto :goto_0

    .line 641
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
