.class Lin/jmkl/dcsms/statusbargreper/DataTrafik$2;
.super Ljava/lang/Object;
.source "DataTrafik.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/jmkl/dcsms/statusbargreper/DataTrafik;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/jmkl/dcsms/statusbargreper/DataTrafik;


# direct methods
.method constructor <init>(Lin/jmkl/dcsms/statusbargreper/DataTrafik;)V
    .locals 0

    iput-object p1, p0, Lin/jmkl/dcsms/statusbargreper/DataTrafik$2;->this$0:Lin/jmkl/dcsms/statusbargreper/DataTrafik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x1

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v6

    add-long v0, v4, v6

    iget-object v4, p0, Lin/jmkl/dcsms/statusbargreper/DataTrafik$2;->this$0:Lin/jmkl/dcsms/statusbargreper/DataTrafik;

    #getter for: Lin/jmkl/dcsms/statusbargreper/DataTrafik;->mLastTime:J
    invoke-static {v4}, Lin/jmkl/dcsms/statusbargreper/DataTrafik;->access$1(Lin/jmkl/dcsms/statusbargreper/DataTrafik;)J

    move-result-wide v4

    sub-long v2, v0, v4

    iget-object v4, p0, Lin/jmkl/dcsms/statusbargreper/DataTrafik$2;->this$0:Lin/jmkl/dcsms/statusbargreper/DataTrafik;

    invoke-static {v2, v3, v8}, Lin/jmkl/dcsms/statusbargreper/DataTrafik;->Count(JZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lin/jmkl/dcsms/statusbargreper/DataTrafik;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lin/jmkl/dcsms/statusbargreper/DataTrafik$2;->this$0:Lin/jmkl/dcsms/statusbargreper/DataTrafik;

    #setter for: Lin/jmkl/dcsms/statusbargreper/DataTrafik;->mLastTime:J
    invoke-static {v4, v0, v1}, Lin/jmkl/dcsms/statusbargreper/DataTrafik;->access$2(Lin/jmkl/dcsms/statusbargreper/DataTrafik;J)V

    const-string v4, "TRAFFIC"

    invoke-static {v2, v3, v8}, Lin/jmkl/dcsms/statusbargreper/DataTrafik;->Count(JZ)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lin/jmkl/dcsms/statusbargreper/DataTrafik$2;->this$0:Lin/jmkl/dcsms/statusbargreper/DataTrafik;

    #getter for: Lin/jmkl/dcsms/statusbargreper/DataTrafik;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lin/jmkl/dcsms/statusbargreper/DataTrafik;->access$3(Lin/jmkl/dcsms/statusbargreper/DataTrafik;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lin/jmkl/dcsms/statusbargreper/DataTrafik$2;->this$0:Lin/jmkl/dcsms/statusbargreper/DataTrafik;

    #getter for: Lin/jmkl/dcsms/statusbargreper/DataTrafik;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lin/jmkl/dcsms/statusbargreper/DataTrafik;->access$4(Lin/jmkl/dcsms/statusbargreper/DataTrafik;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
