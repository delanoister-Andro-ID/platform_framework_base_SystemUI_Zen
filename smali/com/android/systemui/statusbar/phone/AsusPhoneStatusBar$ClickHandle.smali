.class Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$ClickHandle;
.super Ljava/lang/Object;
.source "AsusPhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickHandle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V
    .locals 0

    .prologue
    .line 3101
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$ClickHandle;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3101
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$ClickHandle;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 3104
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$ClickHandle;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    const/16 v1, 0x52

    #calls: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->sendKeyEvent(I)Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$1800(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;I)Z

    .line 3105
    return-void
.end method
