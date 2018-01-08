.class Lcom/maxdev/systemui/WeatherPanel$1;
.super Landroid/content/BroadcastReceiver;
.source "WeatherPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/maxdev/systemui/WeatherPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maxdev/systemui/WeatherPanel;


# direct methods
.method constructor <init>(Lcom/maxdev/systemui/WeatherPanel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/maxdev/systemui/WeatherPanel$1;->this$0:Lcom/maxdev/systemui/WeatherPanel;

    .line 53
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/maxdev/systemui/WeatherPanel$1;->this$0:Lcom/maxdev/systemui/WeatherPanel;

    invoke-virtual {v0, p2}, Lcom/maxdev/systemui/WeatherPanel;->updateWeather(Landroid/content/Intent;)V

    .line 57
    return-void
.end method
