.class Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$39;
.super Ljava/lang/Object;
.source "AsusPhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;
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
    .line 3420
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 3422
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0067

    if-ne v0, v1, :cond_2

    .line 3423
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHasSettingsPanel:[Z

    sget v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    .line 3424
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->animateExpandSettingsPanel()V

    .line 3436
    :cond_0
    :goto_0
    return-void

    .line 3426
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;Z)V

    goto :goto_0

    .line 3429
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0062

    if-ne v0, v1, :cond_3

    .line 3430
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;Z)V

    goto :goto_0

    .line 3432
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0061

    if-ne v0, v1, :cond_0

    .line 3433
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.action.ASUS_QUICKSETTING_LIST_SETTING_PAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;Z)V

    goto :goto_0
.end method
