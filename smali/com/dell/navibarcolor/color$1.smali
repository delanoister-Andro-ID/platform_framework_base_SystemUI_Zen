.class Lcom/dell/navibarcolor/color$1;
.super Ljava/lang/Object;
.source "color.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dell/navibarcolor/color;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dell/navibarcolor/color;


# direct methods
.method constructor <init>(Lcom/dell/navibarcolor/color;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/dell/navibarcolor/color$1;->this$0:Lcom/dell/navibarcolor/color;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dell/navibarcolor/color$1;->this$0:Lcom/dell/navibarcolor/color;

    #calls: Lcom/dell/navibarcolor/color;->SetColor()V
    invoke-static {v0}, Lcom/dell/navibarcolor/color;->access$0(Lcom/dell/navibarcolor/color;)V

    .line 72
    iget-object v0, p0, Lcom/dell/navibarcolor/color$1;->this$0:Lcom/dell/navibarcolor/color;

    #getter for: Lcom/dell/navibarcolor/color;->Updater:Landroid/os/Handler;
    invoke-static {v0}, Lcom/dell/navibarcolor/color;->access$1(Lcom/dell/navibarcolor/color;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/dell/navibarcolor/color$1;->this$0:Lcom/dell/navibarcolor/color;

    #getter for: Lcom/dell/navibarcolor/color;->UPDATE:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/dell/navibarcolor/color;->access$2(Lcom/dell/navibarcolor/color;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/dell/navibarcolor/color$1;->this$0:Lcom/dell/navibarcolor/color;

    #getter for: Lcom/dell/navibarcolor/color;->UpdaterTime:I
    invoke-static {v2}, Lcom/dell/navibarcolor/color;->access$3(Lcom/dell/navibarcolor/color;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    return-void
.end method
