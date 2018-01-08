.class Lcom/android/systemui/statusbar/BaseStatusBar$7;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;->addViewToWindowManager(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

.field final synthetic val$funcName:Ljava/lang/String;

.field final synthetic val$layoutParams:Landroid/view/WindowManager$LayoutParams;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->val$layoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->val$tag:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->val$funcName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1229
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->val$view:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->val$layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1234
    :goto_0
    return-void

    .line 1231
    :catch_0
    move-exception v0

    .line 1232
    .local v0, e3:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->val$tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->val$funcName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":e3="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
