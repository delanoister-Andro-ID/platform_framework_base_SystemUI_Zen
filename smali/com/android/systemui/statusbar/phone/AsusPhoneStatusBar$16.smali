.class Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$16;
.super Ljava/lang/Object;
.source "AsusPhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 1066
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 1069
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mNavigationBarView:[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$1700(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)[Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;

    move-result-object v1

    sget v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/AsusNavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 1070
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screenshot"

    const/4 v3, -0x2

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1072
    .local v0, checkBoxValue:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1073
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    const/16 v2, 0xe6

    #calls: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->sendKeyEvent(I)Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$1800(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;I)Z

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$1502(Z)Z

    .line 1075
    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$1500()Z

    move-result v1

    return v1
.end method
