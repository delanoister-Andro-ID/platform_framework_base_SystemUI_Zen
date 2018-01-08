.class Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$8;
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
    .line 624
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->checkUserAutohide(Landroid/view/View;Landroid/view/MotionEvent;)V
    invoke-static {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$1400(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 628
    const/4 v0, 0x0

    return v0
.end method
