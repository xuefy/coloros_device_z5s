.class Lcom/android/internal/policy/impl/PhoneWindowManager$36;
.super Landroid/os/Handler;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->handleDoubleClickEvnet(Landroid/view/KeyEvent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field final synthetic val$sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/Looper;Landroid/hardware/SensorManager;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 6370
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$36;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$36;->val$sensorManager:Landroid/hardware/SensorManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 6374
    const-string v0, "zms"

    const-string v1, "handleMessage \ufffd\ufffd\u02b1\ufffd\ufffd\ufffd\ufffd"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6375
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$36;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->turnScreenOn()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3900(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 6376
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$36;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$36;->val$sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$36;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mSensorEventLister:Landroid/hardware/SensorEventListener;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4100(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/hardware/SensorEventListener;

    move-result-object v2

    const/4 v3, 0x0

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->disableProximity(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4200(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Z)V

    .line 6377
    return-void
.end method
