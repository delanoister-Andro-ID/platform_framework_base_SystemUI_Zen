.class Lcom/android/systemui/statusbar/policy/QuickSettingsClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "QuickSettingsClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/QuickSettingsClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsClock;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/QuickSettingsClock;)V
    .locals 1

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$FormatChangeObserver;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsClock;

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 119
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$FormatChangeObserver;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsClock;

    #calls: Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->setDateFormat()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->access$800(Lcom/android/systemui/statusbar/policy/QuickSettingsClock;)V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsClock$FormatChangeObserver;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsClock;

    #calls: Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->updateTime()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/QuickSettingsClock;->access$600(Lcom/android/systemui/statusbar/policy/QuickSettingsClock;)V

    .line 124
    return-void
.end method
