.class Lcom/android/systemui/statusbar/phone/AsusNavigationBarView$1;
.super Ljava/lang/Object;
.source "AsusNavigationBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0011

    if-ne v0, v1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->launchCamera()V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0010

    if-ne v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->showAssistant()V

    goto :goto_0
.end method
