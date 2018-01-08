.class Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener;
.super Landroid/os/storage/StorageEventListener;
.source "AsusStorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/AsusStorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageNotificationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/AsusStorageNotification;


# direct methods
.method private constructor <init>(Lcom/android/systemui/usb/AsusStorageNotification;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener;->this$0:Lcom/android/systemui/usb/AsusStorageNotification;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/usb/AsusStorageNotification;Lcom/android/systemui/usb/AsusStorageNotification$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener;-><init>(Lcom/android/systemui/usb/AsusStorageNotification;)V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener;->this$0:Lcom/android/systemui/usb/AsusStorageNotification;

    #getter for: Lcom/android/systemui/usb/AsusStorageNotification;->mAsyncEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/usb/AsusStorageNotification;->access$300(Lcom/android/systemui/usb/AsusStorageNotification;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener$1;-><init>(Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    return-void
.end method

.method public onUsbMassStorageConnectionChanged(Z)V
    .locals 2
    .parameter "connected"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener;->this$0:Lcom/android/systemui/usb/AsusStorageNotification;

    #getter for: Lcom/android/systemui/usb/AsusStorageNotification;->mAsyncEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/usb/AsusStorageNotification;->access$300(Lcom/android/systemui/usb/AsusStorageNotification;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener$2;-><init>(Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    return-void
.end method
