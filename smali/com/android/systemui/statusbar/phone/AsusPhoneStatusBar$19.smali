.class Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$19;
.super Ljava/lang/Object;
.source "AsusPhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->removeNotification(Landroid/os/IBinder;)V
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
    .line 1320
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1324
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAlwaysTopItemDelayDismiss:Z

    .line 1325
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAlwaysTopItem:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1326
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1327
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAlwaysTopItem:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1329
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$2400(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationPanel:[Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;

    sget v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/AsusNotificationPanelView;->isTracking()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isAlwaysTopShow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1331
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->animateCollapsePanels()V

    .line 1334
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$19;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setAreThereNotifications()V

    .line 1335
    return-void
.end method
