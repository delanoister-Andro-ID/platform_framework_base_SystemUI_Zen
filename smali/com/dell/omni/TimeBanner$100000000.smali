.class Lcom/dell/omni/TimeBanner$100000000;
.super Ljava/lang/Object;
.source "TimeBanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dell/omni/TimeBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/dell/omni/TimeBanner;

.field private final val$context:Landroid/content/Context;

.field private final val$h:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/dell/omni/TimeBanner;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dell/omni/TimeBanner$100000000;->this$0:Lcom/dell/omni/TimeBanner;

    iput-object p2, p0, Lcom/dell/omni/TimeBanner$100000000;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/dell/omni/TimeBanner$100000000;->val$h:Landroid/os/Handler;

    return-void
.end method

.method static access$0(Lcom/dell/omni/TimeBanner$100000000;)Lcom/dell/omni/TimeBanner;
    .locals 1

    iget-object v0, p0, Lcom/dell/omni/TimeBanner$100000000;->this$0:Lcom/dell/omni/TimeBanner;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dell/omni/TimeBanner$100000000;->this$0:Lcom/dell/omni/TimeBanner;

    iget-object v1, p0, Lcom/dell/omni/TimeBanner$100000000;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/dell/omni/TimeBanner;->updateTime(Landroid/content/Context;)V

    .line 86
    iget-object v0, p0, Lcom/dell/omni/TimeBanner$100000000;->val$h:Landroid/os/Handler;

    const/16 v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
