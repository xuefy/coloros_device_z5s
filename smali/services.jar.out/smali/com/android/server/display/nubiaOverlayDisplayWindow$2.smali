.class Lcom/android/server/display/nubiaOverlayDisplayWindow$2;
.super Ljava/lang/Object;
.source "nubiaOverlayDisplayWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/nubiaOverlayDisplayWindow;->createDismissAnimation()V
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
    .line 295
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$2;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$2;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$300(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$2;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContent:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$200(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 309
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$002(Z)Z

    .line 310
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 304
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$2;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLockView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    return-void
.end method
