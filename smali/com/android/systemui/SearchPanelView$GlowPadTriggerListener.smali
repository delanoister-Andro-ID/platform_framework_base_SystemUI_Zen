.class Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;
.super Ljava/lang/Object;
.source "SearchPanelView.java"

# interfaces
.implements Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/SearchPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GlowPadTriggerListener"
.end annotation


# instance fields
.field mWaitingForLaunch:Z

.field final synthetic this$0:Lcom/android/systemui/SearchPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/SearchPanelView;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 155
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->mWaitingForLaunch:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    #getter for: Lcom/android/systemui/SearchPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;
    invoke-static {v0}, Lcom/android/systemui/SearchPanelView;->access$100(Lcom/android/systemui/SearchPanelView;)Lcom/android/systemui/statusbar/BaseStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideSearchPanel()V

    .line 165
    :cond_0
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    const/4 v1, 0x0

    #setter for: Lcom/android/systemui/SearchPanelView;->mHasTouched:Z
    invoke-static {v0, v1}, Lcom/android/systemui/SearchPanelView;->access$002(Lcom/android/systemui/SearchPanelView;Z)Z

    .line 159
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "target"

    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    #getter for: Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;
    invoke-static {v1}, Lcom/android/systemui/SearchPanelView;->access$200(Lcom/android/systemui/SearchPanelView;)Lcom/android/internal/widget/multiwaveview/GlowPadView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getResourceIdForTarget(I)I

    move-result v0

    .line 169
    .local v0, resId:I
    packed-switch v0, :pswitch_data_0

    .line 177
    :goto_0
    return-void

    .line 172
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    #calls: Lcom/android/systemui/SearchPanelView;->startAssistActivity()Z
    invoke-static {v1}, Lcom/android/systemui/SearchPanelView;->access$300(Lcom/android/systemui/SearchPanelView;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->mWaitingForLaunch:Z

    .line 174
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;->this$0:Lcom/android/systemui/SearchPanelView;

    #calls: Lcom/android/systemui/SearchPanelView;->vibrate()V
    invoke-static {v1}, Lcom/android/systemui/SearchPanelView;->access$400(Lcom/android/systemui/SearchPanelView;)V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x1080531
        :pswitch_0
    .end packed-switch
.end method
