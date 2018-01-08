.class Lcom/android/systemui/screenshot/AsusGlobalScreenshot;
.super Ljava/lang/Object;
.source "AsusGlobalScreenshot.java"


# instance fields
.field private mBgPadding:F

.field private mBgPaddingScale:F

.field private mCameraSound:Landroid/media/MediaActionSound;

.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mNotificationIconSize:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mSaveInBgTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;",
            "Ljava/lang/Void;",
            "Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenWidth:I

.field private mScreenshotAnimation:Landroid/animation/AnimatorSet;

.field private mScreenshotFlash:Landroid/widget/ImageView;

.field private mScreenshotLayout:Landroid/view/View;

.field private mScreenshotView:Landroid/widget/ImageView;

.field private mSendBroadcast:Z

.field private mShutterAnimationView:Lcom/android/systemui/screenshot/ShutterAnimationView;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 10
    .parameter "context"
    .parameter "sendBroadcast"

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    iput v3, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenWidth:I

    .line 413
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 414
    .local v9, r:Landroid/content/res/Resources;
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenWidth:I

    .line 415
    iput-object p1, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mContext:Landroid/content/Context;

    .line 416
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 420
    .local v8, layoutInflater:Landroid/view/LayoutInflater;
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 421
    const v0, 0x7f040001

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    .line 422
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v2, 0x7f0b0006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    .line 423
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v2, 0x7f0b0008

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    .line 424
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const v2, 0x7f0b0007

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/screenshot/ShutterAnimationView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mShutterAnimationView:Lcom/android/systemui/screenshot/ShutterAnimationView;

    .line 427
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mShutterAnimationView:Lcom/android/systemui/screenshot/ShutterAnimationView;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ShutterAnimationView;->resetStatus()V

    .line 429
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 430
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$1;-><init>(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 439
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x7df

    const v6, 0x1080500

    const/4 v7, -0x3

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 447
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "ScreenshotAnimation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 448
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    .line 449
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    .line 451
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mDisplay:Landroid/view/Display;

    .line 452
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 453
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 456
    const v0, 0x1050006

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mNotificationIconSize:I

    .line 460
    const v0, 0x7f070030

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mBgPadding:F

    .line 461
    iget v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mBgPadding:F

    iget-object v1, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mBgPaddingScale:F

    .line 464
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mCameraSound:Landroid/media/MediaActionSound;

    .line 465
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0, v3}, Landroid/media/MediaActionSound;->load(I)V

    .line 467
    iput-boolean p2, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mSendBroadcast:Z

    .line 468
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;)Landroid/view/WindowManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;)Landroid/media/MediaActionSound;
    .locals 1
    .parameter "x0"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mCameraSound:Landroid/media/MediaActionSound;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;)Landroid/animation/AnimatorSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;)Lcom/android/systemui/screenshot/ShutterAnimationView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mShutterAnimationView:Lcom/android/systemui/screenshot/ShutterAnimationView;

    return-object v0
.end method

.method private createAsusPauseAnimation()Landroid/animation/ValueAnimator;
    .locals 3

    .prologue
    .line 657
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 659
    .local v0, anim:Landroid/animation/ValueAnimator;
    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 660
    new-instance v1, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$6;-><init>(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 672
    return-object v0

    .line 657
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private createAsusScaleDownAnimation()Landroid/animation/ValueAnimator;
    .locals 3

    .prologue
    .line 676
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 678
    .local v0, anim:Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/systemui/screenshot/ScreenShotAccInterpolator;

    invoke-direct {v1}, Lcom/android/systemui/screenshot/ScreenShotAccInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 679
    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 680
    new-instance v1, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$7;-><init>(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 691
    new-instance v1, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$8;-><init>(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 698
    return-object v0

    .line 676
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private createAsusScaleUpAnimation()Landroid/animation/ValueAnimator;
    .locals 3

    .prologue
    .line 629
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 631
    .local v0, anim:Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/systemui/screenshot/ScreenShotDecInterpolator;

    invoke-direct {v1}, Lcom/android/systemui/screenshot/ScreenShotDecInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 632
    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 633
    new-instance v1, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$4;-><init>(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 646
    new-instance v1, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$5;-><init>(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 653
    return-object v0

    .line 629
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private getDegreesForRotation(I)F
    .locals 1
    .parameter "value"

    .prologue
    .line 490
    packed-switch p1, :pswitch_data_0

    .line 498
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 492
    :pswitch_0
    const/high16 v0, 0x4387

    goto :goto_0

    .line 494
    :pswitch_1
    const/high16 v0, 0x4334

    goto :goto_0

    .line 496
    :pswitch_2
    const/high16 v0, 0x42b4

    goto :goto_0

    .line 490
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;)V
    .locals 7
    .parameter "context"
    .parameter "nManager"

    .prologue
    const v6, 0x7f0600ae

    const v5, 0x7f0600ad

    .line 611
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 614
    .local v2, r:Landroid/content/res/Resources;
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x7f020184

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 621
    .local v0, b:Landroid/app/Notification$Builder;
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v1

    .line 625
    .local v1, n:Landroid/app/Notification;
    const/16 v3, 0x315

    invoke-virtual {p1, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 626
    return-void
.end method

.method private saveScreenshotInWorkerThread(Ljava/lang/Runnable;)V
    .locals 7
    .parameter "finisher"

    .prologue
    const/4 v6, 0x0

    .line 474
    new-instance v2, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;

    invoke-direct {v2}, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;-><init>()V

    .line 475
    .local v2, data:Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mContext:Landroid/content/Context;

    iput-object v0, v2, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 476
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    iput-object v0, v2, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 477
    iget v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mNotificationIconSize:I

    iput v0, v2, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;->iconSize:I

    .line 478
    iput-object p1, v2, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    .line 479
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v6}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 482
    :cond_0
    new-instance v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;

    iget-object v1, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v4, 0x315

    iget-boolean v5, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mSendBroadcast:Z

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;-><init>(Landroid/content/Context;Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;Landroid/app/NotificationManager;IZ)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    .line 484
    return-void
.end method

.method private startAnimation(Ljava/lang/Runnable;IIZZ)V
    .locals 6
    .parameter "finisher"
    .parameter "w"
    .parameter "h"
    .parameter "statusBarVisible"
    .parameter "navBarVisible"

    .prologue
    .line 565
    iget-object v3, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 566
    iget-object v3, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 569
    iget-object v3, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    .line 570
    iget-object v3, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 571
    iget-object v3, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 574
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 575
    invoke-direct {p0}, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->createAsusScaleDownAnimation()Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 576
    .local v1, screenshotScaleDownAnim:Landroid/animation/ValueAnimator;
    invoke-direct {p0}, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->createAsusPauseAnimation()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 577
    .local v0, screenshotPauseAnim:Landroid/animation/ValueAnimator;
    invoke-direct {p0}, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->createAsusScaleUpAnimation()Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 578
    .local v2, screenshotScaleUpAnim:Landroid/animation/ValueAnimator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    .line 579
    iget-object v3, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 580
    iget-object v3, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$2;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$2;-><init>(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 597
    iget-object v3, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$3;-><init>(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 608
    return-void
.end method


# virtual methods
.method takeScreenshot(Ljava/lang/Runnable;ZZ)V
    .locals 12
    .parameter "finisher"
    .parameter "statusBarVisible"
    .parameter "navBarVisible"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 508
    const/4 v0, 0x2

    new-array v9, v0, [F

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    aput v1, v9, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    aput v1, v9, v0

    .line 509
    .local v9, dims:[F
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->getDegreesForRotation(I)F

    move-result v8

    .line 510
    .local v8, degrees:F
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_1

    const/4 v10, 0x1

    .line 511
    .local v10, requiresRotation:Z
    :goto_0
    if-eqz v10, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 514
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v1, v8

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 515
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 516
    const/4 v0, 0x0

    const/4 v1, 0x0

    aget v1, v9, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    aput v1, v9, v0

    .line 517
    const/4 v0, 0x1

    const/4 v1, 0x1

    aget v1, v9, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    aput v1, v9, v0

    .line 521
    :cond_0
    const/4 v0, 0x0

    aget v0, v9, v0

    float-to-int v0, v0

    const/4 v1, 0x1

    aget v1, v9, v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 522
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 523
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;)V

    .line 524
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 556
    :goto_1
    return-void

    .line 510
    .end local v10           #requiresRotation:Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 528
    .restart local v10       #requiresRotation:Z
    :cond_2
    if-eqz v10, :cond_3

    .line 530
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 532
    .local v11, ss:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 533
    .local v6, c:Landroid/graphics/Canvas;
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 534
    invoke-virtual {v6, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 535
    const/4 v0, 0x0

    aget v0, v9, v0

    neg-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    const/4 v1, 0x1

    aget v1, v9, v1

    neg-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 536
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 537
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 539
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 540
    iput-object v11, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 544
    .end local v6           #c:Landroid/graphics/Canvas;
    .end local v11           #ss:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 545
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 547
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 548
    .local v7, currentScreenWidth:I
    iget v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenWidth:I

    if-eq v0, v7, :cond_4

    .line 550
    iput v7, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenWidth:I

    .line 551
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mShutterAnimationView:Lcom/android/systemui/screenshot/ShutterAnimationView;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ShutterAnimationView;->resetStatus()V

    .line 554
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->startAnimation(Ljava/lang/Runnable;IIZZ)V

    goto/16 :goto_1
.end method
