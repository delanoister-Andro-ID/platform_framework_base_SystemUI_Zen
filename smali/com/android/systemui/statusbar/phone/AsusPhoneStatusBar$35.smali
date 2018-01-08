.class Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$35;
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
    .line 2773
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$35;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2776
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$35;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->checkBarModes()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$3000(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    .line 2777
    return-void
.end method
