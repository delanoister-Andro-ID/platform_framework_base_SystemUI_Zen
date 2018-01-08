.class Lcom/android/systemui/screenshot/AsusGlobalScreenshot$3;
.super Ljava/lang/Object;
.source "AsusGlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/AsusGlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/AsusGlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mCameraSound:Landroid/media/MediaActionSound;
    invoke-static {v0}, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->access$500(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;)Landroid/media/MediaActionSound;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    .line 603
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/AsusGlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->access$200(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 604
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/AsusGlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->access$200(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->buildLayer()V

    .line 605
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/AsusGlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->access$600(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 606
    return-void
.end method
