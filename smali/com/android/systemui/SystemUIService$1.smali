.class Lcom/android/systemui/SystemUIService$1;
.super Landroid/database/ContentObserver;
.source "SystemUIService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/SystemUIService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SystemUIService;


# direct methods
.method constructor <init>(Lcom/android/systemui/SystemUIService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/systemui/SystemUIService$1;->this$0:Lcom/android/systemui/SystemUIService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/systemui/SystemUIService$1;->this$0:Lcom/android/systemui/SystemUIService;

    #calls: Lcom/android/systemui/SystemUIService;->checkAndSetEnableState()V
    invoke-static {v0}, Lcom/android/systemui/SystemUIService;->access$000(Lcom/android/systemui/SystemUIService;)V

    .line 67
    sget-boolean v0, Lcom/android/systemui/SystemUIService;->sEnableTracker:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/systemui/SystemUIService$1;->this$0:Lcom/android/systemui/SystemUIService;

    invoke-virtual {v0}, Lcom/android/systemui/SystemUIService;->serviceStart()V

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SystemUIService$1;->this$0:Lcom/android/systemui/SystemUIService;

    invoke-virtual {v0}, Lcom/android/systemui/SystemUIService;->serviceStop()V

    goto :goto_0
.end method
