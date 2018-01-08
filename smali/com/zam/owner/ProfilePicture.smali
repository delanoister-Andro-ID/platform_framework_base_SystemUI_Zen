.class public Lcom/zam/owner/ProfilePicture;
.super Landroid/widget/ImageView;
.source "ProfilePicture.java"


# instance fields
.field imageUri:Ljava/lang/String;

.field profilePicture:Landroid/widget/ImageView;

.field uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const v4, 0x7f0b00c5

    invoke-virtual {p0, v4}, Lcom/zam/owner/ProfilePicture;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/zam/owner/ProfilePicture;->profilePicture:Landroid/widget/ImageView;

    .line 25
    const-string v4, "EvoPrefsFile"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 26
    .local v3, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v4, "profilePic"

    const-string v5, "null"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/zam/owner/ProfilePicture;->imageUri:Ljava/lang/String;

    .line 30
    iget-object v4, p0, Lcom/zam/owner/ProfilePicture;->profilePicture:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/zam/owner/ProfilePicture;->imageUri:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 32
    new-instance v1, Lcom/zam/owner/ProfilePicture$1;

    invoke-direct {v1, p0, p1}, Lcom/zam/owner/ProfilePicture$1;-><init>(Lcom/zam/owner/ProfilePicture;Landroid/content/Context;)V

    .line 47
    .local v1, mMediaReceiver:Landroid/content/BroadcastReceiver;
    new-instance v2, Lcom/zam/owner/ProfilePicture$2;

    invoke-direct {v2, p0, p1}, Lcom/zam/owner/ProfilePicture$2;-><init>(Lcom/zam/owner/ProfilePicture;Landroid/content/Context;)V

    .line 60
    .local v2, mReceiver:Landroid/content/BroadcastReceiver;
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.zam.owner.CHANGE_PROFILE_PICTURE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "file"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    return-void
.end method
