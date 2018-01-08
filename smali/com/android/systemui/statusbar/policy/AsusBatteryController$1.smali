.class Lcom/android/systemui/statusbar/policy/AsusBatteryController$1;
.super Landroid/database/ContentObserver;
.source "AsusBatteryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/AsusBatteryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/AsusBatteryController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/AsusBatteryController;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusBatteryController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController$1;->this$0:Lcom/android/systemui/statusbar/policy/AsusBatteryController;

    #calls: Lcom/android/systemui/statusbar/policy/AsusBatteryController;->updatePercentage()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->access$000(Lcom/android/systemui/statusbar/policy/AsusBatteryController;)V

    .line 140
    return-void
.end method
