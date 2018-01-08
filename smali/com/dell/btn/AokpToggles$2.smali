.class Lcom/dell/btn/AokpToggles$2;
.super Landroid/content/BroadcastReceiver;
.source "AokpToggles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dell/btn/AokpToggles;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dell/btn/AokpToggles;


# direct methods
.method constructor <init>(Lcom/dell/btn/AokpToggles;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/dell/btn/AokpToggles$2;->this$0:Lcom/dell/btn/AokpToggles;

    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "c"
    .parameter "i"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dell/btn/AokpToggles$2;->this$0:Lcom/dell/btn/AokpToggles;

    iget-object v0, v0, Lcom/dell/btn/AokpToggles;->toggles:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 40
    return-void
.end method
