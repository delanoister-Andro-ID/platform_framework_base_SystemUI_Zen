.class Lcom/android/systemui/screenshot/TakeScreenshotService$1;
.super Landroid/os/Handler;
.source "TakeScreenshotService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/TakeScreenshotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/TakeScreenshotService;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 42
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 44
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 45
    .local v0, callback:Landroid/os/Messenger;
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$000()Lcom/android/systemui/screenshot/AsusGlobalScreenshot;

    move-result-object v3

    if-nez v3, :cond_1

    .line 46
    const/4 v2, 0x0

    .line 47
    .local v2, sendBroadcast:Z
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 48
    .local v1, data:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 49
    const-string v3, "send-broadcast"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 51
    :cond_0
    new-instance v3, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;

    iget-object v6, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {v3, v6, v2}, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;-><init>(Landroid/content/Context;Z)V

    invoke-static {v3}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$002(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;)Lcom/android/systemui/screenshot/AsusGlobalScreenshot;

    .line 79
    .end local v1           #data:Landroid/os/Bundle;
    .end local v2           #sendBroadcast:Z
    :cond_1
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$000()Lcom/android/systemui/screenshot/AsusGlobalScreenshot;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/screenshot/TakeScreenshotService$1$2;

    invoke-direct {v7, p0, v0}, Lcom/android/systemui/screenshot/TakeScreenshotService$1$2;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotService$1;Landroid/os/Messenger;)V

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-lez v3, :cond_2

    move v3, v4

    :goto_1
    iget v8, p1, Landroid/os/Message;->arg2:I

    if-lez v8, :cond_3

    :goto_2
    invoke-virtual {v6, v7, v3, v4}, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;ZZ)V

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_2

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
