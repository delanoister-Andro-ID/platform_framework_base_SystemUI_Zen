.class public Lcom/android/systemui/recent/RecentTasksLoader;
.super Ljava/lang/Object;
.source "RecentTasksLoader.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/RecentTasksLoader$State;
    }
.end annotation


# static fields
.field public static final SCALE_THUMBNAIL_CONSTANT:F

.field private static sInstance:Lcom/android/systemui/recent/RecentTasksLoader;


# instance fields
.field protected final DEBUG:Z

.field mCancelPreloadingFirstTask:Z

.field public mConnection:Landroid/content/ServiceConnection;

.field protected mContext:Landroid/content/Context;

.field private mDefaultIconBackground:Lcom/android/systemui/recent/ColorDrawableWithDimensions;

.field protected mDefaultThumbnailBackground:Lcom/android/systemui/recent/ColorDrawableWithDimensions;

.field private mFirstScreenful:Z

.field private mFirstTask:Lcom/android/systemui/recent/TaskDescription;

.field private mFirstTaskLoaded:Z

.field private mFirstTaskLock:Ljava/lang/Object;

.field private mHandler:Landroid/os/Handler;

.field private mIconDpi:I

.field private mLoadedTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mNumTasksInFirstScreenful:I

.field mPreloadTasksRunnable:Ljava/lang/Runnable;

.field mPreloadingFirstTask:Z

.field private mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

.field private mService:Lcom/android/systemui/recent/DualAppsService;

.field private mState:Lcom/android/systemui/recent/RecentTasksLoader$State;

.field private mTaskLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Lcom/android/systemui/recent/TaskDescription;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    sget-boolean v0, Lcom/asus/systemui/util/AsusQuicksettingUtil;->IS_SMALL_RAM:Z

    if-eqz v0, :cond_0

    const v0, 0x3f4ccccd

    :goto_0
    sput v0, Lcom/android/systemui/recent/RecentTasksLoader;->SCALE_THUMBNAIL_CONSTANT:F

    return-void

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean v10, p0, Lcom/android/systemui/recent/RecentTasksLoader;->DEBUG:Z

    .line 67
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstTaskLock:Ljava/lang/Object;

    .line 78
    const v8, 0x7fffffff

    iput v8, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mNumTasksInFirstScreenful:I

    .line 84
    sget-object v8, Lcom/android/systemui/recent/RecentTasksLoader$State;->CANCELLED:Lcom/android/systemui/recent/RecentTasksLoader$State;

    iput-object v8, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mState:Lcom/android/systemui/recent/RecentTasksLoader$State;

    .line 311
    new-instance v8, Lcom/android/systemui/recent/RecentTasksLoader$1;

    invoke-direct {v8, p0}, Lcom/android/systemui/recent/RecentTasksLoader$1;-><init>(Lcom/android/systemui/recent/RecentTasksLoader;)V

    iput-object v8, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    .line 704
    new-instance v8, Lcom/android/systemui/recent/RecentTasksLoader$5;

    invoke-direct {v8, p0}, Lcom/android/systemui/recent/RecentTasksLoader$5;-><init>(Lcom/android/systemui/recent/RecentTasksLoader;)V

    iput-object v8, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mConnection:Landroid/content/ServiceConnection;

    .line 101
    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    .line 102
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mHandler:Landroid/os/Handler;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 107
    .local v5, res:Landroid/content/res/Resources;
    const v8, 0x7f090002

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 108
    .local v4, isTablet:Z
    if-eqz v4, :cond_0

    .line 109
    const-string v8, "activity"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 111
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v8

    iput v8, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mIconDpi:I

    .line 117
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    :goto_0
    const/high16 v8, 0x105

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 118
    .local v2, defaultIconSize:I
    iget v8, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mIconDpi:I

    mul-int/2addr v8, v2

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int v3, v8, v9

    .line 119
    .local v3, iconSize:I
    new-instance v8, Lcom/android/systemui/recent/ColorDrawableWithDimensions;

    invoke-direct {v8, v10, v3, v3}, Lcom/android/systemui/recent/ColorDrawableWithDimensions;-><init>(III)V

    iput-object v8, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mDefaultIconBackground:Lcom/android/systemui/recent/ColorDrawableWithDimensions;

    .line 122
    const v8, 0x1050002

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 124
    .local v7, thumbnailWidth:I
    const v8, 0x1050001

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 126
    .local v6, thumbnailHeight:I
    const v8, 0x7f020218

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 128
    .local v1, color:I
    new-instance v8, Lcom/android/systemui/recent/ColorDrawableWithDimensions;

    invoke-direct {v8, v1, v7, v6}, Lcom/android/systemui/recent/ColorDrawableWithDimensions;-><init>(III)V

    iput-object v8, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mDefaultThumbnailBackground:Lcom/android/systemui/recent/ColorDrawableWithDimensions;

    .line 135
    return-void

    .line 113
    .end local v1           #color:I
    .end local v2           #defaultIconSize:I
    .end local v3           #iconSize:I
    .end local v6           #thumbnailHeight:I
    .end local v7           #thumbnailWidth:I
    :cond_0
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v8, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mIconDpi:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentTasksLoader;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstTaskLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentTasksLoader;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->clearFirstTask()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/recent/RecentTasksLoader;Lcom/android/systemui/recent/TaskDescription;)Lcom/android/systemui/recent/TaskDescription;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstTask:Lcom/android/systemui/recent/TaskDescription;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/systemui/recent/RecentTasksLoader;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstTaskLoaded:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/recent/RecentTasksLoader;)Lcom/android/systemui/recent/RecentsPanelView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/recent/RecentTasksLoader;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstScreenful:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/recent/RecentTasksLoader;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstScreenful:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/recent/RecentTasksLoader;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mLoadedTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/recent/RecentTasksLoader;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mLoadedTasks:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/recent/RecentTasksLoader;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentTasksLoader;->loadThumbnailsAndIconsInBackground(Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/recent/RecentTasksLoader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mNumTasksInFirstScreenful:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/recent/RecentTasksLoader;Lcom/android/systemui/recent/RecentTasksLoader$State;)Lcom/android/systemui/recent/RecentTasksLoader$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mState:Lcom/android/systemui/recent/RecentTasksLoader$State;

    return-object p1
.end method

.method private cancelLoadingThumbnailsAndIcons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 356
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 362
    iput-object v2, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    .line 365
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 366
    iput-object v2, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    .line 368
    :cond_2
    iput-object v2, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mLoadedTasks:Ljava/util/ArrayList;

    .line 369
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v0, :cond_3

    .line 370
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->onTaskLoadingCancelled()V

    .line 372
    :cond_3
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstScreenful:Z

    .line 373
    sget-object v0, Lcom/android/systemui/recent/RecentTasksLoader$State;->CANCELLED:Lcom/android/systemui/recent/RecentTasksLoader$State;

    iput-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mState:Lcom/android/systemui/recent/RecentTasksLoader$State;

    goto :goto_0
.end method

.method private clearFirstTask()V
    .locals 2

    .prologue
    .line 377
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstTaskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 378
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstTask:Lcom/android/systemui/recent/TaskDescription;

    .line 379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstTaskLoaded:Z

    .line 380
    monitor-exit v1

    .line 381
    return-void

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getFullResIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "info"
    .parameter "packageManager"

    .prologue
    .line 297
    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 302
    .local v2, resources:Landroid/content/res/Resources;
    :goto_0
    if-eqz v2, :cond_0

    .line 303
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v1

    .line 304
    .local v1, iconId:I
    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 308
    .end local v1           #iconId:I
    :goto_1
    return-object v3

    .line 299
    .end local v2           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 300
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .restart local v2       #resources:Landroid/content/res/Resources;
    goto :goto_0

    .line 308
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;
    .locals 1
    .parameter "context"

    .prologue
    .line 90
    sget-object v0, Lcom/android/systemui/recent/RecentTasksLoader;->sInstance:Lcom/android/systemui/recent/RecentTasksLoader;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentTasksLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/recent/RecentTasksLoader;->sInstance:Lcom/android/systemui/recent/RecentTasksLoader;

    .line 97
    :cond_0
    sget-object v0, Lcom/android/systemui/recent/RecentTasksLoader;->sInstance:Lcom/android/systemui/recent/RecentTasksLoader;

    return-object v0
.end method

.method private loadThumbnailsAndIconsInBackground(Ljava/util/concurrent/BlockingQueue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 609
    .local p1, tasksWaitingForThumbnails:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Lcom/android/systemui/recent/TaskDescription;>;"
    new-instance v0, Lcom/android/systemui/recent/RecentTasksLoader$4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recent/RecentTasksLoader$4;-><init>(Lcom/android/systemui/recent/RecentTasksLoader;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    .line 656
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mThumbnailLoader:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 657
    return-void
.end method


# virtual methods
.method public cancelLoadingThumbnailsAndIcons(Lcom/android/systemui/recent/RecentsPanelView;)V
    .locals 1
    .parameter "caller"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-ne v0, p1, :cond_0

    .line 350
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelLoadingThumbnailsAndIcons()V

    .line 352
    :cond_0
    return-void
.end method

.method public cancelPreloadingFirstTask()V
    .locals 2

    .prologue
    .line 408
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstTaskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 409
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mPreloadingFirstTask:Z

    if-eqz v0, :cond_0

    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mCancelPreloadingFirstTask:Z

    .line 414
    :goto_0
    monitor-exit v1

    .line 415
    return-void

    .line 412
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->clearFirstTask()V

    goto :goto_0

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelPreloadingRecentTasksList()V
    .locals 2

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelLoadingThumbnailsAndIcons()V

    .line 343
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 344
    return-void
.end method

.method createTaskDescription(IILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/CharSequence;I)Lcom/android/systemui/recent/TaskDescription;
    .locals 11
    .parameter "taskId"
    .parameter "persistentTaskId"
    .parameter "baseIntent"
    .parameter "origActivity"
    .parameter "description"
    .parameter "userId"

    .prologue
    .line 190
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 191
    .local v8, intent:Landroid/content/Intent;
    if-eqz p4, :cond_0

    .line 192
    invoke-virtual {v8, p4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 224
    .local v9, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x200001

    and-int/2addr v1, v2

    const/high16 v2, 0x1000

    or-int/2addr v1, v2

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 226
    const/4 v1, 0x0

    invoke-virtual {v9, v8, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 227
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_1

    .line 228
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 229
    .local v7, info:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v7, v9}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 231
    .local v10, title:Ljava/lang/String;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 236
    new-instance v0, Lcom/android/systemui/recent/TaskDescription;

    iget-object v5, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recent/TaskDescription;-><init>(IILandroid/content/pm/ResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 239
    .local v0, item:Lcom/android/systemui/recent/TaskDescription;
    invoke-virtual {v0, v10}, Lcom/android/systemui/recent/TaskDescription;->setLabel(Ljava/lang/CharSequence;)V

    .line 247
    .end local v0           #item:Lcom/android/systemui/recent/TaskDescription;
    .end local v7           #info:Landroid/content/pm/ActivityInfo;
    .end local v10           #title:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mDefaultIconBackground:Lcom/android/systemui/recent/ColorDrawableWithDimensions;

    return-object v0
.end method

.method public getDefaultThumbnail()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mDefaultThumbnailBackground:Lcom/android/systemui/recent/ColorDrawableWithDimensions;

    return-object v0
.end method

.method public getFirstTask()Lcom/android/systemui/recent/TaskDescription;
    .locals 2

    .prologue
    .line 421
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstTaskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 422
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstTaskLoaded:Z

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstTask:Lcom/android/systemui/recent/TaskDescription;

    monitor-exit v1

    .line 427
    :goto_1
    return-object v0

    .line 424
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstTaskLoaded:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mPreloadingFirstTask:Z

    if-nez v0, :cond_1

    .line 425
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->loadFirstTask()Lcom/android/systemui/recent/TaskDescription;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstTask:Lcom/android/systemui/recent/TaskDescription;

    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstTaskLoaded:Z

    .line 427
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstTask:Lcom/android/systemui/recent/TaskDescription;

    monitor-exit v1

    goto :goto_1

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    const-wide/16 v0, 0x3

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 432
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 282
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "resources"
    .parameter "iconId"

    .prologue
    .line 288
    :try_start_0
    iget v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mIconDpi:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 290
    :goto_0
    return-object v1

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getLoadedTasks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mLoadedTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isFirstScreenful()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstScreenful:Z

    return v0
.end method

.method public loadFirstTask()Lcom/android/systemui/recent/TaskDescription;
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 438
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    .line 440
    .local v7, am:Landroid/app/ActivityManager;
    const/4 v1, 0x1

    const/4 v2, 0x2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v7, v1, v2, v3}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v11

    .line 442
    .local v11, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v9, 0x0

    .line 443
    .local v9, item:Lcom/android/systemui/recent/TaskDescription;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 444
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 446
    .local v10, recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v8, Landroid/content/Intent;

    iget-object v1, v10, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 447
    .local v8, intent:Landroid/content/Intent;
    iget-object v1, v10, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 448
    iget-object v1, v10, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 452
    :cond_0
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 470
    .end local v8           #intent:Landroid/content/Intent;
    .end local v10           #recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_1
    :goto_0
    return-object v0

    .line 458
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v10       #recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_2
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 462
    iget v1, v10, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    iget v2, v10, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iget-object v3, v10, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    iget-object v4, v10, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    iget-object v5, v10, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    iget v6, v10, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recent/RecentTasksLoader;->createTaskDescription(IILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/CharSequence;I)Lcom/android/systemui/recent/TaskDescription;

    move-result-object v9

    .line 465
    if-eqz v9, :cond_3

    .line 466
    invoke-virtual {p0, v9}, Lcom/android/systemui/recent/RecentTasksLoader;->loadThumbnailAndIcon(Lcom/android/systemui/recent/TaskDescription;)V

    :cond_3
    move-object v0, v9

    .line 468
    goto :goto_0
.end method

.method public loadTasksInBackground()V
    .locals 1

    .prologue
    .line 474
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentTasksLoader;->loadTasksInBackground(Z)V

    .line 475
    return-void
.end method

.method public loadTasksInBackground(Z)V
    .locals 4
    .parameter "zeroeth"

    .prologue
    .line 477
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mState:Lcom/android/systemui/recent/RecentTasksLoader$State;

    sget-object v2, Lcom/android/systemui/recent/RecentTasksLoader$State;->CANCELLED:Lcom/android/systemui/recent/RecentTasksLoader$State;

    if-eq v1, v2, :cond_0

    .line 602
    :goto_0
    return-void

    .line 480
    :cond_0
    sget-object v1, Lcom/android/systemui/recent/RecentTasksLoader$State;->LOADING:Lcom/android/systemui/recent/RecentTasksLoader$State;

    iput-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mState:Lcom/android/systemui/recent/RecentTasksLoader$State;

    .line 481
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstScreenful:Z

    .line 483
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 485
    .local v0, tasksWaitingForThumbnails:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Lcom/android/systemui/recent/TaskDescription;>;"
    new-instance v1, Lcom/android/systemui/recent/RecentTasksLoader$3;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/recent/RecentTasksLoader$3;-><init>(Lcom/android/systemui/recent/RecentTasksLoader;Ljava/util/concurrent/LinkedBlockingQueue;)V

    iput-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    .line 601
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected loadThumbnailAndIcon(Lcom/android/systemui/recent/TaskDescription;)V
    .locals 12
    .parameter "td"

    .prologue
    .line 251
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    .line 253
    .local v7, am:Landroid/app/ActivityManager;
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 254
    .local v9, pm:Landroid/content/pm/PackageManager;
    iget v1, p1, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    invoke-virtual {v7, v1}, Landroid/app/ActivityManager;->getTaskTopThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 255
    .local v0, thumbnail:Landroid/graphics/Bitmap;
    iget-object v1, p1, Lcom/android/systemui/recent/TaskDescription;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v1, v9}, Lcom/android/systemui/recent/RecentTasksLoader;->getFullResIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 259
    .local v8, icon:Landroid/graphics/drawable/Drawable;
    monitor-enter p1

    .line 260
    if-eqz v0, :cond_2

    .line 261
    :try_start_0
    sget-boolean v1, Lcom/asus/systemui/util/AsusQuicksettingUtil;->IS_SMALL_RAM:Z

    if-eqz v1, :cond_1

    .line 262
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 263
    .local v5, matrix:Landroid/graphics/Matrix;
    sget v1, Lcom/android/systemui/recent/RecentTasksLoader;->SCALE_THUMBNAIL_CONSTANT:F

    sget v2, Lcom/android/systemui/recent/RecentTasksLoader;->SCALE_THUMBNAIL_CONSTANT:F

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 264
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v10, v11, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v10}, Lcom/android/systemui/recent/TaskDescription;->setThumbnail(Landroid/graphics/drawable/Drawable;)V

    .line 266
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 267
    const/4 v0, 0x0

    .line 274
    .end local v5           #matrix:Landroid/graphics/Matrix;
    :goto_0
    if-eqz v8, :cond_0

    .line 275
    invoke-virtual {p1, v8}, Lcom/android/systemui/recent/TaskDescription;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 277
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/systemui/recent/TaskDescription;->setLoaded(Z)V

    .line 278
    monitor-exit p1

    .line 279
    return-void

    .line 269
    :cond_1
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Lcom/android/systemui/recent/TaskDescription;->setThumbnail(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 278
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 272
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mDefaultThumbnailBackground:Lcom/android/systemui/recent/ColorDrawableWithDimensions;

    invoke-virtual {p1, v1}, Lcom/android/systemui/recent/TaskDescription;->setThumbnail(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "ev"

    .prologue
    .line 321
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 322
    .local v0, action:I
    if-nez v0, :cond_1

    .line 323
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->preloadRecentTasksList()V

    .line 334
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 324
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 325
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelPreloadingRecentTasksList()V

    goto :goto_0

    .line 326
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 329
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 330
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelLoadingThumbnailsAndIcons()V

    goto :goto_0
.end method

.method public preloadFirstTask()V
    .locals 3

    .prologue
    .line 384
    new-instance v0, Lcom/android/systemui/recent/RecentTasksLoader$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentTasksLoader$2;-><init>(Lcom/android/systemui/recent/RecentTasksLoader;)V

    .line 398
    .local v0, bgLoad:Ljava/lang/Thread;
    iget-object v2, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mFirstTaskLock:Ljava/lang/Object;

    monitor-enter v2

    .line 399
    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mPreloadingFirstTask:Z

    if-nez v1, :cond_0

    .line 400
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->clearFirstTask()V

    .line 401
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mPreloadingFirstTask:Z

    .line 402
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 404
    :cond_0
    monitor-exit v2

    .line 405
    return-void

    .line 404
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public preloadRecentTasksList()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 339
    return-void
.end method

.method public remove(Lcom/android/systemui/recent/TaskDescription;)V
    .locals 1
    .parameter "td"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mLoadedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method public resetInstanceByDDs()V
    .locals 2

    .prologue
    .line 661
    const-string v0, "RecentTasksLoader"

    const-string v1, "reset Instance by DDs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 663
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelLoadingThumbnailsAndIcons()V

    .line 664
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/recent/RecentTasksLoader;->sInstance:Lcom/android/systemui/recent/RecentTasksLoader;

    .line 665
    return-void
.end method

.method public setRecentsPanel(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView;)V
    .locals 1
    .parameter "newRecentsPanel"
    .parameter "caller"

    .prologue
    .line 139
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-ne v0, p2, :cond_1

    .line 140
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    .line 141
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->numItemsInOneScreenful()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mNumTasksInFirstScreenful:I

    .line 145
    :cond_1
    return-void
.end method

.method public setSerivceBinder(Landroid/os/IBinder;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 723
    if-eqz p1, :cond_0

    .line 724
    check-cast p1, Lcom/android/systemui/recent/DualAppsService$LocalBinder;

    .end local p1
    invoke-virtual {p1}, Lcom/android/systemui/recent/DualAppsService$LocalBinder;->getService()Lcom/android/systemui/recent/DualAppsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader;->mService:Lcom/android/systemui/recent/DualAppsService;

    .line 726
    :cond_0
    return-void
.end method
