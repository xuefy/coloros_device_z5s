.class final Lcom/android/server/display/nubiaOverlayDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "nubiaOverlayDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;,
        Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final MAX_HEIGHT:I = 0x1000

.field private static final MAX_WIDTH:I = 0x1000

.field private static final MIN_HEIGHT:I = 0x64

.field private static final MIN_WIDTH:I = 0x64

.field private static final SETTING_PATTERN:Ljava/util/regex/Pattern; = null

.field static final TAG:Ljava/lang/String; = "OverlayDisplayAdapter"


# instance fields
.field private mCurrentOverlaySetting:Ljava/lang/String;

.field private final mOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;",
            ">;"
        }
    .end annotation
.end field

.field private mPreOverlaySetting:Ljava/lang/String;

.field private final mUiHandler:Landroid/os/Handler;

.field private rotated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-string v0, "(\\d+)x(\\d+)/(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->SETTING_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;)V
    .locals 6
    .parameter "syncRoot"
    .parameter "context"
    .parameter "handler"
    .parameter "listener"
    .parameter "uiHandler"

    .prologue
    .line 88
    const-string v5, "OverlayDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mPreOverlaySetting:Ljava/lang/String;

    .line 466
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->rotated:Z

    .line 89
    iput-object p5, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/nubiaOverlayDisplayAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->updateOverlayDisplayDevices()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/nubiaOverlayDisplayAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->rotated:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/display/nubiaOverlayDisplayAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->rotated:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/display/nubiaOverlayDisplayAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static chooseOverlayGravity(I)I
    .locals 1
    .parameter "overlayNumber"

    .prologue
    .line 260
    packed-switch p0, :pswitch_data_0

    .line 269
    const/16 v0, 0x53

    :goto_0
    return v0

    .line 262
    :pswitch_0
    const/16 v0, 0x33

    goto :goto_0

    .line 264
    :pswitch_1
    const/16 v0, 0x55

    goto :goto_0

    .line 266
    :pswitch_2
    const/16 v0, 0x35

    goto :goto_0

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleBigScreenLandscape(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v10, -0x2

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 132
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v8, "nubia_overlay_display_devices"

    invoke-static {v0, v8, v10}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, device:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v6

    .line 135
    :cond_1
    const-string v8, "window"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 136
    .local v5, windowManager:Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 137
    .local v2, display:Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 138
    .local v3, output:Landroid/graphics/Point;
    invoke-virtual {v2, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 139
    iget v8, v3, Landroid/graphics/Point;->x:I

    iget v9, v3, Landroid/graphics/Point;->y:I

    if-le v8, v9, :cond_0

    .line 140
    const-string v8, "single_ui_mode"

    invoke-static {v0, v8, v6, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 142
    .local v4, singleMode:I
    if-ne v4, v7, :cond_2

    .line 143
    const-string v8, "single_ui_mode"

    invoke-static {v0, v8, v6, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 145
    :cond_2
    const-string v6, "nubia_overlay_display_devices"

    const-string v8, ""

    invoke-static {v0, v6, v8, v10}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move v6, v7

    .line 147
    goto :goto_0
.end method

.method private updateOverlayDisplayDevices()V
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->handleBigScreenLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 127
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->updateOverlayDisplayDevicesLocked()V

    .line 128
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateOverlayDisplayDevicesLocked()V
    .locals 30

    .prologue
    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nubia_overlay_display_devices"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 156
    .local v26, value:Ljava/lang/String;
    const-string v2, "nubiaOverlayDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "adbpter value="

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nubia_overlay_display_devices_left_right"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 159
    .local v9, leftOrRight:Ljava/lang/String;
    if-nez v26, :cond_0

    .line 160
    const-string v26, ""

    .line 164
    :cond_0
    if-nez v9, :cond_1

    .line 165
    const-string v9, "right"

    .line 168
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 256
    :cond_2
    :goto_0
    return-void

    .line 171
    :cond_3
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/hardware/display/DisplayManager;

    .line 173
    .local v16, displayManager:Landroid/hardware/display/DisplayManager;
    const-string v2, "android.hardware.display.category.PRESENTATION"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v17

    .line 175
    .local v17, displays:[Landroid/view/Display;
    const/4 v14, 0x0

    .local v14, dIndex:I
    :goto_1
    move-object/from16 v0, v17

    array-length v2, v0

    if-ge v14, v2, :cond_5

    .line 177
    aget-object v2, v17, v14

    invoke-virtual {v2}, Landroid/view/Display;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 178
    const-string v2, "OverlayDisplayAdapter"

    const-string v3, "WiFi display detected, disconnecting."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/StatusBarManager;

    .line 180
    .local v25, sbm:Landroid/app/StatusBarManager;
    invoke-virtual/range {v25 .. v25}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nubia_overlay_display_devices"

    const-string v27, ""

    move-object/from16 v0, v27

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 183
    new-instance v18, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 184
    .local v18, handler:Landroid/os/Handler;
    new-instance v2, Lcom/android/server/display/nubiaOverlayDisplayAdapter$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$2;-><init>(Lcom/android/server/display/nubiaOverlayDisplayAdapter;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    .end local v18           #handler:Landroid/os/Handler;
    .end local v25           #sbm:Landroid/app/StatusBarManager;
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 196
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 197
    const-string v2, "OverlayDisplayAdapter"

    const-string v3, "Dismissing all overlay display devices."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    .line 199
    .local v23, overlay:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->dismissLocked()V

    goto :goto_2

    .line 201
    .end local v23           #overlay:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 204
    .end local v19           #i$:Ljava/util/Iterator;
    :cond_7
    const/4 v13, 0x0

    .line 205
    .local v13, count:I
    const-string v2, ";"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .local v12, arr$:[Ljava/lang/String;
    array-length v0, v12

    move/from16 v20, v0

    .local v20, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    aget-object v24, v12, v19

    .line 206
    .local v24, part:Ljava/lang/String;
    sget-object v2, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->SETTING_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 207
    .local v21, matcher:Ljava/util/regex/Matcher;
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 208
    const/4 v2, 0x2

    if-lt v13, v2, :cond_8

    .line 209
    const-string v2, "OverlayDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Too many nubiaoverlay display devices specified: "

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 213
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_nubia_overlay_display_devices"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 215
    .local v15, defaultValue:Ljava/lang/String;
    if-eqz v15, :cond_9

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_nubia_overlay_display_devices"

    move-object/from16 v0, v24

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 219
    :cond_9
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mPreOverlaySetting:Ljava/lang/String;

    .line 221
    const/4 v2, 0x1

    :try_start_0
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 222
    .local v5, width:I
    const/4 v2, 0x2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 223
    .local v6, height:I
    const/4 v2, 0x3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 224
    .local v7, densityDpi:I
    const-wide/high16 v2, 0x3ff0

    int-to-double v0, v5

    move-wide/from16 v27, v0

    mul-double v2, v2, v27

    int-to-double v0, v6

    move-wide/from16 v27, v0

    div-double v10, v2, v27

    .line 225
    .local v10, rate:D
    int-to-double v2, v5

    mul-double/2addr v2, v10

    double-to-int v5, v2

    .line 226
    int-to-double v2, v6

    mul-double/2addr v2, v10

    double-to-int v6, v2

    .line 227
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->rotated:Z

    .line 228
    const/16 v7, 0x1e0

    .line 229
    const-string v2, "OverlayDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "update width ="

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v27, " height = "

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/16 v2, 0x64

    if-lt v5, v2, :cond_c

    const/16 v2, 0x1000

    if-gt v5, v2, :cond_c

    const/16 v2, 0x64

    if-lt v6, v2, :cond_c

    const/16 v2, 0x1000

    if-gt v6, v2, :cond_c

    const/16 v2, 0x78

    if-lt v7, v2, :cond_c

    const/16 v2, 0x1e0

    if-gt v7, v2, :cond_c

    .line 235
    add-int/lit8 v13, v13, 0x1

    move/from16 v22, v13

    .line 236
    .local v22, number:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104052a

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v27

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, name:Ljava/lang/String;
    const-string v4, "singleUI_view"

    .line 239
    invoke-static/range {v22 .. v22}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->chooseOverlayGravity(I)I

    move-result v8

    .line 241
    .local v8, gravity:I
    const-string v2, "OverlayDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Showing overlay display device #"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v27, ": name="

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v27, ", width="

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v27, ", height="

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v27, ", densityDpi="

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    new-instance v2, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;-><init>(Lcom/android/server/display/nubiaOverlayDisplayAdapter;Ljava/lang/String;IIIILjava/lang/String;D)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #width:I
    .end local v6           #height:I
    .end local v7           #densityDpi:I
    .end local v8           #gravity:I
    .end local v10           #rate:D
    .end local v15           #defaultValue:Ljava/lang/String;
    .end local v22           #number:I
    :cond_a
    :goto_4
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    .line 251
    :cond_b
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 254
    :cond_c
    :goto_5
    const-string v2, "OverlayDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Malformed overlay display devices setting: "

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 249
    .restart local v15       #defaultValue:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_5
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 4
    .parameter "pw"

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentOverlaySetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOverlays: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;

    .line 99
    .local v1, overlay:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;
    invoke-virtual {v1, p1}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;->dumpLocked(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 101
    .end local v1           #overlay:Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayHandle;
    :cond_0
    return-void
.end method

.method public registerLocked()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 107
    invoke-virtual {p0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/nubiaOverlayDisplayAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$1;-><init>(Lcom/android/server/display/nubiaOverlayDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    return-void
.end method
