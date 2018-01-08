.class public final enum Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;
.super Ljava/lang/Enum;
.source "BaseFoldingLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;

.field public static final enum HORIZONTAL:Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;

.field public static final enum VERTICAL:Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;

    const-string v1, "VERTICAL"

    invoke-direct {v0, v1, v2}, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;->VERTICAL:Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;

    new-instance v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;

    const-string v1, "HORIZONTAL"

    invoke-direct {v0, v1, v3}, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;->HORIZONTAL:Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;

    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;

    sget-object v1, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;->VERTICAL:Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;->HORIZONTAL:Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;->ENUM$VALUES:[Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;

    return-object v0
.end method

.method public static values()[Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;->ENUM$VALUES:[Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;

    array-length v1, v0

    new-array v2, v1, [Lcom/serajr/systemui/navigationdrawer/BaseFoldingLayout$Orientation;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
