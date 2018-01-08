.class Lcom/android/systemui/power/PowerUI$2;
.super Landroid/content/BroadcastReceiver;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, action:Ljava/lang/String;
    const-string v17, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 171
    .local v6, oldBatteryLevel:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const-string v18, "level"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v17, v0

    if-gez v17, :cond_0

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v6, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 174
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v7, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 175
    .local v7, oldBatteryStatus:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const-string v18, "status"

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v10, v0, Lcom/android/systemui/power/PowerUI;->mPadBatteryLevel:I

    .line 178
    .local v10, oldPadBatteryLevel:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const-string v18, "pad_level"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mPadBatteryLevel:I

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mPadBatteryLevel:I

    move/from16 v17, v0

    if-gez v17, :cond_1

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v10, v0, Lcom/android/systemui/power/PowerUI;->mPadBatteryLevel:I

    .line 181
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v11, v0, Lcom/android/systemui/power/PowerUI;->mPadBatteryStatus:I

    .line 182
    .local v11, oldPadBatteryStatus:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const-string v18, "pad_status"

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mPadBatteryStatus:I

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v13, v0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 184
    .local v13, oldPlugType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const-string v18, "plugged"

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v9, v0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 186
    .local v9, oldInvalidCharger:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const-string v18, "invalid_charger"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x3

    if-eqz v17, :cond_9

    const/4 v5, 0x1

    .line 189
    .local v5, chargerConnected:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    #getter for: Lcom/android/systemui/power/PowerUI;->mLastChargerConnected:Z
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->access$100(Lcom/android/systemui/power/PowerUI;)Z

    move-result v17

    move/from16 v0, v17

    if-eq v0, v5, :cond_3

    .line 190
    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    #getter for: Lcom/android/systemui/power/PowerUI;->mVibrator:Landroid/os/Vibrator;
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->access$200(Lcom/android/systemui/power/PowerUI;)Landroid/os/Vibrator;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    #getter for: Lcom/android/systemui/power/PowerUI;->mVibrator:Landroid/os/Vibrator;
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->access$200(Lcom/android/systemui/power/PowerUI;)Landroid/os/Vibrator;

    move-result-object v17

    const-wide/16 v18, 0x42

    invoke-virtual/range {v17 .. v19}, Landroid/os/Vibrator;->vibrate(J)V

    .line 192
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #setter for: Lcom/android/systemui/power/PowerUI;->mLastChargerConnected:Z
    invoke-static {v0, v5}, Lcom/android/systemui/power/PowerUI;->access$102(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 195
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    move/from16 v17, v0

    if-eqz v17, :cond_a

    const/16 v16, 0x1

    .line 196
    .local v16, plugged:Z
    :goto_1
    if-eqz v13, :cond_b

    const/4 v14, 0x1

    .line 198
    .local v14, oldPlugged:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v7, :cond_4

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/systemui/power/PowerUI;->mShowChargerWarning:Z

    .line 202
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v0, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    :cond_5
    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v7, v0, :cond_6

    const/16 v17, 0x5

    move/from16 v0, v17

    if-ne v7, v0, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/systemui/power/PowerUI;->mShowChargerWarning:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 210
    const-string v17, "PowerUI"

    const-string v18, "Insufficient charger current "

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/systemui/power/PowerUI;->mShowChargerWarning:Z

    .line 212
    const-string v17, "PowerUI"

    const-string v18, "Showing Charger Warning..."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static {v0, v6}, Lcom/android/systemui/power/PowerUI;->access$300(Lcom/android/systemui/power/PowerUI;I)I

    move-result v8

    .line 216
    .local v8, oldBucket:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v18, v0

    #calls: Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static/range {v17 .. v18}, Lcom/android/systemui/power/PowerUI;->access$300(Lcom/android/systemui/power/PowerUI;I)I

    move-result v4

    .line 218
    .local v4, bucket:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static {v0, v10}, Lcom/android/systemui/power/PowerUI;->access$300(Lcom/android/systemui/power/PowerUI;I)I

    move-result v12

    .line 219
    .local v12, oldPadBucket:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mPadBatteryLevel:I

    move/from16 v18, v0

    #calls: Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static/range {v17 .. v18}, Lcom/android/systemui/power/PowerUI;->access$300(Lcom/android/systemui/power/PowerUI;I)I

    move-result v15

    .line 234
    .local v15, padBucket:I
    if-nez v9, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 235
    const-string v17, "PowerUI"

    const-string v18, "showing invalid charger warning"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->showInvalidChargerDialog()V

    .line 274
    .end local v4           #bucket:I
    .end local v5           #chargerConnected:Z
    .end local v6           #oldBatteryLevel:I
    .end local v7           #oldBatteryStatus:I
    .end local v8           #oldBucket:I
    .end local v9           #oldInvalidCharger:I
    .end local v10           #oldPadBatteryLevel:I
    .end local v11           #oldPadBatteryStatus:I
    .end local v12           #oldPadBucket:I
    .end local v13           #oldPlugType:I
    .end local v14           #oldPlugged:Z
    .end local v15           #padBucket:I
    .end local v16           #plugged:Z
    :cond_8
    :goto_3
    return-void

    .line 188
    .restart local v6       #oldBatteryLevel:I
    .restart local v7       #oldBatteryStatus:I
    .restart local v9       #oldInvalidCharger:I
    .restart local v10       #oldPadBatteryLevel:I
    .restart local v11       #oldPadBatteryStatus:I
    .restart local v13       #oldPlugType:I
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 195
    .restart local v5       #chargerConnected:Z
    :cond_a
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 196
    .restart local v16       #plugged:Z
    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 238
    .restart local v4       #bucket:I
    .restart local v8       #oldBucket:I
    .restart local v12       #oldPadBucket:I
    .restart local v14       #oldPlugged:Z
    .restart local v15       #padBucket:I
    :cond_c
    if-eqz v9, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    move/from16 v17, v0

    if-nez v17, :cond_10

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->dismissInvalidChargerDialog()V

    .line 245
    :cond_d
    if-nez v16, :cond_11

    if-lt v4, v8, :cond_e

    if-eqz v14, :cond_11

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_11

    if-gez v4, :cond_11

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    #setter for: Lcom/android/systemui/power/PowerUI;->mBatteryFlag:I
    invoke-static/range {v17 .. v18}, Lcom/android/systemui/power/PowerUI;->access$002(Lcom/android/systemui/power/PowerUI;I)I

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning(I)V

    .line 253
    if-ne v4, v8, :cond_f

    if-eqz v14, :cond_8

    .line 254
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->playLowBatterySound()V

    goto :goto_3

    .line 240
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    goto :goto_3

    .line 256
    :cond_11
    if-nez v16, :cond_12

    if-le v4, v8, :cond_13

    if-lez v4, :cond_13

    .line 257
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    goto/16 :goto_3

    .line 258
    :cond_13
    if-nez v16, :cond_15

    if-lt v15, v12, :cond_14

    if-eqz v14, :cond_15

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mPadBatteryStatus:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_15

    if-gez v15, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mPadBatteryLevel:I

    move/from16 v17, v0

    if-lez v17, :cond_15

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    #setter for: Lcom/android/systemui/power/PowerUI;->mBatteryFlag:I
    invoke-static/range {v17 .. v18}, Lcom/android/systemui/power/PowerUI;->access$002(Lcom/android/systemui/power/PowerUI;I)I

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mPadBatteryLevel:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/power/PowerUI;->showLowBatteryWarning(I)V

    goto/16 :goto_3

    .line 264
    :cond_15
    if-nez v16, :cond_16

    if-le v15, v12, :cond_8

    if-lez v15, :cond_8

    .line 265
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    goto/16 :goto_3

    .line 267
    .end local v4           #bucket:I
    .end local v5           #chargerConnected:Z
    .end local v6           #oldBatteryLevel:I
    .end local v7           #oldBatteryStatus:I
    .end local v8           #oldBucket:I
    .end local v9           #oldInvalidCharger:I
    .end local v10           #oldPadBatteryLevel:I
    .end local v11           #oldPadBatteryStatus:I
    .end local v12           #oldPadBucket:I
    .end local v13           #oldPlugType:I
    .end local v14           #oldPlugged:Z
    .end local v15           #padBucket:I
    .end local v16           #plugged:Z
    :cond_17
    const-string v17, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    #setter for: Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J
    invoke-static/range {v17 .. v19}, Lcom/android/systemui/power/PowerUI;->access$402(Lcom/android/systemui/power/PowerUI;J)J

    goto/16 :goto_3

    .line 269
    :cond_18
    const-string v17, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v17, v0

    const-wide/16 v18, -0x1

    #setter for: Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J
    invoke-static/range {v17 .. v19}, Lcom/android/systemui/power/PowerUI;->access$402(Lcom/android/systemui/power/PowerUI;J)J

    goto/16 :goto_3

    .line 272
    :cond_19
    const-string v17, "PowerUI"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "unknown intent: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method
