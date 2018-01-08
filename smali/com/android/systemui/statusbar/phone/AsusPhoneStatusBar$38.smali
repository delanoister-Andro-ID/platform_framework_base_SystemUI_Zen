.class Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$38;
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
    .line 3318
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    .line 3320
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$4100(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v8

    monitor-enter v8

    .line 3322
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$4200(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v3

    .line 3324
    .local v3, numChildren:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mScrollView:[Landroid/widget/ScrollView;

    sget v9, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget-object v7, v7, v9

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    .line 3325
    .local v5, scrollTop:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mScrollView:[Landroid/widget/ScrollView;

    sget v9, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget-object v7, v7, v9

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    add-int v4, v5, v7

    .line 3326
    .local v4, scrollBottom:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3327
    .local v6, snapshot:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 3328
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$4300(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3329
    .local v0, child:Landroid/view/View;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$4400(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    if-le v7, v5, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    if-ge v7, v4, :cond_0

    .line 3331
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3327
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3335
    .end local v0           #child:Landroid/view/View;
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAlwaysTopItem:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAlwaysTopItem:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v7

    if-lez v7, :cond_2

    .line 3336
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAlwaysTopItem:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3337
    .restart local v0       #child:Landroid/view/View;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mAlwaysTopItem:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3338
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3342
    .end local v0           #child:Landroid/view/View;
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3343
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->animateCollapsePanels(I)V

    .line 3344
    monitor-exit v8

    .line 3405
    :goto_1
    return-void

    .line 3347
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.android.systemui.intent.action.NOTIFICATION_CLEAR_ALL"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3348
    .local v2, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$38;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/UserHandle;

    const/4 v10, -0x2

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v7, v2, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3350
    new-instance v7, Ljava/lang/Thread;

    new-instance v9, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$38$1;

    invoke-direct {v9, p0, v6}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$38$1;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$38;Ljava/util/ArrayList;)V

    invoke-direct {v7, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 3404
    monitor-exit v8

    goto :goto_1

    .end local v1           #i:I
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #numChildren:I
    .end local v4           #scrollBottom:I
    .end local v5           #scrollTop:I
    .end local v6           #snapshot:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method
