.class Lcom/zam/cover/Quote$2;
.super Landroid/content/BroadcastReceiver;
.source "Quote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zam/cover/Quote;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zam/cover/Quote;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/zam/cover/Quote;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zam/cover/Quote$2;->this$0:Lcom/zam/cover/Quote;

    iput-object p2, p0, Lcom/zam/cover/Quote$2;->val$context:Landroid/content/Context;

    .line 117
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "c"
    .parameter "i"

    .prologue
    .line 120
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, "/UI_Editor/fonts/quote.ttf"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 121
    .local v5, typeq:Landroid/graphics/Typeface;
    iget-object v6, p0, Lcom/zam/cover/Quote$2;->this$0:Lcom/zam/cover/Quote;

    const-string v7, "QUOTEKey"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/zam/cover/Quote;->quote:Ljava/lang/String;

    .line 122
    const-string v6, "styleq"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, qfos:Ljava/lang/String;
    const-string v6, "COLORqey"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, qcl:Ljava/lang/String;
    const-string v6, "SIZEqey"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, qsz:Ljava/lang/String;
    const-string v6, "Bold"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 127
    iget-object v6, p0, Lcom/zam/cover/Quote$2;->this$0:Lcom/zam/cover/Quote;

    iget-object v6, v6, Lcom/zam/cover/Quote;->profileQuote:Landroid/widget/TextView;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 143
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/zam/cover/Quote$2;->this$0:Lcom/zam/cover/Quote;

    iget-object v6, v6, Lcom/zam/cover/Quote;->qclr:Ljava/lang/String;

    if-nez v6, :cond_8

    .line 144
    iget-object v6, p0, Lcom/zam/cover/Quote$2;->this$0:Lcom/zam/cover/Quote;

    iget-object v6, v6, Lcom/zam/cover/Quote;->profileQuote:Landroid/widget/TextView;

    const/high16 v7, -0x100

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    :goto_1
    iget-object v6, p0, Lcom/zam/cover/Quote$2;->this$0:Lcom/zam/cover/Quote;

    iget-object v6, v6, Lcom/zam/cover/Quote;->profileQuote:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/zam/cover/Quote$2;->this$0:Lcom/zam/cover/Quote;

    iget-object v7, v7, Lcom/zam/cover/Quote;->quote:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v6, p0, Lcom/zam/cover/Quote$2;->this$0:Lcom/zam/cover/Quote;

    iget-object v6, v6, Lcom/zam/cover/Quote;->profileQuote:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 152
    iget-object v6, p0, Lcom/zam/cover/Quote$2;->val$context:Landroid/content/Context;

    const-string v7, "EvoPrefsFile"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 153
    .local v4, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 154
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "quote"

    iget-object v7, p0, Lcom/zam/cover/Quote$2;->this$0:Lcom/zam/cover/Quote;

    iget-object v7, v7, Lcom/zam/cover/Quote;->quote:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 155
    const-string v6, "qtextsize"

    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 156
    const-string v6, "qfontstyle"

    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 157
    const-string v6, "qcolor"

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 158
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 159
    return-void

    .line 128
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_1
    const-string v6, "Italic"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 129
    iget-object v6, p0, Lcom/zam/cover/Quote$2;->this$0:Lcom/zam/cover/Quote;

    iget-object v6, v6, Lcom/zam/cover/Quote;->profileQuote:Landroid/widget/TextView;

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 130
    :cond_2
    const-string v6, "Bold Italic"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 131
    iget-object v6, p0, Lcom/zam/cover/Quote$2;->this$0:Lcom/zam/cover/Quote;

    iget-object v6, v6, Lcom/zam/cover/Quote;->profileQuote:Landroid/widget/TextView;

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 132
    :cond_3
    const-string v6, "Regular"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 133
    iget-object v6, p0, Lcom/zam/cover/Quote$2;->this$0:Lcom/zam/cover/Quote;

    iget-object v6, v6, Lcom/zam/cover/Quote;->profileQuote:Landroid/widget/TextView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_0

    .line 134
    :cond_4
    const-string v6, "Cstm Bold"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 135
    iget-object v6, p0, Lcom/zam/cover/Quote$2;->this$0:Lcom/zam/cover/Quote;

    iget-object v6, v6, Lcom/zam/cover/Quote;->profileQuote:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_0

    .line 136
    :cond_5
    const-string v6, "Cstm Italic"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 137
    iget-object v6, p0, Lcom/zam/cover/Quote$2;->this$0:Lcom/zam/cover/Quote;

    iget-object v6, v6, Lcom/zam/cover/Quote;->profileQuote:Landroid/widget/TextView;

    const/4 v7, 0x2

    invoke-virtual {v6, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_0

    .line 138
    :cond_6
    const-string v6, "Cstm Bold Italic"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 139
    iget-object v6, p0, Lcom/zam/cover/Quote$2;->this$0:Lcom/zam/cover/Quote;

    iget-object v6, v6, Lcom/zam/cover/Quote;->profileQuote:Landroid/widget/TextView;

    const/4 v7, 0x3

    invoke-virtual {v6, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_0

    .line 140
    :cond_7
    const-string v6, "Cstm Regular"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 141
    iget-object v6, p0, Lcom/zam/cover/Quote$2;->this$0:Lcom/zam/cover/Quote;

    iget-object v6, v6, Lcom/zam/cover/Quote;->profileQuote:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_0

    .line 146
    :cond_8
    iget-object v6, p0, Lcom/zam/cover/Quote$2;->this$0:Lcom/zam/cover/Quote;

    iget-object v6, v6, Lcom/zam/cover/Quote;->profileQuote:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1
.end method
