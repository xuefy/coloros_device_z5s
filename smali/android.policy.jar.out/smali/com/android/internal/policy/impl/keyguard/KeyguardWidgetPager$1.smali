.class Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$1;
.super Ljava/lang/Object;
.source "KeyguardWidgetPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->onRemoveView(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

.field final synthetic val$appWidgetId:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$1;->val$appWidgetId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$1;->val$appWidgetId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->removeAppWidget(I)Z

    .line 265
    return-void
.end method
