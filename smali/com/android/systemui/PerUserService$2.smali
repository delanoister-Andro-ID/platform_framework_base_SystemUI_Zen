.class final Lcom/android/systemui/PerUserService$2;
.super Ljava/lang/Object;
.source "PerUserService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/PerUserService;->connect(Landroid/content/Context;ILcom/android/systemui/PerUserService$Connection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$connection:Lcom/android/systemui/PerUserService$Connection;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/PerUserService$Connection;I)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/systemui/PerUserService$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/PerUserService$2;->val$connection:Lcom/android/systemui/PerUserService$Connection;

    iput p3, p0, Lcom/android/systemui/PerUserService$2;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui/PerUserService$2;->val$context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/PerUserService$2;->val$context:Landroid/content/Context;

    const-class v3, Lcom/android/systemui/PerUserService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/android/systemui/PerUserService$2;->val$connection:Lcom/android/systemui/PerUserService$Connection;

    const/4 v3, 0x1

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/systemui/PerUserService$2;->val$userId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 65
    const-string v0, "PerUserService"

    const-string v1, "run bindService success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method
