.class Lcom/android/systemui/screenshot/AsusGlobalScreenshot$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AsusGlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->createAsusScaleUpAnimation()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/AsusGlobalScreenshot;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;)V
    .locals 0

    .prologue
    .line 633
    iput-object p1, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$4;->this$0:Lcom/android/systemui/screenshot/AsusGlobalScreenshot;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/16 v1, 0x8

    .line 640
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$4;->this$0:Lcom/android/systemui/screenshot/AsusGlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->access$700(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 641
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$4;->this$0:Lcom/android/systemui/screenshot/AsusGlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->access$200(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 642
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$4;->this$0:Lcom/android/systemui/screenshot/AsusGlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mShutterAnimationView:Lcom/android/systemui/screenshot/ShutterAnimationView;
    invoke-static {v0}, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->access$800(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;)Lcom/android/systemui/screenshot/ShutterAnimationView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/ShutterAnimationView;->setVisibility(I)V

    .line 643
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$4;->this$0:Lcom/android/systemui/screenshot/AsusGlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->access$200(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 644
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 636
    return-void
.end method
