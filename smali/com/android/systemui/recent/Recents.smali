.class public Lcom/android/systemui/recent/Recents;
.super Lcom/android/systemui/SystemUI;
.source "Recents.java"

# interfaces
.implements Lcom/android/systemui/RecentsComponent;


# instance fields
.field private currentDDSState:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method

.method private getDDSState()I
    .locals 2

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v1, 0xf

    .line 263
    .local v0, screenSize:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelPreloadingRecentTasksList()V
    .locals 4

    .prologue
    .line 235
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.recent.CANCEL_PRELOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.recent.RecentsPreloadReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    iget-object v1, p0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 240
    iget-object v1, p0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelPreloadingFirstTask()V

    .line 241
    return-void
.end method

.method public closeRecents()V
    .locals 4

    .prologue
    .line 246
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.recent.action.CLOSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    iget-object v1, p0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 249
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/android/systemui/recent/Recents;->getDDSState()I

    move-result v0

    .line 254
    .local v0, ddsState:I
    iget v1, p0, Lcom/android/systemui/recent/Recents;->currentDDSState:I

    if-eq v1, v0, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->resetInstanceByDDs()V

    .line 257
    :cond_0
    iput v0, p0, Lcom/android/systemui/recent/Recents;->currentDDSState:I

    .line 258
    return-void
.end method

.method public preloadRecentTasksList()V
    .locals 4

    .prologue
    .line 224
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.recent.action.PRELOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.recent.RecentsPreloadReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    iget-object v1, p0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 229
    iget-object v1, p0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->preloadFirstTask()V

    .line 230
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 52
    const-class v0, Lcom/android/systemui/RecentsComponent;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/recent/Recents;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/recent/Recents;->getDDSState()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/Recents;->currentDDSState:I

    .line 54
    const-string v0, "Recents"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init DDS state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/recent/Recents;->currentDDSState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method public toggleRecents(Landroid/view/Display;ILandroid/view/View;)V
    .locals 39
    .parameter "display"
    .parameter "layoutDirection"
    .parameter "statusBarView"

    .prologue
    .line 68
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/recent/RecentTasksLoader;->getFirstTask()Lcom/android/systemui/recent/TaskDescription;

    move-result-object v13

    .line 70
    .local v13, firstTask:Lcom/android/systemui/recent/TaskDescription;
    new-instance v15, Landroid/content/Intent;

    const-string v35, "com.android.systemui.recent.action.TOGGLE_RECENTS"

    move-object/from16 v0, v35

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v15, intent:Landroid/content/Intent;
    const-string v35, "com.android.systemui"

    const-string v36, "com.android.systemui.recent.RecentsActivity"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const/high16 v35, 0x1080

    move/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 76
    if-nez v13, :cond_1

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/systemui/recent/RecentsActivity;->forceOpaqueBackground(Landroid/content/Context;)Z

    move-result v35

    if-eqz v35, :cond_0

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const v36, 0x7f05000c

    const v37, 0x7f05000d

    invoke-static/range {v35 .. v37}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v18

    .line 81
    .local v18, opts:Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v36

    new-instance v37, Landroid/os/UserHandle;

    const/16 v38, -0x2

    invoke-direct/range {v37 .. v38}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 219
    .end local v13           #firstTask:Lcom/android/systemui/recent/TaskDescription;
    .end local v15           #intent:Landroid/content/Intent;
    .end local v18           #opts:Landroid/app/ActivityOptions;
    :goto_0
    return-void

    .line 85
    .restart local v13       #firstTask:Lcom/android/systemui/recent/TaskDescription;
    .restart local v15       #intent:Landroid/content/Intent;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    new-instance v36, Landroid/os/UserHandle;

    const/16 v37, -0x2

    invoke-direct/range {v36 .. v37}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    .end local v13           #firstTask:Lcom/android/systemui/recent/TaskDescription;
    .end local v15           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v11

    .line 217
    .local v11, e:Landroid/content/ActivityNotFoundException;
    const-string v35, "Recents"

    const-string v36, "Failed to launch RecentAppsIntent"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 90
    .end local v11           #e:Landroid/content/ActivityNotFoundException;
    .restart local v13       #firstTask:Lcom/android/systemui/recent/TaskDescription;
    .restart local v15       #intent:Landroid/content/Intent;
    :cond_1
    const/4 v12, 0x0

    .line 91
    .local v12, first:Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v13}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v35

    move-object/from16 v0, v35

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v35, v0

    if-eqz v35, :cond_2

    .line 92
    invoke-virtual {v13}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v35

    check-cast v35, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    .line 98
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 100
    .local v24, res:Landroid/content/res/Resources;
    const v35, 0x7f070004

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    sget v36, Lcom/android/systemui/recent/RecentTasksLoader;->SCALE_THUMBNAIL_CONSTANT:F

    mul-float v31, v35, v36

    .line 103
    .local v31, thumbWidth:F
    const v35, 0x7f070005

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    sget v36, Lcom/android/systemui/recent/RecentTasksLoader;->SCALE_THUMBNAIL_CONSTANT:F

    mul-float v28, v35, v36

    .line 106
    .local v28, thumbHeight:F
    if-nez v12, :cond_3

    .line 107
    new-instance v35, Ljava/lang/RuntimeException;

    const-string v36, "Recents thumbnail is null"

    invoke-direct/range {v35 .. v36}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 94
    .end local v24           #res:Landroid/content/res/Resources;
    .end local v28           #thumbHeight:F
    .end local v31           #thumbWidth:F
    :cond_2
    const/16 v35, 0x1

    const/16 v36, 0x1

    sget-object v37, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v35 .. v37}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/recent/RecentTasksLoader;->getDefaultThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 96
    .local v7, d:Landroid/graphics/drawable/Drawable;
    new-instance v35, Landroid/graphics/Canvas;

    move-object/from16 v0, v35

    invoke-direct {v0, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v35

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 109
    .end local v7           #d:Landroid/graphics/drawable/Drawable;
    .restart local v24       #res:Landroid/content/res/Resources;
    .restart local v28       #thumbHeight:F
    .restart local v31       #thumbWidth:F
    :cond_3
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    cmpl-float v35, v35, v31

    if-nez v35, :cond_4

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    cmpl-float v35, v35, v28

    if-eqz v35, :cond_5

    .line 110
    :cond_4
    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v12, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 112
    if-nez v12, :cond_5

    .line 113
    new-instance v35, Ljava/lang/RuntimeException;

    const-string v36, "Recents thumbnail is null"

    invoke-direct/range {v35 .. v36}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 118
    :cond_5
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    .line 119
    .local v10, dm:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 122
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 125
    .local v6, config:Landroid/content/res/Configuration;
    iget v0, v6, Landroid/content/res/Configuration;->orientation:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_a

    .line 126
    const v35, 0x7f070013

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    move/from16 v0, v35

    int-to-float v4, v0

    .line 128
    .local v4, appLabelLeftMargin:F
    sget-boolean v35, Lcom/asus/systemui/util/AsusQuicksettingUtil;->IS_SMALL_RAM:Z

    if-nez v35, :cond_7

    const v35, 0x7f070012

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    move/from16 v0, v35

    int-to-float v5, v0

    .line 131
    .local v5, appLabelWidth:F
    :goto_2
    sget-boolean v35, Lcom/asus/systemui/util/AsusQuicksettingUtil;->IS_SMALL_RAM:Z

    if-nez v35, :cond_8

    const v35, 0x7f070010

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v29, v0

    .line 134
    .local v29, thumbLeftMargin:F
    :goto_3
    const v35, 0x7f070006

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v27, v0

    .line 136
    .local v27, thumbBgPadding:F
    sget-boolean v35, Lcom/asus/systemui/util/AsusQuicksettingUtil;->IS_SMALL_RAM:Z

    if-nez v35, :cond_9

    const/16 v20, 0x0

    .line 139
    .local v20, recentPanelLeftMargin:F
    :goto_4
    add-float v35, v4, v5

    add-float v35, v35, v29

    add-float v35, v35, v31

    const/high16 v36, 0x4000

    mul-float v36, v36, v27

    add-float v32, v35, v36

    .line 145
    .local v32, width:F
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    sub-float v35, v35, v32

    const/high16 v36, 0x4000

    div-float v35, v35, v36

    add-float v35, v35, v4

    add-float v35, v35, v5

    add-float v35, v35, v27

    add-float v35, v35, v29

    const/high16 v36, 0x4000

    div-float v36, v20, v36

    add-float v35, v35, v36

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v33, v0

    .line 147
    .local v33, x:I
    iget v0, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    const v36, 0x7f070005

    move-object/from16 v0, v24

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    sget v37, Lcom/android/systemui/recent/RecentTasksLoader;->SCALE_THUMBNAIL_CONSTANT:F

    mul-float v36, v36, v37

    sub-float v35, v35, v36

    sub-float v35, v35, v27

    const v36, 0x7f070079

    move-object/from16 v0, v24

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    sub-float v35, v35, v36

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v34, v0

    .line 150
    .local v34, y:I
    const/16 v35, 0x1

    move/from16 v0, p2

    move/from16 v1, v35

    if-ne v0, v1, :cond_6

    .line 151
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v35, v0

    sub-int v35, v35, v33

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    const v36, 0x7f070004

    move-object/from16 v0, v24

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    sget v37, Lcom/android/systemui/recent/RecentTasksLoader;->SCALE_THUMBNAIL_CONSTANT:F

    mul-float v36, v36, v37

    sub-float v35, v35, v36

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v33, v0

    .line 200
    .end local v4           #appLabelLeftMargin:F
    .end local v5           #appLabelWidth:F
    .end local v20           #recentPanelLeftMargin:F
    .end local v29           #thumbLeftMargin:F
    .end local v32           #width:F
    :cond_6
    :goto_5
    new-instance v35, Lcom/android/systemui/recent/Recents$1;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/Recents$1;-><init>(Lcom/android/systemui/recent/Recents;)V

    move-object/from16 v0, p3

    move/from16 v1, v33

    move/from16 v2, v34

    move-object/from16 v3, v35

    invoke-static {v0, v12, v1, v2, v3}, Landroid/app/ActivityOptions;->makeThumbnailScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IILandroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v18

    .line 212
    .restart local v18       #opts:Landroid/app/ActivityOptions;
    const-string v35, "com.android.systemui.recent.WAITING_FOR_WINDOW_ANIMATION"

    const/16 v36, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v36

    new-instance v37, Landroid/os/UserHandle;

    const/16 v38, -0x2

    invoke-direct/range {v37 .. v38}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 128
    .end local v18           #opts:Landroid/app/ActivityOptions;
    .end local v27           #thumbBgPadding:F
    .end local v33           #x:I
    .end local v34           #y:I
    .restart local v4       #appLabelLeftMargin:F
    :cond_7
    const v35, 0x7f07000a

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    move/from16 v0, v35

    int-to-float v5, v0

    goto/16 :goto_2

    .line 131
    .restart local v5       #appLabelWidth:F
    :cond_8
    const v35, 0x7f070008

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v29, v0

    goto/16 :goto_3

    .line 136
    .restart local v27       #thumbBgPadding:F
    .restart local v29       #thumbLeftMargin:F
    :cond_9
    const v35, 0x7f070009

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v20, v0

    goto/16 :goto_4

    .line 156
    .end local v4           #appLabelLeftMargin:F
    .end local v5           #appLabelWidth:F
    .end local v27           #thumbBgPadding:F
    .end local v29           #thumbLeftMargin:F
    :cond_a
    sget-boolean v35, Lcom/asus/systemui/util/AsusQuicksettingUtil;->IS_SMALL_RAM:Z

    if-nez v35, :cond_b

    const v35, 0x7f07007c

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v30, v0

    .line 159
    .local v30, thumbTopMargin:F
    :goto_6
    const v35, 0x7f070006

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v27, v0

    .line 161
    .restart local v27       #thumbBgPadding:F
    const v35, 0x7f070011

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v26, v0

    .line 163
    .local v26, textPadding:F
    const v35, 0x7f07000b

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v17, v0

    .line 165
    .local v17, labelTextSize:F
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    .line 166
    .local v19, p:Landroid/graphics/Paint;
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 167
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v35

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v35, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v36

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v16, v0

    .line 169
    .local v16, labelTextHeight:F
    const v35, 0x7f07000c

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    move/from16 v0, v35

    int-to-float v9, v0

    .line 171
    .local v9, descriptionTextSize:F
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 172
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v35

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v35, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v36

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move/from16 v0, v35

    int-to-float v8, v0

    .line 175
    .local v8, descriptionTextHeight:F
    const v35, 0x105000c

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v25, v0

    .line 177
    .local v25, statusBarHeight:F
    move/from16 v22, v25

    .line 179
    .local v22, recentsItemTopPadding:F
    add-float v35, v30, v28

    const/high16 v36, 0x4000

    mul-float v36, v36, v27

    add-float v35, v35, v36

    add-float v35, v35, v26

    add-float v35, v35, v16

    add-float v35, v35, v22

    add-float v35, v35, v26

    add-float v14, v35, v8

    .line 183
    .local v14, height:F
    const v35, 0x7f070014

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v21, v0

    .line 185
    .local v21, recentsItemRightPadding:F
    const v35, 0x7f07000f

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v23, v0

    .line 187
    .local v23, recentsScrollViewRightPadding:F
    sget-boolean v35, Lcom/asus/systemui/util/AsusQuicksettingUtil;->IS_SMALL_RAM:Z

    if-eqz v35, :cond_c

    .line 188
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    const v36, 0x7f070004

    move-object/from16 v0, v24

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    sget v37, Lcom/android/systemui/recent/RecentTasksLoader;->SCALE_THUMBNAIL_CONSTANT:F

    mul-float v36, v36, v37

    sub-float v35, v35, v36

    sub-float v35, v35, v27

    sub-float v35, v35, v23

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v33, v0

    .line 196
    .restart local v33       #x:I
    :goto_7
    iget v0, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    sub-float v35, v35, v25

    sub-float v35, v35, v14

    const/high16 v36, 0x4000

    div-float v35, v35, v36

    add-float v35, v35, v30

    add-float v35, v35, v22

    add-float v35, v35, v27

    add-float v35, v35, v25

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v34, v0

    .restart local v34       #y:I
    goto/16 :goto_5

    .line 156
    .end local v8           #descriptionTextHeight:F
    .end local v9           #descriptionTextSize:F
    .end local v14           #height:F
    .end local v16           #labelTextHeight:F
    .end local v17           #labelTextSize:F
    .end local v19           #p:Landroid/graphics/Paint;
    .end local v21           #recentsItemRightPadding:F
    .end local v22           #recentsItemTopPadding:F
    .end local v23           #recentsScrollViewRightPadding:F
    .end local v25           #statusBarHeight:F
    .end local v26           #textPadding:F
    .end local v27           #thumbBgPadding:F
    .end local v30           #thumbTopMargin:F
    .end local v33           #x:I
    .end local v34           #y:I
    :cond_b
    const v35, 0x7f070007

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v30, v0

    goto/16 :goto_6

    .line 192
    .restart local v8       #descriptionTextHeight:F
    .restart local v9       #descriptionTextSize:F
    .restart local v14       #height:F
    .restart local v16       #labelTextHeight:F
    .restart local v17       #labelTextSize:F
    .restart local v19       #p:Landroid/graphics/Paint;
    .restart local v21       #recentsItemRightPadding:F
    .restart local v22       #recentsItemTopPadding:F
    .restart local v23       #recentsScrollViewRightPadding:F
    .restart local v25       #statusBarHeight:F
    .restart local v26       #textPadding:F
    .restart local v27       #thumbBgPadding:F
    .restart local v30       #thumbTopMargin:F
    :cond_c
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    const v36, 0x7f070004

    move-object/from16 v0, v24

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    sget v37, Lcom/android/systemui/recent/RecentTasksLoader;->SCALE_THUMBNAIL_CONSTANT:F
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    mul-float v36, v36, v37

    sub-float v35, v35, v36

    sub-float v35, v35, v27

    sub-float v35, v35, v21

    sub-float v35, v35, v23

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v33, v0

    .restart local v33       #x:I
    goto :goto_7
.end method
