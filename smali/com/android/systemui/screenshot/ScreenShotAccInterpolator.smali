.class public Lcom/android/systemui/screenshot/ScreenShotAccInterpolator;
.super Ljava/lang/Object;
.source "ScreenShotAccInterpolator.java"

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
    .locals 5
    .parameter "f"

    .prologue
    .line 10
    float-to-double v1, p1

    const-wide/high16 v3, 0x4018

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v0, v1

    .line 11
    .local v0, rtn:F
    return v0
.end method
