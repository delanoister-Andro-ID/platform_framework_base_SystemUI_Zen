.class public Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;
.super Ljava/lang/Object;
.source "QuickSettingsMemoryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;
    }
.end annotation


# static fields
.field private static final mTypeDrawable:[I

.field private static final mTypeTextColor:[I


# instance fields
.field public boostServer:Lcom/asus/quickclean/IBoost;

.field private connector:Landroid/content/ServiceConnection;

.field mAvailMem:J

.field private mBound:Z

.field private mCheckBox:Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;

.field private mContext:Landroid/content/Context;

.field mDrawable:[Landroid/graphics/drawable/Drawable;

.field private mItemView:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

.field mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

.field private mState:Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;

.field mTotalMem:J

.field mUsedMem:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 28
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mTypeDrawable:[I

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mTypeTextColor:[I

    return-void

    .line 28
    :array_0
    .array-data 0x4
        0xa2t 0x0t 0x2t 0x7ft
        0xa4t 0x0t 0x2t 0x7ft
    .end array-data

    .line 32
    :array_1
    .array-data 0x4
        0x9ct 0x0t 0x2t 0x7ft
        0x9et 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;)V
    .locals 6
    .parameter "context"
    .parameter "itemview"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    .line 42
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mTypeDrawable:[I

    array-length v2, v2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mDrawable:[Landroid/graphics/drawable/Drawable;

    .line 52
    new-instance v2, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$1;-><init>(Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->connector:Landroid/content/ServiceConnection;

    .line 69
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mItemView:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    .line 71
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mItemView:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mCheckBox:Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;

    .line 72
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 73
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->formatToMB(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mTotalMem:J

    .line 75
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mTypeDrawable:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mTypeDrawable:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 77
    .local v1, temp:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mDrawable:[Landroid/graphics/drawable/Drawable;

    aput-object v1, v2, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    .end local v1           #temp:Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.asus.quickclean.BoostServer"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->connector:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 82
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mBound:Z

    return p1
.end method


# virtual methods
.method public boost()J
    .locals 6

    .prologue
    .line 151
    const-wide/16 v1, 0x0

    .line 153
    .local v1, freeMemSize:J
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->boostServer:Lcom/asus/quickclean/IBoost;

    invoke-interface {v3}, Lcom/asus/quickclean/IBoost;->boost()J

    move-result-wide v1

    .line 154
    const-string v3, "Quicksettings.Boost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exec boost ! The valus from boost"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    return-wide v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method formatToMB(J)J
    .locals 2
    .parameter "mem"

    .prologue
    .line 121
    const-wide/32 v0, 0x100000

    div-long v0, p1, v0

    return-wide v0
.end method

.method getFreeMemInfo(J)Ljava/lang/String;
    .locals 6
    .parameter "mem"

    .prologue
    .line 135
    const-string v1, ""

    .line 136
    .local v1, temp:Ljava/lang/String;
    long-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0

    add-double/2addr v2, v4

    double-to-int v0, v2

    .line 137
    .local v0, digit:I
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060061

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 142
    :goto_0
    const-string v2, "Quicksettings.Boost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Text for boost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-object v1

    .line 140
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method getState(D)Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;
    .locals 4
    .parameter "perc"

    .prologue
    .line 125
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 126
    .local v1, value:Ljava/math/BigDecimal;
    new-instance v0, Ljava/math/BigDecimal;

    const-wide v2, 0x3feb851eb851eb85L

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 127
    .local v0, threshold:Ljava/math/BigDecimal;
    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-gez v2, :cond_0

    .line 128
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;->GREEN:Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;

    .line 130
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;->YELLOW:Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;

    goto :goto_0
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mBound:Z

    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->unBindService()V

    .line 148
    return-void
.end method

.method public unBindService()V
    .locals 2

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mBound:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->connector:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mBound:Z

    .line 165
    const-string v0, "Quicksettings.Boost"

    const-string v1, "UnbindService!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    return-void
.end method

.method public updateMemInfo()V
    .locals 7

    .prologue
    .line 85
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mItemView:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1

    .line 86
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mBound:Z

    if-eqz v3, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->unBindService()V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mBound:Z

    if-nez v3, :cond_2

    .line 92
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v3}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 93
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v3}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v5}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->formatToMB(J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mAvailMem:J

    .line 103
    :goto_1
    iget-wide v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mTotalMem:J

    iget-wide v5, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mAvailMem:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mUsedMem:J

    .line 104
    iget-wide v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mUsedMem:J

    long-to-double v3, v3

    iget-wide v5, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mTotalMem:J

    long-to-double v5, v5

    div-double v1, v3, v5

    .line 105
    .local v1, mUsedPerc:D
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->getState(D)Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mState:Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;

    .line 106
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mItemView:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mDrawable:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mState:Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;->ordinal()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setCheckBoxImage(Landroid/graphics/drawable/Drawable;)V

    .line 107
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mItemView:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    sget-object v4, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mTypeTextColor:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mState:Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setItemTextColor(I)V

    .line 110
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mCheckBox:Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;

    iget-wide v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mAvailMem:J

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->getFreeMemInfo(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->setMemText(Ljava/lang/String;)V

    .line 111
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mCheckBox:Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;

    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->setProgress(D)V

    .line 112
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mCheckBox:Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mState:Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController$State;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->setState(I)V

    .line 113
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mCheckBox:Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/AsusControllerCheckbox;->postInvalidate()V

    goto :goto_0

    .line 96
    .end local v1           #mUsedPerc:D
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->boostServer:Lcom/asus/quickclean/IBoost;

    invoke-interface {v3}, Lcom/asus/quickclean/IBoost;->getAvailableMemo()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->formatToMB(J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->mAvailMem:J

    .line 97
    const-string v3, "Quicksettings.Boost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get available memory from Taskmanager:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsMemoryController;->boostServer:Lcom/asus/quickclean/IBoost;

    invoke-interface {v5}, Lcom/asus/quickclean/IBoost;->getAvailableMemo()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 98
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1
.end method
