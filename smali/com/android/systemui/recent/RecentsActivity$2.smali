.class Lcom/android/systemui/recent/RecentsActivity$2;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsActivity;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsActivity$2;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity$2;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    #getter for: Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsActivity;->access$000(Lcom/android/systemui/recent/RecentsActivity;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/recent/RecentsPanelView;->setBinder(Landroid/os/IBinder;)V

    .line 361
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity$2;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    #getter for: Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsActivity;->access$000(Lcom/android/systemui/recent/RecentsActivity;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->setBinder(Landroid/os/IBinder;)V

    .line 366
    return-void
.end method
