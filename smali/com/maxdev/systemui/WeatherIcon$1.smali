.class Lcom/maxdev/systemui/WeatherIcon$1;
.super Landroid/content/BroadcastReceiver;
.source "WeatherIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maxdev/systemui/WeatherIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maxdev/systemui/WeatherIcon;


# direct methods
.method constructor <init>(Lcom/maxdev/systemui/WeatherIcon;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/maxdev/systemui/WeatherIcon$1;->this$0:Lcom/maxdev/systemui/WeatherIcon;

    .line 43
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/maxdev/systemui/WeatherIcon$1;->this$0:Lcom/maxdev/systemui/WeatherIcon;

    invoke-virtual {v0, p2}, Lcom/maxdev/systemui/WeatherIcon;->updateIcon(Landroid/content/Intent;)V

    .line 47
    return-void
.end method
