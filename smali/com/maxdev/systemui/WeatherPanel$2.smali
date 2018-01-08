.class Lcom/maxdev/systemui/WeatherPanel$2;
.super Landroid/database/ContentObserver;
.source "WeatherPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maxdev/systemui/WeatherPanel;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maxdev/systemui/WeatherPanel;


# direct methods
.method constructor <init>(Lcom/maxdev/systemui/WeatherPanel;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/maxdev/systemui/WeatherPanel$2;->this$0:Lcom/maxdev/systemui/WeatherPanel;

    .line 187
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/maxdev/systemui/WeatherPanel$2;->this$0:Lcom/maxdev/systemui/WeatherPanel;

    invoke-virtual {v0}, Lcom/maxdev/systemui/WeatherPanel;->updateSettings()V

    .line 191
    return-void
.end method
