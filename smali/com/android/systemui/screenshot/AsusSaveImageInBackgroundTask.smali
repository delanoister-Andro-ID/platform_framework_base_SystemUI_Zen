.class Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "AsusGlobalScreenshot.java"


# annotations
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


# static fields
.field public static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field private static final IS_SMALL_RAM:Z

.field private static final SCREENSHOT_COMPRESSFORMAT:[Landroid/graphics/Bitmap$CompressFormat;

.field private static final SCREENSHOT_MIME_TYPE:[Ljava/lang/String;

.field private static final SCREENSHOT_NAME_TEMPLATE:[Ljava/lang/String;

.field private static mTickerAddSpace:Z


# instance fields
.field private final mFileNameTemplate:Ljava/lang/String;

.field private final mImageFileName:Ljava/lang/String;

.field private final mImageFilePath:Ljava/lang/String;

.field private final mImageHeight:I

.field private final mImageTime:J

.field private final mImageWidth:I

.field private mMimeType:Ljava/lang/String;

.field private final mNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mNotificationId:I

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

.field private final mScreenshotFormat:I

.field private final mSendBroadcast:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Screenshot_%s.jpg"

    aput-object v1, v0, v2

    const-string v1, "Screenshot_%s.png"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->SCREENSHOT_NAME_TEMPLATE:[Ljava/lang/String;

    .line 107
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "image/jpeg"

    aput-object v1, v0, v2

    const-string v1, "image/png"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->SCREENSHOT_MIME_TYPE:[Ljava/lang/String;

    .line 109
    new-array v0, v4, [Landroid/graphics/Bitmap$CompressFormat;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->SCREENSHOT_COMPRESSFORMAT:[Landroid/graphics/Bitmap$CompressFormat;

    .line 112
    sget-boolean v0, Lcom/asus/systemui/util/AsusQuicksettingUtil;->IS_SMALL_RAM:Z

    sput-boolean v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->IS_SMALL_RAM:Z

    .line 114
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;Landroid/app/NotificationManager;IZ)V
    .locals 18
    .parameter "context"
    .parameter "data"
    .parameter "nManager"
    .parameter "nId"
    .parameter "sendBroadcast"

    .prologue
    .line 139
    invoke-direct/range {p0 .. p0}, Landroid/os/AsyncTask;-><init>()V

    .line 140
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 142
    .local v12, r:Landroid/content/res/Resources;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "screenshot_format"

    const/16 v16, 0x0

    const/16 v17, -0x2

    invoke-static/range {v14 .. v17}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mScreenshotFormat:I

    .line 144
    sget-object v14, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->SCREENSHOT_NAME_TEMPLATE:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mScreenshotFormat:I

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mFileNameTemplate:Ljava/lang/String;

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mImageTime:J

    .line 147
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v15, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v15, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v16, v0

    invoke-direct/range {v15 .. v17}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 148
    .local v6, imageDate:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 149
    .local v7, imageDir:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mFileNameTemplate:Ljava/lang/String;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v6, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    .line 150
    sget-object v14, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->SCREENSHOT_MIME_TYPE:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mScreenshotFormat:I

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mMimeType:Ljava/lang/String;

    .line 151
    const-string v14, "%s/%s/%s"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v7, v15, v16

    const/16 v16, 0x1

    const-string v17, "Screenshots"

    aput-object v17, v15, v16

    const/16 v16, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    .line 154
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mImageWidth:I

    .line 155
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mImageHeight:I

    .line 156
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;->iconSize:I

    .line 158
    .local v5, iconSize:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mImageWidth:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mImageHeight:I

    if-ge v14, v15, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mImageWidth:I

    .line 159
    .local v13, shortSide:I
    :goto_0
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v14

    invoke-static {v13, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 160
    .local v11, preview:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 161
    .local v2, c:Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 162
    .local v10, paint:Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/ColorMatrix;

    invoke-direct {v4}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 163
    .local v4, desat:Landroid/graphics/ColorMatrix;
    const/high16 v14, 0x3e80

    invoke-virtual {v4, v14}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 164
    new-instance v14, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v14, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v10, v14}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 165
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 166
    .local v8, matrix:Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mImageWidth:I

    sub-int v14, v13, v14

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mImageHeight:I

    sub-int v15, v13, v15

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    invoke-virtual {v8, v14, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 168
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v14, v8, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 169
    const v14, 0x40ffffff

    invoke-virtual {v2, v14}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 170
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 172
    const/4 v3, 0x0

    .line 173
    .local v3, croppedIcon:Landroid/graphics/Bitmap;
    sget-boolean v14, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->IS_SMALL_RAM:Z

    if-nez v14, :cond_0

    .line 174
    const/4 v14, 0x1

    invoke-static {v11, v5, v5, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 177
    :cond_0
    sget-boolean v14, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mTickerAddSpace:Z

    if-nez v14, :cond_4

    const/4 v14, 0x1

    :goto_1
    sput-boolean v14, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mTickerAddSpace:Z

    .line 178
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mNotificationId:I

    .line 179
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    .line 180
    new-instance v15, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const v16, 0x7f0600a8

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-boolean v14, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mTickerAddSpace:Z

    if-eqz v14, :cond_5

    const-string v14, " "

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v14

    const v15, 0x7f0600a9

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v14

    const v15, 0x7f0600aa

    invoke-virtual {v12, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v14

    const v15, 0x7f020183

    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 188
    sget-boolean v14, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->IS_SMALL_RAM:Z

    if-nez v14, :cond_1

    .line 189
    new-instance v14, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v14}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    invoke-virtual {v14, v11}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    .line 190
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 193
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v14}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    .line 194
    .local v9, n:Landroid/app/Notification;
    iget v14, v9, Landroid/app/Notification;->flags:I

    or-int/lit8 v14, v14, 0x20

    iput v14, v9, Landroid/app/Notification;->flags:I

    .line 195
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    move/from16 v0, p4

    invoke-virtual {v14, v0, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 197
    sget-boolean v14, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->IS_SMALL_RAM:Z

    if-nez v14, :cond_2

    .line 201
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v14, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 203
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 206
    :cond_2
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mSendBroadcast:Z

    .line 207
    return-void

    .line 158
    .end local v2           #c:Landroid/graphics/Canvas;
    .end local v3           #croppedIcon:Landroid/graphics/Bitmap;
    .end local v4           #desat:Landroid/graphics/ColorMatrix;
    .end local v8           #matrix:Landroid/graphics/Matrix;
    .end local v9           #n:Landroid/app/Notification;
    .end local v10           #paint:Landroid/graphics/Paint;
    .end local v11           #preview:Landroid/graphics/Bitmap;
    .end local v13           #shortSide:I
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mImageHeight:I

    goto/16 :goto_0

    .line 177
    .restart local v2       #c:Landroid/graphics/Canvas;
    .restart local v3       #croppedIcon:Landroid/graphics/Bitmap;
    .restart local v4       #desat:Landroid/graphics/ColorMatrix;
    .restart local v8       #matrix:Landroid/graphics/Matrix;
    .restart local v10       #paint:Landroid/graphics/Paint;
    .restart local v11       #preview:Landroid/graphics/Bitmap;
    .restart local v13       #shortSide:I
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 180
    :cond_5
    const-string v14, ""

    goto/16 :goto_2
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;)Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;
    .locals 24
    .parameter "params"

    .prologue
    .line 211
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    const/16 v19, 0x0

    .line 316
    :goto_0
    return-object v19

    .line 212
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->isCancelled()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 213
    const/16 v19, 0x0

    aget-object v19, p1, v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;->clearImage()V

    .line 214
    const/16 v19, 0x0

    aget-object v19, p1, v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;->clearContext()V

    .line 215
    const/16 v19, 0x0

    goto :goto_0

    .line 219
    :cond_1
    const/16 v19, -0x2

    invoke-static/range {v19 .. v19}, Landroid/os/Process;->setThreadPriority(I)V

    .line 221
    const/16 v19, 0x0

    aget-object v19, p1, v19

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 222
    .local v3, context:Landroid/content/Context;
    const/16 v19, 0x0

    aget-object v19, p1, v19

    move-object/from16 v0, v19

    iget-object v11, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 223
    .local v11, image:Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 224
    .local v7, fOS:Ljava/io/FileOutputStream;
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 225
    .local v12, r:Landroid/content/res/Resources;
    const/4 v9, 0x0

    .line 229
    .local v9, file:Ljava/io/File;
    :try_start_0
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 230
    .end local v9           #file:Ljava/io/File;
    .local v10, file:Ljava/io/File;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_2

    .line 231
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->mkdirs()Z

    .line 233
    :cond_2
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 234
    .end local v7           #fOS:Ljava/io/FileOutputStream;
    .local v8, fOS:Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v19, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->SCREENSHOT_COMPRESSFORMAT:[Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mScreenshotFormat:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    const/16 v20, 0x64

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 235
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 236
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 237
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_3

    invoke-virtual {v10}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-nez v19, :cond_5

    .line 238
    :cond_3
    new-instance v19, Ljava/lang/Exception;

    invoke-direct/range {v19 .. v19}, Ljava/lang/Exception;-><init>()V

    throw v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 299
    :catch_0
    move-exception v6

    move-object v9, v10

    .end local v10           #file:Ljava/io/File;
    .restart local v9       #file:Ljava/io/File;
    move-object v7, v8

    .line 302
    .end local v8           #fOS:Ljava/io/FileOutputStream;
    .local v6, e:Ljava/lang/Exception;
    .restart local v7       #fOS:Ljava/io/FileOutputStream;
    :goto_1
    const/16 v19, 0x0

    :try_start_3
    aget-object v19, p1, v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;->clearImage()V

    .line 303
    const/16 v19, 0x0

    aget-object v19, p1, v19

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;->result:I

    .line 304
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 307
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 313
    .end local v6           #e:Ljava/lang/Exception;
    :goto_2
    if-eqz v11, :cond_4

    .line 314
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 316
    :cond_4
    const/16 v19, 0x0

    aget-object v19, p1, v19

    goto/16 :goto_0

    .line 243
    .end local v7           #fOS:Ljava/io/FileOutputStream;
    .end local v9           #file:Ljava/io/File;
    .restart local v8       #fOS:Ljava/io/FileOutputStream;
    .restart local v10       #file:Ljava/io/File;
    :cond_5
    :try_start_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x3e8

    div-long v4, v19, v21

    .line 246
    .local v4, dateSeconds:J
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 247
    .local v18, values:Landroid/content/ContentValues;
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 248
    .local v13, resolver:Landroid/content/ContentResolver;
    const-string v19, "_data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v19, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v19, "_display_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v19, "datetaken"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 252
    const-string v19, "date_added"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 253
    const-string v19, "date_modified"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 254
    const-string v19, "mime_type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mMimeType:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v19, "width"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 256
    const-string v19, "height"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 257
    sget-object v19, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v17

    .line 259
    .local v17, uri:Landroid/net/Uri;
    new-instance v19, Ljava/text/SimpleDateFormat;

    const-string v20, "hh:mma, MMM dd, yyyy"

    invoke-direct/range {v19 .. v20}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v20, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v21, v0

    invoke-direct/range {v20 .. v22}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v19 .. v20}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    .line 261
    .local v16, subjectDate:Ljava/lang/String;
    const-string v19, "Screenshot (%s)"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v16, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 262
    .local v15, subject:Ljava/lang/String;
    new-instance v14, Landroid/content/Intent;

    const-string v19, "android.intent.action.SEND"

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v14, sharingIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mMimeType:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const-string v19, "android.intent.extra.STREAM"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 265
    const-string v19, "android.intent.extra.SUBJECT"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-static {v14, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    .line 268
    .local v2, chooserIntent:Landroid/content/Intent;
    const v19, 0x10008000

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v19, v0

    const v20, 0x7f0200d0

    const v21, 0x10404da

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const/high16 v23, 0x1000

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v3, v0, v2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v22

    invoke-virtual/range {v19 .. v22}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 296
    const/16 v19, 0x0

    aget-object v19, p1, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    .line 297
    const/16 v19, 0x0

    aget-object v19, p1, v19

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 298
    const/16 v19, 0x0

    aget-object v19, p1, v19

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;->result:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 307
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-object v9, v10

    .end local v10           #file:Ljava/io/File;
    .restart local v9       #file:Ljava/io/File;
    move-object v7, v8

    .line 309
    .end local v8           #fOS:Ljava/io/FileOutputStream;
    .restart local v7       #fOS:Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 308
    .end local v7           #fOS:Ljava/io/FileOutputStream;
    .end local v9           #file:Ljava/io/File;
    .restart local v8       #fOS:Ljava/io/FileOutputStream;
    .restart local v10       #file:Ljava/io/File;
    :catch_1
    move-exception v19

    move-object v9, v10

    .end local v10           #file:Ljava/io/File;
    .restart local v9       #file:Ljava/io/File;
    move-object v7, v8

    .line 310
    .end local v8           #fOS:Ljava/io/FileOutputStream;
    .restart local v7       #fOS:Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 306
    .end local v2           #chooserIntent:Landroid/content/Intent;
    .end local v4           #dateSeconds:J
    .end local v13           #resolver:Landroid/content/ContentResolver;
    .end local v14           #sharingIntent:Landroid/content/Intent;
    .end local v15           #subject:Ljava/lang/String;
    .end local v16           #subjectDate:Ljava/lang/String;
    .end local v17           #uri:Landroid/net/Uri;
    .end local v18           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v19

    .line 307
    :goto_3
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 309
    :goto_4
    throw v19

    .line 308
    .restart local v6       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v19

    goto/16 :goto_2

    .end local v6           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v20

    goto :goto_4

    .line 306
    .end local v9           #file:Ljava/io/File;
    .restart local v10       #file:Ljava/io/File;
    :catchall_1
    move-exception v19

    move-object v9, v10

    .end local v10           #file:Ljava/io/File;
    .restart local v9       #file:Ljava/io/File;
    goto :goto_3

    .end local v7           #fOS:Ljava/io/FileOutputStream;
    .end local v9           #file:Ljava/io/File;
    .restart local v8       #fOS:Ljava/io/FileOutputStream;
    .restart local v10       #file:Ljava/io/File;
    :catchall_2
    move-exception v19

    move-object v9, v10

    .end local v10           #file:Ljava/io/File;
    .restart local v9       #file:Ljava/io/File;
    move-object v7, v8

    .end local v8           #fOS:Ljava/io/FileOutputStream;
    .restart local v7       #fOS:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 299
    :catch_4
    move-exception v6

    goto/16 :goto_1

    .end local v9           #file:Ljava/io/File;
    .restart local v10       #file:Ljava/io/File;
    :catch_5
    move-exception v6

    move-object v9, v10

    .end local v10           #file:Ljava/io/File;
    .restart local v9       #file:Ljava/io/File;
    goto/16 :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    check-cast p1, [Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->doInBackground([Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;)Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;)V
    .locals 7
    .parameter "params"

    .prologue
    const/4 v6, 0x0

    .line 321
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 322
    iget-object v4, p1, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 323
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;->clearImage()V

    .line 324
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;->clearContext()V

    .line 359
    :goto_0
    return-void

    .line 328
    :cond_0
    iget v4, p1, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;->result:I

    if-lez v4, :cond_2

    .line 330
    iget-object v4, p1, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v4, v5}, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;)V

    .line 357
    :cond_1
    :goto_1
    iget-object v4, p1, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 358
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;->clearContext()V

    goto :goto_0

    .line 333
    :cond_2
    iget-object v4, p1, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 336
    .local v3, r:Landroid/content/res/Resources;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    .local v1, launchIntent:Landroid/content/Intent;
    iget-object v4, p1, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 340
    iget-object v4, p0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const v5, 0x7f0600ab

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x7f0600ac

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-static {v5, v6, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 347
    iget-object v4, p0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 348
    .local v2, n:Landroid/app/Notification;
    iget v4, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, -0x21

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 349
    iget-object v4, p0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    iget v5, p0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mNotificationId:I

    invoke-virtual {v4, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 351
    iget-boolean v4, p0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mSendBroadcast:Z

    if-eqz v4, :cond_1

    .line 352
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.systemui.screenshot.action.SCREENSHOT_SAVED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 353
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "filePath"

    iget-object v5, p0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    iget-object v4, p1, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    check-cast p1, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundTask;->onPostExecute(Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;)V

    return-void
.end method
