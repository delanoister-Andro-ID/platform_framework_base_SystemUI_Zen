.class Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$18;
.super Ljava/lang/Object;
.source "AsusPhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V
    .locals 0

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$18;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1101
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1115
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1103
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$18;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->shouldDisableNavbarGestures()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$18;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$2000(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$18;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$1900(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1105
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$18;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$2200(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$18;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$1900(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$18;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mShowSearchHoldoff:[I
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$2100(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)[I

    move-result-object v2

    sget v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget v2, v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1111
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$18;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$2300(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$18;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$1900(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1112
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$18;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->awakenDreams()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$1600(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    goto :goto_0

    .line 1101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
