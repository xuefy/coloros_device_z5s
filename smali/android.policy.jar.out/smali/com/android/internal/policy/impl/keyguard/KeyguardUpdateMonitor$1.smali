.class Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;
.super Landroid/os/Handler;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 187
    :goto_0
    return-void

    .line 138
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleTimeUpdate()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_0

    .line 141
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleBatteryUpdate(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    goto :goto_0

    .line 144
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleCarrierInfoUpdate(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)V

    goto :goto_0

    .line 147
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;)V

    goto :goto_0

    .line 150
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleRingerModeChange(I)V

    goto :goto_0

    .line 153
    :pswitch_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handlePhoneStateChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleClockVisibilityChanged()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_0

    .line 159
    :pswitch_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleDeviceProvisioned()V

    goto :goto_0

    .line 162
    :pswitch_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleDevicePolicyManagerStateChanged()V

    goto :goto_0

    .line 165
    :pswitch_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IRemoteCallback;

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleUserSwitched(ILandroid/os/IRemoteCallback;)V

    goto :goto_0

    .line 168
    :pswitch_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleUserRemoved(I)V

    goto :goto_0

    .line 171
    :pswitch_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleKeyguardVisibilityChanged(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)V

    goto :goto_0

    .line 174
    :pswitch_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleBootCompleted()V

    goto :goto_0

    .line 177
    :pswitch_d
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleNotificationUpdate(Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;)V

    goto :goto_0

    .line 180
    :pswitch_e
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleNotificationDelete(Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/LockScreenNotification;)V

    goto :goto_0

    .line 183
    :pswitch_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->handleAirplaneChanged()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
