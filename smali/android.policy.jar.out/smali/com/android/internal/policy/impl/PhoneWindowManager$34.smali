.class Lcom/android/internal/policy/impl/PhoneWindowManager$34;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lnubia/gesture/touch/GestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->enableTouchGesture()V
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
    .line 6079
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$34;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGesture(Lnubia/gesture/touch/GestureArg;)Z
    .locals 3
    .parameter "arg"

    .prologue
    .line 6083
    const/4 v0, 0x0

    .line 6084
    .local v0, bHandled:Z
    instance-of v1, p1, Lnubia/gesture/touch/MultiPointArg;

    if-eqz v1, :cond_1

    .line 6085
    invoke-virtual {p1}, Lnubia/gesture/touch/GestureArg;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 6106
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 6087
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$34;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->innerInterceptScreenshotChord()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3600(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 6088
    const/4 v0, 0x1

    .line 6089
    goto :goto_0

    .line 6092
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$34;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v2, 0x0

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->doSwitchApp(Z)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3700(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    .line 6093
    const/4 v0, 0x1

    .line 6094
    goto :goto_0

    .line 6097
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$34;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v2, 0x1

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->doSwitchApp(Z)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3700(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    .line 6098
    const/4 v0, 0x1

    goto :goto_0

    .line 6101
    :cond_1
    instance-of v1, p1, Lnubia/gesture/touch/PalmCoverArg;

    if-eqz v1, :cond_0

    .line 6102
    const/4 v0, 0x1

    .line 6103
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$34;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->doPalmCoverLockScreen()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3800(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto :goto_0

    .line 6085
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
