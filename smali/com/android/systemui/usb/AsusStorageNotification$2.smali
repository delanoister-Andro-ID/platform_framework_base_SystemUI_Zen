.class Lcom/android/systemui/usb/AsusStorageNotification$2;
.super Ljava/lang/Object;
.source "AsusStorageNotification.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/AsusStorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/AsusStorageNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/AsusStorageNotification;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/systemui/usb/AsusStorageNotification$2;->this$0:Lcom/android/systemui/usb/AsusStorageNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 10
    .parameter "name"
    .parameter "service"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification$2;->this$0:Lcom/android/systemui/usb/AsusStorageNotification;

    #setter for: Lcom/android/systemui/usb/AsusStorageNotification;->mStorageService:Landroid/os/IBinder;
    invoke-static {v0, p2}, Lcom/android/systemui/usb/AsusStorageNotification;->access$502(Lcom/android/systemui/usb/AsusStorageNotification;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 553
    iget-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification$2;->this$0:Lcom/android/systemui/usb/AsusStorageNotification;

    invoke-static {p2}, Lcom/android/internal/app/IMediaContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v1

    #setter for: Lcom/android/systemui/usb/AsusStorageNotification;->mImcs:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0, v1}, Lcom/android/systemui/usb/AsusStorageNotification;->access$602(Lcom/android/systemui/usb/AsusStorageNotification;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 554
    iget-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification$2;->this$0:Lcom/android/systemui/usb/AsusStorageNotification;

    #getter for: Lcom/android/systemui/usb/AsusStorageNotification;->mMountedStorage:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/usb/AsusStorageNotification;->access$700(Lcom/android/systemui/usb/AsusStorageNotification;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification$2;->this$0:Lcom/android/systemui/usb/AsusStorageNotification;

    #getter for: Lcom/android/systemui/usb/AsusStorageNotification;->mMountedStorage:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/usb/AsusStorageNotification;->access$700(Lcom/android/systemui/usb/AsusStorageNotification;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification$2;->this$0:Lcom/android/systemui/usb/AsusStorageNotification;

    #getter for: Lcom/android/systemui/usb/AsusStorageNotification;->mMountedStorage:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/usb/AsusStorageNotification;->access$700(Lcom/android/systemui/usb/AsusStorageNotification;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 556
    .local v9, size:I
    add-int/lit8 v8, v9, -0x1

    .local v8, i:I
    :goto_0
    if-ltz v8, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification$2;->this$0:Lcom/android/systemui/usb/AsusStorageNotification;

    #getter for: Lcom/android/systemui/usb/AsusStorageNotification;->mMountedStorage:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/usb/AsusStorageNotification;->access$700(Lcom/android/systemui/usb/AsusStorageNotification;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/usb/AsusStorageNotification$StorageInfo;

    invoke-virtual {v0}, Lcom/android/systemui/usb/AsusStorageNotification$StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 558
    .local v2, storage_path:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification$2;->this$0:Lcom/android/systemui/usb/AsusStorageNotification;

    #getter for: Lcom/android/systemui/usb/AsusStorageNotification;->mMountedStorage:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/usb/AsusStorageNotification;->access$700(Lcom/android/systemui/usb/AsusStorageNotification;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/usb/AsusStorageNotification$StorageInfo;

    invoke-virtual {v0}, Lcom/android/systemui/usb/AsusStorageNotification$StorageInfo;->getMessageId()I

    move-result v3

    .line 559
    .local v3, storage_messageId:I
    iget-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification$2;->this$0:Lcom/android/systemui/usb/AsusStorageNotification;

    #getter for: Lcom/android/systemui/usb/AsusStorageNotification;->mMountedStorage:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/usb/AsusStorageNotification;->access$700(Lcom/android/systemui/usb/AsusStorageNotification;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/usb/AsusStorageNotification$StorageInfo;

    invoke-virtual {v0}, Lcom/android/systemui/usb/AsusStorageNotification$StorageInfo;->getIconId()I

    move-result v4

    .line 560
    .local v4, storage_iconId:I
    iget-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification$2;->this$0:Lcom/android/systemui/usb/AsusStorageNotification;

    #getter for: Lcom/android/systemui/usb/AsusStorageNotification;->mMountedStorage:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/usb/AsusStorageNotification;->access$700(Lcom/android/systemui/usb/AsusStorageNotification;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/usb/AsusStorageNotification$StorageInfo;

    invoke-virtual {v0}, Lcom/android/systemui/usb/AsusStorageNotification$StorageInfo;->getSmallIconId()I

    move-result v5

    .line 561
    .local v5, storage_smallIconId:I
    iget-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification$2;->this$0:Lcom/android/systemui/usb/AsusStorageNotification;

    iget-object v1, p0, Lcom/android/systemui/usb/AsusStorageNotification$2;->this$0:Lcom/android/systemui/usb/AsusStorageNotification;

    #getter for: Lcom/android/systemui/usb/AsusStorageNotification;->mImcs:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v1}, Lcom/android/systemui/usb/AsusStorageNotification;->access$600(Lcom/android/systemui/usb/AsusStorageNotification;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v1

    iget-object v6, p0, Lcom/android/systemui/usb/AsusStorageNotification$2;->this$0:Lcom/android/systemui/usb/AsusStorageNotification;

    #getter for: Lcom/android/systemui/usb/AsusStorageNotification;->mFmPI:Landroid/app/PendingIntent;
    invoke-static {v6}, Lcom/android/systemui/usb/AsusStorageNotification;->access$800(Lcom/android/systemui/usb/AsusStorageNotification;)Landroid/app/PendingIntent;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/usb/AsusStorageNotification$2;->this$0:Lcom/android/systemui/usb/AsusStorageNotification;

    #getter for: Lcom/android/systemui/usb/AsusStorageNotification;->mUmtPI:Landroid/app/PendingIntent;
    invoke-static {v7}, Lcom/android/systemui/usb/AsusStorageNotification;->access$900(Lcom/android/systemui/usb/AsusStorageNotification;)Landroid/app/PendingIntent;

    move-result-object v7

    #calls: Lcom/android/systemui/usb/AsusStorageNotification;->measureApproximateStorage(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;IIILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    invoke-static/range {v0 .. v7}, Lcom/android/systemui/usb/AsusStorageNotification;->access$1000(Lcom/android/systemui/usb/AsusStorageNotification;Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;IIILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 562
    iget-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification$2;->this$0:Lcom/android/systemui/usb/AsusStorageNotification;

    #getter for: Lcom/android/systemui/usb/AsusStorageNotification;->mMountedStorage:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/usb/AsusStorageNotification;->access$700(Lcom/android/systemui/usb/AsusStorageNotification;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 556
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 565
    .end local v2           #storage_path:Ljava/lang/String;
    .end local v3           #storage_messageId:I
    .end local v4           #storage_iconId:I
    .end local v5           #storage_smallIconId:I
    .end local v8           #i:I
    .end local v9           #size:I
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification$2;->this$0:Lcom/android/systemui/usb/AsusStorageNotification;

    const/4 v1, 0x1

    #setter for: Lcom/android/systemui/usb/AsusStorageNotification;->mBound:Z
    invoke-static {v0, v1}, Lcom/android/systemui/usb/AsusStorageNotification;->access$1102(Lcom/android/systemui/usb/AsusStorageNotification;Z)Z

    .line 566
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification$2;->this$0:Lcom/android/systemui/usb/AsusStorageNotification;

    const/4 v1, 0x0

    #setter for: Lcom/android/systemui/usb/AsusStorageNotification;->mStorageService:Landroid/os/IBinder;
    invoke-static {v0, v1}, Lcom/android/systemui/usb/AsusStorageNotification;->access$502(Lcom/android/systemui/usb/AsusStorageNotification;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 570
    iget-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification$2;->this$0:Lcom/android/systemui/usb/AsusStorageNotification;

    const/4 v1, 0x0

    #setter for: Lcom/android/systemui/usb/AsusStorageNotification;->mBound:Z
    invoke-static {v0, v1}, Lcom/android/systemui/usb/AsusStorageNotification;->access$1102(Lcom/android/systemui/usb/AsusStorageNotification;Z)Z

    .line 571
    return-void
.end method
