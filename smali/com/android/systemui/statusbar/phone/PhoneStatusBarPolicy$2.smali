.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;
.super Landroid/database/ContentObserver;
.source "PhoneStatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateGloveMode()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$900(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    .line 144
    return-void
.end method
