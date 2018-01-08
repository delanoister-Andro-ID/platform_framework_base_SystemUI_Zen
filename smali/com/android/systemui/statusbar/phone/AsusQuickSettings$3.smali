.class Lcom/android/systemui/statusbar/phone/AsusQuickSettings$3;
.super Ljava/lang/Thread;
.source "AsusQuickSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->takeScreenShot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)V
    .locals 0

    .prologue
    .line 616
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$3;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 619
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$3;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->access$000(Lcom/android/systemui/statusbar/phone/AsusQuickSettings;)Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->isFullyCollapsed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 620
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$3;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 625
    :catch_0
    move-exception v0

    .line 626
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 628
    .end local v0           #e:Ljava/lang/InterruptedException;
    :goto_1
    return-void

    .line 622
    :cond_0
    const-wide/16 v2, 0x190

    :try_start_1
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings$3;->sleep(J)V

    .line 623
    new-instance v1, Landroid/app/Instrumentation;

    invoke-direct {v1}, Landroid/app/Instrumentation;-><init>()V

    .line 624
    .local v1, mIns:Landroid/app/Instrumentation;
    const/16 v2, 0xe6

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
