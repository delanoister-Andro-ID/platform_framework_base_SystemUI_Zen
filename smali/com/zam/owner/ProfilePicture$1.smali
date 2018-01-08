.class Lcom/zam/owner/ProfilePicture$1;
.super Landroid/content/BroadcastReceiver;
.source "ProfilePicture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zam/owner/ProfilePicture;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zam/owner/ProfilePicture;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/zam/owner/ProfilePicture;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zam/owner/ProfilePicture$1;->this$0:Lcom/zam/owner/ProfilePicture;

    iput-object p2, p0, Lcom/zam/owner/ProfilePicture$1;->val$context:Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "c"
    .parameter "i"

    .prologue
    .line 36
    iget-object v1, p0, Lcom/zam/owner/ProfilePicture$1;->val$context:Landroid/content/Context;

    const-string v2, "EvoPrefsFile"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 37
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/zam/owner/ProfilePicture$1;->this$0:Lcom/zam/owner/ProfilePicture;

    const-string v2, "profilePic"

    const-string v3, "null"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/zam/owner/ProfilePicture;->imageUri:Ljava/lang/String;

    .line 41
    iget-object v1, p0, Lcom/zam/owner/ProfilePicture$1;->this$0:Lcom/zam/owner/ProfilePicture;

    iget-object v1, v1, Lcom/zam/owner/ProfilePicture;->profilePicture:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/zam/owner/ProfilePicture$1;->this$0:Lcom/zam/owner/ProfilePicture;

    iget-object v2, v2, Lcom/zam/owner/ProfilePicture;->imageUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 44
    return-void
.end method
