.class Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$FrameUpdateRunnable;
.super Ljava/lang/Object;
.source "KeyguardSelectorView2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FrameUpdateRunnable"
.end annotation


# instance fields
.field frameIndex:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;I)V
    .locals 0
    .parameter
    .parameter "index"

    .prologue
    .line 644
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$FrameUpdateRunnable;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 645
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$FrameUpdateRunnable;->frameIndex:I

    .line 646
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 648
    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 649
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$FrameUpdateRunnable;->frameIndex:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 650
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$FrameUpdateRunnable;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 657
    :goto_0
    return-void

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$FrameUpdateRunnable;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mAnimationLayers:[Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$FrameUpdateRunnable;->frameIndex:I

    aget-object v1, v1, v2

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mFireUnlock:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->access$1702(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 654
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$FrameUpdateRunnable;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->invalidate()V

    .line 655
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$FrameUpdateRunnable;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$FrameUpdateRunnable;->frameIndex:I

    iput v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mCurrentIndex:I

    goto :goto_0
.end method
