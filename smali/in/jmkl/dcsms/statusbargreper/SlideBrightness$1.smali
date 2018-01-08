.class Lin/jmkl/dcsms/statusbargreper/SlideBrightness$1;
.super Ljava/lang/Object;
.source "SlideBrightness.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/jmkl/dcsms/statusbargreper/SlideBrightness;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/jmkl/dcsms/statusbargreper/SlideBrightness;


# direct methods
.method constructor <init>(Lin/jmkl/dcsms/statusbargreper/SlideBrightness;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lin/jmkl/dcsms/statusbargreper/SlideBrightness$1;->this$0:Lin/jmkl/dcsms/statusbargreper/SlideBrightness;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "arg0"
    .parameter "progress"
    .parameter "arg2"

    .prologue
    .line 68
    iget-object v0, p0, Lin/jmkl/dcsms/statusbargreper/SlideBrightness$1;->this$0:Lin/jmkl/dcsms/statusbargreper/SlideBrightness;

    int-to-float v1, p2

    const/high16 v2, 0x437f

    div-float/2addr v1, v2

    #setter for: Lin/jmkl/dcsms/statusbargreper/SlideBrightness;->BackLightValue:F
    invoke-static {v0, v1}, Lin/jmkl/dcsms/statusbargreper/SlideBrightness;->access$0(Lin/jmkl/dcsms/statusbargreper/SlideBrightness;F)V

    .line 70
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 74
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5
    .parameter "arg0"

    .prologue
    .line 78
    iget-object v3, p0, Lin/jmkl/dcsms/statusbargreper/SlideBrightness$1;->this$0:Lin/jmkl/dcsms/statusbargreper/SlideBrightness;

    #getter for: Lin/jmkl/dcsms/statusbargreper/SlideBrightness;->BackLightValue:F
    invoke-static {v3}, Lin/jmkl/dcsms/statusbargreper/SlideBrightness;->access$1(Lin/jmkl/dcsms/statusbargreper/SlideBrightness;)F

    move-result v3

    const/high16 v4, 0x437f

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 79
    .local v0, SysBackLightValue:I
    iget-object v3, p0, Lin/jmkl/dcsms/statusbargreper/SlideBrightness$1;->this$0:Lin/jmkl/dcsms/statusbargreper/SlideBrightness;

    #getter for: Lin/jmkl/dcsms/statusbargreper/SlideBrightness;->context:Landroid/content/Context;
    invoke-static {v3}, Lin/jmkl/dcsms/statusbargreper/SlideBrightness;->access$2(Lin/jmkl/dcsms/statusbargreper/SlideBrightness;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 80
    const-string v4, "screen_brightness"

    .line 79
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 82
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v2, i:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    const-string v3, "in.jmkl.dcsms.statusbargreper"

    .line 85
    const-string v4, "in.jmkl.dcsms.statusbargreper.Dummy"

    .line 84
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    iget-object v3, p0, Lin/jmkl/dcsms/statusbargreper/SlideBrightness$1;->this$0:Lin/jmkl/dcsms/statusbargreper/SlideBrightness;

    #getter for: Lin/jmkl/dcsms/statusbargreper/SlideBrightness;->context:Landroid/content/Context;
    invoke-static {v3}, Lin/jmkl/dcsms/statusbargreper/SlideBrightness;->access$2(Lin/jmkl/dcsms/statusbargreper/SlideBrightness;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v2           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "SLIDERBRIGThEWkekSkSkS"

    const-string v4, "error launch dummy"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
