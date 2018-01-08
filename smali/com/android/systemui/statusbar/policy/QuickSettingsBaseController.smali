.class public abstract Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;
.super Landroid/content/BroadcastReceiver;
.source "QuickSettingsBaseController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$1;,
        Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    }
.end annotation


# static fields
.field private static final mMultiSimIcons:[I

.field private static final mMultiSimTexts:[I

.field private static mToast:Lcom/android/systemui/statusbar/policy/MyToast;

.field private static final mTypeIcons:[I

.field private static final mVibrateTexts:[I

.field private static final mVibrateToasts:[I


# instance fields
.field anim:Landroid/animation/ObjectAnimator;

.field protected isFirstInDisabled:Z

.field private mCheckBox:Landroid/widget/CheckBox;

.field protected mCheckText:I

.field protected mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;

.field private mItemView:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

.field protected mLastMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

.field private mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

.field protected mToastTextOff:I

.field protected mToastTextOn:I

.field private vibrateDrawable:[Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mToast:Lcom/android/systemui/statusbar/policy/MyToast;

    .line 39
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mTypeIcons:[I

    .line 45
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mVibrateToasts:[I

    .line 51
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mVibrateTexts:[I

    .line 57
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mMultiSimIcons:[I

    .line 63
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mMultiSimTexts:[I

    return-void

    .line 39
    :array_0
    .array-data 0x4
        0x81t 0x0t 0x2t 0x7ft
        0x8dt 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
    .end array-data

    .line 45
    :array_1
    .array-data 0x4
        0x40t 0x0t 0x6t 0x7ft
        0x3et 0x0t 0x6t 0x7ft
        0x42t 0x0t 0x6t 0x7ft
    .end array-data

    .line 51
    :array_2
    .array-data 0x4
        0x3ft 0x0t 0x6t 0x7ft
        0x3dt 0x0t 0x6t 0x7ft
        0x41t 0x0t 0x6t 0x7ft
    .end array-data

    .line 57
    :array_3
    .array-data 0x4
        0x87t 0x0t 0x2t 0x7ft
        0x88t 0x0t 0x2t 0x7ft
        0x89t 0x0t 0x2t 0x7ft
    .end array-data

    .line 63
    :array_4
    .array-data 0x4
        0x7bt 0x0t 0x6t 0x7ft
        0x7ct 0x0t 0x6t 0x7ft
        0x50t 0x0t 0x6t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V
    .locals 5
    .parameter "context"
    .parameter "itemview"

    .prologue
    const/4 v4, 0x0

    .line 95
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 30
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->DISABLED:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 33
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->isFirstInDisabled:Z

    .line 86
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mTypeIcons:[I

    array-length v2, v2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->vibrateDrawable:[Landroid/graphics/drawable/Drawable;

    .line 96
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mItemView:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    .line 98
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mItemView:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    .line 100
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 101
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mLastMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->updateCheckbox()V

    .line 108
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mToast:Lcom/android/systemui/statusbar/policy/MyToast;

    if-nez v2, :cond_0

    .line 111
    const-string v2, ""

    invoke-static {p1, v2, v4}, Lcom/android/systemui/statusbar/policy/MyToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/android/systemui/statusbar/policy/MyToast;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mToast:Lcom/android/systemui/statusbar/policy/MyToast;

    .line 112
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mToast:Lcom/android/systemui/statusbar/policy/MyToast;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v4, v4}, Lcom/android/systemui/statusbar/policy/MyToast;->setGravity(III)V

    .line 114
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 115
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    .end local v1           #filter:Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "QuickSettingsBaseController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateCheckbox()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 199
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$1;->$SwitchMap$com$android$systemui$statusbar$policy$QuickSettingsBaseController$Mode:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 260
    :goto_0
    return-void

    .line 202
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setLongClickable(Z)V

    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setSelected(Z)V

    goto :goto_0

    .line 211
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setLongClickable(Z)V

    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setSelected(Z)V

    goto :goto_0

    .line 219
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setLongClickable(Z)V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setSelected(Z)V

    goto :goto_0

    .line 227
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setLongClickable(Z)V

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setSelected(Z)V

    goto :goto_0

    .line 235
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setSelected(Z)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 243
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 244
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->vibrateDrawable:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 246
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mVibrateTexts:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckText:I

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mItemView:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckText:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setControllText(I)V

    goto/16 :goto_0

    .line 253
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 254
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mMultiSimIcons:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ordinal()I

    move-result v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->RADIO_PROCESSING:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ordinal()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 256
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mMultiSimTexts:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ordinal()I

    move-result v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->RADIO_PROCESSING:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ordinal()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckText:I

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mItemView:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckText:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setControllText(I)V

    goto/16 :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getItemView()Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mItemView:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    return-object v0
.end method

.method protected abstract getMode()Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->PROCESSING_ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->PROCESSING_OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->RADIO_ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->DISABLED:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->RADIO_PROCESSING:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    if-ne v4, v5, :cond_2

    .line 122
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->DISABLED:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    if-ne v3, v4, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->isFirstInDisabled:Z

    if-eqz v3, :cond_1

    .line 123
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->isFirstInDisabled:Z

    .line 124
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 125
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 170
    :cond_1
    :goto_0
    return-void

    .line 128
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->RADIO_OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    if-ne v4, v5, :cond_3

    .line 130
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->setMode(Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;)Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 132
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->MUTE:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->VIBRATE:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->VOLUME:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    if-ne v4, v5, :cond_6

    .line 133
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ordinal()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v1, v2, 0x3

    .line 134
    .local v1, mode:I
    packed-switch v1, :pswitch_data_0

    .line 146
    :goto_1
    sget-boolean v2, Lcom/asus/systemui/util/AsusQuicksettingUtil;->IS_SMALL_RAM:Z

    if-nez v2, :cond_5

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->startAnimation()V

    .line 148
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->setMode(Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;)Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_0

    .line 136
    :pswitch_0
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->MUTE:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_1

    .line 139
    :pswitch_1
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->VIBRATE:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_1

    .line 142
    :pswitch_2
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->VOLUME:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_1

    .line 152
    .end local v1           #mode:I
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mLastMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 153
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    sget-object v5, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    if-ne v4, v5, :cond_9

    .line 154
    const/4 v0, 0x1

    .line 160
    .local v0, checked:Z
    :goto_2
    if-nez v0, :cond_7

    move v2, v3

    :cond_7
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->setMode(Z)Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 161
    sget-boolean v2, Lcom/asus/systemui/util/AsusQuicksettingUtil;->IS_SMALL_RAM:Z

    if-nez v2, :cond_8

    .line 162
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->startAnimation()V

    .line 163
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mLastMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    if-ne v2, v3, :cond_a

    .line 164
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->PROCESSING_OFF:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 168
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->updateCheckbox()V

    goto :goto_0

    .line 157
    .end local v0           #checked:Z
    :cond_9
    const/4 v0, 0x0

    .restart local v0       #checked:Z
    goto :goto_2

    .line 166
    :cond_a
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;->PROCESSING_ON:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    goto :goto_3

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 187
    if-eqz p2, :cond_0

    .line 188
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mItemView:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckText:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setControllText(I)V

    .line 196
    .end local v0           #action:Ljava/lang/String;
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->onReceiveModeChanged(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mMode:Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;

    .line 195
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->updateCheckbox()V

    goto :goto_0
.end method

.method protected abstract onReceiveModeChanged(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
.end method

.method public release()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 268
    return-void
.end method

.method public resetToast()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mToast:Lcom/android/systemui/statusbar/policy/MyToast;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MyToast;->cancel()V

    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mToast:Lcom/android/systemui/statusbar/policy/MyToast;

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mContext:Landroid/content/Context;

    const-string v1, ""

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/MyToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/android/systemui/statusbar/policy/MyToast;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mToast:Lcom/android/systemui/statusbar/policy/MyToast;

    .line 92
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mToast:Lcom/android/systemui/statusbar/policy/MyToast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/systemui/statusbar/policy/MyToast;->setGravity(III)V

    .line 93
    return-void
.end method

.method protected setMode(Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;)Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController$Mode;
    .locals 0
    .parameter "mode"

    .prologue
    .line 263
    return-object p1
.end method

.method protected abstract setMode(Z)Z
.end method

.method setVibrateImage()V
    .locals 4

    .prologue
    .line 289
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mTypeIcons:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 290
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mTypeIcons:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 291
    .local v1, mDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->vibrateDrawable:[Landroid/graphics/drawable/Drawable;

    aput-object v1, v2, v0

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    .end local v1           #mDrawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method startAnimation()V
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->anim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->mCheckBox:Landroid/widget/CheckBox;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->anim:Landroid/animation/ObjectAnimator;

    .line 283
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->anim:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->anim:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 285
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsBaseController;->anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 286
    return-void

    .line 282
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
