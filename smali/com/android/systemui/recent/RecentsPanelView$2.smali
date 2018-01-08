.class Lcom/android/systemui/recent/RecentsPanelView$2;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsPanelView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;)V
    .locals 0

    .prologue
    .line 629
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 35
    .parameter "arg0"

    .prologue
    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mIsClickable:Z

    move/from16 v31, v0

    if-eqz v31, :cond_7

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/android/systemui/recent/RecentsPanelView;->sendButtonClickable(Z)V

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v31, v0

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/recent/RecentsPanelView;->access$900(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;

    move-result-object v31

    const-string v32, "activity"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 636
    .local v6, am:Landroid/app/ActivityManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v31, v0

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/recent/RecentsPanelView;->access$1000(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v31

    move-object/from16 v0, v31

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    .line 638
    .local v19, orientation:I
    const/4 v8, 0x0

    .line 639
    .local v8, count:I
    const/16 v20, 0x0

    .line 640
    .local v20, overScreen:Z
    const/16 v17, 0x0

    .line 641
    .local v17, last:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v31, v0

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/recent/RecentsPanelView;->access$1200(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v32, v0

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mLinearLayout:Landroid/widget/LinearLayout;
    invoke-static/range {v32 .. v32}, Lcom/android/systemui/recent/RecentsPanelView;->access$1100(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/widget/LinearLayout;

    move-result-object v32

    invoke-interface/range {v31 .. v32}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v13

    .line 642
    .local v13, item:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v31, v0

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/recent/RecentsPanelView;->access$1200(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v24

    .line 647
    .local v24, sb:Landroid/graphics/Rect;
    const/16 v4, 0xa

    .line 648
    .local v4, ROW_DELAY_DECREMENT:I
    const/16 v9, 0x8c

    .line 649
    .local v9, currentDelay:I
    const/16 v27, 0x0

    .line 650
    .local v27, totalDelay:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v31, v0

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/recent/RecentsPanelView;->access$1200(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v31, v0

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/recent/RecentsPanelView;->access$000(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v31

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/systemui/recent/TaskDescription;

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    move/from16 v31, v0

    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-interface {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->findViewForTask(I)Landroid/view/View;

    move-result-object v23

    .line 651
    .local v23, sampleView:Landroid/view/View;
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWidth()I

    move-result v30

    .line 652
    .local v30, width:I
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->isLayoutRtl()Z

    move-result v31

    if-eqz v31, :cond_1

    const/4 v10, -0x1

    .line 653
    .local v10, dir:I
    :goto_0
    const/high16 v31, 0x3f00

    int-to-float v0, v10

    move/from16 v32, v0

    mul-float v31, v31, v32

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v31, v31, v32

    const/high16 v32, 0x4100

    mul-float v29, v31, v32

    .line 657
    .local v29, velocity:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v31, v0

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/recent/RecentsPanelView;->access$1200(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move-result-object v31

    const/16 v32, 0x0

    invoke-interface/range {v31 .. v32}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->setLayoutTransitionsEnabled(Z)V

    .line 659
    const/16 v31, 0x2

    move/from16 v0, v19

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/systemui/recent/RecentsPanelView;->getWidth()I

    move-result v22

    .line 661
    .local v22, panelWidth:I
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v16

    .line 662
    .local v16, itemWidth:I
    div-int v5, v22, v16

    .line 663
    .local v5, VisibleNumOfItem:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v31, v0

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/recent/RecentsPanelView;->access$1200(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move-result-object v31

    check-cast v31, Landroid/view/View;

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    #calls: Lcom/android/systemui/recent/RecentsPanelView;->getViewLeft(Landroid/view/View;)I
    invoke-static {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->access$1300(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;)I

    move-result v18

    .line 664
    .local v18, left:I
    if-nez v18, :cond_0

    .line 665
    const/16 v20, 0x1

    .line 674
    .end local v16           #itemWidth:I
    .end local v18           #left:I
    .end local v22           #panelWidth:I
    :cond_0
    :goto_1
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v31, v0

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/recent/RecentsPanelView;->access$000(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v12, v0, :cond_6

    .line 675
    move v15, v12

    .line 676
    .local v15, itemID:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v31, v0

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/recent/RecentsPanelView;->access$000(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/recent/TaskDescription;

    .line 677
    .local v25, t:Lcom/android/systemui/recent/TaskDescription;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v31, v0

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/recent/RecentsPanelView;->access$1200(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move-result-object v31

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    move/from16 v32, v0

    invoke-interface/range {v31 .. v32}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->findViewForTask(I)Landroid/view/View;

    move-result-object v28

    .line 678
    .local v28, v:Landroid/view/View;
    if-eqz v20, :cond_5

    .line 679
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 680
    .local v7, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 681
    move-object/from16 v0, v24

    invoke-static {v0, v7}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v31

    if-nez v31, :cond_3

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v31, v0

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mLinearLayout:Landroid/widget/LinearLayout;
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/recent/RecentsPanelView;->access$1100(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/widget/LinearLayout;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 709
    .end local v7           #bounds:Landroid/graphics/Rect;
    :goto_3
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v6, v0, v1}, Landroid/app/ActivityManager;->removeTask(II)Z

    .line 674
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 652
    .end local v5           #VisibleNumOfItem:I
    .end local v10           #dir:I
    .end local v12           #i:I
    .end local v15           #itemID:I
    .end local v25           #t:Lcom/android/systemui/recent/TaskDescription;
    .end local v28           #v:Landroid/view/View;
    .end local v29           #velocity:F
    :cond_1
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 667
    .restart local v10       #dir:I
    .restart local v29       #velocity:F
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/systemui/recent/RecentsPanelView;->getHeight()I

    move-result v21

    .line 668
    .local v21, panelHeight:I
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v14

    .line 669
    .local v14, itemHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v31, v0

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mStatusBarHeight:I
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/recent/RecentsPanelView;->access$1400(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v31

    sub-int v31, v21, v31

    div-int v5, v31, v14

    .line 670
    .restart local v5       #VisibleNumOfItem:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v31, v0

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/recent/RecentsPanelView;->access$1200(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move-result-object v31

    check-cast v31, Landroid/view/View;

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    #calls: Lcom/android/systemui/recent/RecentsPanelView;->getViewTop(Landroid/view/View;)I
    invoke-static {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->access$1500(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;)I

    move-result v26

    .line 671
    .local v26, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v31, v0

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mStatusBarHeight:I
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/recent/RecentsPanelView;->access$1400(Lcom/android/systemui/recent/RecentsPanelView;)I

    move-result v31

    move/from16 v0, v26

    move/from16 v1, v31

    if-gt v0, v1, :cond_0

    .line 672
    const/16 v20, 0x1

    goto/16 :goto_1

    .line 684
    .end local v14           #itemHeight:I
    .end local v21           #panelHeight:I
    .end local v26           #top:I
    .restart local v7       #bounds:Landroid/graphics/Rect;
    .restart local v12       #i:I
    .restart local v15       #itemID:I
    .restart local v25       #t:Lcom/android/systemui/recent/TaskDescription;
    .restart local v28       #v:Landroid/view/View;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 685
    add-int/lit8 v31, v5, -0x1

    move/from16 v0, v31

    if-ne v8, v0, :cond_4

    .line 686
    const/16 v17, 0x1

    .line 687
    :cond_4
    move/from16 v11, v17

    .line 689
    .local v11, done:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mHandler:Landroid/os/Handler;

    move-object/from16 v31, v0

    new-instance v32, Lcom/android/systemui/recent/RecentsPanelView$2$1;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3, v11}, Lcom/android/systemui/recent/RecentsPanelView$2$1;-><init>(Lcom/android/systemui/recent/RecentsPanelView$2;Landroid/view/View;FZ)V

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v33, v0

    invoke-virtual/range {v31 .. v34}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 695
    const/16 v31, 0x32

    add-int/lit8 v32, v9, -0xa

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 696
    add-int v27, v27, v9

    goto/16 :goto_3

    .line 700
    .end local v7           #bounds:Landroid/graphics/Rect;
    .end local v11           #done:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView;->mHandler:Landroid/os/Handler;

    move-object/from16 v31, v0

    new-instance v32, Lcom/android/systemui/recent/RecentsPanelView$2$2;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/recent/RecentsPanelView$2$2;-><init>(Lcom/android/systemui/recent/RecentsPanelView$2;Landroid/view/View;F)V

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v33, v0

    invoke-virtual/range {v31 .. v34}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 706
    const/16 v31, 0x32

    add-int/lit8 v32, v9, -0xa

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 707
    add-int v27, v27, v9

    goto/16 :goto_3

    .line 712
    .end local v15           #itemID:I
    .end local v25           #t:Lcom/android/systemui/recent/TaskDescription;
    .end local v28           #v:Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v31, v0

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/recent/RecentsPanelView;->access$1200(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move-result-object v31

    const/16 v32, 0x1

    invoke-interface/range {v31 .. v32}, Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;->setLayoutTransitionsEnabled(Z)V

    .line 714
    .end local v4           #ROW_DELAY_DECREMENT:I
    .end local v5           #VisibleNumOfItem:I
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #count:I
    .end local v9           #currentDelay:I
    .end local v10           #dir:I
    .end local v12           #i:I
    .end local v13           #item:Landroid/view/View;
    .end local v17           #last:Z
    .end local v19           #orientation:I
    .end local v20           #overScreen:Z
    .end local v23           #sampleView:Landroid/view/View;
    .end local v24           #sb:Landroid/graphics/Rect;
    .end local v27           #totalDelay:I
    .end local v29           #velocity:F
    .end local v30           #width:I
    :cond_7
    return-void
.end method
