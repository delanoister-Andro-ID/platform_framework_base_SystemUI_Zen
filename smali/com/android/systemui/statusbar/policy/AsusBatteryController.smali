.class public Lcom/android/systemui/statusbar/policy/AsusBatteryController;
.super Landroid/content/BroadcastReceiver;
.source "AsusBatteryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/AsusBatteryController$BatteryStateChangeCallback;
    }
.end annotation


# instance fields
.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/AsusBatteryController$BatteryStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDockChargerIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mDockIcon:I

.field private mDockIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mDockLevel:I

.field private mDockPercentageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mDockStatus:I

.field private mIcon:I

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPadPresent:Z

.field private mLevel:I

.field private mObserver:Landroid/database/ContentObserver;

.field private mPadChargerIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mPadIcon:I

.field private mPadIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mPadLevel:I

.field private mPadPercentageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mPadStatus:I

.field private mPercentageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mPlugged:Z

.field private mStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 143
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mIconViews:Ljava/util/ArrayList;

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mDockIconViews:Ljava/util/ArrayList;

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mDockChargerIconViews:Ljava/util/ArrayList;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPadIconViews:Ljava/util/ArrayList;

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPadChargerIconViews:Ljava/util/ArrayList;

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPercentageViews:Ljava/util/ArrayList;

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPadPercentageViews:Ljava/util/ArrayList;

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mDockPercentageViews:Ljava/util/ArrayList;

    .line 46
    iput v5, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mLevel:I

    .line 47
    iput v5, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mIcon:I

    .line 48
    iput v5, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mStatus:I

    .line 49
    iput v5, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPadLevel:I

    .line 50
    iput v5, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPadIcon:I

    .line 51
    iput v5, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPadStatus:I

    .line 52
    iput v5, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mDockLevel:I

    .line 53
    iput v5, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mDockIcon:I

    .line 54
    iput v5, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mDockStatus:I

    .line 55
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mIsPadPresent:Z

    .line 56
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPlugged:Z

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 137
    new-instance v1, Lcom/android/systemui/statusbar/policy/AsusBatteryController$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/AsusBatteryController$1;-><init>(Lcom/android/systemui/statusbar/policy/AsusBatteryController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mObserver:Landroid/database/ContentObserver;

    .line 144
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mContext:Landroid/content/Context;

    .line 145
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 146
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_battery"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->updatePercentage()V

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/AsusBatteryController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->updatePercentage()V

    return-void
.end method

.method private final getDockIcon(I)I
    .locals 1
    .parameter "status"

    .prologue
    .line 171
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 174
    :cond_0
    const v0, 0x1080884

    .line 178
    :goto_0
    return v0

    .line 175
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 176
    const v0, 0x1080885

    goto :goto_0

    .line 178
    :cond_2
    const v0, 0x1080174

    goto :goto_0
.end method

.method private final getPadIcon(I)I
    .locals 1
    .parameter "status"

    .prologue
    .line 159
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 162
    :cond_0
    const v0, 0x108088f

    .line 166
    :goto_0
    return v0

    .line 163
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 164
    const v0, 0x1080890

    goto :goto_0

    .line 166
    :cond_2
    const v0, 0x10801a9

    goto :goto_0
.end method

.method private updatePercentage()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 106
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_battery"

    const/4 v5, -0x2

    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 108
    .local v0, enabled:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPercentageViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 109
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPercentageViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 110
    .local v2, v:Landroid/widget/TextView;
    if-ne v0, v7, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mLevel:I

    if-ltz v3, :cond_0

    .line 111
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mLevel:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 117
    .end local v2           #v:Landroid/widget/TextView;
    :cond_1
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPadPercentageViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 118
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPadPercentageViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 119
    .restart local v2       #v:Landroid/widget/TextView;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mIsPadPresent:Z

    if-eqz v3, :cond_2

    if-ne v0, v7, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPadLevel:I

    if-ltz v3, :cond_2

    .line 120
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPadLevel:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 123
    :cond_2
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 126
    .end local v2           #v:Landroid/widget/TextView;
    :cond_3
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mDockPercentageViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 127
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mDockPercentageViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 128
    .restart local v2       #v:Landroid/widget/TextView;
    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mDockStatus:I

    if-eq v3, v7, :cond_4

    if-ne v0, v7, :cond_4

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mDockLevel:I

    if-ltz v3, :cond_4

    .line 129
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mDockLevel:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 132
    :cond_4
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 135
    .end local v2           #v:Landroid/widget/TextView;
    :cond_5
    return-void
.end method


# virtual methods
.method public addDockChargerIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mDockChargerIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addDockIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mDockIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addDockPercentageView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mDockPercentageViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addPadChargerIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPadChargerIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addPadIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPadIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addPadPercentageView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPadPercentageViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addPercentageView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPercentageViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 183
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 185
    const-string v3, "level"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mLevel:I

    .line 186
    const-string v3, "status"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mStatus:I

    .line 187
    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mStatus:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPlugged:Z

    .line 188
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/AsusBatteryController$BatteryStateChangeCallback;

    .line 189
    .local v1, cb:Lcom/android/systemui/statusbar/policy/AsusBatteryController$BatteryStateChangeCallback;
    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mLevel:I

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPlugged:Z

    invoke-interface {v1, v3, v6}, Lcom/android/systemui/statusbar/policy/AsusBatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZ)V

    goto :goto_1

    .end local v1           #cb:Lcom/android/systemui/statusbar/policy/AsusBatteryController$BatteryStateChangeCallback;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    move v3, v5

    .line 187
    goto :goto_0

    .line 191
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    const-string v3, "icon-small"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mIcon:I

    .line 193
    const-string v3, "pad_level"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPadLevel:I

    .line 194
    const-string v3, "pad_status"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPadStatus:I

    .line 195
    const-string v3, "pad_present"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mIsPadPresent:Z

    .line 196
    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPadStatus:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->getPadIcon(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPadIcon:I

    .line 198
    const-string v3, "dock_level"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mDockLevel:I

    .line 199
    const-string v3, "dock_status"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mDockStatus:I

    .line 200
    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mDockStatus:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->getDockIcon(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mDockIcon:I

    .line 202
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->show_views()V

    .line 204
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public show_views()V
    .locals 10

    .prologue
    const v9, 0x1080162

    const v8, 0x1080161

    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 207
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 208
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 209
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 210
    .local v2, v:Landroid/widget/ImageView;
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mIcon:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mLevel:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    .end local v2           #v:Landroid/widget/ImageView;
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mIsPadPresent:Z

    if-eqz v3, :cond_3

    .line 216
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPadIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 217
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 218
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPadIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 219
    .restart local v2       #v:Landroid/widget/ImageView;
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPadIcon:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 222
    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPadLevel:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 224
    .end local v2           #v:Landroid/widget/ImageView;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPadChargerIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 225
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_5

    .line 226
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPadChargerIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 227
    .restart local v2       #v:Landroid/widget/ImageView;
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 228
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPlugged:Z

    if-eqz v3, :cond_2

    .line 230
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 225
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 232
    :cond_2
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 236
    .end local v2           #v:Landroid/widget/ImageView;
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPadIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 237
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_4

    .line 238
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPadIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 239
    .restart local v2       #v:Landroid/widget/ImageView;
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 241
    .end local v2           #v:Landroid/widget/ImageView;
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPadChargerIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 242
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_5

    .line 243
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPadChargerIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 244
    .restart local v2       #v:Landroid/widget/ImageView;
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 248
    .end local v2           #v:Landroid/widget/ImageView;
    :cond_5
    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mDockStatus:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_8

    .line 249
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mDockIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 250
    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_6

    .line 251
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mDockIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 252
    .restart local v2       #v:Landroid/widget/ImageView;
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mDockIcon:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    iget v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mDockLevel:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 250
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 257
    .end local v2           #v:Landroid/widget/ImageView;
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mDockChargerIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 258
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_a

    .line 259
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mDockChargerIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 260
    .restart local v2       #v:Landroid/widget/ImageView;
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 261
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mPlugged:Z

    if-eqz v3, :cond_7

    .line 263
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 258
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 265
    :cond_7
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    .line 269
    .end local v2           #v:Landroid/widget/ImageView;
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mDockIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 270
    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_9

    .line 271
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mDockIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 272
    .restart local v2       #v:Landroid/widget/ImageView;
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 274
    .end local v2           #v:Landroid/widget/ImageView;
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mDockChargerIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 275
    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_a

    .line 276
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->mDockChargerIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 277
    .restart local v2       #v:Landroid/widget/ImageView;
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 280
    .end local v2           #v:Landroid/widget/ImageView;
    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AsusBatteryController;->updatePercentage()V

    .line 281
    return-void
.end method
