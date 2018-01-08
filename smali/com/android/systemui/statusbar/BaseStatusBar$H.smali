.class public Lcom/android/systemui/statusbar/BaseStatusBar$H;
.super Landroid/os/Handler;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0

    .prologue
    .line 589
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "m"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 592
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 594
    :sswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->toggleRecentsActivity()V

    goto :goto_0

    .line 597
    :sswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->closeRecents()V

    goto :goto_0

    .line 600
    :sswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->preloadRecentTasksList()V

    goto :goto_0

    .line 603
    :sswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->cancelPreloadingRecentTasksList()V

    goto :goto_0

    .line 607
    :sswitch_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/SearchPanelView;->isAssistantAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 608
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v1, v0, v0}, Lcom/android/systemui/SearchPanelView;->show(ZZ)V

    .line 609
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->onShowSearchPanel()V

    goto :goto_0

    .line 614
    :sswitch_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/SearchPanelView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 615
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/SearchPanelView;->show(ZZ)V

    .line 616
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->onHideSearchPanel()V

    goto :goto_0

    .line 620
    :sswitch_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/16 v3, 0x2ee6

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_1

    :goto_1
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->setFloatingMenu(IZI)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 623
    :sswitch_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/16 v3, 0x2ee7

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_2

    :goto_2
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->setFloatingMenu(IZI)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 592
    :sswitch_data_0
    .sparse-switch
        0x3fc -> :sswitch_0
        0x3fd -> :sswitch_1
        0x3fe -> :sswitch_2
        0x3ff -> :sswitch_3
        0x400 -> :sswitch_4
        0x401 -> :sswitch_5
        0x2ee6 -> :sswitch_6
        0x2ee7 -> :sswitch_7
    .end sparse-switch
.end method
