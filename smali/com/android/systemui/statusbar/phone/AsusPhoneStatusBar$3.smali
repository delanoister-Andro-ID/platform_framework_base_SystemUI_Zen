.class Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$3;
.super Landroid/database/ContentObserver;
.source "AsusPhoneStatusBar.java"


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
.method constructor <init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8
    .parameter "selfChange"

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 385
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "user_setup_complete"

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCurrentUserId:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$300(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)I

    move-result v7

    invoke-static {v4, v6, v3, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 393
    .local v1, userSetup:Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButton:[Landroid/widget/ImageView;

    sget v6, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget-object v4, v4, v6

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHasFlipSettings:[Z

    sget v6, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget-boolean v4, v4, v6

    if-eqz v4, :cond_0

    .line 394
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButton:[Landroid/widget/ImageView;

    sget v6, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget-object v6, v4, v6

    if-eqz v1, :cond_3

    move v4, v3

    :goto_1
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 397
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    const/4 v4, 0x2

    if-ge v0, v4, :cond_6

    .line 398
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButton:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mHasFlipSettings:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_1

    .line 399
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButton:[Landroid/widget/ImageView;

    aget-object v6, v4, v0

    if-eqz v1, :cond_4

    move v4, v3

    :goto_3
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 400
    const-string v4, "AsusPhoneStatusBar.DDS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", Get "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " SettingButton\'s visibility:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButton:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_1
    const-string v6, "AsusPhoneStatusBar.DDS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UserSetupObserver, mCurrentType: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v7, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", SettingsButton is not null : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSettingsButton:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    if-eqz v4, :cond_5

    move v4, v2

    :goto_4
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", userSetup: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", mUserSetup: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mUserSetup:Z
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$400(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .end local v0           #i:I
    .end local v1           #userSetup:Z
    :cond_2
    move v1, v3

    .line 385
    goto/16 :goto_0

    .restart local v1       #userSetup:Z
    :cond_3
    move v4, v5

    .line 394
    goto/16 :goto_1

    .restart local v0       #i:I
    :cond_4
    move v4, v5

    .line 399
    goto/16 :goto_3

    :cond_5
    move v4, v3

    .line 404
    goto :goto_4

    .line 411
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mUserSetup:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$400(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Z

    move-result v2

    if-eq v1, v2, :cond_7

    .line 412
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #setter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mUserSetup:Z
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$402(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;Z)Z

    .line 413
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mUserSetup:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$400(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mStatusBarView:[Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBarView;

    sget v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_7

    .line 414
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$3;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->animateCollapseQuickSettings()V

    .line 416
    :cond_7
    return-void
.end method
