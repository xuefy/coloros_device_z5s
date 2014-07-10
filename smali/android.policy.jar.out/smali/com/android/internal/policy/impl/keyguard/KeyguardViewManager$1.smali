.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/ExtLockScreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->createExtLockScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 2
    .parameter "authenticated"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->switchLockScreen(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;Z)V

    .line 288
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 291
    :cond_0
    return-void
.end method

.method public dismissOnNextActivity()V
    .locals 1

    .prologue
    .line 303
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public userActivity(J)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->userActivity(J)V

    .line 298
    :cond_0
    return-void
.end method
