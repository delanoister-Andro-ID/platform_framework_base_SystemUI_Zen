.class Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$21;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AsusPhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setAreThereNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

.field final synthetic val$nlo:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1605
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$21;->val$nlo:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "_a"

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$21;->val$nlo:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1609
    return-void
.end method
