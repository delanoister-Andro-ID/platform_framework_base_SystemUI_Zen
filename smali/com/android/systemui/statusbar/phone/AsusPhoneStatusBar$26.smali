.class Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$26;
.super Ljava/lang/Object;
.source "AsusPhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->flipToNotifications()V
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
    .line 2031
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2034
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    const v1, 0x7f020220

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->setBackgroundResource(I)V

    .line 2036
    :cond_0
    return-void
.end method