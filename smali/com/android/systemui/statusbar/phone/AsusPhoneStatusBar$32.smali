.class Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$32;
.super Ljava/lang/Object;
.source "AsusPhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->switchToNotificationNoAnim()V
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
    .line 2431
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2433
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$32;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->updateCarrierLabelVisibility(Z)V

    .line 2434
    return-void
.end method