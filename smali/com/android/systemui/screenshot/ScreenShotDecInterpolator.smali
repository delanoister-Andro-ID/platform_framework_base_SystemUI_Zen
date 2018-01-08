.class public Lcom/android/systemui/screenshot/ScreenShotDecInterpolator;
.super Ljava/lang/Object;
.source "ScreenShotDecInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6
    .parameter "f"

    .prologue
    const/high16 v5, 0x3f80

    .line 10
    sub-float v1, v5, p1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4018

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v0, v5, v1

    .line 11
    .local v0, rtn:F
    return v0
.end method
