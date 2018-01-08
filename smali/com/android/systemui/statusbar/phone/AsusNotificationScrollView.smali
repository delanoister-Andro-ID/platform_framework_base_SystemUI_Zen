.class public Lcom/android/systemui/statusbar/phone/AsusNotificationScrollView;
.super Landroid/widget/ScrollView;
.source "AsusNotificationScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/AsusNotificationScrollView$OnScrollViewListener;
    }
.end annotation


# instance fields
.field private mOnScrollViewListener:Lcom/android/systemui/statusbar/phone/AsusNotificationScrollView$OnScrollViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationScrollView;->mOnScrollViewListener:Lcom/android/systemui/statusbar/phone/AsusNotificationScrollView$OnScrollViewListener;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationScrollView;->mOnScrollViewListener:Lcom/android/systemui/statusbar/phone/AsusNotificationScrollView$OnScrollViewListener;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationScrollView;->mOnScrollViewListener:Lcom/android/systemui/statusbar/phone/AsusNotificationScrollView$OnScrollViewListener;

    .line 49
    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 6
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationScrollView;->mOnScrollViewListener:Lcom/android/systemui/statusbar/phone/AsusNotificationScrollView$OnScrollViewListener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationScrollView;->mOnScrollViewListener:Lcom/android/systemui/statusbar/phone/AsusNotificationScrollView$OnScrollViewListener;

    const/4 v2, 0x1

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/AsusNotificationScrollView$OnScrollViewListener;->onScrollChanged(Lcom/android/systemui/statusbar/phone/AsusNotificationScrollView;IIII)V

    .line 63
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 64
    return-void
.end method

.method public setOnScrollViewListener(Lcom/android/systemui/statusbar/phone/AsusNotificationScrollView$OnScrollViewListener;)V
    .locals 0
    .parameter "onScrollViewListener"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusNotificationScrollView;->mOnScrollViewListener:Lcom/android/systemui/statusbar/phone/AsusNotificationScrollView$OnScrollViewListener;

    .line 56
    return-void
.end method
