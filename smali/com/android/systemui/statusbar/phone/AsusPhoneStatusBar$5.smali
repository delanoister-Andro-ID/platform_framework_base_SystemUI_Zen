.class Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$5;
.super Ljava/lang/Object;
.source "AsusPhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 444
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 447
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSystemUiVisibility:[I

    sget v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget v1, v1, v2

    const v2, -0xc000001

    and-int v0, v1, v2

    .line 448
    .local v0, requested:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mSystemUiVisibility:[I

    sget v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget v1, v1, v2

    if-eq v1, v0, :cond_0

    .line 449
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->notifyUiVisibilityChanged(I)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$1300(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;I)V

    .line 451
    :cond_0
    return-void
.end method
