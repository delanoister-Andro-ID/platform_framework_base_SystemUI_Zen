.class Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$1;
.super Ljava/lang/Object;
.source "AsusPhoneStatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/AsusNotificationScrollView$OnScrollViewListener;


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
    .line 255
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(Lcom/android/systemui/statusbar/phone/AsusNotificationScrollView;IIII)V
    .locals 1
    .parameter "scrollView"
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->updateNotificationHeaderTopVisibility()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$000(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    .line 259
    return-void
.end method
