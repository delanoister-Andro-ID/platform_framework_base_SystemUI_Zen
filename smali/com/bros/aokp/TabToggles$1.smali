.class Lcom/bros/aokp/TabToggles$1;
.super Landroid/content/BroadcastReceiver;
.source "TabToggles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bros/aokp/TabToggles;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bros/aokp/TabToggles;


# direct methods
.method constructor <init>(Lcom/bros/aokp/TabToggles;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bros/aokp/TabToggles$1;->this$0:Lcom/bros/aokp/TabToggles;

    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "c"
    .parameter "i"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/bros/aokp/TabToggles$1;->this$0:Lcom/bros/aokp/TabToggles;

    iget-object v0, v0, Lcom/bros/aokp/TabToggles;->toggles:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 33
    return-void
.end method
