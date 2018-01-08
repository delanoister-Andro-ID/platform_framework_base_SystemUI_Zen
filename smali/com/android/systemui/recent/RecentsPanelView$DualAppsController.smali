.class public Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/view/View$OnDragListener;
.implements Lcom/android/systemui/recent/DualAppsService$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DualAppsController"
.end annotation


# static fields
.field private static final CONTENT_URI_BLACKLIST:Landroid/net/Uri;

.field private static final QUERY_COLUMN_BLACKLIST:[Ljava/lang/String;


# instance fields
.field private mContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mFullScreenWindow:Landroid/widget/ImageView;

.field private mHalfWindow:Landroid/widget/ImageView;

.field private mHalfWindowExt:Landroid/widget/ImageView;

.field private mOtherPendingTargetId:I

.field private mOverlayInBackground:Z

.field private mParent:Lcom/android/systemui/recent/RecentsPanelView;

.field private mPendingTargetId:I

.field private mPendingTask:Lcom/android/systemui/recent/TaskDescription;

.field private mService:Lcom/android/systemui/recent/DualAppsService;

.field private mSplitWindow:Landroid/widget/LinearLayout;

.field mWhiteList:Lcom/android/internal/app/IDualAppsService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1239
    const-string v0, "content://com.android.settings.provider/blacklist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->CONTENT_URI_BLACKLIST:Landroid/net/Uri;

    .line 1241
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "packageName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "nodialog"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "checked"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "init"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "policy"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->QUERY_COLUMN_BLACKLIST:[Ljava/lang/String;

    return-void
.end method

.method private drop(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    .line 1573
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView$DragHolder;

    .line 1575
    .local v0, dragHolder:Lcom/android/systemui/recent/RecentsPanelView$DragHolder;
    iget-boolean v5, v0, Lcom/android/systemui/recent/RecentsPanelView$DragHolder;->isSelectedViewLoadable:Z

    if-eqz v5, :cond_1

    .line 1576
    iget-boolean v5, v0, Lcom/android/systemui/recent/RecentsPanelView$DragHolder;->isBackgroundAppLoadable:Z

    if-eqz v5, :cond_0

    .line 1577
    iget-object v5, v0, Lcom/android/systemui/recent/RecentsPanelView$DragHolder;->thumbnailView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->moveTaskToDisplay(Landroid/view/View;I)V

    .line 1590
    :goto_0
    return-void

    .line 1579
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mContext:Landroid/content/Context;

    const v6, 0x7f060065

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1580
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1581
    .local v2, pm:Landroid/content/pm/PackageManager;
    iget-object v4, v0, Lcom/android/systemui/recent/RecentsPanelView$DragHolder;->thumbnailView:Landroid/view/View;

    .line 1582
    .local v4, thumbnailView:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recent/TaskDescription;

    .line 1583
    .local v3, td:Lcom/android/systemui/recent/TaskDescription;
    iget-object v5, v3, Lcom/android/systemui/recent/TaskDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1584
    .local v1, launchIntent:Landroid/content/Intent;
    invoke-direct {p0, v1}, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1587
    .end local v1           #launchIntent:Landroid/content/Intent;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local v3           #td:Lcom/android/systemui/recent/TaskDescription;
    .end local v4           #thumbnailView:Landroid/view/View;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mContext:Landroid/content/Context;

    const v6, 0x7f060064

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private setWindowBackground(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 6
    .parameter "selectedView"
    .parameter "event"

    .prologue
    const v5, 0x7f020169

    const v4, 0x7f020168

    const v3, 0x7f020167

    .line 1359
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1360
    .local v1, id:I
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView$DragHolder;

    .line 1361
    .local v0, dragHolder:Lcom/android/systemui/recent/RecentsPanelView$DragHolder;
    packed-switch v1, :pswitch_data_0

    .line 1379
    :goto_0
    return-void

    .line 1363
    :pswitch_0
    iget-boolean v2, v0, Lcom/android/systemui/recent/RecentsPanelView$DragHolder;->isSelectedViewLoadable:Z

    if-eqz v2, :cond_0

    .line 1364
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mHalfWindow:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1368
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mHalfWindowExt:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1366
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mHalfWindow:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 1371
    :pswitch_1
    iget-boolean v2, v0, Lcom/android/systemui/recent/RecentsPanelView$DragHolder;->isSelectedViewLoadable:Z

    if-eqz v2, :cond_1

    .line 1372
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mHalfWindowExt:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1376
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mHalfWindow:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1374
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mHalfWindowExt:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 1361
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00a8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 1634
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1635
    .local v0, i:Landroid/content/Intent;
    const v1, 0x10104000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1638
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1639
    return-void
.end method

.method private startDragging(Landroid/view/DragEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1749
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView$DragHolder;

    .line 1751
    .local v0, dragHolder:Lcom/android/systemui/recent/RecentsPanelView$DragHolder;
    iget-boolean v1, v0, Lcom/android/systemui/recent/RecentsPanelView$DragHolder;->isBackgroundAppLoadable:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/recent/RecentsPanelView$DragHolder;->isSelectedViewLoadable:Z

    if-eqz v1, :cond_0

    .line 1752
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mSplitWindow:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1753
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mFullScreenWindow:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1754
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mFullScreenWindow:Landroid/widget/ImageView;

    const v2, 0x7f020167

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1759
    :goto_0
    return-void

    .line 1756
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mSplitWindow:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1757
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mFullScreenWindow:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mParent:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v1, 0x0

    #calls: Lcom/android/systemui/recent/RecentsPanelView;->showImpl(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->access$1900(Lcom/android/systemui/recent/RecentsPanelView;Z)V

    .line 1481
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/systemui/recent/RecentsActivity;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsActivity;->finish()V

    .line 1482
    return-void
.end method

.method public isOpen(I)Z
    .locals 1
    .parameter "displayId"

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mService:Lcom/android/systemui/recent/DualAppsService;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recent/DualAppsService;->isOpen(I)Z

    move-result v0

    return v0
.end method

.method public moveTaskToDisplay(Landroid/view/View;I)V
    .locals 12
    .parameter "v"
    .parameter "displayId"

    .prologue
    const/4 v2, 0x1

    .line 1391
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recent/TaskDescription;

    .line 1392
    .local v10, info:Lcom/android/systemui/recent/TaskDescription;
    const v0, 0x7f0b00a8

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mService:Lcom/android/systemui/recent/DualAppsService;

    invoke-virtual {v0}, Lcom/android/systemui/recent/DualAppsService;->getTopDid()I

    move-result v11

    .line 1393
    .local v11, targetId:I
    :goto_0
    invoke-virtual {p0, v11}, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->isOpen(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1394
    new-instance v0, Lcom/android/systemui/recent/TaskDescription;

    iget v1, v10, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    iget v2, v10, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    iget-object v3, v10, Lcom/android/systemui/recent/TaskDescription;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v10, Lcom/android/systemui/recent/TaskDescription;->intent:Landroid/content/Intent;

    iget-object v5, v10, Lcom/android/systemui/recent/TaskDescription;->packageName:Ljava/lang/String;

    iget-object v6, v10, Lcom/android/systemui/recent/TaskDescription;->description:Ljava/lang/CharSequence;

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recent/TaskDescription;-><init>(IILandroid/content/pm/ResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mPendingTask:Lcom/android/systemui/recent/TaskDescription;

    .line 1396
    iput v11, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mPendingTargetId:I

    .line 1397
    rem-int/lit8 v0, v11, 0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mOtherPendingTargetId:I

    .line 1398
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mService:Lcom/android/systemui/recent/DualAppsService;

    invoke-virtual {v0}, Lcom/android/systemui/recent/DualAppsService;->openDualApps()V

    .line 1417
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->finish()V

    .line 1418
    return-void

    .line 1392
    .end local v11           #targetId:I
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mService:Lcom/android/systemui/recent/DualAppsService;

    invoke-virtual {v0}, Lcom/android/systemui/recent/DualAppsService;->getBottomDid()I

    move-result v11

    goto :goto_0

    .line 1401
    .restart local v11       #targetId:I
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mService:Lcom/android/systemui/recent/DualAppsService;

    invoke-virtual {v0}, Lcom/android/systemui/recent/DualAppsService;->getFocusedAppTaskId()I

    move-result v7

    .line 1402
    .local v7, focusId:I
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mService:Lcom/android/systemui/recent/DualAppsService;

    invoke-virtual {v0}, Lcom/android/systemui/recent/DualAppsService;->getFocusedAppIntent()Landroid/content/Intent;

    move-result-object v8

    .line 1403
    .local v8, focusIntent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mService:Lcom/android/systemui/recent/DualAppsService;

    invoke-virtual {v0}, Lcom/android/systemui/recent/DualAppsService;->getFocusApp()Ljava/lang/String;

    move-result-object v9

    .line 1404
    .local v9, focusPkgName:Ljava/lang/String;
    iget v0, v10, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    if-eq v0, v7, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mWhiteList:Lcom/android/internal/app/IDualAppsService;

    invoke-interface {v0, v9}, Lcom/android/internal/app/IDualAppsService;->isNoOverlayPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mOverlayInBackground:Z

    if-nez v0, :cond_2

    .line 1406
    rem-int/lit8 v0, v11, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v7, v8}, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->startOrMove(IILandroid/content/Intent;)V

    .line 1408
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mWhiteList:Lcom/android/internal/app/IDualAppsService;

    iget-object v1, v10, Lcom/android/systemui/recent/TaskDescription;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IDualAppsService;->isNoOverlayPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1409
    invoke-virtual {p0, v11}, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->setFocus(I)V

    .line 1410
    iget v0, v10, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    iget-object v1, v10, Lcom/android/systemui/recent/TaskDescription;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v11, v0, v1}, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->startOrMove(IILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1414
    .end local v7           #focusId:I
    .end local v8           #focusIntent:Landroid/content/Intent;
    .end local v9           #focusPkgName:Ljava/lang/String;
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mService:Lcom/android/systemui/recent/DualAppsService;

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/recent/DualAppsService;->setShowStatus(ZI)V

    .line 1415
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mService:Lcom/android/systemui/recent/DualAppsService;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/recent/DualAppsService;->setShowStatus(ZI)V

    goto :goto_1

    .line 1412
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public moveTaskToDisplayQueued(IIZZ)V
    .locals 2
    .parameter "to"
    .parameter "taskId"
    .parameter "resumeFrom"
    .parameter "resumeTo"

    .prologue
    .line 1472
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/IActivityManager;->moveTaskToDisplayQueued(IIZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1477
    :goto_0
    return-void

    .line 1474
    :catch_0
    move-exception v0

    .line 1475
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDisplayAdded(I)V
    .locals 6
    .parameter "displayId"

    .prologue
    .line 1491
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mService:Lcom/android/systemui/recent/DualAppsService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mPendingTask:Lcom/android/systemui/recent/TaskDescription;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mService:Lcom/android/systemui/recent/DualAppsService;

    invoke-virtual {v3}, Lcom/android/systemui/recent/DualAppsService;->getFocusedAppTaskId()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mPendingTask:Lcom/android/systemui/recent/TaskDescription;

    iget v4, v4, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    if-ne v3, v4, :cond_0

    .line 1493
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mOtherPendingTargetId:I

    .line 1496
    :cond_0
    invoke-static {p1}, Landroid/view/Display;->isAsusDisplayID(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mPendingTargetId:I

    if-ne p1, v3, :cond_1

    .line 1497
    iget v3, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mPendingTargetId:I

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mPendingTask:Lcom/android/systemui/recent/TaskDescription;

    iget v4, v4, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mPendingTask:Lcom/android/systemui/recent/TaskDescription;

    iget-object v5, v5, Lcom/android/systemui/recent/TaskDescription;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->startOrMove(IILandroid/content/Intent;)V

    .line 1498
    iget v3, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mPendingTargetId:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->setFocus(I)V

    .line 1499
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mPendingTask:Lcom/android/systemui/recent/TaskDescription;

    .line 1500
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mPendingTargetId:I

    .line 1502
    :cond_1
    invoke-static {p1}, Landroid/view/Display;->isAsusDisplayID(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mOtherPendingTargetId:I

    if-ne p1, v3, :cond_3

    .line 1503
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mService:Lcom/android/systemui/recent/DualAppsService;

    invoke-virtual {v3}, Lcom/android/systemui/recent/DualAppsService;->getFocusedAppTaskId()I

    move-result v0

    .line 1504
    .local v0, focusId:I
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mService:Lcom/android/systemui/recent/DualAppsService;

    invoke-virtual {v3}, Lcom/android/systemui/recent/DualAppsService;->getFocusedAppIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1505
    .local v1, focusIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mService:Lcom/android/systemui/recent/DualAppsService;

    invoke-virtual {v3}, Lcom/android/systemui/recent/DualAppsService;->getFocusApp()Ljava/lang/String;

    move-result-object v2

    .line 1506
    .local v2, focusPkgName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mWhiteList:Lcom/android/internal/app/IDualAppsService;

    invoke-interface {v3, v2}, Lcom/android/internal/app/IDualAppsService;->isNoOverlayPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mOverlayInBackground:Z

    if-nez v3, :cond_2

    .line 1507
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->startOrMove(IILandroid/content/Intent;)V

    .line 1509
    :cond_2
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mOtherPendingTargetId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1513
    .end local v0           #focusId:I
    .end local v1           #focusIntent:Landroid/content/Intent;
    .end local v2           #focusPkgName:Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 1511
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1329
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 1330
    .local v0, mAction:I
    packed-switch v0, :pswitch_data_0

    .line 1355
    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 1333
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->startDragging(Landroid/view/DragEvent;)V

    goto :goto_0

    .line 1337
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->setWindowBackground(Landroid/view/View;Landroid/view/DragEvent;)V

    goto :goto_0

    .line 1342
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->drop(Landroid/view/View;Landroid/view/DragEvent;)V

    .line 1343
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mParent:Lcom/android/systemui/recent/RecentsPanelView;

    #calls: Lcom/android/systemui/recent/RecentsPanelView;->showImpl(Z)V
    invoke-static {v1, v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$1900(Lcom/android/systemui/recent/RecentsPanelView;Z)V

    goto :goto_0

    .line 1347
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mSplitWindow:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1348
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mFullScreenWindow:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1349
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 1330
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setFocus(I)V
    .locals 2
    .parameter "displayId"

    .prologue
    .line 1438
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->setFocus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1442
    :goto_0
    return-void

    .line 1439
    :catch_0
    move-exception v0

    .line 1440
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setSerivceBinder(Landroid/os/IBinder;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 1382
    if-eqz p1, :cond_0

    .line 1383
    check-cast p1, Lcom/android/systemui/recent/DualAppsService$LocalBinder;

    .end local p1
    invoke-virtual {p1}, Lcom/android/systemui/recent/DualAppsService$LocalBinder;->getService()Lcom/android/systemui/recent/DualAppsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mService:Lcom/android/systemui/recent/DualAppsService;

    .line 1384
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mService:Lcom/android/systemui/recent/DualAppsService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recent/DualAppsService;->setCallback(Lcom/android/systemui/recent/DualAppsService$Callback;)V

    .line 1388
    :goto_0
    return-void

    .line 1386
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->mService:Lcom/android/systemui/recent/DualAppsService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/DualAppsService;->setCallback(Lcom/android/systemui/recent/DualAppsService$Callback;)V

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;I)V
    .locals 16
    .parameter "intent"
    .parameter "displayId"

    .prologue
    .line 1446
    if-eqz p1, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/view/Display;->isAsusDisplayID(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1460
    :cond_0
    :goto_0
    return-void

    .line 1451
    :cond_1
    :try_start_0
    new-instance v15, Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1452
    .local v15, i:Landroid/content/Intent;
    const v1, 0x10104000

    invoke-virtual {v15, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1455
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p1

    move/from16 v13, p2

    invoke-interface/range {v1 .. v13}, Landroid/app/IActivityManager;->startActivityQueued(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1457
    .end local v15           #i:Landroid/content/Intent;
    :catch_0
    move-exception v14

    .line 1458
    .local v14, e:Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startOrMove(IILandroid/content/Intent;)V
    .locals 1
    .parameter "to"
    .parameter "taskId"
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 1429
    if-lez p2, :cond_0

    .line 1430
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->moveTaskToDisplayQueued(IIZZ)V

    .line 1434
    :goto_0
    return-void

    .line 1432
    :cond_0
    invoke-virtual {p0, p3, p1}, Lcom/android/systemui/recent/RecentsPanelView$DualAppsController;->startActivity(Landroid/content/Intent;I)V

    goto :goto_0
.end method
