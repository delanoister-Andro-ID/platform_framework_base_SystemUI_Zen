.class Lcom/android/systemui/recent/DualAppsService$Observer;
.super Landroid/database/ContentObserver;
.source "DualAppsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/DualAppsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Observer"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 255
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 256
    iput-object p1, p0, Lcom/android/systemui/recent/DualAppsService$Observer;->mHandler:Landroid/os/Handler;

    .line 257
    iput-object p2, p0, Lcom/android/systemui/recent/DualAppsService$Observer;->mContext:Landroid/content/Context;

    .line 258
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 262
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, path:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/recent/DualAppsService$Observer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, change:Ljava/lang/String;
    const-string v2, "ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "asus_overlay_display_devices_status"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 265
    iget-object v2, p0, Lcom/android/systemui/recent/DualAppsService$Observer;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/systemui/recent/DualAppsService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/DualAppsService;->deviceReady(I)V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    const-string v2, "ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "asus_overlay_display_ext_status"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 269
    iget-object v2, p0, Lcom/android/systemui/recent/DualAppsService$Observer;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/systemui/recent/DualAppsService;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/DualAppsService;->deviceReady(I)V

    goto :goto_0

    .line 272
    :cond_2
    const-string v2, "asus_overlay_display_top"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 273
    iget-object v2, p0, Lcom/android/systemui/recent/DualAppsService$Observer;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/systemui/recent/DualAppsService;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/DualAppsService;->setDidAtTop(I)V

    goto :goto_0

    .line 276
    :cond_3
    const-string v2, "asus_overlay_display_show"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    iget-object v2, p0, Lcom/android/systemui/recent/DualAppsService$Observer;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/systemui/recent/DualAppsService;

    invoke-virtual {v2}, Lcom/android/systemui/recent/DualAppsService;->changeQuickSettings()V

    goto :goto_0
.end method
