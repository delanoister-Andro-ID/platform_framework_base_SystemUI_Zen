.class public Lcom/android/systemui/statusbar/policy/MyToast;
.super Ljava/lang/Object;
.source "MyToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MyToast$TN;
    }
.end annotation


# static fields
.field private static sService:Landroid/app/INotificationManager;


# instance fields
.field final mContext:Landroid/content/Context;

.field mDuration:I

.field mNextView:Landroid/view/View;

.field final mTN:Lcom/android/systemui/statusbar/policy/MyToast$TN;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MyToast;->mContext:Landroid/content/Context;

    .line 92
    new-instance v0, Lcom/android/systemui/statusbar/policy/MyToast$TN;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/MyToast$TN;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MyToast;->mTN:Lcom/android/systemui/statusbar/policy/MyToast$TN;

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MyToast;->mTN:Lcom/android/systemui/statusbar/policy/MyToast$TN;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MyToast$TN;->mY:I

    .line 95
    return-void
.end method

.method private static getService()Landroid/app/INotificationManager;
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lcom/android/systemui/statusbar/policy/MyToast;->sService:Landroid/app/INotificationManager;

    if-eqz v0, :cond_0

    .line 301
    sget-object v0, Lcom/android/systemui/statusbar/policy/MyToast;->sService:Landroid/app/INotificationManager;

    .line 304
    :goto_0
    return-object v0

    .line 303
    :cond_0
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/MyToast;->sService:Landroid/app/INotificationManager;

    .line 304
    sget-object v0, Lcom/android/systemui/statusbar/policy/MyToast;->sService:Landroid/app/INotificationManager;

    goto :goto_0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/android/systemui/statusbar/policy/MyToast;
    .locals 6
    .parameter "context"
    .parameter "text"
    .parameter "duration"

    .prologue
    .line 239
    new-instance v1, Lcom/android/systemui/statusbar/policy/MyToast;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/MyToast;-><init>(Landroid/content/Context;)V

    .line 241
    .local v1, result:Lcom/android/systemui/statusbar/policy/MyToast;
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 243
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v4, 0x10900e0

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 244
    .local v3, v:Landroid/view/View;
    const v4, 0x102000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 245
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iput-object v3, v1, Lcom/android/systemui/statusbar/policy/MyToast;->mNextView:Landroid/view/View;

    .line 248
    iput p2, v1, Lcom/android/systemui/statusbar/policy/MyToast;->mDuration:I

    .line 250
    return-object v1
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MyToast;->mTN:Lcom/android/systemui/statusbar/policy/MyToast$TN;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MyToast$TN;->hide()V

    .line 126
    :try_start_0
    invoke-static {}, Lcom/android/systemui/statusbar/policy/MyToast;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MyToast;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MyToast;->mTN:Lcom/android/systemui/statusbar/policy/MyToast$TN;

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setGravity(III)V
    .locals 1
    .parameter "gravity"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MyToast;->mTN:Lcom/android/systemui/statusbar/policy/MyToast$TN;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/MyToast$TN;->mGravity:I

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MyToast;->mTN:Lcom/android/systemui/statusbar/policy/MyToast$TN;

    iput p2, v0, Lcom/android/systemui/statusbar/policy/MyToast$TN;->mX:I

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MyToast;->mTN:Lcom/android/systemui/statusbar/policy/MyToast$TN;

    iput p3, v0, Lcom/android/systemui/statusbar/policy/MyToast$TN;->mY:I

    .line 203
    return-void
.end method

.method public setText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MyToast;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MyToast;->setText(Ljava/lang/CharSequence;)V

    .line 275
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 282
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MyToast;->mNextView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 283
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This Toast was not created with Toast.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MyToast;->mNextView:Landroid/view/View;

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 286
    .local v0, tv:Landroid/widget/TextView;
    if-nez v0, :cond_1

    .line 287
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This Toast was not created with Toast.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 289
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 101
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MyToast;->mNextView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 102
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "setView must have been called"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 105
    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/policy/MyToast;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 106
    .local v1, service:Landroid/app/INotificationManager;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MyToast;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, pkg:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MyToast;->mTN:Lcom/android/systemui/statusbar/policy/MyToast$TN;

    .line 108
    .local v2, tn:Lcom/android/systemui/statusbar/policy/MyToast$TN;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MyToast;->mNextView:Landroid/view/View;

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/MyToast$TN;->mNextView:Landroid/view/View;

    .line 111
    :try_start_0
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MyToast;->mDuration:I

    invoke-interface {v1, v0, v2, v3}, Landroid/app/INotificationManager;->enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v3

    goto :goto_0
.end method
