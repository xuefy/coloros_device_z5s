.class Lcom/android/server/display/nubiaOverlayDisplayAdapter$2;
.super Ljava/lang/Object;
.source "nubiaOverlayDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/nubiaOverlayDisplayAdapter;->updateOverlayDisplayDevicesLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/nubiaOverlayDisplayAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$2;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$2;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104058d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 187
    return-void
.end method
