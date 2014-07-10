.class Lcom/android/server/display/nubiaOverlayDisplayWindow$6$1;
.super Landroid/os/Handler;
.source "nubiaOverlayDisplayWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/nubiaOverlayDisplayWindow$6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/nubiaOverlayDisplayWindow$6;


# direct methods
.method constructor <init>(Lcom/android/server/display/nubiaOverlayDisplayWindow$6;)V
    .locals 0
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6$1;->this$1:Lcom/android/server/display/nubiaOverlayDisplayWindow$6;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6$1;->this$1:Lcom/android/server/display/nubiaOverlayDisplayWindow$6;

    iget-object v0, v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->val$listener:Lcom/android/server/display/OnDoubleTouchListener;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6$1;->this$1:Lcom/android/server/display/nubiaOverlayDisplayWindow$6;

    iget-object v0, v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->val$listener:Lcom/android/server/display/OnDoubleTouchListener;

    invoke-interface {v0}, Lcom/android/server/display/OnDoubleTouchListener;->onSingleTouch()V

    .line 610
    :cond_0
    return-void
.end method
