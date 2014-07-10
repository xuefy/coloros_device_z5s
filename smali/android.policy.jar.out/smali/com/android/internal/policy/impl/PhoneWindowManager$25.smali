.class Lcom/android/internal/policy/impl/PhoneWindowManager$25;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


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
    .line 4771
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$25;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 4773
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4774
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.ACTIVITY_STACK_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4776
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$25;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->isThreeFingerSlideEnable:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2700(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4807
    :cond_0
    :goto_0
    return-void

    .line 4778
    :cond_1
    const-string v3, "needUpdeTaskList"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 4779
    .local v1, needUpdate:Z
    if-eqz v1, :cond_0

    .line 4780
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$25;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppIndex:I
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2802(Lcom/android/internal/policy/impl/PhoneWindowManager;I)I

    .line 4781
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$25$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$25$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$25;)V

    .line 4805
    .local v2, taskLoder:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
