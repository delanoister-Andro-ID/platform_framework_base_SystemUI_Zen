.class Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$MyTicker;
.super Lcom/android/systemui/statusbar/phone/Ticker;
.source "AsusPhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTicker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "sb"

    .prologue
    .line 2899
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    .line 2900
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/Ticker;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 2901
    return-void
.end method


# virtual methods
.method public tickerDone()V
    .locals 4

    .prologue
    .line 2914
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarContents:[Landroid/widget/LinearLayout;

    sget v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2915
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mTickerView:[Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$3200(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)[Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2916
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarContents:[Landroid/widget/LinearLayout;

    sget v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    const v2, 0x10a003c

    const/4 v3, 0x0

    #calls: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$3300(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2917
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mTickerView:[Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$3200(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)[Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    const v2, 0x10a003e

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

    #calls: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$3300(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2919
    return-void
.end method

.method public tickerHalting()V
    .locals 4

    .prologue
    .line 2922
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarContents:[Landroid/widget/LinearLayout;

    sget v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2923
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mTickerView:[Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$3200(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)[Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2924
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarContents:[Landroid/widget/LinearLayout;

    sget v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    const/high16 v2, 0x10a

    const/4 v3, 0x0

    #calls: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$3300(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2926
    return-void
.end method

.method public tickerStarting()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2905
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mTicking:[Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$3100(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)[Z

    move-result-object v0

    sget v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 2906
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarContents:[Landroid/widget/LinearLayout;

    sget v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2907
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mTickerView:[Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$3200(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)[Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2908
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mTickerView:[Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$3200(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)[Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    const v2, 0x10a0040

    #calls: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$3300(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2909
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarContents:[Landroid/widget/LinearLayout;

    sget v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    const v2, 0x10a0041

    #calls: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$3300(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2910
    return-void
.end method
