.class Lcom/serajr/systemui/navigationdrawer/CustomDrawerLayout$1;
.super Ljava/lang/Object;
.source "CustomDrawerLayout.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/serajr/systemui/navigationdrawer/CustomDrawerLayout;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serajr/systemui/navigationdrawer/CustomDrawerLayout;


# direct methods
.method constructor <init>(Lcom/serajr/systemui/navigationdrawer/CustomDrawerLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/serajr/systemui/navigationdrawer/CustomDrawerLayout$1;->this$0:Lcom/serajr/systemui/navigationdrawer/CustomDrawerLayout;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 92
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 87
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 1
    .parameter "drawerView"
    .parameter "slideOffset"

    .prologue
    .line 78
    instance-of v0, p1, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;

    if-eqz v0, :cond_0

    .line 79
    check-cast p1, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;

    .end local p1
    const/high16 v0, 0x3f80

    sub-float/2addr v0, p2

    invoke-virtual {p1, v0}, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;->setFoldFactor(F)V

    .line 82
    :cond_0
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 73
    return-void
.end method
