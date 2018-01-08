.class Lcom/android/systemui/recent/RecentsPanelView$2$2;
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

.field final synthetic val$v:Landroid/view/View;

.field final synthetic val$velocity:F


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsPanelView$2;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 700
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$2$2;->this$1:Lcom/android/systemui/recent/RecentsPanelView$2;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentsPanelView$2$2;->val$v:Landroid/view/View;

    iput p3, p0, Lcom/android/systemui/recent/RecentsPanelView$2$2;->val$velocity:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$2$2;->this$1:Lcom/android/systemui/recent/RecentsPanelView$2;

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$1200(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView$2$2;->val$v:Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/recent/RecentsPanelView$2$2;->val$velocity:F

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->dismissChild(Landroid/view/View;F)V

    .line 704
    return-void
.end method
