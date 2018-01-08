.class Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$40;
.super Ljava/lang/Object;
.source "AsusPhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V
    .locals 0

    .prologue
    .line 3439
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 3441
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.QUICK_CLOCK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;Z)V

    .line 3443
    return-void
.end method
