.class Lcom/android/systemui/recent/RecentsPanelView$2$1;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsPanelView$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recent/RecentsPanelView$2;

.field final synthetic val$done:Z

.field final synthetic val$v:Landroid/view/View;

.field final synthetic val$velocity:F


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsPanelView$2;Landroid/view/View;FZ)V
    .locals 0

    .prologue
    .line 689
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$2$1;->this$1:Lcom/android/systemui/recent/RecentsPanelView$2;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentsPanelView$2$1;->val$v:Landroid/view/View;

    iput p3, p0, Lcom/android/systemui/recent/RecentsPanelView$2$1;->val$velocity:F

    iput-boolean p4, p0, Lcom/android/systemui/recent/RecentsPanelView$2$1;->val$done:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$2$1;->this$1:Lcom/android/systemui/recent/RecentsPanelView$2;

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$1200(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView$2$1;->val$v:Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/recent/RecentsPanelView$2$1;->val$velocity:F

    iget-boolean v3, p0, Lcom/android/systemui/recent/RecentsPanelView$2$1;->val$done:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->dismissChild(Landroid/view/View;FZ)V

    .line 693
    return-void
.end method
