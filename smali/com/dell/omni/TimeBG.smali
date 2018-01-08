.class public Lcom/dell/omni/TimeBG;
.super Landroid/widget/LinearLayout;
.source "TimeBG.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dell/omni/TimeBG$100000000;
    }
.end annotation


# instance fields
.field private Ramsi:I

.field private hbd:I

.field private hutri:I

.field private malem:I

.field private pagi:I

.field private siang:I

.field private sore:I

.field private tahunbaru:I

.field textView:Landroid/widget/LinearLayout;

.field private waktu:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "time_bg"

    const-string v2, "id"

    invoke-virtual {p0}, Lcom/dell/omni/TimeBG;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dell/omni/TimeBG;->Ramsi:I

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "pagi"

    const-string v2, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dell/omni/TimeBG;->pagi:I

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "siang"

    const-string v2, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dell/omni/TimeBG;->siang:I

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "sore"

    const-string v2, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dell/omni/TimeBG;->sore:I

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "malem"

    const-string v2, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dell/omni/TimeBG;->malem:I

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "hbd"

    const-string v2, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dell/omni/TimeBG;->hbd:I

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "tahunbaru"

    const-string v2, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dell/omni/TimeBG;->tahunbaru:I

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "hutri"

    const-string v2, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dell/omni/TimeBG;->hutri:I

    .line 64
    iget v0, p0, Lcom/dell/omni/TimeBG;->Ramsi:I

    invoke-virtual {p0, v0}, Lcom/dell/omni/TimeBG;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dell/omni/TimeBG;->textView:Landroid/widget/LinearLayout;

    .line 70
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dell/omni/TimeBG;->waktu:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/dell/omni/TimeBG;->waktu:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/dell/omni/TimeBG;->addView(Landroid/view/View;)V

    .line 73
    iget-object v0, p0, Lcom/dell/omni/TimeBG;->waktu:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76
    const/16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 78
    iget-object v1, p0, Lcom/dell/omni/TimeBG;->waktu:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 82
    new-instance v1, Lcom/dell/omni/TimeBG$100000000;

    invoke-direct {v1, p0, p1, v0}, Lcom/dell/omni/TimeBG$100000000;-><init>(Lcom/dell/omni/TimeBG;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private hourOfMonth(Ljava/util/Calendar;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x2

    .line 151
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 152
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected updateTime(Landroid/content/Context;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x7

    const/4 v6, 0x2

    const/4 v7, 0x5

    .line 94
    iget v0, p0, Lcom/dell/omni/TimeBG;->Ramsi:I

    invoke-virtual {p0, v0}, Lcom/dell/omni/TimeBG;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dell/omni/TimeBG;->textView:Landroid/widget/LinearLayout;

    .line 97
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 98
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 102
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 103
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 106
    invoke-virtual {v2, v6, v8}, Ljava/util/Calendar;->set(II)V

    .line 107
    const/16 v5, 0xe

    invoke-virtual {v2, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 109
    invoke-virtual {v3, v6, v8}, Ljava/util/Calendar;->set(II)V

    .line 110
    const/16 v5, 0x11

    invoke-virtual {v3, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 112
    const/4 v5, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 113
    const/4 v5, 0x1

    invoke-virtual {v4, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 117
    iget-object v5, p0, Lcom/dell/omni/TimeBG;->waktu:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 123
    if-ltz v0, :cond_2

    if-gt v0, v7, :cond_2

    .line 124
    iget-object v0, p0, Lcom/dell/omni/TimeBG;->textView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/dell/omni/TimeBG;->pagi:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 134
    :cond_0
    :goto_0
    invoke-direct {p0, v2}, Lcom/dell/omni/TimeBG;->hourOfMonth(Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 135
    iget-object v0, p0, Lcom/dell/omni/TimeBG;->textView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/dell/omni/TimeBG;->hbd:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 142
    :cond_1
    :goto_1
    return-void

    .line 126
    :cond_2
    const/4 v1, 0x6

    if-lt v0, v1, :cond_3

    const/16 v1, 0xf

    if-gt v0, v1, :cond_3

    .line 127
    iget-object v0, p0, Lcom/dell/omni/TimeBG;->textView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/dell/omni/TimeBG;->siang:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 128
    :cond_3
    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    const/16 v1, 0x12

    if-gt v0, v1, :cond_4

    .line 129
    iget-object v0, p0, Lcom/dell/omni/TimeBG;->textView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/dell/omni/TimeBG;->sore:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 131
    :cond_4
    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/dell/omni/TimeBG;->textView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/dell/omni/TimeBG;->malem:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 137
    :cond_5
    invoke-direct {p0, v4}, Lcom/dell/omni/TimeBG;->hourOfMonth(Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 139
    iget-object v0, p0, Lcom/dell/omni/TimeBG;->textView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/dell/omni/TimeBG;->tahunbaru:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 140
    :cond_6
    invoke-direct {p0, v3}, Lcom/dell/omni/TimeBG;->hourOfMonth(Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/dell/omni/TimeBG;->textView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/dell/omni/TimeBG;->hutri:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1
.end method
