.class public Lcom/android/systemui/usb/AsusStorageNotification;
.super Lcom/android/systemui/SystemUI;
.source "AsusStorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener;,
        Lcom/android/systemui/usb/AsusStorageNotification$StorageInfo;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;


# instance fields
.field isPadMode:Z

.field private mAsyncEventHandler:Landroid/os/Handler;

.field private mBound:Z

.field private final mDefContainerConn:Landroid/content/ServiceConnection;

.field private mFmPI:Landroid/app/PendingIntent;

.field private mImcs:Lcom/android/internal/app/IMediaContainerService;

.field private mListener:Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener;

.field private mMediaStorageNotification:Landroid/app/Notification;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mMountedStorage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/usb/AsusStorageNotification$StorageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageService:Landroid/os/IBinder;

.field private mTotalSize:J

.field private mUmsAvailable:Z

.field private mUmtPI:Landroid/app/PendingIntent;

.field private mUsbStorageNotification:Landroid/app/Notification;

.field private umtReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/usb/AsusStorageNotification;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mMountService:Landroid/os/storage/IMountService;

    .line 62
    iput-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mStorageService:Landroid/os/IBinder;

    .line 67
    const-string v0, "persist.sys.systembar.tablet"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/usb/AsusStorageNotification;->isPadMode:Z

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mMountedStorage:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Lcom/android/systemui/usb/AsusStorageNotification$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/AsusStorageNotification$1;-><init>(Lcom/android/systemui/usb/AsusStorageNotification;)V

    iput-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification;->umtReceiver:Landroid/content/BroadcastReceiver;

    .line 549
    new-instance v0, Lcom/android/systemui/usb/AsusStorageNotification$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/AsusStorageNotification$2;-><init>(Lcom/android/systemui/usb/AsusStorageNotification;)V

    iput-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mDefContainerConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method private IsInternalOrInvalidPath(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 710
    iget-object v2, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 711
    .local v1, storageVolumeList:[Landroid/os/storage/StorageVolume;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 712
    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 713
    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 714
    const/4 v2, 0x0

    .line 719
    :goto_1
    return v2

    .line 711
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 719
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/usb/AsusStorageNotification;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/usb/AsusStorageNotification;->doUnmount(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/usb/AsusStorageNotification;Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;IIILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/usb/AsusStorageNotification;->measureApproximateStorage(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;IIILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/systemui/usb/AsusStorageNotification;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mBound:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/usb/AsusStorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/usb/AsusStorageNotification;->onStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/usb/AsusStorageNotification;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/usb/AsusStorageNotification;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/AsusStorageNotification;->onUsbMassStorageConnectionChangedAsync(Z)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/systemui/usb/AsusStorageNotification;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mStorageService:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/usb/AsusStorageNotification;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mImcs:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/usb/AsusStorageNotification;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mImcs:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/usb/AsusStorageNotification;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mMountedStorage:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/usb/AsusStorageNotification;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mFmPI:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/usb/AsusStorageNotification;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mUmtPI:Landroid/app/PendingIntent;

    return-object v0
.end method

.method private checkInitExternalStorageState()V
    .locals 7

    .prologue
    .line 509
    iget-object v3, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 510
    .local v2, storageVolumeList:[Landroid/os/storage/StorageVolume;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 511
    iget-object v3, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, state:Ljava/lang/String;
    const-string v3, "checking"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 513
    iget-object v3, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mListener:Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener;

    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "unmounted"

    const-string v6, "checking"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 515
    :cond_1
    const-string v3, "mounted"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 516
    iget-object v3, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mListener:Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener;

    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "unmounted"

    const-string v6, "checking"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v3, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mListener:Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener;

    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "checking"

    const-string v6, "mounted"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 522
    .end local v1           #state:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private doUnmount(Ljava/lang/String;Z)V
    .locals 4
    .parameter "path"
    .parameter "force"

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/android/systemui/usb/AsusStorageNotification;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 530
    .local v1, mountService:Landroid/os/storage/IMountService;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, p1, p2, v2}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :goto_0
    return-void

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AsusStorageNotification"

    const-string v3, "unmount failed. : Is MountService running ?"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 537
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 538
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 539
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 540
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mMountService:Landroid/os/storage/IMountService;

    .line 545
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 542
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "AsusStorageNotification"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 537
    .end local v0           #service:Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private measureApproximateStorage(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;IIILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 26
    .parameter "imcs"
    .parameter "path"
    .parameter "messageId"
    .parameter "iconId"
    .parameter "smallIconId"
    .parameter "fmPI"
    .parameter "umtPI"

    .prologue
    .line 576
    const-wide/16 v22, 0x0

    .line 578
    .local v22, totalSize:J
    :try_start_0
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 579
    .local v24, volume:Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 580
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v17

    .line 582
    .local v17, removabledir_path:Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v21

    .line 583
    .local v21, tempStr:Ljava/lang/String;
    if-eqz v21, :cond_0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "/"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 589
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v20

    .line 590
    .local v20, stats:[J
    const/4 v3, 0x0

    aget-wide v18, v20, v3

    .line 591
    .local v18, removabledir_totalSize:J
    invoke-interface/range {p1 .. p2}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v20

    .line 592
    const/4 v3, 0x0

    aget-wide v22, v20, v3

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/usb/AsusStorageNotification;->mTotalSize:J

    .line 594
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/systemui/usb/AsusStorageNotification;->mTotalSize:J

    cmp-long v3, v5, v18

    if-nez v3, :cond_2

    .line 595
    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/systemui/usb/AsusStorageNotification;->mTotalSize:J

    .line 597
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v25

    .line 598
    .local v25, volumes:[Ljava/lang/String;
    if-eqz v25, :cond_2

    .line 599
    move-object/from16 v12, v25

    .local v12, arr$:[Ljava/lang/String;
    array-length v15, v12

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_1
    if-ge v14, v15, :cond_2

    aget-object v16, v12, v14

    .line 600
    .local v16, p:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v20

    .line 601
    const/4 v3, 0x0

    aget-wide v22, v20, v3

    .line 602
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/systemui/usb/AsusStorageNotification;->mTotalSize:J

    add-long v5, v5, v22

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/systemui/usb/AsusStorageNotification;->mTotalSize:J

    .line 599
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 586
    .end local v12           #arr$:[Ljava/lang/String;
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v16           #p:Ljava/lang/String;
    .end local v18           #removabledir_totalSize:J
    .end local v20           #stats:[J
    .end local v25           #volumes:[Ljava/lang/String;
    :cond_1
    move-object/from16 v17, v21

    .line 588
    goto/16 :goto_0

    .line 608
    .end local v17           #removabledir_path:Ljava/lang/String;
    .end local v21           #tempStr:Ljava/lang/String;
    :cond_2
    const v4, 0x7f06006f

    .line 611
    .local v4, titleId:I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/systemui/usb/AsusStorageNotification;->IsInternalOrInvalidPath(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 612
    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lcom/android/systemui/usb/AsusStorageNotification;->setMediaStorageMounted(IIIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 622
    .end local v4           #titleId:I
    .end local v24           #volume:Ljava/io/File;
    :cond_3
    :goto_2
    return-void

    .line 615
    :catch_0
    move-exception v13

    .line 616
    .local v13, e:Landroid/os/RemoteException;
    const-string v3, "AsusStorageNotification"

    const-string v5, "Problem in container service"

    invoke-static {v3, v5, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 618
    .end local v13           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v13

    .line 619
    .local v13, e:Ljava/lang/IllegalStateException;
    const-string v3, "AsusStorageNotification"

    const-string v5, "Problem in container service"

    invoke-static {v3, v5, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private onStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 27

    .prologue
    .line 186
    const v13, 0x7f06006a

    .line 187
    const v14, 0x7f06006f

    .line 188
    const v15, 0x7f060056

    .line 189
    const v2, 0x7f02014c

    .line 190
    const v16, 0x7f02014c

    .line 191
    const v17, 0x7f060073

    .line 192
    const v18, 0x7f060074

    .line 193
    const v19, 0x7f060054

    .line 194
    const v20, 0x7f060055

    .line 195
    const v21, 0x7f060075

    .line 196
    const v22, 0x7f060076

    .line 197
    const v23, 0x7f060077

    .line 198
    const v24, 0x7f060078

    .line 199
    const v25, 0x7f060079

    .line 200
    const v26, 0x7f06007a

    .line 202
    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    const-string v1, "com.asus.filemanager"

    const-string v4, "com.asus.filemanager.activity.FileManagerActivity"

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const/high16 v1, 0x2000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 207
    new-instance v7, Landroid/content/Intent;

    const-string v1, "com.android.systemui.usb.ACTION_UNMOUNT_EPAD_STORAGE"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    const-string v1, "unmout_path"

    move-object/from16 v0, p1

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string v1, "path"

    move-object/from16 v0, p1

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/AsusStorageNotification;->mContext:Landroid/content/Context;

    const/high16 v4, 0x800

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    .line 214
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/AsusStorageNotification;->mContext:Landroid/content/Context;

    const/high16 v3, 0x800

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v1, v2, v7, v3, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v12

    .line 217
    const-string v1, "checking"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/usb/AsusStorageNotification;->IsInternalOrInvalidPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/usb/AsusStorageNotification;->setMediaStorageTicker(IIIZZLandroid/app/PendingIntent;)V

    .line 222
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/usb/AsusStorageNotification;->updateUsbMassStorageNotification(Z)V

    .line 223
    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move v4, v13

    move v5, v14

    move v6, v15

    move v7, v2

    move/from16 v8, v16

    invoke-direct/range {v3 .. v12}, Lcom/android/systemui/usb/AsusStorageNotification;->setMediaStorageNotification(IIIIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 225
    :cond_2
    const-string v1, "mounted"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 226
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/usb/AsusStorageNotification;->IsInternalOrInvalidPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/usb/AsusStorageNotification;->setMediaStorageTicker(IIIZZLandroid/app/PendingIntent;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/AsusStorageNotification;->mStorageService:Landroid/os/IBinder;

    if-nez v1, :cond_3

    .line 235
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/AsusStorageNotification;->mMountedStorage:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/usb/AsusStorageNotification$StorageInfo;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v6, v15

    move v7, v2

    move/from16 v8, v16

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/usb/AsusStorageNotification$StorageInfo;-><init>(Lcom/android/systemui/usb/AsusStorageNotification;Ljava/lang/String;III)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/usb/AsusStorageNotification;->mFmPI:Landroid/app/PendingIntent;

    .line 237
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/usb/AsusStorageNotification;->mUmtPI:Landroid/app/PendingIntent;

    .line 238
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/android/systemui/usb/AsusStorageNotification;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/AsusStorageNotification;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/usb/AsusStorageNotification;->mDefContainerConn:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 244
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/usb/AsusStorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/usb/AsusStorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_0

    .line 241
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/usb/AsusStorageNotification;->mImcs:Lcom/android/internal/app/IMediaContainerService;

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move v8, v15

    move v9, v2

    move/from16 v10, v16

    invoke-direct/range {v5 .. v12}, Lcom/android/systemui/usb/AsusStorageNotification;->measureApproximateStorage(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;IIILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_1

    .line 245
    :cond_4
    const-string v1, "unmounted"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 246
    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v3, p0

    move v7, v2

    move/from16 v8, v16

    invoke-direct/range {v3 .. v12}, Lcom/android/systemui/usb/AsusStorageNotification;->setMediaStorageNotification(IIIIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 249
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/usb/AsusStorageNotification;->mBound:Z

    if-eqz v1, :cond_5

    .line 251
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/AsusStorageNotification;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/usb/AsusStorageNotification;->mDefContainerConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/usb/AsusStorageNotification;->mStorageService:Landroid/os/IBinder;

    .line 256
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/usb/AsusStorageNotification;->mBound:Z

    .line 259
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/usb/AsusStorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 260
    const-string v1, "shared"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 261
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/usb/AsusStorageNotification;->setMediaStorageTicker(IIIZZLandroid/app/PendingIntent;)V

    .line 262
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/usb/AsusStorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/usb/AsusStorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 252
    :catch_0
    move-exception v1

    .line 253
    const-string v1, "AsusStorageNotification"

    const-string v3, "unbindService fail"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 264
    :cond_6
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 265
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v4, v17

    move/from16 v5, v18

    move v6, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/usb/AsusStorageNotification;->setMediaStorageTicker(IIIZZLandroid/app/PendingIntent;)V

    .line 272
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/usb/AsusStorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/usb/AsusStorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 270
    :cond_7
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/usb/AsusStorageNotification;->setMediaStorageTicker(IIIZZLandroid/app/PendingIntent;)V

    goto :goto_3

    .line 275
    :cond_8
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/usb/AsusStorageNotification;->setMediaStorageTicker(IIIZZLandroid/app/PendingIntent;)V

    .line 276
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/usb/AsusStorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 278
    :cond_9
    const-string v1, "removed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 279
    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v3, p0

    move v7, v2

    move/from16 v8, v16

    invoke-direct/range {v3 .. v12}, Lcom/android/systemui/usb/AsusStorageNotification;->setMediaStorageNotification(IIIIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 281
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/usb/AsusStorageNotification;->updateUsbMassStorageNotification(Z)V

    .line 282
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v4, v19

    move/from16 v5, v20

    move v6, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/usb/AsusStorageNotification;->setMediaStorageTicker(IIIZZLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 287
    :cond_a
    const-string v1, "bad_removal"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 288
    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v3, p0

    move v7, v2

    move/from16 v8, v16

    invoke-direct/range {v3 .. v12}, Lcom/android/systemui/usb/AsusStorageNotification;->setMediaStorageNotification(IIIIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 290
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/usb/AsusStorageNotification;->updateUsbMassStorageNotification(Z)V

    .line 291
    const v4, 0x108008a

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/usb/AsusStorageNotification;->setMediaStorageTicker(IIIZZLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 296
    :cond_b
    const-string v1, "unmountable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 297
    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v3, p0

    move v7, v2

    move/from16 v8, v16

    invoke-direct/range {v3 .. v12}, Lcom/android/systemui/usb/AsusStorageNotification;->setMediaStorageNotification(IIIIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 299
    const v4, 0x108008a

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/usb/AsusStorageNotification;->setMediaStorageTicker(IIIZZLandroid/app/PendingIntent;)V

    .line 304
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/usb/AsusStorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/usb/AsusStorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 305
    :cond_c
    const-string v1, "nofs"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 306
    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v3, p0

    move v7, v2

    move/from16 v8, v16

    invoke-direct/range {v3 .. v12}, Lcom/android/systemui/usb/AsusStorageNotification;->setMediaStorageNotification(IIIIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 308
    const v4, 0x108008a

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/usb/AsusStorageNotification;->setMediaStorageTicker(IIIZZLandroid/app/PendingIntent;)V

    .line 313
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/usb/AsusStorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/usb/AsusStorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 314
    :cond_d
    const-string v1, "shared"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 315
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/AsusStorageNotification;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/usb/AsusStorageNotification;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 318
    const v2, 0x104046a

    const v3, 0x104046b

    const v4, 0x108008a

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/usb/AsusStorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 323
    :cond_e
    const-string v1, "AsusStorageNotification"

    const-string v2, "Ignoring unknown state {%s}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private onUsbMassStorageConnectionChangedAsync(Z)V
    .locals 2
    .parameter "connected"

    .prologue
    .line 626
    iput-boolean p1, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mUmsAvailable:Z

    .line 627
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, st:Ljava/lang/String;
    if-eqz p1, :cond_1

    const-string v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "checking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 631
    :cond_0
    const/4 p1, 0x0

    .line 633
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/usb/AsusStorageNotification;->updateUsbMassStorageNotification(Z)V

    .line 634
    return-void
.end method

.method private declared-synchronized setMediaStorageMounted(IIIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 13
    .parameter "titleId"
    .parameter "messageId"
    .parameter "icon"
    .parameter "smallIcon"
    .parameter "visible"
    .parameter "dismissable"
    .parameter "fmPI"
    .parameter "umtPI"

    .prologue
    .line 330
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 331
    .local v6, r:Landroid/content/res/Resources;
    const/4 v7, 0x0

    .line 332
    .local v7, title:Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 333
    .local v4, message:Ljava/lang/CharSequence;
    const/4 v8, -0x1

    if-eq p1, v8, :cond_0

    .line 334
    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 335
    :cond_0
    const/4 v8, -0x1

    if-eq p2, v8, :cond_1

    .line 336
    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 339
    :cond_1
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v8

    const v9, 0x7f0200cd

    const v10, 0x7f06002f

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    move-object/from16 v0, p7

    invoke-virtual {v8, v9, v10, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    const v9, 0x7f02015d

    const v10, 0x7f060030

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    move-object/from16 v0, p8

    invoke-virtual {v8, v9, v10, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 346
    .local v2, build:Landroid/app/Notification$Builder;
    iget-boolean v8, p0, Lcom/android/systemui/usb/AsusStorageNotification;->isPadMode:Z

    if-eqz v8, :cond_2

    .line 347
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 355
    :goto_0
    new-instance v8, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v8, v2}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f06002e

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f06002d

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mContext:Landroid/content/Context;

    iget-wide v11, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mTotalSize:J

    invoke-static {v10, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v3

    .line 358
    .local v3, mediaStorageNotification:Landroid/app/Notification;
    iget-object v8, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mNotificationManager:Landroid/app/NotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_3

    .line 382
    :goto_1
    monitor-exit p0

    return-void

    .line 349
    .end local v3           #mediaStorageNotification:Landroid/app/Notification;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move/from16 v0, p3

    invoke-static {v8, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 350
    .local v1, bitmap:Landroid/graphics/Bitmap;
    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 351
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 330
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #build:Landroid/app/Notification$Builder;
    .end local v4           #message:Ljava/lang/CharSequence;
    .end local v6           #r:Landroid/content/res/Resources;
    .end local v7           #title:Ljava/lang/CharSequence;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 362
    .restart local v2       #build:Landroid/app/Notification$Builder;
    .restart local v3       #mediaStorageNotification:Landroid/app/Notification;
    .restart local v4       #message:Ljava/lang/CharSequence;
    .restart local v6       #r:Landroid/content/res/Resources;
    .restart local v7       #title:Ljava/lang/CharSequence;
    :cond_3
    if-eqz p5, :cond_5

    .line 364
    :try_start_2
    iget v8, v3, Landroid/app/Notification;->defaults:I

    and-int/lit8 v8, v8, -0x2

    iput v8, v3, Landroid/app/Notification;->defaults:I

    .line 366
    if-eqz p6, :cond_4

    .line 367
    const/16 v8, 0x10

    iput v8, v3, Landroid/app/Notification;->flags:I

    .line 369
    :cond_4
    move-object/from16 v0, p7

    iput-object v0, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 375
    :cond_5
    iget v5, v3, Landroid/app/Notification;->icon:I

    .line 377
    .local v5, notificationId:I
    if-eqz p5, :cond_6

    .line 378
    iget-object v8, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v9, 0x0

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v9, v5, v3, v10}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 380
    :cond_6
    iget-object v8, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v9, 0x0

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v9, v5, v10}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized setMediaStorageNotification(IIIIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 14
    .parameter "tickerId"
    .parameter "titleId"
    .parameter "messageId"
    .parameter "icon"
    .parameter "smallIcon"
    .parameter "visible"
    .parameter "dismissable"
    .parameter "fmPI"
    .parameter "umtPI"

    .prologue
    .line 392
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 393
    .local v6, r:Landroid/content/res/Resources;
    const/4 v7, 0x0

    .line 394
    .local v7, ticker:Ljava/lang/CharSequence;
    const/4 v8, 0x0

    .line 395
    .local v8, title:Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 397
    .local v4, message:Ljava/lang/CharSequence;
    const/4 v9, -0x1

    if-eq p1, v9, :cond_0

    .line 398
    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 399
    :cond_0
    const/4 v9, -0x1

    move/from16 v0, p2

    if-eq v0, v9, :cond_1

    .line 400
    move/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 401
    :cond_1
    const/4 v9, -0x1

    move/from16 v0, p3

    if-eq v0, v9, :cond_2

    .line 402
    move/from16 v0, p3

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 405
    :cond_2
    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v9

    const v10, 0x7f0200cd

    const v11, 0x7f06002f

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    move-object/from16 v0, p8

    invoke-virtual {v9, v10, v11, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    const v10, 0x7f02015d

    const v11, 0x7f060030

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    move-object/from16 v0, p9

    invoke-virtual {v9, v10, v11, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 412
    .local v2, build:Landroid/app/Notification$Builder;
    iget-boolean v9, p0, Lcom/android/systemui/usb/AsusStorageNotification;->isPadMode:Z

    if-eqz v9, :cond_3

    .line 413
    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 421
    :goto_0
    new-instance v9, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v9, v2}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f06002e

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f06002d

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mContext:Landroid/content/Context;

    iget-wide v12, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mTotalSize:J

    invoke-static {v11, v12, v13}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v3

    .line 424
    .local v3, mediaStorageNotification:Landroid/app/Notification;
    iget-object v9, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mNotificationManager:Landroid/app/NotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_4

    .line 448
    :goto_1
    monitor-exit p0

    return-void

    .line 415
    .end local v3           #mediaStorageNotification:Landroid/app/Notification;
    :cond_3
    :try_start_1
    iget-object v9, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move/from16 v0, p4

    invoke-static {v9, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 416
    .local v1, bitmap:Landroid/graphics/Bitmap;
    move/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 417
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 392
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #build:Landroid/app/Notification$Builder;
    .end local v4           #message:Ljava/lang/CharSequence;
    .end local v6           #r:Landroid/content/res/Resources;
    .end local v7           #ticker:Ljava/lang/CharSequence;
    .end local v8           #title:Ljava/lang/CharSequence;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 428
    .restart local v2       #build:Landroid/app/Notification$Builder;
    .restart local v3       #mediaStorageNotification:Landroid/app/Notification;
    .restart local v4       #message:Ljava/lang/CharSequence;
    .restart local v6       #r:Landroid/content/res/Resources;
    .restart local v7       #ticker:Ljava/lang/CharSequence;
    .restart local v8       #title:Ljava/lang/CharSequence;
    :cond_4
    if-eqz p6, :cond_6

    .line 430
    :try_start_2
    iget v9, v3, Landroid/app/Notification;->defaults:I

    and-int/lit8 v9, v9, -0x2

    iput v9, v3, Landroid/app/Notification;->defaults:I

    .line 432
    if-eqz p7, :cond_5

    .line 433
    const/16 v9, 0x10

    iput v9, v3, Landroid/app/Notification;->flags:I

    .line 435
    :cond_5
    move-object/from16 v0, p8

    iput-object v0, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 441
    :cond_6
    iget v5, v3, Landroid/app/Notification;->icon:I

    .line 443
    .local v5, notificationId:I
    if-eqz p6, :cond_7

    .line 444
    iget-object v9, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v10, 0x0

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v10, v5, v3, v11}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 446
    :cond_7
    iget-object v9, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v10, 0x0

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v10, v5, v11}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized setMediaStorageTicker(IIIZZLandroid/app/PendingIntent;)V
    .locals 9
    .parameter "titleId"
    .parameter "messageId"
    .parameter "icon"
    .parameter "visible"
    .parameter "dismissable"
    .parameter "pi"

    .prologue
    .line 453
    monitor-enter p0

    if-nez p4, :cond_1

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mMediaStorageNotification:Landroid/app/Notification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    .line 505
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 457
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v5, :cond_0

    .line 461
    iget-object v5, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    if-eqz v5, :cond_2

    if-eqz p4, :cond_2

    .line 466
    iget-object v5, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v2, v5, Landroid/app/Notification;->icon:I

    .line 467
    .local v2, notificationId:I
    iget-object v5, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 470
    .end local v2           #notificationId:I
    :cond_2
    if-eqz p4, :cond_6

    .line 471
    iget-object v5, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 472
    .local v3, r:Landroid/content/res/Resources;
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 473
    .local v4, title:Ljava/lang/CharSequence;
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 475
    .local v1, message:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    if-nez v5, :cond_3

    .line 476
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    .line 477
    iget-object v5, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 480
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v6, v5, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, -0x2

    iput v6, v5, Landroid/app/Notification;->defaults:I

    .line 482
    if-eqz p5, :cond_4

    .line 483
    iget-object v5, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const/16 v6, 0x10

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 486
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const/16 v6, 0x10

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 487
    iget-object v5, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iput-object v4, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 488
    if-nez p6, :cond_5

    .line 489
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 490
    .local v0, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v5, v6, v0, v7, v8}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p6

    .line 494
    .end local v0           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iput p3, v5, Landroid/app/Notification;->icon:I

    .line 495
    iget-object v5, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4, v1, p6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 498
    .end local v1           #message:Ljava/lang/CharSequence;
    .end local v3           #r:Landroid/content/res/Resources;
    .end local v4           #title:Ljava/lang/CharSequence;
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v2, v5, Landroid/app/Notification;->icon:I

    .line 499
    .restart local v2       #notificationId:I
    if-eqz p4, :cond_7

    .line 500
    iget-object v5, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 453
    .end local v2           #notificationId:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 503
    .restart local v2       #notificationId:I
    :cond_7
    :try_start_2
    iget-object v5, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v6, 0x0

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v2, v7}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V
    .locals 11
    .parameter "titleId"
    .parameter "messageId"
    .parameter "icon"
    .parameter "sound"
    .parameter "visible"
    .parameter "pi"

    .prologue
    .line 657
    monitor-enter p0

    if-nez p5, :cond_1

    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mUsbStorageNotification:Landroid/app/Notification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_1

    .line 707
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 661
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v7, :cond_0

    .line 665
    if-eqz p5, :cond_4

    .line 666
    iget-object v7, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 667
    .local v5, r:Landroid/content/res/Resources;
    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 668
    .local v6, title:Ljava/lang/CharSequence;
    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 670
    .local v3, message:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    if-nez v7, :cond_2

    .line 671
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    .line 672
    iget-object v7, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iput p3, v7, Landroid/app/Notification;->icon:I

    .line 673
    iget-object v7, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Landroid/app/Notification;->when:J

    .line 676
    :cond_2
    if-eqz p4, :cond_5

    .line 677
    iget-object v7, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget v8, v7, Landroid/app/Notification;->defaults:I

    or-int/lit8 v8, v8, 0x1

    iput v8, v7, Landroid/app/Notification;->defaults:I

    .line 682
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iput-object v6, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 683
    if-nez p6, :cond_3

    .line 684
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 685
    .local v2, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v7, v8, v2, v9, v10}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p6

    .line 689
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget-object v8, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mContext:Landroid/content/Context;

    move-object/from16 v0, p6

    invoke-virtual {v7, v8, v6, v3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 690
    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "adb_enabled"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v7, v8, :cond_6

    const/4 v1, 0x1

    .line 695
    .local v1, adbOn:Z
    :goto_2
    if-nez v1, :cond_4

    .line 696
    iget-object v7, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object/from16 v0, p6

    iput-object v0, v7, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 700
    .end local v1           #adbOn:Z
    .end local v3           #message:Ljava/lang/CharSequence;
    .end local v5           #r:Landroid/content/res/Resources;
    .end local v6           #title:Ljava/lang/CharSequence;
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget v4, v7, Landroid/app/Notification;->icon:I

    .line 701
    .local v4, notificationId:I
    if-eqz p5, :cond_7

    .line 702
    iget-object v7, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v8, v4, v9, v10}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 657
    .end local v4           #notificationId:I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 679
    .restart local v3       #message:Ljava/lang/CharSequence;
    .restart local v5       #r:Landroid/content/res/Resources;
    .restart local v6       #title:Ljava/lang/CharSequence;
    :cond_5
    :try_start_2
    iget-object v7, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget v8, v7, Landroid/app/Notification;->defaults:I

    and-int/lit8 v8, v8, -0x2

    iput v8, v7, Landroid/app/Notification;->defaults:I

    goto :goto_1

    .line 690
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 705
    .end local v3           #message:Ljava/lang/CharSequence;
    .end local v5           #r:Landroid/content/res/Resources;
    .end local v6           #title:Ljava/lang/CharSequence;
    .restart local v4       #notificationId:I
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v8, 0x0

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v8, v4, v9}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public start()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 142
    iget-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mContext:Landroid/content/Context;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 143
    iget-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->isUsbMassStorageConnected()Z

    move-result v6

    .line 146
    .local v6, connected:Z
    new-instance v7, Landroid/os/HandlerThread;

    const-string v0, "SystemUI StorageNotification"

    invoke-direct {v7, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 147
    .local v7, thr:Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    .line 150
    new-instance v0, Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener;-><init>(Lcom/android/systemui/usb/AsusStorageNotification;Lcom/android/systemui/usb/AsusStorageNotification$1;)V

    iput-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mListener:Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener;

    .line 151
    iget-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mListener:Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener;

    invoke-virtual {v0, v6}, Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener;->onUsbMassStorageConnectionChanged(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mListener:Lcom/android/systemui/usb/AsusStorageNotification$StorageNotificationEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 154
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 155
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v0, "com.android.systemui.usb.ACTION_UNMOUNT_EPAD_STORAGE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v0, "com.android.systemui.usb.ACTION_UNMOUNT_EPAD_STORAGE_SUCCESS"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v0, "com.android.systemui.usb.ACTION_UNMOUNT_EPAD_STORAGE_ERROR"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/usb/AsusStorageNotification;->umtReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 160
    invoke-direct {p0}, Lcom/android/systemui/usb/AsusStorageNotification;->checkInitExternalStorageState()V

    .line 161
    return-void
.end method

.method updateUsbMassStorageNotification(Z)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 638
    if-eqz p1, :cond_0

    .line 639
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 640
    iget-object v1, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 641
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 643
    iget-object v1, p0, Lcom/android/systemui/usb/AsusStorageNotification;->mContext:Landroid/content/Context;

    invoke-static {v1, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 644
    const v1, 0x1040468

    const v2, 0x1040469

    const v3, 0x1080881

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/AsusStorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 652
    :goto_0
    return-void

    .line 650
    :cond_0
    const/4 v9, 0x0

    move-object v3, p0

    move v5, v4

    move v6, v4

    move v7, v4

    move v8, v4

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/usb/AsusStorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
