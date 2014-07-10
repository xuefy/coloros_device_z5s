.class Lcom/android/internal/policy/impl/PhoneWindowManager$35;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
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
    .line 6336
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$35;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 6340
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 6344
    const/high16 v0, 0x40a0

    .line 6345
    .local v0, TYPICAL_PROXIMITY_THRESHOLD:F
    iget-object v5, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v5

    const/high16 v6, 0x40a0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 6347
    .local v2, proximityThreshold:F
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v1

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v1

    cmpg-float v5, v5, v2

    if-gez v5, :cond_0

    move v1, v4

    .line 6348
    .local v1, near:Z
    :cond_0
    if-eqz v1, :cond_1

    .line 6349
    const-string v5, "zms"

    const-string v6, "near"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6354
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$35;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mTimeoutThread:Lcom/android/internal/policy/impl/PhoneWindowManager$WakeTimeoutThread;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4000(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lcom/android/internal/policy/impl/PhoneWindowManager$WakeTimeoutThread;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$WakeTimeoutThread;->setTimeout(Z)V

    .line 6355
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$35;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v5, "sensor"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    .line 6356
    .local v3, sensorManager:Landroid/hardware/SensorManager;
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$35;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$35;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mSensorEventLister:Landroid/hardware/SensorEventListener;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4100(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/hardware/SensorEventListener;

    move-result-object v5

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->disableProximity(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Z)V
    invoke-static {v4, v3, v5, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4200(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Z)V

    .line 6358
    return-void

    .line 6351
    .end local v3           #sensorManager:Landroid/hardware/SensorManager;
    :cond_1
    const-string v5, "zms"

    const-string v6, "far turn onScreen"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6352
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$35;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->turnScreenOn()V
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3900(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto :goto_0
.end method
