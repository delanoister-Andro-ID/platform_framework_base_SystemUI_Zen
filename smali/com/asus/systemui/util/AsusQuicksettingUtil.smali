.class public Lcom/asus/systemui/util/AsusQuicksettingUtil;
.super Ljava/lang/Object;
.source "AsusQuicksettingUtil.java"


# static fields
.field public static final IS_SMALL_RAM:Z

.field private static mInstance:Lcom/asus/systemui/util/AsusQuicksettingUtil;


# instance fields
.field private mContext:Landroid/content/Context;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/asus/systemui/util/AsusQuicksettingUtil;->isSmallRam()Z

    move-result v0

    sput-boolean v0, Lcom/asus/systemui/util/AsusQuicksettingUtil;->IS_SMALL_RAM:Z

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/asus/systemui/util/AsusQuicksettingUtil;->mInstance:Lcom/asus/systemui/util/AsusQuicksettingUtil;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/asus/systemui/util/AsusQuicksettingUtil;->mContext:Landroid/content/Context;

    .line 47
    iget-object v0, p0, Lcom/asus/systemui/util/AsusQuicksettingUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/systemui/util/AsusQuicksettingUtil;->pm:Landroid/content/pm/PackageManager;

    .line 48
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/asus/systemui/util/AsusQuicksettingUtil;
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/asus/systemui/util/AsusQuicksettingUtil;->mInstance:Lcom/asus/systemui/util/AsusQuicksettingUtil;

    if-nez v0, :cond_1

    .line 52
    const-class v1, Lcom/asus/systemui/util/AsusQuicksettingUtil;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/asus/systemui/util/AsusQuicksettingUtil;->mInstance:Lcom/asus/systemui/util/AsusQuicksettingUtil;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/asus/systemui/util/AsusQuicksettingUtil;

    invoke-direct {v0, p0}, Lcom/asus/systemui/util/AsusQuicksettingUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/asus/systemui/util/AsusQuicksettingUtil;->mInstance:Lcom/asus/systemui/util/AsusQuicksettingUtil;

    .line 56
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_1
    sget-object v0, Lcom/asus/systemui/util/AsusQuicksettingUtil;->mInstance:Lcom/asus/systemui/util/AsusQuicksettingUtil;

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static isSmallRam()Z
    .locals 5

    .prologue
    .line 32
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 33
    .local v0, reader:Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 34
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v1

    const-wide/32 v3, 0x40000000

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 35
    const/4 v1, 0x1

    .line 37
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getActivityName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "pkgName"
    .parameter "clsName"

    .prologue
    .line 75
    const-string v3, "notfound"

    .line 77
    .local v3, name:Ljava/lang/String;
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .local v1, cn:Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/asus/systemui/util/AsusQuicksettingUtil;->pm:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 79
    .local v0, aInfo:Landroid/content/pm/ActivityInfo;
    iget-object v4, p0, Lcom/asus/systemui/util/AsusQuicksettingUtil;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 83
    .end local v0           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v1           #cn:Landroid/content/ComponentName;
    :goto_0
    return-object v3

    .line 80
    :catch_0
    move-exception v2

    .line 81
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "pkgName"

    .prologue
    .line 63
    const-string v1, "notfound"

    .line 65
    .local v1, name:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/asus/systemui/util/AsusQuicksettingUtil;->pm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 66
    .local v2, pkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/asus/systemui/util/AsusQuicksettingUtil;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 70
    .end local v2           #pkgInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAppVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "pkgName"

    .prologue
    .line 87
    const-string v2, "notfound"

    .line 90
    .local v2, version:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/asus/systemui/util/AsusQuicksettingUtil;->pm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 91
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v1           #pkgInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
