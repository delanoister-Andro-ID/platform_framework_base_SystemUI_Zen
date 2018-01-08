.class Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController$1;
.super Landroid/os/AsyncTask;
.source "QuickSettingsUserInfoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->queryForUserInformation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 20
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    const/4 v7, 0x0

    .line 110
    .local v7, avatar:Landroid/graphics/drawable/Drawable;
    const/16 v17, 0x0

    .line 111
    .local v17, rawAvatar:Landroid/graphics/Bitmap;
    const/16 v16, 0x0

    .line 113
    .local v16, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 115
    .local v10, cur:Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 117
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 118
    .local v9, count:I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 120
    .local v13, id:J
    const-string v1, "display_name"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 121
    const-string v1, "QuickSettingsUserInfoController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 124
    .local v19, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-static {v1, v0, v2}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v15

    .local v15, is:Ljava/io/InputStream;
    if-eqz v15, :cond_0

    .line 126
    invoke-static {v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 129
    .end local v13           #id:J
    .end local v15           #is:Ljava/io/InputStream;
    .end local v19           #uri:Landroid/net/Uri;
    :cond_0
    const-string v2, "QuickSettingsUserInfoController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Me profile exist ? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-lez v9, :cond_5

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 137
    .end local v9           #count:I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/UserManager;

    .line 142
    .local v18, um:Landroid/os/UserManager;
    if-eqz v17, :cond_6

    .line 143
    const/high16 v1, 0x4000

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;

    #getter for: Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mCircleWidth:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->access$000(Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;)I

    move-result v2

    move-object/from16 v0, v17

    #calls: Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->access$100(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 144
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    .end local v7           #avatar:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-direct {v7, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 155
    .restart local v7       #avatar:Landroid/graphics/drawable/Drawable;
    :goto_2
    invoke-virtual/range {v18 .. v18}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_3

    .line 157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "display_name"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 161
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_3

    .line 163
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    const-string v1, "display_name"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v16

    .line 167
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 171
    .end local v11           #cursor:Landroid/database/Cursor;
    :cond_3
    if-nez v16, :cond_4

    .line 172
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController$1;->val$context:Landroid/content/Context;

    const v2, 0x7f06005e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 174
    :cond_4
    new-instance v1, Landroid/util/Pair;

    move-object/from16 v0, v16

    invoke-direct {v1, v0, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 129
    .end local v18           #um:Landroid/os/UserManager;
    .restart local v9       #count:I
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 130
    .end local v9           #count:I
    :catch_0
    move-exception v12

    .line 131
    .local v12, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "QuickSettingsUserInfoController"

    const-string v2, "Can\'t open a cursor."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .end local v12           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    .line 146
    .restart local v18       #um:Landroid/os/UserManager;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;

    #getter for: Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mR:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->access$200(Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020004

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 147
    .local v8, bmp:Landroid/graphics/Bitmap;
    const/high16 v1, 0x4000

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;

    #getter for: Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mCircleWidth:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->access$000(Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;)I

    move-result v2

    #calls: Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    invoke-static {v8, v1, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->access$100(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 149
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    .end local v7           #avatar:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;

    #getter for: Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mR:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->access$200(Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v7, v1, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v7       #avatar:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 167
    .end local v8           #bmp:Landroid/graphics/Bitmap;
    .restart local v11       #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController$1;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, result:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 179
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 180
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;

    #getter for: Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mUserView:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->access$300(Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;)Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    move-result-object v3

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setControllText(Ljava/lang/String;)V

    .line 181
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;

    #getter for: Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mR:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->access$200(Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020077

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 182
    .local v8, bg:Landroid/graphics/drawable/Drawable;
    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 183
    const/4 v2, 0x2

    new-array v9, v2, [Landroid/graphics/drawable/Drawable;

    .line 184
    .local v9, drawables:[Landroid/graphics/drawable/Drawable;
    aput-object v8, v9, v1

    .line 185
    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    aput-object v2, v9, v6

    .line 186
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v9}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .local v0, layer:Landroid/graphics/drawable/LayerDrawable;
    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    .line 187
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    move-object v2, v0

    move v3, v6

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    .line 188
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 189
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;

    #getter for: Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mUserView:Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->access$300(Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;)Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/AsusQuickSettingsControllerItem;->setCheckBoxImage(Landroid/graphics/drawable/Drawable;)V

    .line 190
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;

    const/4 v2, 0x0

    #setter for: Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->mUserInfoTask:Landroid/os/AsyncTask;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;->access$402(Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 191
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    check-cast p1, Landroid/util/Pair;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/QuickSettingsUserInfoController$1;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
