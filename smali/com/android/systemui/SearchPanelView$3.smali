.class Lcom/android/systemui/SearchPanelView$3;
.super Ljava/lang/Object;
.source "SearchPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/SearchPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SearchPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/SearchPanelView;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/systemui/SearchPanelView$3;->this$0:Lcom/android/systemui/SearchPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 252
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$3;->this$0:Lcom/android/systemui/SearchPanelView;

    #getter for: Lcom/android/systemui/SearchPanelView;->mHasTouched:Z
    invoke-static {v0}, Lcom/android/systemui/SearchPanelView;->access$000(Lcom/android/systemui/SearchPanelView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$3;->this$0:Lcom/android/systemui/SearchPanelView;

    #setter for: Lcom/android/systemui/SearchPanelView;->mShowing:Z
    invoke-static {v0, v7}, Lcom/android/systemui/SearchPanelView;->access$502(Lcom/android/systemui/SearchPanelView;Z)Z

    .line 254
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$3;->this$0:Lcom/android/systemui/SearchPanelView;

    #getter for: Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;
    invoke-static {v0}, Lcom/android/systemui/SearchPanelView;->access$200(Lcom/android/systemui/SearchPanelView;)Lcom/android/internal/widget/multiwaveview/GlowPadView;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->reset(Z)V

    .line 255
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$3;->this$0:Lcom/android/systemui/SearchPanelView;

    #getter for: Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/SearchPanelView;->access$600(Lcom/android/systemui/SearchPanelView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v9, v0, 0x2

    .line 256
    .local v9, x:I
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$3;->this$0:Lcom/android/systemui/SearchPanelView;

    #getter for: Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/SearchPanelView;->access$600(Lcom/android/systemui/SearchPanelView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v10, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 258
    .local v10, y:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    int-to-float v5, v9

    int-to-float v6, v10

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 260
    .local v8, fakeEvent:Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$3;->this$0:Lcom/android/systemui/SearchPanelView;

    #getter for: Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;
    invoke-static {v0}, Lcom/android/systemui/SearchPanelView;->access$200(Lcom/android/systemui/SearchPanelView;)Lcom/android/internal/widget/multiwaveview/GlowPadView;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 261
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 262
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$3;->this$0:Lcom/android/systemui/SearchPanelView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/SearchPanelView;->setVisibility(I)V

    .line 264
    .end local v8           #fakeEvent:Landroid/view/MotionEvent;
    .end local v9           #x:I
    .end local v10           #y:I
    :cond_0
    return-void
.end method
