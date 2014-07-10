.class Lcom/android/server/display/nubiaOverlayDisplayWindow$6$2;
.super Ljava/lang/Thread;
.source "nubiaOverlayDisplayWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
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
    .line 627
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6$2;->this$1:Lcom/android/server/display/nubiaOverlayDisplayWindow$6;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 630
    const-wide/16 v1, 0x12c

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6$2;->this$1:Lcom/android/server/display/nubiaOverlayDisplayWindow$6;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->waitDouble:Z
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->access$1200(Lcom/android/server/display/nubiaOverlayDisplayWindow$6;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6$2;->this$1:Lcom/android/server/display/nubiaOverlayDisplayWindow$6;

    const/4 v2, 0x1

    #setter for: Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->waitDouble:Z
    invoke-static {v1, v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->access$1202(Lcom/android/server/display/nubiaOverlayDisplayWindow$6;Z)Z

    .line 636
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6$2;->this$1:Lcom/android/server/display/nubiaOverlayDisplayWindow$6;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->access$1300(Lcom/android/server/display/nubiaOverlayDisplayWindow$6;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 638
    :cond_0
    return-void

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "NubiaOverlayDisplayWindow"

    const-string v2, "onClick--InterruptedException"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
