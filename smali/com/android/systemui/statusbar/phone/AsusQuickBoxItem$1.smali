.class Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem$1;
.super Landroid/content/BroadcastReceiver;
.source "AsusQuickBoxItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem$1;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem$1;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->pkgIsExist:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->access$000(Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem$1;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->useActivityName:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->access$100(Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem$1;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->mText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem$1;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/asus/systemui/util/AsusQuicksettingUtil;->getInstance(Landroid/content/Context;)Lcom/asus/systemui/util/AsusQuicksettingUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem$1;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->mPkgName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->access$200(Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem$1;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->mActivityName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->access$300(Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/asus/systemui/util/AsusQuicksettingUtil;->getActivityName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem$1;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->mText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem$1;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/asus/systemui/util/AsusQuicksettingUtil;->getInstance(Landroid/content/Context;)Lcom/asus/systemui/util/AsusQuicksettingUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem$1;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->mPkgName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->access$200(Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/asus/systemui/util/AsusQuicksettingUtil;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 60
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem$1;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->mText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem$1;->this$0:Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/AsusQuickBoxItem;->mTextRes:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
