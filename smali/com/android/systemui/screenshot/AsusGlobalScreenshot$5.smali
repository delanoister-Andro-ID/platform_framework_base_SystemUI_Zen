.class Lcom/android/systemui/screenshot/AsusGlobalScreenshot$5;
.super Ljava/lang/Object;
.source "AsusGlobalScreenshot.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 646
    iput-object p1, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/AsusGlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 649
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 650
    .local v0, t:F
    iget-object v1, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$5;->this$0:Lcom/android/systemui/screenshot/AsusGlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->mShutterAnimationView:Lcom/android/systemui/screenshot/ShutterAnimationView;
    invoke-static {v1}, Lcom/android/systemui/screenshot/AsusGlobalScreenshot;->access$800(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;)Lcom/android/systemui/screenshot/ShutterAnimationView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/screenshot/ShutterAnimationView;->setAnimatorValueAndInvalidate(F)V

    .line 651
    return-void
.end method
