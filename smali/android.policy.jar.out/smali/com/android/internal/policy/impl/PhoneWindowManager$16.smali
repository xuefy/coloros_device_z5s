.class Lcom/android/internal/policy/impl/PhoneWindowManager$16;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->finishPostLayoutPolicyLw()I
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
    .line 3757
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3760
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$16;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/OppoKeyguardViewMediator;->dismiss()V

    .line 3761
    return-void
.end method