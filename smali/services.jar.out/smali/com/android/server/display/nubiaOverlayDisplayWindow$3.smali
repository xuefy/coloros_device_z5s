.class Lcom/android/server/display/nubiaOverlayDisplayWindow$3;
.super Ljava/lang/Object;
.source "nubiaOverlayDisplayWindow.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/nubiaOverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;


# direct methods
.method constructor <init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$3;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .parameter "displayId"

    .prologue
    .line 508
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2
    .parameter "displayId"

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$3;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$3;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #calls: Lcom/android/server/display/nubiaOverlayDisplayWindow;->updateDefaultDisplayInfo()Z
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$500(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    const-string v0, "NubiaOverlayDisplayWindow"

    const-string v1, "update  onDisplayChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$3;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #calls: Lcom/android/server/display/nubiaOverlayDisplayWindow;->relayout()V
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$600(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$3;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-virtual {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->dismiss()V

    goto :goto_0
.end method

.method public onDisplayRemoved(I)V
    .locals 2
    .parameter "displayId"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$3;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 525
    const-string v0, "zhengxiaojuan"

    const-string v1, "mDisplayListener dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$3;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-virtual {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->dismiss()V

    .line 528
    :cond_0
    return-void
.end method
