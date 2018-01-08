.class Lcom/android/systemui/statusbar/phone/QuickSettings$33;
.super Landroid/content/BroadcastReceiver;
.source "QuickSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0

    .prologue
    .line 916
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$33;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 919
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 920
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 921
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    const/high16 v6, -0x8000

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 923
    .local v1, state:I
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$33;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1500(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    move-result-object v5

    const/16 v6, 0xc

    if-ne v1, v6, :cond_1

    :goto_0
    iput-boolean v3, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->enabled:Z

    .line 924
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$33;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #calls: Lcom/android/systemui/statusbar/phone/QuickSettings;->applyBluetoothStatus()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1600(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    .line 939
    .end local v1           #state:I
    :cond_0
    :goto_1
    return-void

    .restart local v1       #state:I
    :cond_1
    move v3, v4

    .line 923
    goto :goto_0

    .line 925
    .end local v1           #state:I
    :cond_2
    const-string v5, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 926
    const-string v5, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 928
    .local v2, status:I
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$33;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1500(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    move-result-object v5

    const/4 v6, 0x2

    if-ne v2, v6, :cond_3

    :goto_2
    iput-boolean v3, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->connected:Z

    .line 929
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$33;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #calls: Lcom/android/systemui/statusbar/phone/QuickSettings;->applyBluetoothStatus()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1600(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    goto :goto_1

    :cond_3
    move v3, v4

    .line 928
    goto :goto_2

    .line 930
    .end local v2           #status:I
    :cond_4
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 931
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$33;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->reloadUserInfo()V

    goto :goto_1

    .line 932
    :cond_5
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 933
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$33;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/QuickSettings;->mUseDefaultAvatar:Z

    if-eqz v3, :cond_0

    .line 934
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$33;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #calls: Lcom/android/systemui/statusbar/phone/QuickSettings;->queryForUserInformation()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1700(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    goto :goto_1

    .line 936
    :cond_6
    const-string v3, "android.security.STORAGE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 937
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$33;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #calls: Lcom/android/systemui/statusbar/phone/QuickSettings;->queryForSslCaCerts()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1800(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    goto :goto_1
.end method
