.class Lcom/android/systemui/SwipeHelper$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SwipeHelper;->dismissChildRecent(Landroid/view/View;FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SwipeHelper;

.field final synthetic val$animView:Landroid/view/View;

.field final synthetic val$done:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/systemui/SwipeHelper$4;->this$0:Lcom/android/systemui/SwipeHelper;

    iput-object p2, p0, Lcom/android/systemui/SwipeHelper$4;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/SwipeHelper$4;->val$animView:Landroid/view/View;

    iput-boolean p4, p0, Lcom/android/systemui/SwipeHelper$4;->val$done:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$4;->this$0:Lcom/android/systemui/SwipeHelper;

    #getter for: Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;
    invoke-static {v0}, Lcom/android/systemui/SwipeHelper;->access$300(Lcom/android/systemui/SwipeHelper;)Lcom/android/systemui/SwipeHelper$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper$4;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui/SwipeHelper$Callback;->onChildDismissed(Landroid/view/View;)V

    .line 340
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$4;->val$animView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 341
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper$4;->val$done:Z

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$4;->this$0:Lcom/android/systemui/SwipeHelper;

    #getter for: Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;
    invoke-static {v0}, Lcom/android/systemui/SwipeHelper;->access$300(Lcom/android/systemui/SwipeHelper;)Lcom/android/systemui/SwipeHelper$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/SwipeHelper$Callback;->dismissAndGoBack()V

    .line 343
    :cond_0
    return-void
.end method
