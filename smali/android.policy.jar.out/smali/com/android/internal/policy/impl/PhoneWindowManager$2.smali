.class Lcom/android/internal/policy/impl/PhoneWindowManager$2;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lnubia/gesture/sensor/MotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 587
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionChanged(Lnubia/gesture/sensor/MotionState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 589
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$100()Lnubia/gesture/sensor/MotionDetector;

    move-result-object v0

    if-nez v0, :cond_1

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 593
    const-string v0, "WindowManager"

    const-string v1, "Anti-misoperation onMotionChanged call unregisterMotionListener When screen is off"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->unregisterMotionListener()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$200(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto :goto_0

    .line 597
    :cond_2
    const/16 v0, 0x9

    invoke-virtual {p1}, Lnubia/gesture/sensor/MotionState;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 598
    const/16 v0, 0x5a

    invoke-virtual {p1}, Lnubia/gesture/sensor/MotionState;->getState()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 599
    const-string v0, "WindowManager"

    const-string v1, "Anti-misoperation onMotionChanged  STATE_PALM_NEAR"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenSaverView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->getPhoneState()I
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$400(Lcom/android/internal/policy/impl/PhoneWindowManager;)I

    move-result v0

    if-nez v0, :cond_4

    .line 604
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->showScreenSaverView()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$500(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto :goto_0

    .line 606
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->unregisterMotionListener()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$200(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto :goto_0

    .line 610
    :cond_5
    const/16 v0, -0x5a

    invoke-virtual {p1}, Lnubia/gesture/sensor/MotionState;->getState()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 611
    const-string v0, "WindowManager"

    const-string v1, "Anti-misoperation onMotionChanged  STATE_PALM_FAR"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->dismissScreenSaverView()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$600(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 613
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->unregisterMotionListener()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$200(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto/16 :goto_0
.end method
