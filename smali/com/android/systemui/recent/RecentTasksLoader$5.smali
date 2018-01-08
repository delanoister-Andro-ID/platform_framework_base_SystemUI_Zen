.class Lcom/android/systemui/recent/RecentTasksLoader$5;
.super Ljava/lang/Object;
.source "RecentTasksLoader.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentTasksLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentTasksLoader;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentTasksLoader;)V
    .locals 0

    .prologue
    .line 704
    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader$5;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader$5;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v0, p2}, Lcom/android/systemui/recent/RecentTasksLoader;->setSerivceBinder(Landroid/os/IBinder;)V

    .line 709
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/systemui/recent/RecentTasksLoader$5;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentTasksLoader;->setSerivceBinder(Landroid/os/IBinder;)V

    .line 714
    return-void
.end method
