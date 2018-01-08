.class Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$9;
.super Ljava/lang/Object;
.source "AsusPhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->makeStatusBarView()Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 666
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.asus.sitd.whatsnext"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 667
    .local v1, startIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    .end local v1           #startIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 668
    :catch_0
    move-exception v0

    .line 669
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AsusPhoneStatusBar"

    const-string v3, "Cannot start intent"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
