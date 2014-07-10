.class Lcom/android/server/display/nubiaOverlayDisplayWindow$1;
.super Ljava/lang/Object;
.source "nubiaOverlayDisplayWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/nubiaOverlayDisplayWindow;->createShowAnimation()V
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
    .line 262
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 275
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 270
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 265
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$002(Z)Z

    .line 266
    return-void
.end method
