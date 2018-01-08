.class public Lcom/android/systemui/PerUserService;
.super Landroid/app/Service;
.source "PerUserService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/PerUserService$Connection;
    }
.end annotation


# static fields
.field private static sService:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/IPerUserService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBinder:Lcom/android/systemui/IPerUserService$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/PerUserService;->sService:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 32
    new-instance v0, Lcom/android/systemui/PerUserService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/PerUserService$1;-><init>(Lcom/android/systemui/PerUserService;)V

    iput-object v0, p0, Lcom/android/systemui/PerUserService;->mBinder:Lcom/android/systemui/IPerUserService$Stub;

    .line 78
    return-void
.end method

.method static synthetic access$000()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/systemui/PerUserService;->sService:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static connect(Landroid/content/Context;ILcom/android/systemui/PerUserService$Connection;)V
    .locals 6
    .parameter "context"
    .parameter "userId"
    .parameter "connection"

    .prologue
    .line 56
    sget-object v3, Lcom/android/systemui/PerUserService;->sService:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/IPerUserService;

    .line 57
    .local v2, service:Lcom/android/systemui/IPerUserService;
    const-string v3, "PerUserService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getService userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    if-nez v2, :cond_0

    .line 59
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/android/systemui/PerUserService$2;

    invoke-direct {v3, p0, p2, p1}, Lcom/android/systemui/PerUserService$2;-><init>(Landroid/content/Context;Lcom/android/systemui/PerUserService$Connection;I)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 68
    .local v0, bindServiceThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 76
    .end local v0           #bindServiceThread:Ljava/lang/Thread;
    :goto_0
    return-void

    .line 71
    :cond_0
    :try_start_0
    invoke-virtual {p2, v2}, Lcom/android/systemui/PerUserService$Connection;->onConnected(Lcom/android/systemui/IPerUserService;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 28
    const-string v0, "PerUserService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lcom/android/systemui/PerUserService;->mBinder:Lcom/android/systemui/IPerUserService$Stub;

    return-object v0
.end method
