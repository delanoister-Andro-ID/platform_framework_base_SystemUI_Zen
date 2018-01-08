.class public Lcom/android/systemui/ImageWallpaper;
.super Landroid/service/wallpaper/WallpaperService;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ImageWallpaper$DrawableEngine;
    }
.end annotation


# instance fields
.field private mCurrentScreenSize:I

.field private mDdsing:Z

.field mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

.field private mIsBlack:Z

.field mIsHwAccelerated:Z

.field mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/ImageWallpaper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper;->mDdsing:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/ImageWallpaper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/systemui/ImageWallpaper;->mDdsing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/ImageWallpaper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper;->getScreenSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/ImageWallpaper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/systemui/ImageWallpaper;->mCurrentScreenSize:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/ImageWallpaper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/android/systemui/ImageWallpaper;->mCurrentScreenSize:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/ImageWallpaper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper;->mIsBlack:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/ImageWallpaper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/systemui/ImageWallpaper;->mIsBlack:Z

    return p1
.end method

.method private getScreenSize()I
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method private static isEmulator()Z
    .locals 3

    .prologue
    .line 117
    const-string v0, "1"

    const-string v1, "ro.kernel.qemu"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    .line 89
    const-string v0, "wallpaper"

    invoke-virtual {p0, v0}, Lcom/android/systemui/ImageWallpaper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 93
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->isEmulator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper;->mIsHwAccelerated:Z

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper;->getScreenSize()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ImageWallpaper;->mCurrentScreenSize:I

    .line 101
    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-direct {v0, p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;-><init>(Lcom/android/systemui/ImageWallpaper;)V

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    .line 123
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    return-object v0
.end method

.method public onTrimMemory(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->trimMemory(I)V

    .line 108
    :cond_0
    return-void
.end method
