.class public Lcom/dell/btn/AokpToggleButton;
.super Landroid/widget/ImageView;
.source "AokpToggleButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const v3, 0x7f0b00be

    invoke-virtual {p0, v3}, Lcom/dell/btn/AokpToggleButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 18
    .local v1, image:Landroid/widget/ImageView;
    const v3, 0x7f02023e

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    const-string v3, "EvoPrefsFile"

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 21
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v3, "AokpToggleVisibility"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 22
    .local v0, AokpToggleVisibility:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 23
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 29
    :goto_0
    new-instance v3, Lcom/dell/btn/AokpToggleButton$1;

    invoke-direct {v3, p0, p1}, Lcom/dell/btn/AokpToggleButton$1;-><init>(Lcom/dell/btn/AokpToggleButton;Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void

    .line 26
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0
.end method
