.class public Lcom/bros/aokp/TabToggles;
.super Landroid/widget/LinearLayout;
.source "TabToggles.java"


# instance fields
.field toggles:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const v4, 0x7f0b00c4

    invoke-virtual {p0, v4}, Lcom/bros/aokp/TabToggles;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/bros/aokp/TabToggles;->toggles:Landroid/widget/LinearLayout;

    .line 20
    const-string v4, "EvoPrefsFile"

    invoke-virtual {p1, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 21
    .local v3, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v4, "TabToggleVisibility"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 22
    .local v0, TabToggleVisibility:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 23
    iget-object v4, p0, Lcom/bros/aokp/TabToggles;->toggles:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 29
    :goto_0
    new-instance v1, Lcom/bros/aokp/TabToggles$1;

    invoke-direct {v1, p0}, Lcom/bros/aokp/TabToggles$1;-><init>(Lcom/bros/aokp/TabToggles;)V

    .line 36
    .local v1, mReceiver:Landroid/content/BroadcastReceiver;
    new-instance v2, Lcom/bros/aokp/TabToggles$2;

    invoke-direct {v2, p0}, Lcom/bros/aokp/TabToggles$2;-><init>(Lcom/bros/aokp/TabToggles;)V

    .line 43
    .local v2, mReceiver1:Landroid/content/BroadcastReceiver;
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.b16h22.statusbar.HIDE_TAB_TOGGLE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 44
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.b16h22.statusbar.UNHIDE_TAB_TOGGLE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 45
    return-void

    .line 26
    .end local v1           #mReceiver:Landroid/content/BroadcastReceiver;
    .end local v2           #mReceiver1:Landroid/content/BroadcastReceiver;
    :cond_0
    iget-object v4, p0, Lcom/bros/aokp/TabToggles;->toggles:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
