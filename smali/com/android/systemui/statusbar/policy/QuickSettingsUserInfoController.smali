.class public Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;
.super Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
.source "QuickSettingsUserInfoController.java"


# instance fields
.field private mCircleHeight:I

.field private mCircleWidth:I

.field private mLocale:Ljava/util/Locale;

.field private mR:Landroid/content/res/Resources;

.field private mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

.field private mUserInfoTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUserView:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V
    .locals 5
    .parameter "context"
    .parameter "itemview"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    .line 59
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mUserView:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    .line 60
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mR:Landroid/content/res/Resources;

    .line 62
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 63
    .local v2, o:Landroid/graphics/BitmapFactory$Options;
    const/16 v3, 0xa0

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 64
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mR:Landroid/content/res/Resources;

    const v4, 0x7f020018

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 65
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mCircleWidth:I

    .line 66
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mCircleHeight:I

    .line 68
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.provider.Contacts.PROFILE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string v3, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mCircleWidth:I

    return v0
.end method

.method static synthetic access$100(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mR:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;)Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mUserView:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mUserInfoTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method private static getRoundedCornerBitmap(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "src"
    .parameter "ratio"
    .parameter "size"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 198
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 199
    .local v2, output:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 201
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 202
    .local v7, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 203
    .local v1, height:I
    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 205
    .local v6, square:I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 206
    .local v3, paint:Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 207
    new-instance v4, Landroid/graphics/Rect;

    sub-int v8, v7, v6

    div-int/lit8 v8, v8, 0x2

    sub-int v9, v1, v6

    div-int/lit8 v9, v9, 0x2

    invoke-direct {v4, v8, v9, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 208
    .local v4, rect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v8, p2

    int-to-float v9, p2

    invoke-direct {v5, v11, v11, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 210
    .local v5, rectF:Landroid/graphics/RectF;
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 211
    int-to-float v8, p2

    div-float/2addr v8, p1

    int-to-float v9, p2

    div-float/2addr v9, p1

    invoke-virtual {v0, v5, v8, v9, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 213
    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 214
    invoke-virtual {v0, p0, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 215
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 216
    return-object v2
.end method


# virtual methods
.method protected getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 1

    .prologue
    .line 266
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 247
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->animateCollapsePanels()V

    .line 248
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mContext:Landroid/content/Context;

    const-string v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 250
    .local v2, um:Landroid/os/UserManager;
    invoke-virtual {v2, v6}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v6, :cond_0

    .line 252
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "QuickSettingsUserInfoController"

    const-string v4, "Couldn\'t show user switcher"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 257
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x3

    invoke-static {v3, p1, v4, v5, v7}, Landroid/provider/ContactsContract$QuickContact;->composeQuickContactsIntent(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 260
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v3, v1, v6}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;Z)V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 221
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 223
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->reloadUserInfo()V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    const-string v5, "android.provider.Contacts.PROFILE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 227
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v2, v5, Landroid/content/pm/UserInfo;->id:I

    .line 228
    .local v2, currentUser:I
    const-string v5, "android.intent.extra.user_handle"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->getSendingUserId()I

    move-result v6

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 230
    .local v1, changedUser:I
    if-ne v1, v2, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->reloadUserInfo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 233
    .end local v1           #changedUser:I
    .end local v2           #currentUser:I
    :catch_0
    move-exception v3

    .line 234
    .local v3, e:Landroid/os/RemoteException;
    const-string v5, "QuickSettingsUserInfoController"

    const-string v6, "Couldn\'t get current user id for profile change"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 236
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_3
    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 237
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v4, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 238
    .local v4, newLocale:Ljava/util/Locale;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mLocale:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 239
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mLocale:Ljava/util/Locale;

    .line 240
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->reloadUserInfo()V

    goto :goto_0
.end method

.method protected onReceiveModeChanged(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 1
    .parameter "intent"

    .prologue
    .line 271
    const/4 v0, 0x0

    return-object v0
.end method

.method public queryForUserInformation()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, currentUserContext:Landroid/content/Context;
    const/4 v3, 0x0

    .line 94
    .local v3, userInfo:Landroid/content/pm/UserInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 95
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mContext:Landroid/content/Context;

    const-string v5, "android"

    const/4 v6, 0x0

    new-instance v7, Landroid/os/UserHandle;

    iget v8, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 104
    :goto_0
    move-object v0, v1

    .line 105
    .local v0, context:Landroid/content/Context;
    new-instance v4, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController$1;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController$1;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mUserInfoTask:Landroid/os/AsyncTask;

    .line 193
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mUserInfoTask:Landroid/os/AsyncTask;

    new-array v5, v9, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 194
    return-void

    .line 97
    .end local v0           #context:Landroid/content/Context;
    :catch_0
    move-exception v2

    .line 98
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "QuickSettingsUserInfoController"

    const-string v5, "Couldn\'t create user context"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 100
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 101
    .local v2, e:Landroid/os/RemoteException;
    const-string v4, "QuickSettingsUserInfoController"

    const-string v5, "Couldn\'t get user info"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reloadUserInfo()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mUserInfoTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mUserInfoTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mUserInfoTask:Landroid/os/AsyncTask;

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->queryForUserInformation()V

    .line 88
    return-void
.end method

.method protected setMode(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V
    .locals 0
    .parameter "statusBarService"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    .line 78
    return-void
.end method
