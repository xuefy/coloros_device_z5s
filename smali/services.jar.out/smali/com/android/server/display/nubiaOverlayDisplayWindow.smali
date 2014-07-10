.class final Lcom/android/server/display/nubiaOverlayDisplayWindow;
.super Ljava/lang/Object;
.source "nubiaOverlayDisplayWindow.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;
.implements Lcom/android/server/display/OnDoubleTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final FIELD_SINGLE_UI_MODE:Ljava/lang/String; = "single_ui_mode"

.field private static final FIELD_SINGLE_UI_MODE_SENSOR_SWITCH:Ljava/lang/String; = "single_ui_mode_sensor_switch"

.field private static final TAG:Ljava/lang/String; = "NubiaOverlayDisplayWindow"

.field private static mWindowVisible:Z


# instance fields
.field private final BH:I

.field private final BW:I

.field private final DISABLE_MOVE_AND_RESIZE:Z

.field private final EW:I

.field private final GROUND_WINDOW_ALPHA:F

.field private final GROUND_WINDOW_ALPHA_SECOND:F

.field private final TW:I

.field private final WINDOW_ALPHA:F

.field private isMoveing:Ljava/lang/Boolean;

.field private isRight:Ljava/lang/Boolean;

.field private final mContext:Landroid/content/Context;

.field private mCustomView:Landroid/widget/ImageView;

.field private final mDefaultDisplay:Landroid/view/Display;

.field private final mDefaultDisplayInfo:Landroid/view/DisplayInfo;

.field private final mDensityDpi:I

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mDisplayMatrix:Landroid/graphics/Matrix;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDownPoint:Landroid/graphics/Point;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mGravity:I

.field private final mHeight:I

.field private mIsLock:Z

.field private final mListener:Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;

.field private mLiveTranslationX:F

.field private mLiveTranslationY:F

.field private mLockView:Landroid/widget/ImageView;

.field private mLogicalHeight:I

.field private mLogicalWidth:I

.field private mMainScreenView:Landroid/view/View;

.field private final mName:Ljava/lang/String;

.field private final mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mRotated:I

.field private mScaleX:F

.field private mScaleY:F

.field private mScreenShotView:Landroid/widget/ImageView;

.field private mScreenshotBitmap:Landroid/graphics/Bitmap;

.field private mSingleParams:Landroid/widget/AbsoluteLayout$LayoutParams;

.field private final mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mTextureView:Landroid/view/TextureView;

.field private final mWidth:I

.field private mWindowContent:Landroid/widget/RelativeLayout;

.field private mWindowContentGround:Landroid/view/View;

.field private mWindowContentGround2:Landroid/view/View;

.field private mWindowContentMoveBottom:Landroid/view/View;

.field private mWindowContentMoveLeft:Landroid/view/View;

.field private mWindowContentMoveRight:Landroid/view/View;

.field private mWindowContentMoveTop:Landroid/view/View;

.field private mWindowContentUI:Landroid/view/View;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowParamsGround:Landroid/view/WindowManager$LayoutParams;

.field private mWindowParamsGround2:Landroid/view/WindowManager$LayoutParams;

.field private mWindowScale:F

.field private mWindowX:I

.field private mWindowY:I

.field private final rate:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIIILjava/lang/String;DLcom/android/server/display/nubiaOverlayDisplayWindow$Listener;)V
    .locals 5
    .parameter "context"
    .parameter "name"
    .parameter "width"
    .parameter "height"
    .parameter "densityDpi"
    .parameter "gravity"
    .parameter "leftOrRight"
    .parameter "rate"
    .parameter "listener"

    .prologue
    const/4 v4, 0x1

    const/16 v1, 0x64

    const/4 v3, 0x0

    .line 196
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const v0, 0x3f7d70a4

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->WINDOW_ALPHA:F

    .line 117
    const v0, 0x3ecccccd

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->GROUND_WINDOW_ALPHA:F

    .line 118
    const v0, 0x3f59999a

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->GROUND_WINDOW_ALPHA_SECOND:F

    .line 120
    iput v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->BW:I

    .line 121
    iput v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->BH:I

    .line 122
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->EW:I

    .line 123
    iput v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->TW:I

    .line 128
    iput-boolean v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->DISABLE_MOVE_AND_RESIZE:Z

    .line 143
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    .line 174
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isRight:Ljava/lang/Boolean;

    .line 175
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDownPoint:Landroid/graphics/Point;

    .line 176
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mRotated:I

    .line 178
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isMoveing:Ljava/lang/Boolean;

    .line 504
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$3;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$3;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 541
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$4;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$4;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 568
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$5;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$5;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 197
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    .line 198
    iput-object p2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mName:Ljava/lang/String;

    .line 199
    iput-wide p8, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:D

    .line 200
    int-to-double v0, p3

    div-double/2addr v0, p8

    double-to-int v0, v0

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    .line 201
    int-to-double v0, p4

    div-double/2addr v0, p8

    double-to-int v0, v0

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    .line 203
    iput p5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDensityDpi:I

    .line 204
    iput p6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mGravity:I

    .line 205
    iput-object p10, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mListener:Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;

    .line 206
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 208
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 210
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    .line 211
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->updateDefaultDisplayInfo()Z

    .line 212
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalWidth:I

    .line 213
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    .line 214
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 215
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 216
    const-string v0, "nubiaOverlayDisplayWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nubiaOverlayDisplayWindow mWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHEight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v0, "left"

    invoke-virtual {p7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isRight:Ljava/lang/Boolean;

    .line 224
    :goto_0
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalWidth:I

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    if-ge v0, v1, :cond_1

    .line 225
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScaleX:F

    .line 226
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScaleY:F

    .line 231
    :goto_1
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->createWindow()V

    .line 232
    return-void

    .line 221
    :cond_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isRight:Ljava/lang/Boolean;

    goto :goto_0

    .line 228
    :cond_1
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScaleX:F

    .line 229
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScaleY:F

    goto :goto_1
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    sput-boolean p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowVisible:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLockView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1024(Lcom/android/server/display/nubiaOverlayDisplayWindow;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLiveTranslationX:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLiveTranslationX:F

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/AbsoluteLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSingleParams:Landroid/widget/AbsoluteLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContent:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/WindowManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/Display;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->updateDefaultDisplayInfo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->relayout()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/DisplayInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mListener:Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mRotated:I

    return v0
.end method

.method private createShowAnimation()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/high16 v2, 0x3f80

    .line 256
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isRight:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScaleX:F

    iget v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScaleY:F

    move v4, v2

    move v6, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 261
    .local v0, showAnim:Landroid/view/animation/ScaleAnimation;
    :goto_0
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 262
    new-instance v1, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 278
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMainScreenView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 280
    return-void

    .line 259
    .end local v0           #showAnim:Landroid/view/animation/ScaleAnimation;
    :cond_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScaleX:F

    iget v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScaleY:F

    const/4 v6, 0x0

    move v4, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .restart local v0       #showAnim:Landroid/view/animation/ScaleAnimation;
    goto :goto_0
.end method

.method private createWindow()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 367
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 368
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x10900da

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContent:Landroid/widget/RelativeLayout;

    .line 369
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContent:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->registerDoubleTouchListener(Landroid/view/View;Lcom/android/server/display/OnDoubleTouchListener;)V

    .line 370
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContent:Landroid/widget/RelativeLayout;

    const v3, 0x10203a8

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mCustomView:Landroid/widget/ImageView;

    .line 371
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mCustomView:Landroid/widget/ImageView;

    const v3, 0x10802a7

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 372
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContent:Landroid/widget/RelativeLayout;

    const v3, 0x10203aa

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMainScreenView:Landroid/view/View;

    .line 373
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMainScreenView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 374
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContent:Landroid/widget/RelativeLayout;

    const v3, 0x10203a9

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLockView:Landroid/widget/ImageView;

    .line 375
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContent:Landroid/widget/RelativeLayout;

    const v3, 0x10203ab

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentUI:Landroid/view/View;

    .line 376
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContent:Landroid/widget/RelativeLayout;

    const v3, 0x10203ac

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    .line 378
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, v4}, Landroid/view/TextureView;->setPivotX(F)V

    .line 379
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, v4}, Landroid/view/TextureView;->setPivotY(F)V

    .line 380
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    int-to-double v3, v3

    iget-wide v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:D

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 381
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    int-to-double v3, v3

    iget-wide v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:D

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 382
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, v7}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 383
    const-string v1, "nubiaOverlayDisplayWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "window readty data start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v1, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 386
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7ea

    invoke-direct {v1, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 388
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 389
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 390
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x438

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 391
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x77f

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 392
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 393
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x3f7d70a4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 394
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v1, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mGestureDetector:Landroid/view/GestureDetector;

    .line 395
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isRight:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    add-int/lit8 v3, v3, 0x64

    add-int/lit8 v3, v3, 0xa

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowX:I

    .line 400
    :goto_0
    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mGravity:I

    and-int/lit8 v1, v1, 0x30

    const/16 v3, 0x30

    if-ne v1, v3, :cond_1

    move v1, v2

    :goto_1
    iput v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowY:I

    .line 404
    return-void

    .line 398
    :cond_0
    iput v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowX:I

    goto :goto_0

    .line 400
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_1
.end method

.method private registerDoubleTouchListener(Landroid/view/View;Lcom/android/server/display/OnDoubleTouchListener;)V
    .locals 1
    .parameter "view"
    .parameter "listener"

    .prologue
    .line 600
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;

    invoke-direct {v0, p0, p2}, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;Lcom/android/server/display/OnDoubleTouchListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 651
    return-void
.end method

.method private relayout()V
    .locals 3

    .prologue
    .line 531
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isMoveing:Ljava/lang/Boolean;

    .line 532
    sget-boolean v0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowVisible:Z

    if-eqz v0, :cond_0

    .line 533
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->updateWindowParams()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContent:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    :cond_0
    return-void
.end method

.method private saveWindowParams()V
    .locals 2

    .prologue
    .line 495
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mRotated:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mRotated:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowX:I

    .line 497
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowY:I

    .line 502
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowScale:F

    .line 503
    return-void

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowY:I

    .line 500
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowX:I

    goto :goto_0
.end method

.method private setInputRect(IIII)V
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v5, 0x0

    .line 457
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 458
    .local v2, mRect3:Landroid/graphics/Rect;
    iget v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mRotated:I

    packed-switch v3, :pswitch_data_0

    .line 462
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isRight:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 463
    new-instance v0, Landroid/graphics/Rect;

    add-int v3, p1, p3

    add-int v4, p2, p4

    invoke-direct {v0, p1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 464
    .local v0, mRect:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v3, p1, -0x64

    add-int/lit8 v4, p2, -0x64

    add-int v5, p1, p3

    add-int v6, p2, p4

    add-int/lit8 v6, v6, 0x64

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 490
    .local v1, mRect2:Landroid/graphics/Rect;
    :goto_0
    invoke-static {v0, v1, v2}, Lcom/android/server/display/SingleUIRectNotifyer;->notifyInputDispatcherSingleUIRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 491
    return-void

    .line 466
    .end local v0           #mRect:Landroid/graphics/Rect;
    .end local v1           #mRect2:Landroid/graphics/Rect;
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    add-int v3, p1, p3

    add-int v4, p2, p4

    invoke-direct {v0, p1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 467
    .restart local v0       #mRect:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v3, p1, -0x64

    add-int/lit8 v4, p2, -0x64

    add-int v5, p1, p3

    add-int v6, p2, p4

    add-int/lit8 v6, v6, 0x64

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 469
    .restart local v1       #mRect2:Landroid/graphics/Rect;
    goto :goto_0

    .line 471
    .end local v0           #mRect:Landroid/graphics/Rect;
    .end local v1           #mRect2:Landroid/graphics/Rect;
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isRight:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 472
    new-instance v0, Landroid/graphics/Rect;

    add-int v3, p1, p4

    add-int v4, p2, p3

    invoke-direct {v0, p1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 473
    .restart local v0       #mRect:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v3, p1, -0x64

    add-int/lit16 v4, p2, -0x96

    add-int v5, p1, p4

    add-int/lit8 v5, v5, 0x64

    add-int v6, p2, p3

    add-int/lit8 v6, v6, 0x64

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v1       #mRect2:Landroid/graphics/Rect;
    goto :goto_0

    .line 475
    .end local v0           #mRect:Landroid/graphics/Rect;
    .end local v1           #mRect2:Landroid/graphics/Rect;
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    add-int/lit8 v3, p2, 0x64

    add-int v4, p1, p4

    add-int/lit8 v5, p2, 0x64

    add-int/2addr v5, p3

    invoke-direct {v0, p1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 476
    .restart local v0       #mRect:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v3, p1, -0x64

    add-int/lit8 v4, p2, 0x64

    add-int/lit8 v4, v4, -0x64

    add-int v5, p1, p4

    add-int/lit8 v5, v5, 0x64

    add-int/lit8 v6, p2, 0x64

    add-int/2addr v6, p3

    add-int/lit8 v6, v6, 0x64

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 478
    .restart local v1       #mRect2:Landroid/graphics/Rect;
    goto :goto_0

    .line 480
    .end local v0           #mRect:Landroid/graphics/Rect;
    .end local v1           #mRect2:Landroid/graphics/Rect;
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isRight:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 481
    new-instance v0, Landroid/graphics/Rect;

    add-int/lit8 v3, p2, -0x64

    add-int v4, p1, p4

    add-int/lit8 v5, p2, -0x64

    add-int/2addr v5, p3

    invoke-direct {v0, p1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 482
    .restart local v0       #mRect:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v3, p1, -0x64

    add-int/lit8 v4, p2, -0x64

    add-int/lit16 v4, v4, -0x96

    add-int v5, p1, p4

    add-int/lit8 v5, v5, 0x64

    add-int/lit8 v6, p2, -0x64

    add-int/2addr v6, p3

    add-int/lit8 v6, v6, 0x64

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v1       #mRect2:Landroid/graphics/Rect;
    goto/16 :goto_0

    .line 484
    .end local v0           #mRect:Landroid/graphics/Rect;
    .end local v1           #mRect2:Landroid/graphics/Rect;
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    add-int v3, p1, p4

    add-int v4, p2, p3

    invoke-direct {v0, p1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 485
    .restart local v0       #mRect:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v3, p1, -0x64

    add-int/lit16 v4, p2, -0x96

    add-int v5, p1, p4

    add-int/lit8 v5, v5, 0x64

    add-int v6, p2, p3

    add-int/lit8 v6, v6, 0x64

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v1       #mRect2:Landroid/graphics/Rect;
    goto/16 :goto_0

    .line 458
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 351
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x1000328

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 360
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 362
    const/16 v0, 0x33

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 363
    const-string v0, "singleUI_view_layer"

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 364
    return-void
.end method

.method private setLayoutParamsWH(Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 0
    .parameter "l"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 346
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 347
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 348
    return-void
.end method

.method private updateDefaultDisplayInfo()Z
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    const-string v0, "NubiaOverlayDisplayWindow"

    const-string v1, "Cannot show overlay display because there is no default display upon which to show it."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v0, 0x0

    .line 342
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateWindowParams()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x2

    const/high16 v8, 0x3f80

    const/4 v7, 0x0

    .line 407
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 408
    .local v1, rotation:I
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 409
    .local v0, matrix:Landroid/graphics/Matrix;
    packed-switch v1, :pswitch_data_0

    .line 413
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentUI:Landroid/view/View;

    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 414
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentUI:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 415
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentUI:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 416
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentUI:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSingleParams:Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 417
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isRight:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 418
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSingleParams:Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    rsub-int v5, v5, 0x438

    iput v5, v4, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 419
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSingleParams:Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    rsub-int v5, v5, 0x77f

    iput v5, v4, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 420
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSingleParams:Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 421
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSingleParams:Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 428
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentUI:Landroid/view/View;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSingleParams:Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    iget-wide v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:D

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float v3, v4, v5

    .line 430
    .local v3, tran_x:F
    neg-float v4, v3

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 431
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 432
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4, v8}, Landroid/view/TextureView;->setScaleX(F)V

    .line 433
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4, v8}, Landroid/view/TextureView;->setScaleY(F)V

    .line 434
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSingleParams:Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v4, v4, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSingleParams:Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v5, v5, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    iget v7, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->setInputRect(IIII)V

    .line 452
    .end local v3           #tran_x:F
    :cond_0
    :goto_1
    return v10

    .line 423
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSingleParams:Landroid/widget/AbsoluteLayout$LayoutParams;

    iput v7, v4, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 424
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSingleParams:Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    rsub-int v5, v5, 0x77f

    iput v5, v4, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 425
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSingleParams:Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 426
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSingleParams:Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 438
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "nubia_overlay_display_devices"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 440
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "single_ui_mode"

    invoke-static {v4, v5, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 441
    .local v2, singleMode:I
    if-ne v2, v10, :cond_0

    .line 442
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "single_ui_mode"

    invoke-static {v4, v5, v7, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    .line 409
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public createDismissAnimation()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/high16 v1, 0x3f80

    .line 289
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isRight:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScaleX:F

    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScaleY:F

    move v3, v1

    move v6, v1

    move v7, v5

    move v8, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 294
    .local v0, disAnim:Landroid/view/animation/ScaleAnimation;
    :goto_0
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 295
    new-instance v1, Lcom/android/server/display/nubiaOverlayDisplayWindow$2;

    invoke-direct {v1, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$2;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 314
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMainScreenView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 317
    return-void

    .line 292
    .end local v0           #disAnim:Landroid/view/animation/ScaleAnimation;
    :cond_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScaleX:F

    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScaleY:F

    const/4 v6, 0x0

    move v3, v1

    move v7, v5

    move v8, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .restart local v0       #disAnim:Landroid/view/animation/ScaleAnimation;
    goto :goto_0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 282
    sget-boolean v0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowVisible:Z

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 284
    invoke-virtual {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->createDismissAnimation()V

    .line 286
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "pw"

    .prologue
    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWindowVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWindowX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWindowY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWindowParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTextureView.getScaleX()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getScaleX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTextureView.getScaleY()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getScaleY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLiveTranslationX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLiveTranslationX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLiveTranslationY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLiveTranslationY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public onDoubleTouch()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 668
    iget-boolean v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mIsLock:Z

    if-eqz v2, :cond_0

    .line 676
    :goto_0
    return-void

    .line 669
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 670
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "single_ui_mode_sensor_switch"

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 671
    .local v1, singleModeSensor:I
    if-ne v1, v5, :cond_1

    .line 672
    const-string v2, "single_ui_mode_sensor_switch"

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 674
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLockView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 675
    iput-boolean v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mIsLock:Z

    goto :goto_0
.end method

.method public onSingleTouch()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 655
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 656
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "nubia_overlay_display_devices"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 657
    iget-boolean v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mIsLock:Z

    if-eqz v2, :cond_0

    .line 658
    iput-boolean v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mIsLock:Z

    .line 659
    const-string v2, "single_ui_mode_sensor_switch"

    invoke-static {v0, v2, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 660
    .local v1, singleModeSensor:I
    if-nez v1, :cond_0

    .line 661
    const-string v2, "single_ui_mode_sensor_switch"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 664
    .end local v1           #singleModeSensor:I
    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 239
    sget-boolean v0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowVisible:Z

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 241
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->updateDefaultDisplayInfo()Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->updateWindowParams()Z

    .line 247
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContent:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->createShowAnimation()V

    goto :goto_0
.end method
