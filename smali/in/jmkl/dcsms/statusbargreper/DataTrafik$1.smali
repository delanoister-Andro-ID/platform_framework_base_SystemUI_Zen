.class Lin/jmkl/dcsms/statusbargreper/DataTrafik$1;
.super Landroid/content/BroadcastReceiver;
.source "DataTrafik.java"


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

    iput-object p1, p0, Lin/jmkl/dcsms/statusbargreper/DataTrafik$1;->this$0:Lin/jmkl/dcsms/statusbargreper/DataTrafik;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lin/jmkl/dcsms/statusbargreper/DataTrafik$1;->this$0:Lin/jmkl/dcsms/statusbargreper/DataTrafik;

    #calls: Lin/jmkl/dcsms/statusbargreper/DataTrafik;->updateState()V
    invoke-static {v1}, Lin/jmkl/dcsms/statusbargreper/DataTrafik;->access$0(Lin/jmkl/dcsms/statusbargreper/DataTrafik;)V

    :cond_0
    const-string v1, "in.jmkl.dcsms.statusbargreper.Traffic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lin/jmkl/dcsms/statusbargreper/DataTrafik$1;->this$0:Lin/jmkl/dcsms/statusbargreper/DataTrafik;

    invoke-virtual {v1}, Lin/jmkl/dcsms/statusbargreper/DataTrafik;->hidenshow()V

    iget-object v1, p0, Lin/jmkl/dcsms/statusbargreper/DataTrafik$1;->this$0:Lin/jmkl/dcsms/statusbargreper/DataTrafik;

    #calls: Lin/jmkl/dcsms/statusbargreper/DataTrafik;->updateState()V
    invoke-static {v1}, Lin/jmkl/dcsms/statusbargreper/DataTrafik;->access$0(Lin/jmkl/dcsms/statusbargreper/DataTrafik;)V

    :cond_1
    return-void
.end method
