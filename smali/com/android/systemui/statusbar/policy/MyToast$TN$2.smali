.class Lcom/android/systemui/statusbar/policy/MyToast$TN$2;
.super Ljava/lang/Object;
.source "MyToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MyToast$TN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MyToast$TN;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MyToast$TN;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MyToast$TN$2;->this$0:Lcom/android/systemui/statusbar/policy/MyToast$TN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MyToast$TN$2;->this$0:Lcom/android/systemui/statusbar/policy/MyToast$TN;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MyToast$TN;->handleHide()V

    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MyToast$TN$2;->this$0:Lcom/android/systemui/statusbar/policy/MyToast$TN;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MyToast$TN;->mNextView:Landroid/view/View;

    .line 321
    return-void
.end method
