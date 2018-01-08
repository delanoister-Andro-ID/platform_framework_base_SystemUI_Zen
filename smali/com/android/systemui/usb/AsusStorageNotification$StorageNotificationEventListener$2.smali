.class Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener$2;
.super Ljava/lang/Object;
.source "AsusStorageNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener;->onUsbMassStorageConnectionChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener;

.field final synthetic val$connected:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener;Z)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener$2;->this$1:Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener;

    iput-boolean p2, p0, Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener$2;->val$connected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener$2;->this$1:Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener;

    iget-object v0, v0, Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener;->this$0:Lcom/android/systemui/usb/AsusStorageNotification;

    iget-boolean v1, p0, Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener$2;->val$connected:Z

    #calls: Lcom/android/systemui/usb/AsusStorageNotification;->onUsbMassStorageConnectionChangedAsync(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/usb/AsusStorageNotification;->access$400(Lcom/android/systemui/usb/AsusStorageNotification;Z)V

    .line 178
    return-void
.end method
