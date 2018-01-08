.class Lcom/android/systemui/statusbar/phone/AsusNavigationBarView$3;
.super Landroid/content/BroadcastReceiver;
.source "AsusNavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->watchForDevicePolicyChanges()V
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
    .line 181
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView$3$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView$3$1;-><init>(Lcom/android/systemui/statusbar/phone/AsusNavigationBarView$3;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->post(Ljava/lang/Runnable;)Z

    .line 189
    return-void
.end method
