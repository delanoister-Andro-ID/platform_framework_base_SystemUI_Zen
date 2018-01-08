.class Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$20;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AsusPhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->updateCarrierLabelVisibility(Z)V
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
    .line 1538
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCarrierLabelVisible:[Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$2500(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)[Z

    move-result-object v0

    sget v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    .line 1542
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$2600(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)[Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1543
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCarrierLabel:[Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$2600(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)[Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1545
    :cond_0
    return-void
.end method
