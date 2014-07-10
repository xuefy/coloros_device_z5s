.class Lcom/android/internal/policy/impl/PhoneWindowManager$WakeTimeoutThread;
.super Ljava/lang/Thread;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WakeTimeoutThread"
.end annotation


# instance fields
.field private mCount:I

.field private mHandler:Landroid/os/Handler;

.field private mTimeout:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "handler"

    .prologue
    .line 6311
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$WakeTimeoutThread;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$WakeTimeoutThread;->mHandler:Landroid/os/Handler;

    .line 6309
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$WakeTimeoutThread;->mCount:I

    .line 6312
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$WakeTimeoutThread;->mHandler:Landroid/os/Handler;

    .line 6313
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 6316
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$WakeTimeoutThread;->mTimeout:Z

    if-nez v1, :cond_1

    .line 6318
    :try_start_0
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$WakeTimeoutThread;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$WakeTimeoutThread;->mCount:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 6319
    const-string v1, "zms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WakeTimeoutThread send mCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$WakeTimeoutThread;->mCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6320
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$WakeTimeoutThread;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6321
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$WakeTimeoutThread;->setTimeout(Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6326
    :catch_0
    move-exception v0

    .line 6327
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 6323
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    :try_start_1
    const-string v1, "zms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WakeTimeoutThread sleep mCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$WakeTimeoutThread;->mCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6324
    const-wide/16 v1, 0xa

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 6330
    :cond_1
    return-void
.end method

.method public declared-synchronized setTimeout(Z)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 6332
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$WakeTimeoutThread;->mTimeout:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6333
    monitor-exit p0

    return-void

    .line 6332
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
