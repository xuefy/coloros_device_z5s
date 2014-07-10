.class public Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;
.super Landroid/widget/FrameLayout;
.source "KeyguardSelectorView2.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$FrameUpdateRunnable;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$TileInfo;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$BatteryRunnable;
    }
.end annotation


# static fields
.field private static final ASSIST_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.systemui.action_assist_icon"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final FINISH_SMS_ANIM:I = 0x65

.field private static final MSG_START_BATTERY_ANIM:I = 0x66

.field private static final MSG_STOP_BATTERY_ANIM:I = 0x68

.field private static final MSG_UPDATE_BATTERY_ANIM:I = 0x67

.field private static final TAG:Ljava/lang/String; = "KeyguardSelectorView2"

.field public static mAnimationLayers:[Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;

.field private static mImgLockFire:[Landroid/graphics/drawable/Drawable;

.field private static mImgParticles:[Landroid/graphics/drawable/BitmapDrawable;


# instance fields
.field bDismissed:Z

.field private batterydrawId:[I

.field handler:Landroid/os/Handler;

.field private isrunning:Z

.field private final mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

.field private mAniParticles:Landroid/graphics/drawable/AnimationDrawable;

.field private mAnim:Landroid/animation/ObjectAnimator;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBatteryDrawIndex:I

.field private mBatteryHandler:Landroid/os/Handler;

.field mBatteryLevel:I

.field private mBatteryRunnable:Ljava/lang/Runnable;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mCameraDisabled:Z

.field mCharging:Z

.field mCurrentIndex:I

.field private mEmergencyButton:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

.field private mFadeView:Landroid/view/View;

.field private mFireUnlock:Landroid/graphics/drawable/Drawable;

.field private mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

.field private mImgCircle:Landroid/widget/ImageView;

.field private mImglock:Landroid/widget/ImageView;

.field mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mIs40X:Z

.field private mIsBouncing:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSoundStreamId:I

.field private mLockSoundVolume:F

.field private mLockSounds:Landroid/media/SoundPool;

.field private mMasterStreamType:I

.field mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

.field private mSearchDisabled:Z

.field private mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

.field mShowingChargingAni:Z

.field mUnlockLayout:Landroid/widget/FrameLayout;

.field private mUnlockSoundId:I

.field mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

.field newWaveCenterX:F

.field newWaveCenterY:F

.field offsetX:F

.field offsetY:F

.field private particleIds:[I

.field public task:Ljava/util/TimerTask;

.field xmlIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->DEBUG:Z

    .line 160
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mAnimationLayers:[Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 368
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 369
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v3, 0x15

    const/4 v1, 0x0

    .line 372
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mShowingChargingAni:Z

    .line 107
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mCharging:Z

    .line 110
    const/16 v2, 0x64

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryLevel:I

    .line 113
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryDrawIndex:I

    .line 115
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mIs40X:Z

    .line 118
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryRunnable:Ljava/lang/Runnable;

    .line 128
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->isrunning:Z

    .line 136
    new-array v2, v3, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->particleIds:[I

    .line 163
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->batterydrawId:[I

    .line 174
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    .line 225
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 248
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    .line 266
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryHandler:Landroid/os/Handler;

    .line 401
    new-array v2, v3, [I

    fill-array-data v2, :array_2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->xmlIds:[I

    .line 605
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->bDismissed:Z

    .line 606
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$5;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->handler:Landroid/os/Handler;

    .line 641
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mCurrentIndex:I

    .line 375
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 378
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 380
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 381
    .local v0, mWM:Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    const/16 v3, 0x2d0

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mIs40X:Z

    .line 385
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->initSound()V

    .line 386
    return-void

    .line 136
    :array_0
    .array-data 0x4
        0xd7t 0x4t 0x8t 0x1t
        0xd8t 0x4t 0x8t 0x1t
        0xd9t 0x4t 0x8t 0x1t
        0xdat 0x4t 0x8t 0x1t
        0xdbt 0x4t 0x8t 0x1t
        0xdct 0x4t 0x8t 0x1t
        0xddt 0x4t 0x8t 0x1t
        0xdet 0x4t 0x8t 0x1t
        0xdft 0x4t 0x8t 0x1t
        0xe0t 0x4t 0x8t 0x1t
        0xe1t 0x4t 0x8t 0x1t
        0xe2t 0x4t 0x8t 0x1t
        0xe3t 0x4t 0x8t 0x1t
        0xe4t 0x4t 0x8t 0x1t
        0xe5t 0x4t 0x8t 0x1t
        0xe6t 0x4t 0x8t 0x1t
        0xe7t 0x4t 0x8t 0x1t
        0xe8t 0x4t 0x8t 0x1t
        0xe9t 0x4t 0x8t 0x1t
        0xeat 0x4t 0x8t 0x1t
        0xebt 0x4t 0x8t 0x1t
    .end array-data

    .line 163
    :array_1
    .array-data 0x4
        0x19t 0x3t 0x8t 0x1t
        0x1at 0x3t 0x8t 0x1t
        0x1bt 0x3t 0x8t 0x1t
        0x1ct 0x3t 0x8t 0x1t
        0x1dt 0x3t 0x8t 0x1t
        0x1et 0x3t 0x8t 0x1t
        0x1ft 0x3t 0x8t 0x1t
        0x20t 0x3t 0x8t 0x1t
        0x21t 0x3t 0x8t 0x1t
    .end array-data

    .line 401
    :array_2
    .array-data 0x4
        0x4t 0x0t 0xft 0x1t
        0x5t 0x0t 0xft 0x1t
        0x6t 0x0t 0xft 0x1t
        0x7t 0x0t 0xft 0x1t
        0x8t 0x0t 0xft 0x1t
        0x9t 0x0t 0xft 0x1t
        0xat 0x0t 0xft 0x1t
        0xbt 0x0t 0xft 0x1t
        0xct 0x0t 0xft 0x1t
        0xdt 0x0t 0xft 0x1t
        0xet 0x0t 0xft 0x1t
        0xft 0x0t 0xft 0x1t
        0x10t 0x0t 0xft 0x1t
        0x11t 0x0t 0xft 0x1t
        0x12t 0x0t 0xft 0x1t
        0x13t 0x0t 0xft 0x1t
        0x14t 0x0t 0xft 0x1t
        0x15t 0x0t 0xft 0x1t
        0x16t 0x0t 0xft 0x1t
        0x17t 0x0t 0xft 0x1t
        0x18t 0x0t 0xft 0x1t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)Lcom/android/internal/widget/multiwaveview/GlowPadView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->handleBatteryUpdate()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->stopBatteryAnim()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryDrawIndex:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->batterydrawId:[I

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->isrunning:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mFireUnlock:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mIsBouncing:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mFadeView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->updateTargets()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->updateBatteryStatus(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method public static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .parameter "parser"
    .parameter "firstElementName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 499
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, type:I
    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 502
    :cond_1
    if-eq v0, v2, :cond_2

    .line 503
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 505
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 506
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexcepted start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 509
    :cond_3
    return-void
.end method

.method private getBatteryResId()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x6

    const/4 v3, 0x5

    .line 884
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryLevel:I

    .line 885
    .local v0, level:I
    const/4 v1, -0x1

    .line 886
    .local v1, resId:I
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mShowingChargingAni:Z

    if-eqz v2, :cond_a

    .line 887
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mCharging:Z

    if-eqz v2, :cond_9

    .line 889
    if-ltz v0, :cond_1

    if-gt v0, v3, :cond_1

    .line 890
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->batterydrawId:[I

    aget v1, v2, v6

    .line 891
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryDrawIndex:I

    .line 925
    :cond_0
    :goto_0
    return v1

    .line 892
    :cond_1
    if-lt v0, v4, :cond_2

    const/16 v2, 0x18

    if-gt v0, v2, :cond_2

    .line 893
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->batterydrawId:[I

    aget v1, v2, v7

    .line 894
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryDrawIndex:I

    goto :goto_0

    .line 895
    :cond_2
    const/16 v2, 0x19

    if-lt v0, v2, :cond_3

    const/16 v2, 0x24

    if-gt v0, v2, :cond_3

    .line 896
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->batterydrawId:[I

    const/4 v3, 0x2

    aget v1, v2, v3

    .line 897
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryDrawIndex:I

    goto :goto_0

    .line 898
    :cond_3
    const/16 v2, 0x25

    if-lt v0, v2, :cond_4

    const/16 v2, 0x30

    if-gt v0, v2, :cond_4

    .line 899
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->batterydrawId:[I

    const/4 v3, 0x3

    aget v1, v2, v3

    .line 900
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryDrawIndex:I

    goto :goto_0

    .line 901
    :cond_4
    const/16 v2, 0x31

    if-lt v0, v2, :cond_5

    const/16 v2, 0x3c

    if-gt v0, v2, :cond_5

    .line 902
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->batterydrawId:[I

    const/4 v3, 0x4

    aget v1, v2, v3

    .line 903
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryDrawIndex:I

    goto :goto_0

    .line 904
    :cond_5
    const/16 v2, 0x3d

    if-lt v0, v2, :cond_6

    const/16 v2, 0x48

    if-gt v0, v2, :cond_6

    .line 905
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->batterydrawId:[I

    aget v1, v2, v3

    .line 906
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryDrawIndex:I

    goto :goto_0

    .line 907
    :cond_6
    const/16 v2, 0x49

    if-lt v0, v2, :cond_7

    const/16 v2, 0x54

    if-gt v0, v2, :cond_7

    .line 908
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->batterydrawId:[I

    aget v1, v2, v4

    .line 909
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryDrawIndex:I

    goto :goto_0

    .line 910
    :cond_7
    const/16 v2, 0x55

    if-lt v0, v2, :cond_8

    const/16 v2, 0x63

    if-gt v0, v2, :cond_8

    .line 911
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->batterydrawId:[I

    const/4 v3, 0x7

    aget v1, v2, v3

    .line 912
    const/4 v2, 0x7

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryDrawIndex:I

    goto :goto_0

    .line 913
    :cond_8
    const/16 v2, 0x64

    if-ne v0, v2, :cond_0

    .line 914
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->batterydrawId:[I

    const/16 v3, 0x8

    aget v1, v2, v3

    .line 915
    const/16 v2, 0x8

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryDrawIndex:I

    goto :goto_0

    .line 918
    :cond_9
    const v1, 0x1080336

    .line 919
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryDrawIndex:I

    goto/16 :goto_0

    .line 922
    :cond_a
    const v1, 0x1080336

    .line 923
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryDrawIndex:I

    goto/16 :goto_0
.end method

.method private handleBatteryUpdate()V
    .locals 5

    .prologue
    const v3, 0x1080336

    .line 331
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mShowingChargingAni:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mCharging:Z

    if-eqz v1, :cond_3

    .line 333
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceOverHeat()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    const-string v1, "KeyguardSelectorView2"

    const-string v2, " handleBatteryUpdate isDeviceOverHeat()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->setHandleResources(I)V

    .line 338
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->invalidate()V

    .line 339
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->stopBatteryAnim()V

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mCharging:Z

    if-eqz v1, :cond_0

    .line 344
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->getBatteryResId()I

    move-result v0

    .line 345
    .local v0, batteryResId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 346
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->setHandleResources(I)V

    .line 347
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->invalidate()V

    .line 349
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_2

    .line 350
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$BatteryRunnable;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryDrawIndex:I

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$BatteryRunnable;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;I)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryRunnable:Ljava/lang/Runnable;

    .line 352
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 360
    .end local v0           #batteryResId:I
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->setHandleResources(I)V

    .line 361
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->invalidate()V

    .line 362
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->stopBatteryAnim()V

    goto :goto_0
.end method

.method private hidePromptString()V
    .locals 0

    .prologue
    .line 685
    return-void
.end method

.method private initSound()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 523
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 525
    .local v0, lockSoundDefaultAttenuation:I
    const-wide/high16 v4, 0x4024

    const-wide/high16 v6, -0x4010

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    const/high16 v5, 0x4040

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mLockSoundVolume:F

    .line 527
    new-instance v4, Landroid/media/SoundPool;

    const/4 v5, 0x0

    invoke-direct {v4, v8, v8, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mLockSounds:Landroid/media/SoundPool;

    .line 528
    const-string v1, "/system/media/audio/ui/WildUnLock.ogg"

    .line 530
    .local v1, soundPath:Ljava/lang/String;
    const-string v3, "/data/system/theme/current/audioeffect/WildUnLock.ogg"

    .line 532
    .local v3, themeSoundPath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 533
    .local v2, themeSoundFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 534
    move-object v1, v3

    .line 537
    :cond_0
    if-eqz v1, :cond_1

    .line 538
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v4, v1, v8}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mUnlockSoundId:I

    .line 540
    :cond_1
    if-eqz v1, :cond_2

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mUnlockSoundId:I

    if-nez v4, :cond_3

    .line 541
    :cond_2
    const-string v4, "KeyguardSelectorView2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to load sound from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_3
    return-void
.end method

.method private playSounds(Z)V
    .locals 8
    .parameter "locked"

    .prologue
    const/4 v4, 0x1

    .line 547
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 548
    .local v7, cr:Landroid/content/ContentResolver;
    const-string v0, "unlockscreen_sounds_enabled"

    invoke-static {v7, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 549
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mUnlockSoundId:I

    .line 550
    .local v1, whichSound:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mLockSounds:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mLockSoundStreamId:I

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 552
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    .line 553
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mAudioManager:Landroid/media/AudioManager;

    .line 554
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 563
    .end local v1           #whichSound:I
    :cond_0
    :goto_0
    return-void

    .line 555
    .restart local v1       #whichSound:I
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mMasterStreamType:I

    .line 558
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mMasterStreamType:I

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mLockSounds:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mLockSoundVolume:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mLockSoundVolume:F

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mLockSoundStreamId:I

    goto :goto_0
.end method

.method private showPromptString()V
    .locals 0

    .prologue
    .line 681
    return-void
.end method

.method private startRunnable()V
    .locals 5

    .prologue
    .line 633
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mFireUnlock:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 634
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mFireUnlock:Landroid/graphics/drawable/Drawable;

    .line 636
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 637
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$FrameUpdateRunnable;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$FrameUpdateRunnable;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;I)V

    mul-int/lit8 v3, v0, 0x1e

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 636
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 640
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method private stopBatteryAnim()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 328
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateBatteryStatus(Z)V
    .locals 2
    .parameter "showStatus"

    .prologue
    .line 876
    if-eqz p1, :cond_0

    .line 877
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 879
    :cond_0
    return-void
.end method

.method private updateTargets()V
    .locals 0

    .prologue
    .line 798
    return-void
.end method


# virtual methods
.method public disableEmergencyCall()V
    .locals 2

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mEmergencyButton:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mEmergencyButton:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->setVisibility(I)V

    .line 936
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 773
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->bDismissed:Z

    if-eqz v7, :cond_0

    .line 786
    :goto_0
    return-void

    .line 776
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 778
    .local v0, begin:J
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->getChildCount()I

    move-result v3

    .line 779
    .local v3, count:I
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->onDraw(Landroid/graphics/Canvas;)V

    .line 780
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v3, :cond_1

    .line 781
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 782
    .local v2, child:Landroid/view/View;
    const-wide/16 v7, 0x0

    invoke-virtual {p0, p1, v2, v7, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 780
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 785
    .end local v2           #child:Landroid/view/View;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 786
    .local v4, end:J
    goto :goto_0
.end method

.method doTransition(Landroid/view/View;F)V
    .locals 3
    .parameter "view"
    .parameter "to"

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 810
    :cond_0
    const-string v0, "alpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mAnim:Landroid/animation/ObjectAnimator;

    .line 811
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 812
    return-void
.end method

.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method getLanguage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 512
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 514
    .local v0, am:Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 515
    .local v1, config:Landroid/content/res/Configuration;
    iget-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 519
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_0
    return-object v3

    .line 516
    :catch_0
    move-exception v2

    .line 517
    .local v2, re:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 519
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getTileInfo(I)Ljava/util/ArrayList;
    .locals 18
    .parameter "xmlId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$TileInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 444
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$TileInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    .line 447
    .local v10, parser:Landroid/content/res/XmlResourceParser;
    invoke-static {v10}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 448
    .local v1, attrs:Landroid/util/AttributeSet;
    const-string v15, "layer-list"

    invoke-static {v10, v15}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 449
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 453
    .local v4, depth:I
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    .local v13, type:I
    const/4 v15, 0x3

    if-ne v13, v15, :cond_1

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    if-le v15, v4, :cond_6

    :cond_1
    const/4 v15, 0x1

    if-eq v13, v15, :cond_6

    .line 454
    const/4 v15, 0x2

    if-ne v13, v15, :cond_0

    .line 457
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 458
    .local v9, name:Ljava/lang/String;
    const/4 v2, 0x0

    .line 459
    .local v2, bmpFileName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 460
    .local v7, left:I
    const/4 v12, 0x0

    .line 461
    .local v12, top:I
    const-string v15, "item"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 462
    invoke-interface {v1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    .line 463
    .local v3, count:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v3, :cond_5

    .line 464
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    .line 465
    .local v11, strName:Ljava/lang/String;
    const-string v15, "Testing"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "the attribute name is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string v15, "drawable"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 467
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    .line 469
    .local v14, value:Ljava/lang/String;
    const-string v15, "Testing"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "drawable id is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    move-object v2, v14

    .line 463
    .end local v14           #value:Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 471
    :cond_3
    const-string v15, "left"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 473
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    .line 474
    .restart local v14       #value:Ljava/lang/String;
    const-string v15, "Testing"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "left  is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v15, 0x0

    const-string v16, "px"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    .line 477
    .local v5, fValue:Ljava/lang/Float;
    invoke-virtual {v5}, Ljava/lang/Float;->intValue()I

    move-result v7

    .line 478
    goto :goto_2

    .end local v5           #fValue:Ljava/lang/Float;
    .end local v14           #value:Ljava/lang/String;
    :cond_4
    const-string v15, "top"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 480
    invoke-interface {v1, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    .line 481
    .restart local v14       #value:Ljava/lang/String;
    const/4 v15, 0x0

    const-string v16, "px"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    .line 482
    .restart local v5       #fValue:Ljava/lang/Float;
    invoke-virtual {v5}, Ljava/lang/Float;->intValue()I

    move-result v12

    .line 483
    const-string v15, "Testing"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "top  is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 488
    .end local v5           #fValue:Ljava/lang/Float;
    .end local v11           #strName:Ljava/lang/String;
    .end local v14           #value:Ljava/lang/String;
    :cond_5
    new-instance v15, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$TileInfo;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".png"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v7, v12}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$TileInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    const-string v15, "Testing"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "name is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 492
    .end local v2           #bmpFileName:Ljava/lang/String;
    .end local v3           #count:I
    .end local v6           #i:I
    .end local v7           #left:I
    .end local v9           #name:Ljava/lang/String;
    .end local v12           #top:I
    :cond_6
    return-object v8
.end method

.method public hideBouncer(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 870
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mIsBouncing:Z

    .line 871
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mFadeView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 873
    return-void
.end method

.method public init()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->xmlIds:[I

    array-length v9, v9

    if-ge v3, v9, :cond_1

    .line 415
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->xmlIds:[I

    aget v2, v9, v3

    .line 416
    .local v2, id:I
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->getTileInfo(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 417
    .local v5, tileInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$TileInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v6, v9, [Landroid/graphics/drawable/Drawable;

    .line 418
    .local v6, tiles:[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_0

    .line 420
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    aput-object v9, v6, v1

    .line 421
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$TileInfo;

    iget v4, v9, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$TileInfo;->left:I

    .line 422
    .local v4, left:I
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$TileInfo;

    iget v7, v9, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$TileInfo;->top:I

    .line 423
    .local v7, top:I
    aget-object v9, v6, v1

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 424
    .local v8, width:I
    aget-object v9, v6, v1

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 425
    .local v0, height:I
    aget-object v9, v6, v1

    add-int v10, v4, v8

    add-int v11, v7, v0

    invoke-virtual {v9, v4, v7, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 418
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 428
    .end local v0           #height:I
    .end local v4           #left:I
    .end local v7           #top:I
    .end local v8           #width:I
    :cond_0
    sget-object v9, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mAnimationLayers:[Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;

    new-instance v10, Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;

    invoke-direct {v10, v6}, Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    aput-object v10, v9, v3

    .line 414
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 430
    .end local v1           #i:I
    .end local v2           #id:I
    .end local v5           #tileInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2$TileInfo;>;"
    .end local v6           #tiles:[Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public isTargetPresent(I)Z
    .locals 1
    .parameter "resId"

    .prologue
    .line 729
    const/4 v0, 0x1

    return v0
.end method

.method public loadBitmap()V
    .locals 1

    .prologue
    .line 390
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mAnimationLayers:[Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->xmlIds:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mAnimationLayers:[Lcom/android/internal/policy/impl/keyguard/GridLayoutDrawable;

    .line 393
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 394
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 830
    const/4 v0, 0x0

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 849
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 850
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 851
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBatteryRunnable:Ljava/lang/Runnable;

    .line 853
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 854
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mFireUnlock:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 769
    :goto_0
    return-void

    .line 756
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 760
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->offsetX:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->offsetY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 764
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mFireUnlock:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 766
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 691
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 697
    const v1, 0x1020327

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 698
    .local v0, bouncerFrameView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 700
    const v1, 0x1020329

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mUnlockLayout:Landroid/widget/FrameLayout;

    .line 701
    const v1, 0x102032a

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mImglock:Landroid/widget/ImageView;

    .line 703
    const v1, 0x102032b

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mImgCircle:Landroid/widget/ImageView;

    .line 704
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->loadBitmap()V

    .line 705
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mUnlockLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 706
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mImglock:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 707
    const v1, 0x10202c5

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mEmergencyButton:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    .line 708
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mEmergencyButton:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    if-eqz v1, :cond_0

    .line 709
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mEmergencyButton:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->setVisibility(I)V

    .line 715
    :cond_0
    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mFireUnlock:Landroid/graphics/drawable/Drawable;

    .line 718
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->offsetX:F

    .line 719
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->offsetY:F

    .line 720
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 738
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 741
    sub-int v2, p4, p2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p2

    sub-int/2addr v2, p2

    int-to-float v0, v2

    .line 742
    .local v0, newWaveCenterX:F
    const/4 v1, 0x0

    .line 743
    .local v1, newWaveCenterY:F
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mIs40X:Z

    if-eqz v2, :cond_0

    .line 744
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p3

    add-int/lit8 v2, v2, -0x14

    int-to-float v1, v2

    .line 748
    :goto_0
    return-void

    .line 746
    :cond_0
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p3

    add-int/lit16 v2, v2, -0x9b

    int-to-float v1, v2

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 836
    return-void
.end method

.method public onResume(I)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mEmergencyButton:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mEmergencyButton:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->setVisibility(I)V

    .line 843
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 844
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "event"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 567
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 569
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 602
    :goto_0
    return v5

    .line 571
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mImgCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 572
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mImglock:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 573
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mImgCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 577
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->isrunning:Z

    .line 578
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->startRunnable()V

    .line 579
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->playSounds(Z)V

    .line 583
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    goto :goto_0

    .line 588
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    goto :goto_0

    .line 591
    :pswitch_2
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->isrunning:Z

    .line 592
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 593
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mUnlockLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 594
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mImgCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 595
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mImglock:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 596
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->showPromptString()V

    .line 598
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mFireUnlock:Landroid/graphics/drawable/Drawable;

    .line 599
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->invalidate()V

    goto :goto_0

    .line 569
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 826
    return-void
.end method

.method public setCarrierArea(Landroid/view/View;)V
    .locals 0
    .parameter "carrierArea"

    .prologue
    .line 723
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mFadeView:Landroid/view/View;

    .line 724
    return-void
.end method

.method public setHandleResources(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mImglock:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mImglock:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 930
    :cond_0
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 815
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 816
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .parameter "utils"

    .prologue
    .line 819
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 820
    return-void
.end method

.method public showBouncer(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 863
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mIsBouncing:Z

    .line 864
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mFadeView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSelectorView2;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 866
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 793
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 804
    return-void
.end method
