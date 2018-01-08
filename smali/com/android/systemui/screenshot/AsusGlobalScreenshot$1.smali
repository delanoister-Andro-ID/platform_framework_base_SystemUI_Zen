.class Lcom/android/systemui/screenshot/AsusGlobalScreenshot$1;
.super Ljava/lang/Object;
.source "AsusGlobalScreenshot.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/AsusGlobalScreenshot;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/AsusGlobalScreenshot;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/AsusGlobalScreenshot;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/systemui/screenshot/AsusGlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/AsusGlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 434
    const/4 v0, 0x1

    return v0
.end method
