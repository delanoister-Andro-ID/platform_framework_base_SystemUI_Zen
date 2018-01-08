.class Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$H;
.super Lcom/android/systemui/statusbar/BaseStatusBar$H;
.source "AsusPhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V
    .locals 0

    .prologue
    .line 1746
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1746
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$H;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "m"

    .prologue
    const/4 v1, 0x0

    .line 1748
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->handleMessage(Landroid/os/Message;)V

    .line 1749
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1770
    :goto_0
    return-void

    .line 1751
    :sswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->animateExpandNotificationsPanel()V

    goto :goto_0

    .line 1754
    :sswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->animateExpandSettingsPanel()V

    goto :goto_0

    .line 1757
    :sswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->animateCollapsePanels()V

    goto :goto_0

    .line 1760
    :sswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    const/4 v1, 0x1

    #calls: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setHeadsUpVisibility(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$2800(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;Z)V

    goto :goto_0

    .line 1763
    :sswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setHeadsUpVisibility(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$2800(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;Z)V

    goto :goto_0

    .line 1766
    :sswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->escalateHeadsUp()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$2900(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    .line 1767
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$H;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setHeadsUpVisibility(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$2800(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;Z)V

    goto :goto_0

    .line 1749
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_1
        0x402 -> :sswitch_3
        0x403 -> :sswitch_4
        0x404 -> :sswitch_5
    .end sparse-switch
.end method
