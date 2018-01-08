.class Lcom/android/systemui/usb/AsusStorageNotification$StorageInfo;
.super Ljava/lang/Object;
.source "AsusStorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/AsusStorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageInfo"
.end annotation


# instance fields
.field externalPath:Ljava/lang/String;

.field iconId:I

.field messageId:I

.field smallIconId:I

.field final synthetic this$0:Lcom/android/systemui/usb/AsusStorageNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/AsusStorageNotification;Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter "path"
    .parameter "message"
    .parameter "icon"
    .parameter "smallIcon"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/systemui/usb/AsusStorageNotification$StorageInfo;->this$0:Lcom/android/systemui/usb/AsusStorageNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/android/systemui/usb/AsusStorageNotification$StorageInfo;->externalPath:Ljava/lang/String;

    .line 77
    iput p3, p0, Lcom/android/systemui/usb/AsusStorageNotification$StorageInfo;->messageId:I

    .line 78
    iput p4, p0, Lcom/android/systemui/usb/AsusStorageNotification$StorageInfo;->iconId:I

    .line 79
    iput p5, p0, Lcom/android/systemui/usb/AsusStorageNotification$StorageInfo;->smallIconId:I

    .line 80
    return-void
.end method


# virtual methods
.method getIconId()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/android/systemui/usb/AsusStorageNotification$StorageInfo;->iconId:I

    return v0
.end method

.method getMessageId()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/android/systemui/usb/AsusStorageNotification$StorageInfo;->messageId:I

    return v0
.end method

.method getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification$StorageInfo;->externalPath:Ljava/lang/String;

    return-object v0
.end method

.method getSmallIconId()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/android/systemui/usb/AsusStorageNotification$StorageInfo;->smallIconId:I

    return v0
.end method
