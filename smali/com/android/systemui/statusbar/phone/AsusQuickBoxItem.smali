.class public Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;
.super Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;
.source "AsusQuickBoxItem.java"


# instance fields
.field private mActivityName:Ljava/lang/String;

.field private mPkgName:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private pkgIsExist:Z

.field private useActivityName:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->useActivityName:Z

    .line 16
    const-string v1, "notfound"

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->mActivityName:Ljava/lang/String;

    .line 48
    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem$1;-><init>(Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 21
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 22
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->pkgIsExist:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->useActivityName:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->mActivityName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "layoutId"
    .parameter "bg"
    .parameter "text"
    .parameter "sharfKey"
    .parameter "pkgName"

    .prologue
    .line 32
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;)V

    .line 33
    if-eqz p5, :cond_0

    .line 34
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->mPkgName:Ljava/lang/String;

    .line 35
    const-string v0, ""

    .line 36
    .local v0, title:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->useActivityName:Z

    if-eqz v1, :cond_1

    .line 37
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/asus/systemui/util/AsusQuicksettingUtil;->getInstance(Landroid/content/Context;)Lcom/asus/systemui/util/AsusQuicksettingUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, p5, v2}, Lcom/asus/systemui/util/AsusQuicksettingUtil;->getActivityName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_0
    const-string v1, "notfound"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->pkgIsExist:Z

    .line 43
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .end local v0           #title:Ljava/lang/String;
    :cond_0
    return-void

    .line 39
    .restart local v0       #title:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/asus/systemui/util/AsusQuicksettingUtil;->getInstance(Landroid/content/Context;)Lcom/asus/systemui/util/AsusQuicksettingUtil;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/asus/systemui/util/AsusQuicksettingUtil;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method unRegister()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 67
    return-void
.end method
