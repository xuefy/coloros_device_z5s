.class Lcom/android/server/display/nubiaOverlayDisplayWindow$4;
.super Ljava/lang/Object;
.source "nubiaOverlayDisplayWindow.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


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
    .line 542
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$4;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .parameter "surfaceTexture"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$4;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mListener:Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$800(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$4;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->refreshRate:F

    invoke-interface {v0, p1, v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;->onWindowCreated(Landroid/graphics/SurfaceTexture;F)V

    .line 547
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .parameter "surfaceTexture"

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$4;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    #getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mListener:Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$800(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;->onWindowDestroyed()V

    .line 552
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .parameter "surfaceTexture"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 558
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter "surfaceTexture"

    .prologue
    .line 562
    return-void
.end method
