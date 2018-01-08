.class public Lcom/android/systemui/PerUserService$Connection;
.super Ljava/lang/Object;
.source "PerUserService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/PerUserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Connection"
.end annotation


# instance fields
.field private mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lcom/android/systemui/PerUserService$Connection;->mUserId:I

    .line 83
    return-void
.end method


# virtual methods
.method public onConnected(Lcom/android/systemui/IPerUserService;)V
    .locals 0
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 87
    const-string v2, "PerUserService"

    const-string v3, "onServiceConnected"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {p2}, Lcom/android/systemui/IPerUserService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/IPerUserService;

    move-result-object v1

    .line 89
    .local v1, s:Lcom/android/systemui/IPerUserService;
    invoke-static {}, Lcom/android/systemui/PerUserService;->access$000()Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/PerUserService$Connection;->mUserId:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 91
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/PerUserService$Connection;->onConnected(Lcom/android/systemui/IPerUserService;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 99
    const-string v0, "PerUserService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {}, Lcom/android/systemui/PerUserService;->access$000()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/PerUserService$Connection;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 101
    return-void
.end method
