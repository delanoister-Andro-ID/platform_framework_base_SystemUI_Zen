.class public Lcom/serajr/systemui/navigationdrawer/CustomDrawerLayout;
.super Landroid/support/v4/widget/DrawerLayout;
.source "CustomDrawerLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method private getRealDrawer(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .parameter "drawerView"

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 126
    .local v0, drawerView2:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/serajr/systemui/navigationdrawer/CustomDrawerLayout;->isFoldingLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    .end local v0           #drawerView2:Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0       #drawerView2:Landroid/view/View;
    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private isFoldingLayout(Landroid/view/View;)Z
    .locals 1
    .parameter "drawerView"

    .prologue
    .line 136
    instance-of v0, p1, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;

    return v0
.end method


# virtual methods
.method public closeDrawer(Landroid/view/View;)V
    .locals 1
    .parameter "drawerView"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/serajr/systemui/navigationdrawer/CustomDrawerLayout;->getRealDrawer(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 122
    return-void
.end method

.method public getFoldingLayout(Landroid/view/View;)Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;
    .locals 3
    .parameter "drawerView"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/serajr/systemui/navigationdrawer/CustomDrawerLayout;->getRealDrawer(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/serajr/systemui/navigationdrawer/CustomDrawerLayout;->isDrawerView2(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 100
    const-string v2, " is not a sliding drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    invoke-direct {p0, p1}, Lcom/serajr/systemui/navigationdrawer/CustomDrawerLayout;->getRealDrawer(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/serajr/systemui/navigationdrawer/CustomDrawerLayout;->isFoldingLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/serajr/systemui/navigationdrawer/CustomDrawerLayout;->getRealDrawer(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDrawerView2(Landroid/view/View;)Z
    .locals 3
    .parameter "child"

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v1, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 109
    .local v1, gravity:I
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 108
    invoke-static {v1, v2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 110
    .local v0, absGravity:I
    and-int/lit8 v2, v0, 0x7

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 8

    .prologue
    .line 50
    invoke-super {p0}, Landroid/support/v4/widget/DrawerLayout;->onAttachedToWindow()V

    .line 52
    invoke-virtual {p0}, Lcom/serajr/systemui/navigationdrawer/CustomDrawerLayout;->getChildCount()I

    move-result v1

    .line 53
    .local v1, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 67
    new-instance v5, Lcom/serajr/systemui/navigationdrawer/CustomDrawerLayout$1;

    invoke-direct {v5, p0}, Lcom/serajr/systemui/navigationdrawer/CustomDrawerLayout$1;-><init>(Lcom/serajr/systemui/navigationdrawer/CustomDrawerLayout;)V

    invoke-virtual {p0, v5}, Lcom/serajr/systemui/navigationdrawer/CustomDrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 95
    return-void

    .line 54
    :cond_0
    invoke-virtual {p0, v3}, Lcom/serajr/systemui/navigationdrawer/CustomDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/serajr/systemui/navigationdrawer/CustomDrawerLayout;->isDrawerView2(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 56
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "at"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    new-instance v2, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;

    .line 58
    invoke-virtual {p0}, Lcom/serajr/systemui/navigationdrawer/CustomDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 57
    invoke-direct {v2, v5}, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;-><init>(Landroid/content/Context;)V

    .line 59
    .local v2, foldingNavigationLayout:Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;
    const/high16 v5, 0x3f80

    invoke-virtual {v2, v5}, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->setAnchorFactor(F)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/serajr/systemui/navigationdrawer/CustomDrawerLayout;->removeView(Landroid/view/View;)V

    .line 61
    invoke-virtual {v2, v0}, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->addView(Landroid/view/View;)V

    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 63
    .local v4, layPar:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, v2, v3, v4}, Lcom/serajr/systemui/navigationdrawer/CustomDrawerLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 53
    .end local v2           #foldingNavigationLayout:Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;
    .end local v4           #layPar:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
