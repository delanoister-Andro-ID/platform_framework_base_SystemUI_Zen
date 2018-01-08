.class Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;
.super Ljava/lang/Object;
.source "AsusGlobalScreenshot.java"


# instance fields
.field context:Landroid/content/Context;

.field finisher:Ljava/lang/Runnable;

.field iconSize:I

.field image:Landroid/graphics/Bitmap;

.field imageUri:Landroid/net/Uri;

.field result:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clearContext()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 94
    return-void
.end method

.method clearImage()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 89
    iput-object v0, p0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/screenshot/AsusSaveImageInBackgroundData;->iconSize:I

    .line 91
    return-void
.end method
