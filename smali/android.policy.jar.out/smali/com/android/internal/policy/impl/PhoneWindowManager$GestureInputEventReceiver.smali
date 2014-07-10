.class final Lcom/android/internal/policy/impl/PhoneWindowManager$GestureInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "inputChannel"
    .parameter "looper"

    .prologue
    .line 5859
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 5860
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 5861
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 5865
    const/4 v1, 0x0

    .line 5867
    .local v1, handled:Z
    :try_start_0
    instance-of v3, p1, Landroid/view/MotionEvent;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 5869
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v2, v0

    .line 5870
    .local v2, motionEvent:Landroid/view/MotionEvent;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mGestureListener:Lnubia/gesture/touch/GestureListener;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3300(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lnubia/gesture/touch/GestureListener;

    move-result-object v3

    invoke-static {v2, v3}, Lnubia/gesture/touch/GestureManager;->touch(Landroid/view/MotionEvent;Lnubia/gesture/touch/GestureListener;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 5873
    .end local v2           #motionEvent:Landroid/view/MotionEvent;
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 5875
    return-void

    .line 5873
    :catchall_0
    move-exception v3

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$GestureInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v3
.end method
