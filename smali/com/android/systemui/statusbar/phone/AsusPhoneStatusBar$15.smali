.class Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$15;
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
    .line 1055
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1057
    invoke-static {}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$1500()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1058
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$1502(Z)Z

    .line 1063
    :goto_0
    return-void

    .line 1061
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->awakenDreams()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$1600(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    .line 1062
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$15;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->toggleRecentApps()V

    goto :goto_0
.end method
