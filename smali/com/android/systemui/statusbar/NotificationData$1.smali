.class Lcom/android/systemui/statusbar/NotificationData$1;
.super Ljava/lang/Object;
.source "NotificationData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/systemui/statusbar/NotificationData$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationData;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationData;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I
    .locals 7
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 71
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 72
    .local v1, na:Landroid/service/notification/StatusBarNotification;
    iget-object v2, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 74
    .local v2, nb:Landroid/service/notification/StatusBarNotification;
    const-string v5, "com.asus.sitd.whatsnext"

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    .line 87
    :cond_0
    :goto_0
    return v3

    .line 77
    :cond_1
    const-string v5, "com.asus.sitd.whatsnext"

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 81
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v5

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v6

    sub-int v0, v5, v6

    .line 82
    .local v0, d:I
    #getter for: Lcom/android/systemui/statusbar/NotificationData$Entry;->interruption:Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->access$000(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v5

    #getter for: Lcom/android/systemui/statusbar/NotificationData$Entry;->interruption:Z
    invoke-static {p2}, Lcom/android/systemui/statusbar/NotificationData$Entry;->access$000(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v6

    if-eq v5, v6, :cond_2

    .line 83
    #getter for: Lcom/android/systemui/statusbar/NotificationData$Entry;->interruption:Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->access$000(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 84
    :cond_2
    if-eqz v0, :cond_3

    move v3, v0

    .line 85
    goto :goto_0

    .line 87
    :cond_3
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-wide v3, v3, Landroid/app/Notification;->when:J

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-wide v5, v5, Landroid/app/Notification;->when:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    check-cast p1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .end local p1
    check-cast p2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationData$1;->compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v0

    return v0
.end method
