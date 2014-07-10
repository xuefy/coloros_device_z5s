.class Lcom/android/server/display/nubiaOverlayDisplayWindow$6;
.super Ljava/lang/Object;
.source "nubiaOverlayDisplayWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/nubiaOverlayDisplayWindow;->registerDoubleTouchListener(Landroid/view/View;Lcom/android/server/display/OnDoubleTouchListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final DOUBLE_TOUCH_TIME:I = 0x12c

.field private static final MSG_SINGLE_TOUCH:I = 0x5


# instance fields
.field private handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

.field final synthetic val$listener:Lcom/android/server/display/OnDoubleTouchListener;

.field private waitDouble:Z


# direct methods
.method constructor <init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;Lcom/android/server/display/OnDoubleTouchListener;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 600
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    iput-object p2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->val$listener:Lcom/android/server/display/OnDoubleTouchListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 602
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->waitDouble:Z

    .line 604
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$6$1;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow$6;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/display/nubiaOverlayDisplayWindow$6;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 600
    iget-boolean v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->waitDouble:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/display/nubiaOverlayDisplayWindow$6;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 600
    iput-boolean p1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->waitDouble:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/display/nubiaOverlayDisplayWindow$6;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 614
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSingleParams:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-static {v4}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/AbsoluteLayout$LayoutParams;

    move-result-object v4

    if-nez v4, :cond_0

    .line 648
    :goto_0
    return v2

    .line 617
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 618
    .local v0, action:I
    new-instance v1, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSingleParams:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-static {v4}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/AbsoluteLayout$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSingleParams:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-static {v5}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/AbsoluteLayout$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget-object v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSingleParams:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-static {v6}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/AbsoluteLayout$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iget-object v7, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSingleParams:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-static {v7}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/AbsoluteLayout$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSingleParams:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-static {v7}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/AbsoluteLayout$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget-object v8, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSingleParams:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-static {v8}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/AbsoluteLayout$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v7, v8

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 623
    .local v1, r:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 624
    if-ne v0, v3, :cond_1

    .line 625
    iget-boolean v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->waitDouble:Z

    if-eqz v4, :cond_2

    .line 626
    iput-boolean v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->waitDouble:Z

    .line 627
    new-instance v2, Lcom/android/server/display/nubiaOverlayDisplayWindow$6$2;

    invoke-direct {v2, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$6$2;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow$6;)V

    invoke-virtual {v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow$6$2;->start()V

    :cond_1
    :goto_1
    move v2, v3

    .line 648
    goto :goto_0

    .line 641
    :cond_2
    iput-boolean v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->waitDouble:Z

    .line 642
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->val$listener:Lcom/android/server/display/OnDoubleTouchListener;

    if-eqz v2, :cond_1

    .line 643
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->val$listener:Lcom/android/server/display/OnDoubleTouchListener;

    invoke-interface {v2}, Lcom/android/server/display/OnDoubleTouchListener;->onDoubleTouch()V

    goto :goto_1
.end method
