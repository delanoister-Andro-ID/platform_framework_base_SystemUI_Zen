.class public Lcom/android/systemui/statusbar/policy/AsusClock;
.super Landroid/widget/TextClock;
.source "AsusClock.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private AM_PM_STYLE:I

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field private mDemoMode:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLocale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/policy/AsusClock;->DEBUG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/AsusClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/AsusClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AsusClock;->AM_PM_STYLE:I

    .line 121
    new-instance v0, Lcom/android/systemui/statusbar/policy/AsusClock$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/AsusClock$1;-><init>(Lcom/android/systemui/statusbar/policy/AsusClock;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/AsusClock;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusClock;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/AsusClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AsusClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/AsusClock;)Ljava/text/SimpleDateFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusClock;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/AsusClock;)Ljava/util/Locale;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusClock;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/AsusClock;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AsusClock;->mLocale:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/AsusClock;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AsusClock;->mClockFormatString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AsusClock;->DEBUG:Z

    return v0
.end method

.method private final getSmallTime()Ljava/lang/CharSequence;
    .locals 21

    .prologue
    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/AsusClock;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 165
    .local v7, context:Landroid/content/Context;
    invoke-static {v7}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v12

    .line 166
    .local v12, is24:Z
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v8

    .line 168
    .local v8, d:Llibcore/icu/LocaleData;
    const v2, 0xef00

    .line 169
    .local v2, MAGIC1:C
    const v3, 0xef01

    .line 172
    .local v3, MAGIC2:C
    if-eqz v12, :cond_2

    iget-object v9, v8, Llibcore/icu/LocaleData;->timeFormat24:Ljava/lang/String;

    .line 173
    .local v9, format:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/AsusClock;->mClockFormatString:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 179
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/AsusClock;->AM_PM_STYLE:I

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 180
    const/4 v4, -0x1

    .line 181
    .local v4, a:I
    const/4 v15, 0x0

    .line 182
    .local v15, quoted:Z
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_1

    .line 183
    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 185
    .local v6, c:C
    const/16 v19, 0x27

    move/from16 v0, v19

    if-ne v6, v0, :cond_0

    .line 186
    if-nez v15, :cond_3

    const/4 v15, 0x1

    .line 188
    :cond_0
    :goto_2
    if-nez v15, :cond_4

    const/16 v19, 0x61

    move/from16 v0, v19

    if-ne v6, v0, :cond_4

    .line 189
    move v4, v11

    .line 194
    .end local v6           #c:C
    :cond_1
    if-ltz v4, :cond_6

    .line 196
    move v5, v4

    .line 197
    .local v5, b:I
    :goto_3
    if-lez v4, :cond_5

    add-int/lit8 v19, v4, -0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 198
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 172
    .end local v4           #a:I
    .end local v5           #b:I
    .end local v9           #format:Ljava/lang/String;
    .end local v11           #i:I
    .end local v15           #quoted:Z
    :cond_2
    iget-object v9, v8, Llibcore/icu/LocaleData;->timeFormat12:Ljava/lang/String;

    goto :goto_0

    .line 186
    .restart local v4       #a:I
    .restart local v6       #c:C
    .restart local v9       #format:Ljava/lang/String;
    .restart local v11       #i:I
    .restart local v15       #quoted:Z
    :cond_3
    const/4 v15, 0x0

    goto :goto_2

    .line 182
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 200
    .end local v6           #c:C
    .restart local v5       #b:I
    :cond_5
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0xef00

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "a"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0xef01

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int/lit8 v20, v5, 0x1

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 204
    .end local v4           #a:I
    .end local v5           #b:I
    .end local v11           #i:I
    .end local v15           #quoted:Z
    :cond_6
    new-instance v17, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v17, sdf:Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/AsusClock;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 205
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/systemui/statusbar/policy/AsusClock;->mClockFormatString:Ljava/lang/String;

    .line 209
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/AsusClock;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    .line 211
    .local v16, result:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/AsusClock;->AM_PM_STYLE:I

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 212
    const v19, 0xef00

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 213
    .local v13, magic1:I
    const v19, 0xef01

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 214
    .local v14, magic2:I
    if-ltz v13, :cond_a

    if-le v14, v13, :cond_a

    .line 215
    new-instance v10, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 216
    .local v10, formatted:Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/AsusClock;->AM_PM_STYLE:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 217
    add-int/lit8 v19, v14, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v13, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 231
    .end local v10           #formatted:Landroid/text/SpannableStringBuilder;
    .end local v13           #magic1:I
    .end local v14           #magic2:I
    :goto_5
    return-object v10

    .line 207
    .end local v16           #result:Ljava/lang/String;
    .end local v17           #sdf:Ljava/text/SimpleDateFormat;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/AsusClock;->mClockFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v17, v0

    .restart local v17       #sdf:Ljava/text/SimpleDateFormat;
    goto :goto_4

    .line 219
    .restart local v10       #formatted:Landroid/text/SpannableStringBuilder;
    .restart local v13       #magic1:I
    .restart local v14       #magic2:I
    .restart local v16       #result:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/AsusClock;->AM_PM_STYLE:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 220
    new-instance v18, Landroid/text/style/RelativeSizeSpan;

    const v19, 0x3f333333

    invoke-direct/range {v18 .. v19}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 221
    .local v18, style:Landroid/text/style/CharacterStyle;
    const/16 v19, 0x22

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v13, v14, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 224
    .end local v18           #style:Landroid/text/style/CharacterStyle;
    :cond_9
    add-int/lit8 v19, v14, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v14, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 225
    add-int/lit8 v19, v13, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v13, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_5

    .end local v10           #formatted:Landroid/text/SpannableStringBuilder;
    .end local v13           #magic1:I
    .end local v14           #magic2:I
    :cond_a
    move-object/from16 v10, v16

    .line 231
    goto :goto_5
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .parameter "command"
    .parameter "args"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 239
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/AsusClock;->mDemoMode:Z

    if-nez v4, :cond_1

    const-string v4, "enter"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 240
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/AsusClock;->mDemoMode:Z

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/AsusClock;->mDemoMode:Z

    if-eqz v4, :cond_2

    const-string v4, "exit"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 242
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/AsusClock;->mDemoMode:Z

    .line 243
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusClock;->updateClock()V

    goto :goto_0

    .line 244
    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/AsusClock;->mDemoMode:Z

    if-eqz v4, :cond_0

    const-string v4, "clock"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 245
    const-string v4, "millis"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, millis:Ljava/lang/String;
    const-string v4, "hhmm"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, hhmm:Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 248
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 255
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusClock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/AsusClock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 249
    :cond_4
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 250
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 251
    .local v0, hh:I
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 252
    .local v3, mm:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusClock;->mCalendar:Ljava/util/Calendar;

    const/16 v5, 0xa

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 253
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AsusClock;->mCalendar:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5, v3}, Ljava/util/Calendar;->set(II)V

    goto :goto_1
.end method

.method public getClockTime()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 262
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusClock;->mCalendar:Ljava/util/Calendar;

    .line 263
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusClock;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 264
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    .line 266
    .local v2, is24:Z
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v5}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    .line 267
    .local v1, d:Llibcore/icu/LocaleData;
    if-eqz v2, :cond_0

    .line 268
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "H:mm"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 271
    .local v4, sdf:Ljava/text/SimpleDateFormat;
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AsusClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, result:Ljava/lang/String;
    return-object v3

    .line 270
    .end local v3           #result:Ljava/lang/String;
    .end local v4           #sdf:Ljava/text/SimpleDateFormat;
    :cond_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "h:mm"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v4       #sdf:Ljava/text/SimpleDateFormat;
    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 80
    invoke-super {p0}, Landroid/widget/TextClock;->onAttachedToWindow()V

    .line 82
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/AsusClock;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 83
    const-string v1, "Clock"

    const-string v2, "Attached to window"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AsusClock;->mAttached:Z

    if-nez v1, :cond_1

    .line 87
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AsusClock;->mAttached:Z

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AsusClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusClock;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 103
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusClock;->mCalendar:Ljava/util/Calendar;

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusClock;->updateClock()V

    .line 107
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Landroid/widget/TextClock;->onDetachedFromWindow()V

    .line 112
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusClock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusClock;->mAttached:Z

    .line 116
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AsusClock;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 117
    const-string v0, "Clock"

    const-string v1, "Detached from window"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_1
    return-void
.end method

.method final updateClock()V
    .locals 3

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AsusClock;->mDemoMode:Z

    if-eqz v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 157
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusClock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/AsusClock;->setText(Ljava/lang/CharSequence;)V

    .line 158
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AsusClock;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "Clock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update clock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusClock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
