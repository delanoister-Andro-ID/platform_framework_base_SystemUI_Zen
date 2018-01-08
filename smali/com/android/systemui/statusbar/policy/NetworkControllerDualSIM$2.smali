.class Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$2;
.super Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;
.source "NetworkControllerDualSIM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$PhoneStateListenerDualSIM;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;)V

    return-void
.end method


# virtual methods
.method protected getSlot()I
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerDualSIM;->getDataSlot()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    return v0
.end method
