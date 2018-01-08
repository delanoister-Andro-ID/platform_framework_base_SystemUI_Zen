.class Lcom/mda/Ltoggle/SyncSettingButton$SyncReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SyncSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mda/Ltoggle/SyncSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mda/Ltoggle/SyncSettingButton;


# direct methods
.method public constructor <init>(Lcom/mda/Ltoggle/SyncSettingButton;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/mda/Ltoggle/SyncSettingButton$SyncReceiver;->this$0:Lcom/mda/Ltoggle/SyncSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v0, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mda/Ltoggle/SyncSettingButton$SyncReceiver;->this$0:Lcom/mda/Ltoggle/SyncSettingButton;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mda/Ltoggle/SyncSettingButton;->onStatusChanged(I)V

    :cond_0
    return-void
.end method
