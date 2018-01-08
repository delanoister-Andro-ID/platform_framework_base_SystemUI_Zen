.class Lcom/android/systemui/statusbar/phone/AsusNavigationBarView$2;
.super Ljava/lang/Object;
.source "AsusNavigationBarView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "cameraButtonView"
    .parameter "event"

    .prologue
    .line 108
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 120
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->dispatch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 111
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->access$000(Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;)Lcom/android/systemui/statusbar/DelegateViewHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setDisabled(Z)V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->transitionCameraAndSearchButtonAlpha(F)V

    goto :goto_0

    .line 116
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->access$000(Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;)Lcom/android/systemui/statusbar/DelegateViewHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setDisabled(Z)V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->transitionCameraAndSearchButtonAlpha(F)V

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
