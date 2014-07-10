.class public Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;
.super Landroid/widget/LinearLayout;
.source "KeyguardPatternView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$4;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MIN_PATTERN_BEFORE_POKE_WAKELOCK:I = 0x2

.field private static final PATTERN_CLEAR_TIMEOUT_MS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "SecurityPatternView"

.field private static final UNLOCK_PATTERN_WAKE_INTERVAL_FIRST_DOTS_MS:I = 0x7d0

.field private static final UNLOCK_PATTERN_WAKE_INTERVAL_MS:I = 0x1b58


# instance fields
.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mCancelPatternRunnable:Ljava/lang/Runnable;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mEcaView:Landroid/view/View;

.field private mEnableFallback:Z

.field private mFailedPatternAttemptsSinceLastTimeout:I

.field private mForgotPatternButton:Landroid/widget/Button;

.field private mHaptics:Landroid/os/Haptics;

.field private mLastPokeTime:J

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTotalFailedPatternAttempts:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 63
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 77
    const-wide/16 v0, -0x1b58

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLastPokeTime:J

    .line 82
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEnableFallback:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEnableFallback:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Landroid/os/Haptics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mHaptics:Landroid/os/Haptics;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    return p1
.end method

.method static synthetic access$608(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mFailedPatternAttemptsSinceLastTimeout:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mFailedPatternAttemptsSinceLastTimeout:I

    return p1
.end method

.method static synthetic access$708(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mFailedPatternAttemptsSinceLastTimeout:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mFailedPatternAttemptsSinceLastTimeout:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    return-object v0
.end method

.method private displayDefaultSecurityMessage()V
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x10402f8

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x1040535

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0
.end method

.method private handleAttemptLockout(J)V
    .locals 8
    .parameter "elapsedRealtimeDeadline"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 355
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 356
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 357
    .local v6, elapsedRealtime:J
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEnableFallback:Z

    if-eqz v0, :cond_0

    .line 358
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;->ForgotLockPattern:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V

    .line 361
    :cond_0
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;JJ)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 387
    return-void
.end method

.method private maybeEnableFallback(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 301
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Landroid/accounts/AccountManager;Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$1;)V

    .line 302
    .local v0, accountAnalyzer:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$AccountAnalyzer;->start()V

    .line 303
    return-void
.end method

.method private updateFooter(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    const/16 v2, 0x8

    .line 159
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 161
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$4;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardPatternView$FooterMode:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 164
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 168
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 172
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 234
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 236
    return-void
.end method

.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 422
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 116
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 117
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 120
    const v1, 0x10202ec

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockPatternView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 121
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternView;->setSaveEnabled(Z)V

    .line 122
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternView;->setFocusable(Z)V

    .line 123
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$UnlockPatternListener;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$1;)V

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 126
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 131
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "haptics"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Haptics;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mHaptics:Landroid/os/Haptics;

    .line 136
    const v1, 0x10202c6

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    .line 138
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    const v3, 0x1040530

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 140
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->setFocusableInTouchMode(Z)V

    .line 149
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->maybeEnableFallback(Landroid/content/Context;)V

    .line 150
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    .line 151
    const v1, 0x10202cc

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    .line 152
    const v1, 0x10202c8

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 153
    .local v0, bouncerFrameView:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 156
    :cond_1
    return-void

    .line 117
    .end local v0           #bouncerFrameView:Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 126
    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 400
    :cond_0
    return-void
.end method

.method public onResume(I)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->reset()V

    .line 405
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    .line 178
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 181
    .local v2, result:Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLastPokeTime:J

    sub-long v0, v4, v6

    .line 182
    .local v0, elapsed:J
    if-eqz v2, :cond_0

    const-wide/16 v4, 0x1af4

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 183
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLastPokeTime:J

    .line 185
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 186
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 187
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 188
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/LockPatternView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 189
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 190
    return v2

    :cond_2
    move v2, v3

    .line 188
    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 241
    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->reset()V

    .line 245
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 195
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 196
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 197
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 200
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 201
    .local v0, deadline:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 202
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V

    .line 208
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->isVerifyUnlockOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;->VerifyUnlocked:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V

    .line 217
    :goto_1
    return-void

    .line 204
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V

    goto :goto_0

    .line 210
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEnableFallback:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_2

    .line 212
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;->ForgotLockPattern:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V

    goto :goto_1

    .line 214
    :cond_2
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;->Normal:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V

    goto :goto_1
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 108
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .parameter "utils"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 112
    return-void
.end method

.method public showBouncer(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 416
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method
