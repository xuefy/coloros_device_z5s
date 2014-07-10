.class final Lcom/android/server/power/DisplayPowerController;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;,
        Lcom/android/server/power/DisplayPowerController$Callbacks;
    }
.end annotation


# static fields
.field private static final BRIGHTENING_LIGHT_DEBOUNCE:J = 0x7d0L

.field private static final BRIGHTENING_LIGHT_HYSTERESIS:F = 0.1f

.field private static final BRIGHTNESS_RAMP_RATE_FAST:I = 0xc8

.field private static final BRIGHTNESS_RAMP_RATE_SLOW:I = 0x3c

.field private static final DARKENING_LIGHT_DEBOUNCE:J = 0xbb8L

.field private static final DARKENING_LIGHT_HYSTERESIS:F = 0.2f

.field private static DEBUG:Z = false

.field private static final DEBUG_PRETEND_LIGHT_SENSOR_ABSENT:Z = false

.field private static final DEBUG_PRETEND_PROXIMITY_SENSOR_ABSENT:Z = false

.field static final DEFAULT_IMAGE_ENHANCE:I = 0x19

.field private static final ELECTRON_BEAM_OFF_ANIMATION_DURATION_MILLIS:I = 0x190

.field private static final ELECTRON_BEAM_ON_ANIMATION_DURATION_MILLIS:I = 0xfa

.field private static final LCD_AUTO_BRIGHTNESS_LEVEL_UNKNOW:I = -0x1

.field private static final LIGHT_SENSOR_RATE_MILLIS:I = 0x3e8

.field private static final LONG_TERM_AVERAGE_LIGHT_TIME_CONSTANT:J = 0x1388L

.field static final MIN_BRIGHTNESS:I = 0x19

.field private static final MSG_LIGHT_SENSOR_DEBOUNCED:I = 0x3

.field private static final MSG_PROXIMITY_SENSOR_DEBOUNCED:I = 0x2

.field private static final MSG_UPDATE_POWER_STATE:I = 0x1

.field private static final PATH_PROX_PHONE_IS_SLEEP:Ljava/lang/String; = "/sys/class/proximity/proximity/prox_phone_is_sleep"

.field private static final PATH_PROX_WAKELOCK:Ljava/lang/String; = "/sys/class/proximity/proximity/prox_wakelock"

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0xfa

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static final SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT_MAX_GAMMA:F = 3.0f

.field private static final SCREEN_DIM_MINIMUM_REDUCTION:I = 0xa

.field private static final SHORT_TERM_AVERAGE_LIGHT_TIME_CONSTANT:J = 0x3e8L

.field private static final SYNTHETIC_LIGHT_SENSOR_RATE_MILLIS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "DisplayPowerController"

.field private static final TWILIGHT_ADJUSTMENT_MAX_GAMMA:F = 1.5f

.field private static final TWILIGHT_ADJUSTMENT_TIME:J = 0x6ddd00L

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final USE_ELECTRON_BEAM_ON_ANIMATION:Z = false

#the value of this static final field might be set in the static constructor
.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z = false

#the value of this static final field might be set in the static constructor
.field private static final USE_TWILIGHT_ADJUSTMENT:Z = false

.field private static final WAKELOCK_TIMEOUT_PROXIMITY_NEGATIVE:I = 0x1f4

.field public static activityEvent:Z

.field private static breathinglight:Landroid/os/nubia/breathlight/BreathinglightManager;

.field private static lcd_auto_brightness_level:I

.field private static final lightArrary:[[I


# instance fields
.field private buttonLightFlag:I

.field private buttonLightHandler:Landroid/os/Handler;

.field private mAmbientLux:F

.field private mAmbientLuxValid:Z

.field private mAmbientLuxZteControlMode:F

.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAutoBrightnessLevels:[I

.field private mAutoBrightnessZteControlMode:Z

.field private final mButtonLight:Lcom/android/server/LightsService$Light;

.field private mCallbackHandler:Landroid/os/Handler;

.field private final mCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

.field private final mCleanListener:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mDebounceLuxDirection:I

.field private mDebounceLuxTime:J

.field private final mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

.field private final mDisplayManager:Lcom/android/server/display/DisplayManagerService;

.field private mDisplayReadyLocked:Z

.field private mElectronBeamFadesConfig:Z

.field private mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

.field private mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

.field private final mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

.field private mLastObservedLux:F

.field private mLastObservedLuxTime:J

.field private mLastScreenAutoBrightnessGamma:F

.field private mLcdBacklightValues:[I

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnableTime:J

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightSensorWarmUpTimeConfig:I

.field private final mLights:Lcom/android/server/LightsService;

.field private final mLock:Ljava/lang/Object;

.field private final mNotifier:Lcom/android/server/power/Notifier;

.field private final mOnProximityNegativeRunnable:Ljava/lang/Runnable;

.field private final mOnProximityPositiveRunnable:Ljava/lang/Runnable;

.field private final mOnStateChangedRunnable:Ljava/lang/Runnable;

.field private mPendingProximity:I

.field private mPendingProximityDebounceTime:J

.field private mPendingRequestChangedLocked:Z

.field private mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

.field private mPendingUpdatePowerStateLocked:Z

.field private mPendingWaitForNegativeProximityLocked:Z

.field private mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

.field private mPowerState:Lcom/android/server/power/DisplayPowerState;

.field private mProximity:I

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityThreshold:F

.field private mRecentLightSamples:I

.field private mRecentLongTermAverageLux:F

.field private mRecentShortTermAverageLux:F

.field private mScreenAutoBrightness:I

.field private mScreenAutoBrightnessSpline:Landroid/util/Spline;

.field private final mScreenBrightnessDimConfig:I

.field private mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/power/RampAnimator",
            "<",
            "Lcom/android/server/power/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private mScreenOffBecauseOfProximity:Z

.field private mScreenOnBlockStartRealTime:J

.field private mScreenOnWasBlocked:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mTwilight:Lcom/android/server/TwilightService;

.field private mTwilightChanged:Z

.field private final mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

.field private mUseSoftwareAutoBrightnessConfig:Z

.field private mUsingScreenAutoBrightness:Z

.field private mWaitingForNegativeProximity:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 84
    sput-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    .line 95
    invoke-static {}, Landroid/os/PowerManager;->useScreenAutoBrightnessAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/DisplayPowerController;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    .line 110
    invoke-static {}, Landroid/os/PowerManager;->useTwilightAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/DisplayPowerController;->USE_TWILIGHT_ADJUSTMENT:Z

    .line 194
    const/4 v0, 0x4

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/power/DisplayPowerController;->lightArrary:[[I

    .line 200
    const/4 v0, -0x1

    sput v0, Lcom/android/server/power/DisplayPowerController;->lcd_auto_brightness_level:I

    .line 407
    sput-boolean v4, Lcom/android/server/power/DisplayPowerController;->activityEvent:Z

    return-void

    .line 194
    nop

    :array_0
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
        0xb8t 0xbt 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xb8t 0xbt 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x88t 0x13t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
        0xb8t 0xbt 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/power/Notifier;Lcom/android/server/LightsService;Lcom/android/server/TwilightService;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/power/DisplayBlanker;Lcom/android/server/power/DisplayPowerController$Callbacks;Landroid/os/Handler;)V
    .locals 9
    .parameter "looper"
    .parameter "context"
    .parameter "notifier"
    .parameter "lights"
    .parameter "twilight"
    .parameter "sensorManager"
    .parameter "displayManager"
    .parameter "displayBlanker"
    .parameter "callbacks"
    .parameter "callbackHandler"

    .prologue
    .line 418
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v6, Ljava/lang/Object;

    invoke-direct/range {v6 .. v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 320
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    .line 323
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    .line 350
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mAutoBrightnessZteControlMode:Z

    .line 387
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .line 390
    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mLastScreenAutoBrightnessGamma:F

    .line 409
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 631
    new-instance v6, Lcom/android/server/power/DisplayPowerController$1;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$1;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 929
    new-instance v6, Lcom/android/server/power/DisplayPowerController$2;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$2;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 1437
    new-instance v6, Lcom/android/server/power/DisplayPowerController$3;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$3;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    .line 1448
    new-instance v6, Lcom/android/server/power/DisplayPowerController$4;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$4;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    .line 1459
    new-instance v6, Lcom/android/server/power/DisplayPowerController$5;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$5;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    .line 1598
    new-instance v6, Lcom/android/server/power/DisplayPowerController$7;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$7;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 1616
    new-instance v6, Lcom/android/server/power/DisplayPowerController$8;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$8;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 1632
    new-instance v6, Lcom/android/server/power/DisplayPowerController$9;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$9;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

    .line 1658
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->buttonLightFlag:I

    .line 1659
    new-instance v6, Lcom/android/server/power/DisplayPowerController$10;

    invoke-direct {v6, p0}, Lcom/android/server/power/DisplayPowerController$10;-><init>(Lcom/android/server/power/DisplayPowerController;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->buttonLightHandler:Landroid/os/Handler;

    .line 420
    iput-object p2, p0, Lcom/android/server/power/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 422
    new-instance v6, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {v6, p0, p1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/power/DisplayPowerController;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    .line 423
    iput-object p3, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    .line 424
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

    .line 425
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

    .line 426
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    .line 428
    iput-object p4, p0, Lcom/android/server/power/DisplayPowerController;->mLights:Lcom/android/server/LightsService;

    .line 429
    iput-object p5, p0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    .line 430
    iput-object p6, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 431
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    .line 433
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 435
    .local v3, resources:Landroid/content/res/Resources;
    new-instance v6, Landroid/os/nubia/breathlight/BreathinglightManager;

    invoke-direct {v6}, Landroid/os/nubia/breathlight/BreathinglightManager;-><init>()V

    sput-object v6, Lcom/android/server/power/DisplayPowerController;->breathinglight:Landroid/os/nubia/breathlight/BreathinglightManager;

    .line 437
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mLights:Lcom/android/server/LightsService;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mButtonLight:Lcom/android/server/LightsService$Light;

    .line 439
    const v6, 0x10e0029

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/server/power/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    .line 442
    const v6, 0x10e0026

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 446
    .local v5, screenBrightnessMinimum:I
    const v6, 0x1110018

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 448
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v6, :cond_1

    .line 449
    const v6, 0x107002a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 451
    .local v1, lux:[I
    const v6, 0x107002b

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    .line 455
    .local v4, screenBrightness:[I
    const v6, 0x107002a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mAutoBrightnessLevels:[I

    .line 456
    const v6, 0x107002b

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mLcdBacklightValues:[I

    .line 459
    invoke-static {v1, v4}, Lcom/android/server/power/DisplayPowerController;->createAutoBrightnessSpline([I[I)Landroid/util/Spline;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    .line 460
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    if-nez v6, :cond_6

    .line 461
    const-string v6, "DisplayPowerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in config.xml.  config_autoBrightnessLcdBacklightValues (size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "must be monotic and have exactly one more entry than "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "config_autoBrightnessLevels (size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "which must be strictly increasing.  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Auto-brightness will be disabled."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 474
    :cond_0
    :goto_0
    const v6, 0x10e002a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I

    .line 478
    .end local v1           #lux:[I
    .end local v4           #screenBrightness:[I
    :cond_1
    invoke-static {v5}, Lcom/android/server/power/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    .line 479
    const/16 v6, 0xff

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    .line 481
    const v6, 0x111001b

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamFadesConfig:Z

    .line 485
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 486
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v6, :cond_2

    .line 487
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v6

    const/high16 v7, 0x40a0

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximityThreshold:F

    .line 492
    :cond_2
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v6, :cond_3

    .line 494
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    .line 497
    :cond_3
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v6, :cond_4

    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v6, :cond_4

    .line 498
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

    iget-object v8, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/TwilightService;->registerListener(Lcom/android/server/TwilightService$TwilightListener;Landroid/os/Handler;)V

    .line 500
    :cond_4
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v6, :cond_5

    .line 501
    const-string v6, "power"

    invoke-virtual {p2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 502
    .local v2, pm:Landroid/os/PowerManager;
    const/4 v6, 0x1

    const-string v7, "DisplayPowerController"

    invoke-virtual {v2, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 503
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 505
    .end local v2           #pm:Landroid/os/PowerManager;
    :cond_5
    return-void

    .line 469
    .restart local v1       #lux:[I
    .restart local v4       #screenBrightness:[I
    :cond_6
    const/4 v6, 0x0

    aget v6, v4, v6

    if-ge v6, v5, :cond_0

    .line 470
    const/4 v6, 0x0

    aget v5, v4, v6

    goto :goto_0
.end method

.method private GetAutoBrightnessValue(F)I
    .locals 5
    .parameter "lightValue"

    .prologue
    .line 1279
    const/4 v0, 0x0

    .line 1280
    .local v0, i:I
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "image_enhance"

    const/16 v4, 0x19

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1283
    .local v1, imageEnhanceMode:I
    const/4 v2, -0x1

    sget v3, Lcom/android/server/power/DisplayPowerController;->lcd_auto_brightness_level:I

    if-ne v2, v3, :cond_0

    .line 1285
    const-string v2, "DisplayPowerController"

    const-string v3, "[LIGHT]: [GetAutoBrightnessValue] lcd_auto_brightness_level = -1"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    const-string v2, "persist.sys.brightness.level"

    sget v3, Lcom/android/server/power/DisplayPowerController;->lcd_auto_brightness_level:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mLcdBacklightValues:[I

    invoke-direct {p0, p1, v2}, Lcom/android/server/power/DisplayPowerController;->autoBrightnessValueInit(F[I)I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/power/DisplayPowerController;->getBrightnessLevel(II)I

    move-result v2

    .line 1308
    :goto_0
    return v2

    .line 1295
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mAutoBrightnessLevels:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1297
    sget-object v2, Lcom/android/server/power/DisplayPowerController;->lightArrary:[[I

    sget v3, Lcom/android/server/power/DisplayPowerController;->lcd_auto_brightness_level:I

    aget-object v2, v2, v3

    aget v2, v2, v0

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_2

    .line 1302
    :cond_1
    sput v0, Lcom/android/server/power/DisplayPowerController;->lcd_auto_brightness_level:I

    .line 1303
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LIGHT]: [GetAutoBrightnessValue] lcd_auto_brightness_level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/power/DisplayPowerController;->lcd_auto_brightness_level:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    const-string v2, "persist.sys.brightness.level"

    sget v3, Lcom/android/server/power/DisplayPowerController;->lcd_auto_brightness_level:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mLcdBacklightValues:[I

    sget v3, Lcom/android/server/power/DisplayPowerController;->lcd_auto_brightness_level:I

    aget v2, v2, v3

    invoke-direct {p0, v2, v1}, Lcom/android/server/power/DisplayPowerController;->getBrightnessLevel(II)I

    move-result v2

    goto :goto_0

    .line 1295
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$Callbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbacks:Lcom/android/server/power/DisplayPowerController$Callbacks;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/DisplayPowerController;JF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->handleLightSensorEvent(JF)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/server/power/DisplayPowerController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightChanged:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/power/DisplayPowerController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->buttonLightFlag:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/LightsService$Light;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mButtonLight:Lcom/android/server/LightsService$Light;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/power/DisplayPowerController;Ljava/io/PrintWriter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->updatePowerState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->debounceProximitySensor()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->debounceLightSensor()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/power/DisplayPowerController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/power/DisplayPowerController;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximityThreshold:F

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/power/DisplayPowerController;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->handleProximitySensorEvent(JZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/power/DisplayPowerController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    return v0
.end method

.method private animateScreenBrightness(II)V
    .locals 1
    .parameter "target"
    .parameter "rate"

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/RampAnimator;->animateTo(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0, p1}, Lcom/android/server/power/Notifier;->onScreenBrightness(I)V

    .line 922
    :cond_0
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->mShutdownAnimationStart:Z

    if-eqz v0, :cond_1

    .line 927
    :goto_0
    return-void

    .line 925
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->turnButtonKeyLightOn()V

    .line 926
    sget-object v0, Lcom/android/server/power/DisplayPowerController;->breathinglight:Landroid/os/nubia/breathlight/BreathinglightManager;

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/nubia/breathlight/BreathinglightManager;->updateBreathLightStatus(I)V

    goto :goto_0
.end method

.method private applyLightSensorMeasurement(JF)V
    .locals 6
    .parameter "time"
    .parameter "lux"

    .prologue
    .line 1100
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    .line 1101
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1102
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    .line 1103
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    .line 1113
    :goto_0
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    .line 1114
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    .line 1115
    return-void

    .line 1105
    :cond_0
    iget-wide v2, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    sub-long v0, p1, v2

    .line 1106
    .local v0, timeDelta:J
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    sub-float v3, p3, v3

    long-to-float v4, v0

    mul-float/2addr v3, v4

    const-wide/16 v4, 0x3e8

    add-long/2addr v4, v0

    long-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    .line 1108
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    sub-float v3, p3, v3

    long-to-float v4, v0

    mul-float/2addr v3, v4

    const-wide/16 v4, 0x1388

    add-long/2addr v4, v0

    long-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    goto :goto_0
.end method

.method private autoBrightnessValueInit(F[I)I
    .locals 2
    .parameter "sensorValue"
    .parameter "values"

    .prologue
    .line 1264
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mAutoBrightnessLevels:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1266
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mAutoBrightnessLevels:[I

    aget v1, v1, v0

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 1272
    :cond_0
    sput v0, Lcom/android/server/power/DisplayPowerController;->lcd_auto_brightness_level:I

    .line 1274
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLcdBacklightValues:[I

    aget v1, v1, v0

    return v1

    .line 1264
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private blockScreenOn()V
    .locals 2

    .prologue
    .line 862
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    if-nez v0, :cond_0

    .line 863
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    .line 864
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 865
    const-string v0, "DisplayPowerController"

    const-string v1, "Blocked screen on."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    .line 869
    :cond_0
    return-void
.end method

.method private static clamp(III)I
    .locals 0
    .parameter "value"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 905
    if-gt p0, p1, :cond_0

    .line 911
    .end local p1
    :goto_0
    return p1

    .line 908
    .restart local p1
    :cond_0
    if-lt p0, p2, :cond_1

    move p1, p2

    .line 909
    goto :goto_0

    :cond_1
    move p1, p0

    .line 911
    goto :goto_0
.end method

.method private static clampAbsoluteBrightness(I)I
    .locals 2
    .parameter "value"

    .prologue
    .line 901
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->clamp(III)I

    move-result v0

    return v0
.end method

.method private clampScreenBrightness(I)I
    .locals 2
    .parameter "value"

    .prologue
    .line 897
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Lcom/android/server/power/DisplayPowerController;->clamp(III)I

    move-result v0

    return v0
.end method

.method private static createAutoBrightnessSpline([I[I)Landroid/util/Spline;
    .locals 13
    .parameter "lux"
    .parameter "brightness"

    .prologue
    const/high16 v12, 0x3fa0

    .line 509
    :try_start_0
    array-length v2, p1

    .line 510
    .local v2, n:I
    new-array v5, v2, [F

    .line 511
    .local v5, x:[F
    new-array v6, v2, [F

    .line 512
    .local v6, y:[F
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, p1, v8

    invoke-static {v8}, Lcom/android/server/power/DisplayPowerController;->normalizeAbsoluteBrightness(I)F

    move-result v8

    aput v8, v6, v7

    .line 513
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 514
    add-int/lit8 v7, v1, -0x1

    aget v7, p0, v7

    int-to-float v7, v7

    aput v7, v5, v1

    .line 515
    aget v7, p1, v1

    invoke-static {v7}, Lcom/android/server/power/DisplayPowerController;->normalizeAbsoluteBrightness(I)F

    move-result v7

    aput v7, v6, v1

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 518
    :cond_0
    invoke-static {v5, v6}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object v3

    .line 519
    .local v3, spline:Landroid/util/Spline;
    sget-boolean v7, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 520
    const-string v7, "DisplayPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Auto-brightness spline: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/high16 v4, 0x3f80

    .local v4, v:F
    :goto_1
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    aget v7, p0, v7

    int-to-float v7, v7

    mul-float/2addr v7, v12

    cmpg-float v7, v4, v7

    if-gez v7, :cond_1

    .line 522
    const-string v7, "DisplayPowerController"

    const-string v8, "  %7.1f: %7.1f"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    mul-float/2addr v4, v12

    goto :goto_1

    .line 526
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v3           #spline:Landroid/util/Spline;
    .end local v4           #v:F
    .end local v5           #x:[F
    .end local v6           #y:[F
    :catch_0
    move-exception v0

    .line 527
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v7, "DisplayPowerController"

    const-string v8, "Could not create auto-brightness spline."

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 528
    const/4 v3, 0x0

    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :cond_1
    return-object v3
.end method

.method private debounceLightSensor()V
    .locals 6

    .prologue
    .line 1231
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v2, :cond_2

    .line 1232
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1233
    .local v0, time:J
    iget-wide v2, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 1234
    sget-boolean v2, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1235
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "debounceLightSensor: Synthesizing light sensor measurement after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :cond_0
    iget v2, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/power/DisplayPowerController;->applyLightSensorMeasurement(JF)V

    .line 1240
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/power/DisplayPowerController;->updateAmbientLux(J)V

    .line 1242
    .end local v0           #time:J
    :cond_2
    return-void
.end method

.method private debounceProximitySensor()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 1045
    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    if-eq v3, v5, :cond_0

    .line 1046
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1047
    .local v1, now:J
    iget-wide v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    cmp-long v3, v3, v1

    if-gtz v3, :cond_1

    .line 1048
    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    iput v3, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    .line 1050
    iput v5, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    .line 1052
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerState()V

    .line 1059
    .end local v1           #now:J
    :cond_0
    :goto_0
    return-void

    .line 1054
    .restart local v1       #now:J
    :cond_1
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1055
    .local v0, msg:Landroid/os/Message;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1056
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .locals 3
    .parameter "pw"

    .prologue
    .line 1497
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1498
    const-string v0, "Display Controller Thread State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWaitingForNegativeProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximityThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximityThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximityDebounceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBecauseOfProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnableTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnableTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLuxValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLuxTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentLightSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentShortTermAverageLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentLongTermAverageLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDebounceLuxDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDebounceLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUsingScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastScreenAutoBrightnessGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mLastScreenAutoBrightnessGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTwilight.getCurrentState()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    invoke-virtual {v1}, Lcom/android/server/TwilightService;->getCurrentState()Lcom/android/server/TwilightService$TwilightState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1530
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mElectronBeamOnAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1534
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 1535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mElectronBeamOffAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1539
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    if-eqz v0, :cond_2

    .line 1540
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0, p1}, Lcom/android/server/power/DisplayPowerState;->dump(Ljava/io/PrintWriter;)V

    .line 1542
    :cond_2
    return-void
.end method

.method private getBrightnessLevel(II)I
    .locals 2
    .parameter "level"
    .parameter "imageEnhanceMode"

    .prologue
    const/16 v0, 0x19

    .line 1246
    const/16 v1, 0x18

    if-ne v1, p2, :cond_2

    .line 1247
    mul-int/lit8 v1, p1, 0x3

    div-int/lit8 v1, v1, 0x4

    if-ge v1, v0, :cond_1

    .line 1255
    :cond_0
    :goto_0
    return v0

    .line 1247
    :cond_1
    mul-int/lit8 v0, p1, 0x3

    div-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 1249
    :cond_2
    if-ne v0, p2, :cond_3

    .line 1250
    mul-int/lit8 v1, p1, 0x3

    div-int/lit8 v1, v1, 0x4

    if-lt v1, v0, :cond_0

    mul-int/lit8 v0, p1, 0x3

    div-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 1252
    :cond_3
    const/16 v1, 0x1a

    if-ne v1, p2, :cond_4

    .line 1253
    div-int/lit8 v1, p1, 0x2

    if-lt v1, v0, :cond_0

    div-int/lit8 v0, p1, 0x2

    goto :goto_0

    :cond_4
    move v0, p1

    .line 1255
    goto :goto_0
.end method

.method private static getTwilightGamma(JJJ)F
    .locals 9
    .parameter "now"
    .parameter "lastSunset"
    .parameter "nextSunrise"

    .prologue
    const-wide/32 v7, 0x6ddd00

    const-wide/16 v5, 0x0

    const v4, 0x4adbba00

    const/high16 v0, 0x3fc0

    const/high16 v1, 0x3f80

    .line 1411
    cmp-long v2, p2, v5

    if-ltz v2, :cond_0

    cmp-long v2, p4, v5

    if-ltz v2, :cond_0

    cmp-long v2, p0, p2

    if-ltz v2, :cond_0

    cmp-long v2, p0, p4

    if-lez v2, :cond_2

    :cond_0
    move v0, v1

    .line 1426
    :cond_1
    :goto_0
    return v0

    .line 1416
    :cond_2
    add-long v2, p2, v7

    cmp-long v2, p0, v2

    if-gez v2, :cond_3

    .line 1417
    sub-long v2, p0, p2

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Lcom/android/server/power/DisplayPowerController;->lerp(FFF)F

    move-result v0

    goto :goto_0

    .line 1421
    :cond_3
    sub-long v2, p4, v7

    cmp-long v2, p0, v2

    if-lez v2, :cond_1

    .line 1422
    sub-long v2, p4, p0

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Lcom/android/server/power/DisplayPowerController;->lerp(FFF)F

    move-result v0

    goto :goto_0
.end method

.method private handleLightSensorEvent(JF)V
    .locals 2
    .parameter "time"
    .parameter "lux"

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1091
    iput p3, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxZteControlMode:F

    .line 1094
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/DisplayPowerController;->applyLightSensorMeasurement(JF)V

    .line 1095
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/DisplayPowerController;->updateAmbientLux(J)V

    .line 1096
    return-void
.end method

.method private handleProximitySensorEvent(JZ)V
    .locals 5
    .parameter "time"
    .parameter "positive"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1012
    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[proximity] positive is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    .line 1042
    :cond_0
    :goto_0
    return-void

    .line 1016
    :cond_1
    iget v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    if-ne v0, v3, :cond_2

    if-nez p3, :cond_0

    .line 1022
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1023
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1024
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1026
    :cond_3
    if-eqz p3, :cond_4

    .line 1027
    iput v3, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    .line 1028
    const-wide/16 v0, 0xfa

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 1030
    invoke-direct {p0, v4}, Lcom/android/server/power/DisplayPowerController;->kernelWakelockOps(Z)V

    .line 1031
    invoke-direct {p0, v3}, Lcom/android/server/power/DisplayPowerController;->phoneIsSleepOps(Z)V

    .line 1041
    :goto_1
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->debounceProximitySensor()V

    goto :goto_0

    .line 1033
    :cond_4
    iput v4, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    .line 1034
    const-wide/16 v0, 0x0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 1036
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1038
    invoke-direct {p0, v3}, Lcom/android/server/power/DisplayPowerController;->kernelWakelockOps(Z)V

    .line 1039
    invoke-direct {p0, v4}, Lcom/android/server/power/DisplayPowerController;->phoneIsSleepOps(Z)V

    goto :goto_1
.end method

.method private initialize()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 613
    new-instance v0, Lcom/android/server/power/DisplayPowerState;

    new-instance v1, Lcom/android/server/power/ElectronBeam;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {v1, v2}, Lcom/android/server/power/ElectronBeam;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController;->mLights:Lcom/android/server/LightsService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/power/DisplayPowerState;-><init>(Lcom/android/server/power/ElectronBeam;Lcom/android/server/power/DisplayBlanker;Lcom/android/server/LightsService$Light;)V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    .line 617
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    sget-object v1, Lcom/android/server/power/DisplayPowerState;->ELECTRON_BEAM_LEVEL:Landroid/util/FloatProperty;

    new-array v2, v5, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    .line 619
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 620
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 622
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    sget-object v1, Lcom/android/server/power/DisplayPowerState;->ELECTRON_BEAM_LEVEL:Landroid/util/FloatProperty;

    new-array v2, v5, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    .line 624
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 625
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 627
    new-instance v0, Lcom/android/server/power/RampAnimator;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    sget-object v2, Lcom/android/server/power/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/IntProperty;)V

    iput-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/power/RampAnimator;

    .line 629
    return-void

    .line 617
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 622
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private kernelWakelockOps(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 960
    return-void
.end method

.method private static lerp(FFF)F
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "alpha"

    .prologue
    .line 1430
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private static normalizeAbsoluteBrightness(I)F
    .locals 2
    .parameter "value"

    .prologue
    .line 915
    invoke-static {p0}, Lcom/android/server/power/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    return v0
.end method

.method private phoneIsSleepOps(Z)V
    .locals 0
    .parameter "sleep"

    .prologue
    .line 986
    return-void
.end method

.method private static proximityToString(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 1545
    packed-switch p0, :pswitch_data_0

    .line 1553
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1547
    :pswitch_0
    const-string v0, "Unknown"

    goto :goto_0

    .line 1549
    :pswitch_1
    const-string v0, "Negative"

    goto :goto_0

    .line 1551
    :pswitch_2
    const-string v0, "Positive"

    goto :goto_0

    .line 1545
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendOnProximityNegative()V
    .locals 2

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1457
    return-void
.end method

.method private sendOnProximityPositive()V
    .locals 2

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1446
    return-void
.end method

.method private sendOnStateChanged()V
    .locals 2

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1435
    return-void
.end method

.method private sendUpdatePowerState()V
    .locals 2

    .prologue
    .line 595
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 596
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 597
    monitor-exit v1

    .line 598
    return-void

    .line 597
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendUpdatePowerStateLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 601
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    if-nez v1, :cond_0

    .line 602
    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 603
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 604
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 605
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 607
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setLightSensorEnabled(ZZ)V
    .locals 6
    .parameter "enable"
    .parameter "updateAutoBrightness"

    .prologue
    const/4 v5, 0x0

    .line 1062
    if-eqz p1, :cond_2

    .line 1063
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-nez v0, :cond_0

    .line 1064
    const/4 p2, 0x1

    .line 1065
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    .line 1066
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnableTime:J

    .line 1067
    const/4 v0, -0x1

    sput v0, Lcom/android/server/power/DisplayPowerController;->lcd_auto_brightness_level:I

    .line 1068
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    const v3, 0xf4240

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1080
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 1081
    invoke-direct {p0, v5}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    .line 1083
    :cond_1
    return-void

    .line 1072
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v0, :cond_0

    .line 1073
    iput-boolean v5, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    .line 1074
    iput-boolean v5, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    .line 1075
    iput v5, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLightSamples:I

    .line 1076
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1077
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method private setProximitySensorEnabled(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 990
    if-eqz p1, :cond_1

    .line 991
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    if-nez v0, :cond_0

    .line 992
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 993
    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingProximity:I

    .line 994
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1009
    :cond_0
    :goto_0
    return-void

    .line 998
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_0

    .line 999
    iput-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 1000
    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    .line 1001
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1002
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1005
    invoke-direct {p0, v2}, Lcom/android/server/power/DisplayPowerController;->kernelWakelockOps(Z)V

    .line 1006
    invoke-direct {p0, v2}, Lcom/android/server/power/DisplayPowerController;->phoneIsSleepOps(Z)V

    goto :goto_0
.end method

.method private setScreenOn(Z)V
    .locals 3
    .parameter "on"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 882
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/power/DisplayPowerState;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    if-ne v0, p1, :cond_0

    .line 883
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v0, p1}, Lcom/android/server/power/DisplayPowerState;->setScreenOn(Z)V

    .line 884
    if-eqz p1, :cond_2

    .line 885
    sget-object v0, Lcom/android/server/power/DisplayPowerController;->breathinglight:Landroid/os/nubia/breathlight/BreathinglightManager;

    invoke-static {v1}, Landroid/os/nubia/breathlight/BreathinglightManager;->updateBreathLightStatus(I)V

    .line 886
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->turnButtonKeyLightOn()V

    .line 887
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onScreenOn()V

    .line 894
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 882
    goto :goto_0

    .line 889
    :cond_2
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->turnButtonKeyLightOff()V

    .line 890
    sget-object v0, Lcom/android/server/power/DisplayPowerController;->breathinglight:Landroid/os/nubia/breathlight/BreathinglightManager;

    invoke-static {v2}, Landroid/os/nubia/breathlight/BreathinglightManager;->updateBreathLightStatus(I)V

    .line 891
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0}, Lcom/android/server/power/Notifier;->onScreenOff()V

    goto :goto_1
.end method

.method private turnButtonKeyLightOff()V
    .locals 2

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mButtonLight:Lcom/android/server/LightsService$Light;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 1657
    return-void
.end method

.method private turnButtonKeyLightOn()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1643
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1, v3}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 1644
    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->buttonLightFlag:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->buttonLightFlag:I

    .line 1646
    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->buttonLightFlag:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    .line 1647
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/power/DisplayPowerController;->buttonLightFlag:I

    .line 1649
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->buttonLightHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1650
    .local v0, message:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 1651
    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->buttonLightFlag:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1652
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->buttonLightHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1653
    return-void
.end method

.method private unblockScreenOn()V
    .locals 6

    .prologue
    .line 872
    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    if-eqz v0, :cond_0

    .line 873
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    .line 874
    sget-boolean v0, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 875
    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unblocked screen on after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :cond_0
    return-void
.end method

.method private updateAmbientLux(J)V
    .locals 13
    .parameter "time"

    .prologue
    const-wide/16 v11, 0x7d0

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 1120
    iget-boolean v4, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnableTime:J

    sub-long v4, p1, v4

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 1122
    :cond_0
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iput v4, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    .line 1123
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    .line 1124
    iput v10, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1125
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1126
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 1127
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Initializing: , mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :cond_1
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    .line 1228
    :cond_2
    :goto_0
    return-void

    .line 1137
    :cond_3
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    const v5, 0x3f8ccccd

    mul-float v0, v4, v5

    .line 1138
    .local v0, brighteningLuxThreshold:F
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    cmpl-float v4, v4, v0

    if-lez v4, :cond_7

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    cmpl-float v4, v4, v0

    if-lez v4, :cond_7

    .line 1140
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-gtz v4, :cond_4

    .line 1141
    iput v8, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1142
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1143
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 1144
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Possibly brightened, waiting for 2000 ms: brighteningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :cond_4
    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    add-long v2, v4, v11

    .line 1153
    .local v2, debounceTime:J
    cmp-long v4, p1, v2

    if-ltz v4, :cond_6

    .line 1154
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iput v4, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    .line 1155
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 1156
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Brightened: brighteningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    :cond_5
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    goto/16 :goto_0

    .line 1164
    :cond_6
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v4, v9, v2, v3}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 1170
    .end local v2           #debounceTime:J
    :cond_7
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    const v5, 0x3f4ccccd

    mul-float v1, v4, v5

    .line 1171
    .local v1, darkeningLuxThreshold:F
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_b

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_b

    .line 1173
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-ltz v4, :cond_8

    .line 1174
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1175
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1176
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_8

    .line 1177
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Possibly darkened, waiting for 3000 ms: darkeningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    :cond_8
    iget-wide v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    const-wide/16 v6, 0xbb8

    add-long v2, v4, v6

    .line 1186
    .restart local v2       #debounceTime:J
    cmp-long v4, p1, v2

    if-ltz v4, :cond_a

    .line 1189
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    iget v5, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    .line 1190
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_9

    .line 1191
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Darkened: darkeningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    :cond_9
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V

    goto/16 :goto_0

    .line 1199
    :cond_a
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v4, v9, v2, v3}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 1205
    .end local v2           #debounceTime:J
    :cond_b
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    if-eqz v4, :cond_c

    .line 1206
    iput v10, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxDirection:I

    .line 1207
    iput-wide p1, p0, Lcom/android/server/power/DisplayPowerController;->mDebounceLuxTime:J

    .line 1208
    sget-boolean v4, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v4, :cond_c

    .line 1209
    const-string v4, "DisplayPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Canceled debounce: brighteningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", darkeningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :cond_c
    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    cmpl-float v4, v4, v0

    if-gtz v4, :cond_d

    iget v4, p0, Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_2

    .line 1225
    :cond_d
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    add-long v5, p1, v11

    invoke-virtual {v4, v9, v5, v6}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0
.end method

.method private updateAutoBrightness(Z)V
    .locals 17
    .parameter "sendUpdate"

    .prologue
    .line 1315
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxValid:Z

    if-nez v3, :cond_1

    .line 1407
    :cond_0
    :goto_0
    return-void

    .line 1319
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v16

    .line 1322
    .local v16, value:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/DisplayPowerController;->mAmbientLuxZteControlMode:F

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/power/DisplayPowerController;->GetAutoBrightnessValue(F)I

    move-result v12

    .line 1324
    .local v12, lcdValueIeZteControltMode:I
    const/high16 v9, 0x3f80

    .line 1326
    .local v9, gamma:F
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v3, v3, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    .line 1328
    const/high16 v3, 0x4040

    const/high16 v4, 0x3f80

    const/high16 v5, -0x4080

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    neg-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Landroid/util/FloatMath;->pow(FF)F

    move-result v7

    .line 1331
    .local v7, adjGamma:F
    mul-float/2addr v9, v7

    .line 1332
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 1333
    const-string v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAutoBrightness: adjGamma="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    .end local v7           #adjGamma:F
    :cond_2
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v3, :cond_3

    .line 1338
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/DisplayPowerController;->mTwilight:Lcom/android/server/TwilightService;

    invoke-virtual {v3}, Lcom/android/server/TwilightService;->getCurrentState()Lcom/android/server/TwilightService$TwilightState;

    move-result-object v15

    .line 1339
    .local v15, state:Lcom/android/server/TwilightService$TwilightState;
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Lcom/android/server/TwilightService$TwilightState;->isNight()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1341
    .local v1, now:J
    invoke-virtual {v15}, Lcom/android/server/TwilightService$TwilightState;->getYesterdaySunset()J

    move-result-wide v3

    invoke-virtual {v15}, Lcom/android/server/TwilightService$TwilightState;->getTodaySunrise()J

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Lcom/android/server/power/DisplayPowerController;->getTwilightGamma(JJJ)F

    move-result v8

    .line 1343
    .local v8, earlyGamma:F
    invoke-virtual {v15}, Lcom/android/server/TwilightService$TwilightState;->getTodaySunset()J

    move-result-wide v3

    invoke-virtual {v15}, Lcom/android/server/TwilightService$TwilightState;->getTomorrowSunrise()J

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Lcom/android/server/power/DisplayPowerController;->getTwilightGamma(JJJ)F

    move-result v11

    .line 1345
    .local v11, lateGamma:F
    mul-float v3, v8, v11

    mul-float/2addr v9, v3

    .line 1346
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 1347
    const-string v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAutoBrightness: earlyGamma="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lateGamma="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    .end local v1           #now:J
    .end local v8           #earlyGamma:F
    .end local v11           #lateGamma:F
    .end local v15           #state:Lcom/android/server/TwilightService$TwilightState;
    :cond_3
    const/high16 v3, 0x3f80

    cmpl-float v3, v9, v3

    if-eqz v3, :cond_4

    .line 1354
    move/from16 v10, v16

    .line 1355
    .local v10, in:F
    move/from16 v0, v16

    invoke-static {v0, v9}, Landroid/util/FloatMath;->pow(FF)F

    move-result v16

    .line 1356
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 1357
    const-string v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAutoBrightness: gamma="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", in="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", out="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    .end local v10           #in:F
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/power/DisplayPowerController;->mAutoBrightnessZteControlMode:Z

    if-eqz v3, :cond_6

    .line 1366
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/power/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v14

    .line 1367
    .local v14, newScreenAutoBrightnessZteControlMode:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    if-eq v3, v14, :cond_0

    .line 1369
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 1371
    const-string v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAutoBrightness: mScreenAutoBrightness = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newScreenAutoBrightnessZteControlMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    :cond_5
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .line 1377
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/power/DisplayPowerController;->mLastScreenAutoBrightnessGamma:F

    .line 1379
    if-eqz p1, :cond_0

    .line 1381
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerState()V

    goto/16 :goto_0

    .line 1387
    .end local v14           #newScreenAutoBrightnessZteControlMode:I
    :cond_6
    const/high16 v3, 0x437f

    mul-float v3, v3, v16

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/power/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v13

    .line 1389
    .local v13, newScreenAutoBrightnessAndroidControlMode:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    if-eq v3, v13, :cond_0

    .line 1391
    sget-boolean v3, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v3, :cond_7

    .line 1393
    const-string v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAutoBrightness: mScreenAutoBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newScreenAutoBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    :cond_7
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .line 1399
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/power/DisplayPowerController;->mLastScreenAutoBrightnessGamma:F

    .line 1401
    if-eqz p1, :cond_0

    .line 1403
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerState()V

    goto/16 :goto_0
.end method

.method private updatePowerState()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 650
    const/4 v0, 0x0

    .line 651
    .local v0, mustInitialize:Z
    iget-boolean v4, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightChanged:Z

    .line 652
    .local v4, updateAutoBrightness:Z
    const/4 v5, 0x0

    .line 653
    .local v5, wasDim:Z
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mTwilightChanged:Z

    .line 655
    iget-object v9, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 656
    const/4 v6, 0x0

    :try_start_0
    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 657
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    if-nez v6, :cond_1

    .line 658
    monitor-exit v9

    .line 859
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    if-nez v6, :cond_b

    .line 662
    new-instance v6, Lcom/android/server/power/DisplayPowerRequest;

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-direct {v6, v10}, Lcom/android/server/power/DisplayPowerRequest;-><init>(Lcom/android/server/power/DisplayPowerRequest;)V

    iput-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    .line 663
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 664
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 665
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 666
    const/4 v0, 0x1

    .line 680
    :cond_2
    :goto_1
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    if-nez v6, :cond_e

    move v1, v7

    .line 681
    .local v1, mustNotify:Z
    :goto_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    if-eqz v0, :cond_3

    .line 685
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->initialize()V

    .line 689
    :cond_3
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v6, :cond_12

    .line 690
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v6, v6, Lcom/android/server/power/DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-eqz v6, :cond_f

    .line 692
    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 693
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v6, :cond_4

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-ne v6, v7, :cond_4

    .line 695
    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 696
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityPositive()V

    .line 697
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    .line 726
    :cond_4
    :goto_3
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-ne v6, v12, :cond_5

    .line 727
    const-string v6, "DisplayPowerController"

    const-string v9, "mScreenOffBecauseOfProximity && mProximity == PROXIMITY_UNKNOWN"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 729
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityNegative()V

    .line 731
    :cond_5
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-nez v6, :cond_6

    .line 732
    const-string v6, "DisplayPowerController"

    const-string v9, "mProximity = PROXIMITY_NEGATIVE"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iput v12, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    .line 734
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 735
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityNegative()V

    .line 743
    :cond_6
    :goto_4
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v6, :cond_7

    .line 744
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v6, v6, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v6}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v6

    if-eqz v6, :cond_13

    move v6, v7

    :goto_5
    invoke-direct {p0, v6, v4}, Lcom/android/server/power/DisplayPowerController;->setLightSensorEnabled(ZZ)V

    .line 749
    :cond_7
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v6}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 752
    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    if-ltz v6, :cond_14

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z

    if-eqz v6, :cond_14

    .line 754
    iget v3, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightness:I

    .line 755
    .local v3, target:I
    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    .line 756
    .local v2, slow:Z
    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    .line 766
    :goto_6
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-ne v6, v7, :cond_15

    .line 768
    add-int/lit8 v6, v3, -0xa

    iget v9, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 770
    const/4 v2, 0x0

    .line 775
    :cond_8
    :goto_7
    invoke-direct {p0, v3}, Lcom/android/server/power/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v9

    if-eqz v2, :cond_16

    const/16 v6, 0x3c

    :goto_8
    invoke-direct {p0, v9, v6}, Lcom/android/server/power/DisplayPowerController;->animateScreenBrightness(II)V

    .line 783
    .end local v2           #slow:Z
    .end local v3           #target:I
    :goto_9
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v6, :cond_9

    .line 784
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-static {v6}, Lcom/android/server/power/DisplayPowerController;->wantScreenOn(I)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 789
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v6

    if-nez v6, :cond_9

    .line 793
    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    .line 795
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v6, v6, Lcom/android/server/power/DisplayPowerRequest;->blockScreenOn:Z

    if-eqz v6, :cond_18

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v6}, Lcom/android/server/power/DisplayPowerState;->getElectronBeamLevel()F

    move-result v6

    cmpl-float v6, v6, v11

    if-nez v6, :cond_18

    .line 797
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->blockScreenOn()V

    .line 843
    :cond_9
    :goto_a
    if-eqz v1, :cond_0

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOnWasBlocked:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Lcom/android/server/power/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 848
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 849
    :try_start_1
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v6, :cond_a

    .line 850
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 852
    sget-boolean v6, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v6, :cond_a

    .line 853
    const-string v6, "DisplayPowerController"

    const-string v8, "Display ready!"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_a
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 857
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnStateChanged()V

    goto/16 :goto_0

    .line 667
    .end local v1           #mustNotify:Z
    :cond_b
    :try_start_2
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-eqz v6, :cond_2

    .line 668
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    iget v10, v10, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_c

    .line 670
    const/4 v4, 0x1

    .line 672
    :cond_c
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-ne v6, v7, :cond_d

    move v5, v7

    .line 673
    :goto_b
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v6, v10}, Lcom/android/server/power/DisplayPowerRequest;->copyFrom(Lcom/android/server/power/DisplayPowerRequest;)V

    .line 674
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    iget-boolean v10, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    or-int/2addr v6, v10

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 675
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 676
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 677
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    goto/16 :goto_1

    .line 681
    :catchall_0
    move-exception v6

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    :cond_d
    move v5, v8

    .line 672
    goto :goto_b

    :cond_e
    move v1, v8

    .line 680
    goto/16 :goto_2

    .line 699
    .restart local v1       #mustNotify:Z
    :cond_f
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    if-eqz v6, :cond_10

    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v6, :cond_10

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-ne v6, v7, :cond_10

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-eqz v6, :cond_10

    .line 703
    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    goto/16 :goto_3

    .line 704
    :cond_10
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget-boolean v6, v6, Lcom/android/server/power/DisplayPowerRequest;->useProximitySensorInAsleep:Z

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v6, v6, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-nez v6, :cond_11

    .line 707
    invoke-direct {p0, v7}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 708
    iget-boolean v6, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v6, :cond_4

    iget v6, p0, Lcom/android/server/power/DisplayPowerController;->mProximity:I

    if-ne v6, v7, :cond_4

    .line 710
    iput-boolean v7, p0, Lcom/android/server/power/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 711
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendOnProximityPositive()V

    .line 712
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    goto/16 :goto_3

    .line 715
    :cond_11
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 716
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_3

    .line 739
    :cond_12
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_4

    :cond_13
    move v6, v8

    .line 744
    goto/16 :goto_5

    .line 762
    :cond_14
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;

    iget v3, v6, Lcom/android/server/power/DisplayPowerRequest;->screenBrightness:I

    .line 763
    .restart local v3       #target:I
    const/4 v2, 0x0

    .line 764
    .restart local v2       #slow:Z
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    goto/16 :goto_6

    .line 771
    :cond_15
    if-eqz v5, :cond_8

    .line 773
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 775
    :cond_16
    const/16 v6, 0xc8

    goto/16 :goto_8

    .line 779
    .end local v2           #slow:Z
    .end local v3           #target:I
    :cond_17
    iput-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mUsingScreenAutoBrightness:Z

    goto/16 :goto_9

    .line 799
    :cond_18
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->unblockScreenOn()V

    .line 814
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    const/high16 v7, 0x3f80

    invoke-virtual {v6, v7}, Lcom/android/server/power/DisplayPowerState;->setElectronBeamLevel(F)V

    .line 815
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v6}, Lcom/android/server/power/DisplayPowerState;->dismissElectronBeam()V

    goto/16 :goto_a

    .line 822
    :cond_19
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v6

    if-nez v6, :cond_9

    .line 823
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v6

    if-nez v6, :cond_9

    .line 824
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v6}, Lcom/android/server/power/DisplayPowerState;->getElectronBeamLevel()F

    move-result v6

    cmpl-float v6, v6, v11

    if-nez v6, :cond_1a

    .line 825
    invoke-direct {p0, v8}, Lcom/android/server/power/DisplayPowerController;->setScreenOn(Z)V

    goto/16 :goto_a

    .line 826
    :cond_1a
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    iget-boolean v8, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamFadesConfig:Z

    if-eqz v8, :cond_1b

    const/4 v7, 0x2

    :cond_1b
    invoke-virtual {v6, v7}, Lcom/android/server/power/DisplayPowerState;->prepareElectronBeam(I)Z

    move-result v6

    if-eqz v6, :cond_1c

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;

    invoke-virtual {v6}, Lcom/android/server/power/DisplayPowerState;->isScreenOn()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 831
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_a

    .line 833
    :cond_1c
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController;->mElectronBeamOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->end()V

    goto/16 :goto_a

    .line 856
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6
.end method

.method private static wantScreenOn(I)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 1558
    packed-switch p0, :pswitch_data_0

    .line 1563
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1561
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1558
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .parameter "pw"

    .prologue
    .line 1467
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1468
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1469
    const-string v0, "Display Controller Locked State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayReadyLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestChangedLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingWaitForNegativeProximityLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingUpdatePowerStateLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/power/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1476
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1478
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1479
    const-string v0, "Display Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDimConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseSoftwareAutoBrightnessConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorWarmUpTimeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1488
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/power/DisplayPowerController$6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/DisplayPowerController$6;-><init>(Lcom/android/server/power/DisplayPowerController;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 1494
    return-void

    .line 1476
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isProximitySensorAvailable()Z
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestPowerState(Lcom/android/server/power/DisplayPowerRequest;Z)Z
    .locals 4
    .parameter "request"
    .parameter "waitForNegativeProximity"

    .prologue
    .line 555
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 556
    const-string v1, "DisplayPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestPowerState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", waitForNegativeProximity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 561
    const/4 v0, 0x0

    .line 563
    .local v0, changed:Z
    if-eqz p2, :cond_1

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    if-nez v1, :cond_1

    .line 565
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 566
    const/4 v0, 0x1

    .line 569
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    if-nez v1, :cond_6

    .line 570
    new-instance v1, Lcom/android/server/power/DisplayPowerRequest;

    invoke-direct {v1, p1}, Lcom/android/server/power/DisplayPowerRequest;-><init>(Lcom/android/server/power/DisplayPowerRequest;)V

    iput-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    .line 571
    const/4 v0, 0x1

    .line 577
    :cond_2
    :goto_0
    sget-boolean v1, Lcom/android/server/power/DisplayPowerController;->activityEvent:Z

    if-eqz v1, :cond_3

    .line 578
    const/4 v0, 0x1

    .line 581
    :cond_3
    if-eqz v0, :cond_4

    .line 582
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 585
    :cond_4
    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v1, :cond_5

    .line 586
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 587
    invoke-direct {p0}, Lcom/android/server/power/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 589
    :cond_5
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/power/DisplayPowerController;->activityEvent:Z

    .line 590
    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerController;->mDisplayReadyLocked:Z

    monitor-exit v2

    return v1

    .line 572
    :cond_6
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v1, p1}, Lcom/android/server/power/DisplayPowerRequest;->equals(Lcom/android/server/power/DisplayPowerRequest;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 573
    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController;->mPendingRequestLocked:Lcom/android/server/power/DisplayPowerRequest;

    invoke-virtual {v1, p1}, Lcom/android/server/power/DisplayPowerRequest;->copyFrom(Lcom/android/server/power/DisplayPowerRequest;)V

    .line 574
    const/4 v0, 0x1

    goto :goto_0

    .line 591
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
