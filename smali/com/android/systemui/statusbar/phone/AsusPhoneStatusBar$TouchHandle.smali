.class Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;
.super Ljava/lang/Object;
.source "AsusPhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchHandle"
.end annotation


# instance fields
.field private cancelDrag:Z

.field private downx:I

.field private downy:I

.field private startDrag:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3134
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3135
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;->startDrag:Z

    .line 3136
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;->cancelDrag:Z

    .line 3137
    iput v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;->downx:I

    .line 3138
    iput v0, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;->downy:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3134
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;-><init>(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3141
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 3171
    :cond_0
    :goto_0
    return v5

    .line 3144
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;->downx:I

    .line 3145
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;->downy:I

    goto :goto_0

    .line 3148
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;->downx:I

    sub-int v0, v2, v3

    .line 3149
    .local v0, diffx:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;->downy:I

    sub-int v1, v2, v3

    .line 3150
    .local v1, diffy:I
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;->startDrag:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;->cancelDrag:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCancelboundary:[I
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$3400(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)[I

    move-result-object v2

    sget v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget v2, v2, v3

    if-gt v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mCancelboundary:[I
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$3400(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)[I

    move-result-object v2

    sget v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget v2, v2, v3

    neg-int v2, v2

    if-ge v1, v2, :cond_2

    .line 3151
    :cond_1
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;->cancelDrag:Z

    .line 3153
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;->startDrag:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;->cancelDrag:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBoundary:[I
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$3500(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)[I

    move-result-object v2

    sget v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget v2, v2, v3

    if-gt v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mBoundary:[I
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$3500(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)[I

    move-result-object v2

    sget v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget v2, v2, v3

    neg-int v2, v2

    if-ge v0, v2, :cond_4

    .line 3154
    :cond_3
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;->startDrag:Z

    .line 3155
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->showShadow()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$3600(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)V

    .line 3157
    :cond_4
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;->startDrag:Z

    if-eqz v2, :cond_0

    .line 3158
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    #calls: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->assignShadow(F)V
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$3700(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;F)V

    goto :goto_0

    .line 3162
    .end local v0           #diffx:I
    .end local v1           #diffy:I
    :pswitch_2
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;->cancelDrag:Z

    .line 3163
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;->startDrag:Z

    if-eqz v2, :cond_0

    .line 3164
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;->startDrag:Z

    .line 3165
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    #calls: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->setDockPosition(IZ)V
    invoke-static {v2, v3, v5}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$3800(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;IZ)V

    .line 3166
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mFloatingMenu:[Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$3900(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)[Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentType:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3167
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar$TouchHandle;->this$0:Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->mMenuHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;->access$4000(Lcom/android/systemui/statusbar/phone/AsusPhoneStatusBar;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x28

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 3141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
