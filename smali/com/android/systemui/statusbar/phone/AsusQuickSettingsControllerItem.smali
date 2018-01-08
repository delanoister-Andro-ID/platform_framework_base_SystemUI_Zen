.class public Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;
.super Landroid/widget/LinearLayout;
.source "AsusQuickSettingsControllerItem.java"


# instance fields
.field protected mCheckbox:Landroid/widget/CheckBox;

.field private mCheckboxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mColSpan:I

.field protected mContext:Landroid/content/Context;

.field private mSharfKey:Ljava/lang/String;

.field protected mText:Landroid/widget/TextView;

.field protected mTextRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x1

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 117
    new-instance v0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem$1;-><init>(Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->mCheckboxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 38
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setOrientation(I)V

    .line 41
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setGravity(I)V

    .line 48
    iput v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->mColSpan:I

    .line 49
    return-void
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->mCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method getColumnSpan()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->mColSpan:I

    return v0
.end method

.method public getSharfKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->mSharfKey:Ljava/lang/String;

    return-object v0
.end method

.method public setCheckBoxImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 78
    return-void
.end method

.method setContent(I)V
    .locals 3
    .parameter "layoutId"

    .prologue
    .line 52
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 53
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v0, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    return-void
.end method

.method public setControllText(I)V
    .locals 1
    .parameter "text"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 82
    return-void
.end method

.method public setControllText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method

.method public setItemTextColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 87
    return-void
.end method

.method public setup(ILandroid/graphics/drawable/Drawable;ILjava/lang/String;)V
    .locals 2
    .parameter "layoutId"
    .parameter "bg"
    .parameter "text"
    .parameter "sharfKey"

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setContent(I)V

    .line 58
    const v0, 0x7f0b0025

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->mCheckbox:Landroid/widget/CheckBox;

    .line 59
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->mText:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    .line 62
    iput p3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->mTextRes:I

    .line 63
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->mSharfKey:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->mCheckbox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->mCheckboxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 66
    return-void
.end method
