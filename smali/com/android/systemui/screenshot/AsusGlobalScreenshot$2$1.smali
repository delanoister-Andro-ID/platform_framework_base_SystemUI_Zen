.class Lcom/android/systemui/screenshot/AsusGlobalScreenshot$2$1;
.super Ljava/lang/Object;
.source "AsusGlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/AsusGlobalScreenshot$2;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/screenshot/AsusGlobalScreenshot$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/AsusGlobalScreenshot$2;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$2$1;->this$1:Lcom/android/systemui/screenshot/AsusGlobalScreenshot$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 587
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$2$1;->this$1:Lcom/android/systemui/screenshot/AsusGlobalScreenshot$2;

    iget-object v0, v0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/AsusGlobalScreenshot;

    iget-object v1, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$2$1;->this$1:Lcom/android/systemui/screenshot/AsusGlobalScreenshot$2;

    iget-object v1, v1, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$2;->val$finisher:Ljava/lang/Runnable;

    #calls: Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->access$000(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;Ljava/lang/Runnable;)V

    .line 589
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$2$1;->this$1:Lcom/android/systemui/screenshot/AsusGlobalScreenshot$2;

    iget-object v0, v0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/AsusGlobalScreenshot;

    #setter for: Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->access$102(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 590
    iget-object v0, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$2$1;->this$1:Lcom/android/systemui/screenshot/AsusGlobalScreenshot$2;

    iget-object v0, v0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/AsusGlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->access$200(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 591
    return-void
.end method
