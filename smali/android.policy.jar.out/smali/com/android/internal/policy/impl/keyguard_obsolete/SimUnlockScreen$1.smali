.class Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$1;
.super Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$CheckSimPin;
.source "SimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;->checkPin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$CheckSimPin;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(Z)V
    .locals 2
    .parameter "success"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;->access$500(Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$1$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$1$1;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$1;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 251
    return-void
.end method
