.class public Lcom/android/systemui/recent/DualAppsService$LocalBinder;
.super Landroid/os/Binder;
.source "DualAppsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/DualAppsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/DualAppsService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recent/DualAppsService;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/systemui/recent/DualAppsService$LocalBinder;->this$0:Lcom/android/systemui/recent/DualAppsService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/android/systemui/recent/DualAppsService;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/recent/DualAppsService$LocalBinder;->this$0:Lcom/android/systemui/recent/DualAppsService;

    return-object v0
.end method
