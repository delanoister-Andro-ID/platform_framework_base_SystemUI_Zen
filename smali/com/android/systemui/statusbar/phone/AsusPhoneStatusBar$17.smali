.class Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$17;
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
    .line 1092
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->showSearchPanel()V

    .line 1095
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->awakenDreams()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$1600(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    .line 1096
    return-void
.end method
