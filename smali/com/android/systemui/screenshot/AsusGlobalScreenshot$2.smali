.class Lcom/android/systemui/screenshot/AsusGlobalScreenshot$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AsusGlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->startAnimation(Ljava/lang/Runnable;IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/AsusGlobalScreenshot;

.field final synthetic val$finisher:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 580
    iput-object p1, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/AsusGlobalScreenshot;

    iput-object p2, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$2;->val$finisher:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/AsusGlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenshotLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->access$300(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$2$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$2$1;-><init>(Lcom/android/systemui/screenshot/AsusGlobalScreenshot$2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 594
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/AsusGlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->access$400(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/AsusGlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenshotLayout:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->access$300(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 595
    return-void
.end method
