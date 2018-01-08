.class public Lcom/serajr/systemui/navigationdrawer/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field static final IS_GINGERBREAD_MR1:Z

.field static final IS_ISC:Z

.field static final IS_JBMR2:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/serajr/systemui/navigationdrawer/Util;->IS_JBMR2:Z

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/serajr/systemui/navigationdrawer/Util;->IS_ISC:Z

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    :goto_2
    sput-boolean v1, Lcom/serajr/systemui/navigationdrawer/Util;->IS_GINGERBREAD_MR1:Z

    return-void

    :cond_0
    move v0, v2

    .line 7
    goto :goto_0

    :cond_1
    move v0, v2

    .line 8
    goto :goto_1

    :cond_2
    move v1, v2

    .line 9
    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
