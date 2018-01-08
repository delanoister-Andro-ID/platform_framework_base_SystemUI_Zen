.class Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$45;
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
    .line 3995
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 3998
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQS:[Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    sget v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 3999
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mQS:[Lcom/android/systemui/statusbar/phone/AsusQuickSettings;

    sget v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettings;->notifyListChanged()V

    .line 4000
    :cond_0
    return-void
.end method
