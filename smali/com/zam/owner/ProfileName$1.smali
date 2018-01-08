.class Lcom/zam/owner/ProfileName$1;
.super Landroid/content/BroadcastReceiver;
.source "ProfileName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zam/owner/ProfileName;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zam/owner/ProfileName;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/zam/owner/ProfileName;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zam/owner/ProfileName$1;->this$0:Lcom/zam/owner/ProfileName;

    iput-object p2, p0, Lcom/zam/owner/ProfileName$1;->val$context:Landroid/content/Context;

    .line 68
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "c"
    .parameter "i"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 72
    iget-object v4, p0, Lcom/zam/owner/ProfileName$1;->val$context:Landroid/content/Context;

    const-string v5, "EvoPrefsFile"

    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 73
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "/UI_Editor/fonts/name.ttf"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 74
    .local v3, typename:Landroid/graphics/Typeface;
    iget-object v4, p0, Lcom/zam/owner/ProfileName$1;->this$0:Lcom/zam/owner/ProfileName;

    const-string v5, "profileName"

    const-string v6, "Owner"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/zam/owner/ProfileName;->name:Ljava/lang/String;

    .line 75
    iget-object v4, p0, Lcom/zam/owner/ProfileName$1;->this$0:Lcom/zam/owner/ProfileName;

    const-string v5, "textsize"

    const-string v6, "null"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/zam/owner/ProfileName;->size:Ljava/lang/String;

    .line 76
    iget-object v4, p0, Lcom/zam/owner/ProfileName$1;->this$0:Lcom/zam/owner/ProfileName;

    const-string v5, "fontstyle"

    const-string v6, "Regular"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/zam/owner/ProfileName;->fs:Ljava/lang/String;

    .line 77
    iget-object v4, p0, Lcom/zam/owner/ProfileName$1;->this$0:Lcom/zam/owner/ProfileName;

    const-string v5, "color"

    const-string v6, "null"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/zam/owner/ProfileName;->clr:Ljava/lang/String;

    .line 79
    iget-object v4, p0, Lcom/zam/owner/ProfileName$1;->this$0:Lcom/zam/owner/ProfileName;

    iget-object v4, v4, Lcom/zam/owner/ProfileName;->fs:Ljava/lang/String;

    const-string v5, "Bold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 80
    iget-object v4, p0, Lcom/zam/owner/ProfileName$1;->this$0:Lcom/zam/owner/ProfileName;

    iget-object v4, v4, Lcom/zam/owner/ProfileName;->profilename:Landroid/widget/TextView;

    invoke-virtual {v4, v7, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 98
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 100
    .local v0, mySize:F
    :try_start_0
    iget-object v4, p0, Lcom/zam/owner/ProfileName$1;->this$0:Lcom/zam/owner/ProfileName;

    iget-object v4, v4, Lcom/zam/owner/ProfileName;->size:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    int-to-float v0, v4

    .line 105
    :goto_1
    iget-object v4, p0, Lcom/zam/owner/ProfileName$1;->this$0:Lcom/zam/owner/ProfileName;

    iget-object v4, v4, Lcom/zam/owner/ProfileName;->size:Ljava/lang/String;

    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 106
    iget-object v4, p0, Lcom/zam/owner/ProfileName$1;->this$0:Lcom/zam/owner/ProfileName;

    iget-object v4, v4, Lcom/zam/owner/ProfileName;->profilename:Landroid/widget/TextView;

    const/high16 v5, 0x4170

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 112
    :goto_2
    iget-object v4, p0, Lcom/zam/owner/ProfileName$1;->this$0:Lcom/zam/owner/ProfileName;

    iget-object v4, v4, Lcom/zam/owner/ProfileName;->profilename:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zam/owner/ProfileName$1;->this$0:Lcom/zam/owner/ProfileName;

    iget-object v5, v5, Lcom/zam/owner/ProfileName;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v4, p0, Lcom/zam/owner/ProfileName$1;->this$0:Lcom/zam/owner/ProfileName;

    iget-object v4, v4, Lcom/zam/owner/ProfileName;->clr:Ljava/lang/String;

    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 115
    iget-object v4, p0, Lcom/zam/owner/ProfileName$1;->this$0:Lcom/zam/owner/ProfileName;

    iget-object v4, v4, Lcom/zam/owner/ProfileName;->profilename:Landroid/widget/TextView;

    const/high16 v5, -0x100

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    :goto_3
    return-void

    .line 81
    .end local v0           #mySize:F
    :cond_1
    iget-object v4, p0, Lcom/zam/owner/ProfileName$1;->this$0:Lcom/zam/owner/ProfileName;

    iget-object v4, v4, Lcom/zam/owner/ProfileName;->fs:Ljava/lang/String;

    const-string v5, "Italic"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 82
    iget-object v4, p0, Lcom/zam/owner/ProfileName$1;->this$0:Lcom/zam/owner/ProfileName;

    iget-object v4, v4, Lcom/zam/owner/ProfileName;->profilename:Landroid/widget/TextView;

    invoke-virtual {v4, v7, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 83
    :cond_2
    iget-object v4, p0, Lcom/zam/owner/ProfileName$1;->this$0:Lcom/zam/owner/ProfileName;

    iget-object v4, v4, Lcom/zam/owner/ProfileName;->fs:Ljava/lang/String;

    const-string v5, "Bold Italic"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 84
    iget-object v4, p0, Lcom/zam/owner/ProfileName$1;->this$0:Lcom/zam/owner/ProfileName;

    iget-object v4, v4, Lcom/zam/owner/ProfileName;->profilename:Landroid/widget/TextView;

    invoke-virtual {v4, v7, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 85
    :cond_3
    iget-object v4, p0, Lcom/zam/owner/ProfileName$1;->this$0:Lcom/zam/owner/ProfileName;

    iget-object v4, v4, Lcom/zam/owner/ProfileName;->fs:Ljava/lang/String;

    const-string v5, "Regular"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 86
    iget-object v4, p0, Lcom/zam/owner/ProfileName$1;->this$0:Lcom/zam/owner/ProfileName;

    iget-object v4, v4, Lcom/zam/owner/ProfileName;->profilename:Landroid/widget/TextView;

    invoke-virtual {v4, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 87
    :cond_4
    iget-object v4, p0, Lcom/zam/owner/ProfileName$1;->this$0:Lcom/zam/owner/ProfileName;

    iget-object v4, v4, Lcom/zam/owner/ProfileName;->fs:Ljava/lang/String;

    const-string v5, "Cstm Bold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 88
    iget-object v4, p0, Lcom/zam/owner/ProfileName$1;->this$0:Lcom/zam/owner/ProfileName;

    iget-object v4, v4, Lcom/zam/owner/ProfileName;->profilename:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_0

    .line 89
    :cond_5
    iget-object v4, p0, Lcom/zam/owner/ProfileName$1;->this$0:Lcom/zam/owner/ProfileName;

    iget-object v4, v4, Lcom/zam/owner/ProfileName;->fs:Ljava/lang/String;

    const-string v5, "Cstm Italic"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 90
    iget-object v4, p0, Lcom/zam/owner/ProfileName$1;->this$0:Lcom/zam/owner/ProfileName;

    iget-object v4, v4, Lcom/zam/owner/ProfileName;->profilename:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_0

    .line 91
    :cond_6
    iget-object v4, p0, Lcom/zam/owner/ProfileName$1;->this$0:Lcom/zam/owner/ProfileName;

    iget-object v4, v4, Lcom/zam/owner/ProfileName;->fs:Ljava/lang/String;

    const-string v5, "Cstm Bold Italic"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 92
    iget-object v4, p0, Lcom/zam/owner/ProfileName$1;->this$0:Lcom/zam/owner/ProfileName;

    iget-object v4, v4, Lcom/zam/owner/ProfileName;->profilename:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_0

    .line 93
    :cond_7
    iget-object v4, p0, Lcom/zam/owner/ProfileName$1;->this$0:Lcom/zam/owner/ProfileName;

    iget-object v4, v4, Lcom/zam/owner/ProfileName;->fs:Ljava/lang/String;

    const-string v5, "Cstm Regular"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    iget-object v4, p0, Lcom/zam/owner/ProfileName$1;->this$0:Lcom/zam/owner/ProfileName;

    iget-object v4, v4, Lcom/zam/owner/ProfileName;->profilename:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_0

    .line 101
    .restart local v0       #mySize:F
    :catch_0
    move-exception v1

    .line 102
    .local v1, nfe:Ljava/lang/NumberFormatException;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "angka tidak valid"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 108
    .end local v1           #nfe:Ljava/lang/NumberFormatException;
    :cond_8
    iget-object v4, p0, Lcom/zam/owner/ProfileName$1;->this$0:Lcom/zam/owner/ProfileName;

    iget-object v4, v4, Lcom/zam/owner/ProfileName;->profilename:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_2

    .line 117
    :cond_9
    iget-object v4, p0, Lcom/zam/owner/ProfileName$1;->this$0:Lcom/zam/owner/ProfileName;

    iget-object v4, v4, Lcom/zam/owner/ProfileName;->profilename:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zam/owner/ProfileName$1;->this$0:Lcom/zam/owner/ProfileName;

    iget-object v5, v5, Lcom/zam/owner/ProfileName;->clr:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3
.end method
