.class public Lcom/android/systemui/screenshot/ShutterAnimationView;
.super Landroid/widget/ImageView;
.source "ShutterAnimationView.java"


# instance fields
.field private mAnimatorValue:F

.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mHeight:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPoint:Landroid/graphics/Point;

.field private mPreviousRadius:F

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/screenshot/ShutterAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/screenshot/ShutterAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/screenshot/ShutterAnimationView;->mPreviousRadius:F

    .line 50
    iput-object p1, p0, Lcom/android/systemui/screenshot/ShutterAnimationView;->mContext:Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/screenshot/ShutterAnimationView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ShutterAnimationView;->mDisplay:Landroid/view/Display;

    .line 53
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ShutterAnimationView;->mPoint:Landroid/graphics/Point;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ShutterAnimationView;->mPaint:Landroid/graphics/Paint;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/screenshot/ShutterAnimationView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object v0, p0, Lcom/android/systemui/screenshot/ShutterAnimationView;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 58
    return-void
.end method

.method private getRadius()F
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000

    .line 72
    iget v0, p0, Lcom/android/systemui/screenshot/ShutterAnimationView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/android/systemui/screenshot/ShutterAnimationView;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x42c8

    const/high16 v2, 0x42c6

    iget v3, p0, Lcom/android/systemui/screenshot/ShutterAnimationView;->mAnimatorValue:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/screenshot/ShutterAnimationView;->mPreviousRadius:F

    .line 74
    iget v0, p0, Lcom/android/systemui/screenshot/ShutterAnimationView;->mPreviousRadius:F

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ShutterAnimationView;->getRadius()F

    move-result v0

    .line 80
    .local v0, radius:F
    const/high16 v1, -0x100

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 81
    iget v1, p0, Lcom/android/systemui/screenshot/ShutterAnimationView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/screenshot/ShutterAnimationView;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/ShutterAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 82
    return-void
.end method

.method public resetStatus()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/screenshot/ShutterAnimationView;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ShutterAnimationView;->mPoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 62
    iget-object v0, p0, Lcom/android/systemui/screenshot/ShutterAnimationView;->mPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/systemui/screenshot/ShutterAnimationView;->mWidth:I

    .line 63
    iget-object v0, p0, Lcom/android/systemui/screenshot/ShutterAnimationView;->mPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/systemui/screenshot/ShutterAnimationView;->mHeight:I

    .line 64
    return-void
.end method

.method public setAnimatorValueAndInvalidate(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 67
    iput p1, p0, Lcom/android/systemui/screenshot/ShutterAnimationView;->mAnimatorValue:F

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ShutterAnimationView;->invalidate()V

    .line 69
    return-void
.end method
