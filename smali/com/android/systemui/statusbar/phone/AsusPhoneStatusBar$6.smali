.class Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$6;
.super Ljava/lang/Object;
.source "AsusPhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->makeStatusBarView()Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;
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
    .line 565
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->checkUserAutohide(Landroid/view/View;Landroid/view/MotionEvent;)V
    invoke-static {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$1400(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 569
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mExpandedVisible:[Z

    sget v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->animateCollapsePanels()V

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarWindow:[Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;

    sget v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/AsusStatusBarWindowView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
