.class Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AsusPhoneStatusBar.java"


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
    .line 369
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarContents:[Landroid/widget/LinearLayout;

    sget v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarContents:[Landroid/widget/LinearLayout;

    sget v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 377
    :cond_0
    return-void
.end method
