.class Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView$2;
.super Ljava/lang/Object;
.source "KeyguardPasswordView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, entry:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;->verifyPasswordAndUnlock()V

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 126
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 116
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 113
    return-void
.end method
