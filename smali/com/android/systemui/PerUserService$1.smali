.class Lcom/android/systemui/PerUserService$1;
.super Lcom/android/systemui/IPerUserService$Stub;
.source "PerUserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/PerUserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/PerUserService;


# direct methods
.method constructor <init>(Lcom/android/systemui/PerUserService;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/systemui/PerUserService$1;->this$0:Lcom/android/systemui/PerUserService;

    invoke-direct {p0}, Lcom/android/systemui/IPerUserService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getMasterSyncAutomatically()Z
    .locals 4

    .prologue
    .line 34
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 35
    .local v0, autoSync:Z
    const-string v1, "PerUserService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMasterSyncAutomatically "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return v0
.end method

.method public setBluetoothAdapter(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 46
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 47
    .local v0, mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method

.method public setLocationProviderEnabledForUser(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/PerUserService$1;->this$0:Lcom/android/systemui/PerUserService;

    invoke-virtual {v0}, Lcom/android/systemui/PerUserService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 44
    return-void
.end method

.method public setMasterSyncAutomatically(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 39
    invoke-static {p1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 40
    const-string v0, "PerUserService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMasterSyncAutomatically "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method
