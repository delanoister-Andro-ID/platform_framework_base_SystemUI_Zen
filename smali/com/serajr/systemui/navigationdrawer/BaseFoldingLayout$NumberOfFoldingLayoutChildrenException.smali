.class Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$NumberOfFoldingLayoutChildrenException;
.super Ljava/lang/RuntimeException;
.source "BaseFoldingLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberOfFoldingLayoutChildrenException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;


# direct methods
.method public constructor <init>(Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "message"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$NumberOfFoldingLayoutChildrenException;->this$0:Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;

    .line 192
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 193
    return-void
.end method
