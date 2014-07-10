.class Lcom/android/internal/policy/impl/PhoneWindowManager$SwipeThread;
.super Ljava/lang/Thread;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwipeThread"
.end annotation


# instance fields
.field mDownX:I

.field mDownY:I

.field mSteps:I

.field mUpX:I

.field mUpY:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;IIIII)V
    .locals 1
    .parameter
    .parameter "downX"
    .parameter "downY"
    .parameter "upX"
    .parameter "upY"
    .parameter "steps"

    .prologue
    const/4 v0, 0x0

    .line 6022
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SwipeThread;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6019
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SwipeThread;->mDownX:I

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SwipeThread;->mDownY:I

    .line 6020
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SwipeThread;->mUpX:I

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SwipeThread;->mUpY:I

    .line 6021
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SwipeThread;->mSteps:I

    .line 6023
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SwipeThread;->mDownX:I

    .line 6024
    iput p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SwipeThread;->mDownY:I

    .line 6025
    iput p4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SwipeThread;->mUpX:I

    .line 6026
    iput p5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SwipeThread;->mUpY:I

    .line 6027
    iput p6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SwipeThread;->mSteps:I

    .line 6028
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 6032
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SwipeThread;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SwipeThread;->mDownX:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SwipeThread;->mDownY:I

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SwipeThread;->mUpX:I

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SwipeThread;->mUpY:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SwipeThread;->mSteps:I

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->swipe(IIIII)Z
    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3500(Lcom/android/internal/policy/impl/PhoneWindowManager;IIIII)Z

    .line 6033
    return-void
.end method
