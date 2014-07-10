.class public Lnubia/content/res/IconCustomizer;
.super Ljava/lang/Object;
.source "IconCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/content/res/IconCustomizer$CustomizedIconsListener;
    }
.end annotation


# static fields
.field private static final sAlphaShift:I = 0x18

.field private static sCache:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sCanvas:Landroid/graphics/Canvas; = null

.field public static sCustomizedIconHeight:I = 0x0

.field public static sCustomizedIconWidth:I = 0x0

.field private static final sDensities:[I = null

.field private static sDensity:I = 0x0

.field private static sExcludeAll:Ljava/lang/Boolean; = null

.field private static sExcludes:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIconHeight:I = 0x0

.field private static sIconMapping:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIconWidth:I = 0x0

.field private static final sOldBounds:Landroid/graphics/Rect; = null

.field private static final sPathPrefix:Ljava/lang/String; = "/data/system/theme/customized_icons/"

.field private static final sRGBMask:I = 0xffffff

.field private static final sSystemResource:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v4, 0x5a

    const/16 v3, 0x48

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    sput v1, Lnubia/content/res/IconCustomizer;->sDensity:I

    .line 54
    sput v1, Lnubia/content/res/IconCustomizer;->sIconHeight:I

    .line 55
    sput v1, Lnubia/content/res/IconCustomizer;->sIconWidth:I

    .line 56
    sput v1, Lnubia/content/res/IconCustomizer;->sCustomizedIconHeight:I

    .line 57
    sput v1, Lnubia/content/res/IconCustomizer;->sCustomizedIconWidth:I

    .line 64
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    sput-object v2, Lnubia/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    .line 65
    sget-object v2, Lnubia/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v2, Lnubia/content/res/IconCustomizer;->sDensity:I

    .line 66
    sget v2, Lnubia/content/res/IconCustomizer;->sDensity:I

    invoke-static {v2}, Lnubia/util/DisplayUtils;->getBestDensityOrder(I)[I

    move-result-object v2

    sput-object v2, Lnubia/content/res/IconCustomizer;->sDensities:[I

    .line 68
    invoke-static {v3}, Lnubia/content/res/IconCustomizer;->scalePixel(I)I

    move-result v2

    sput v2, Lnubia/content/res/IconCustomizer;->sIconWidth:I

    .line 69
    invoke-static {v3}, Lnubia/content/res/IconCustomizer;->scalePixel(I)I

    move-result v2

    sput v2, Lnubia/content/res/IconCustomizer;->sIconHeight:I

    .line 70
    invoke-static {v4}, Lnubia/content/res/IconCustomizer;->scalePixel(I)I

    move-result v2

    sput v2, Lnubia/content/res/IconCustomizer;->sCustomizedIconWidth:I

    .line 71
    invoke-static {v4}, Lnubia/content/res/IconCustomizer;->scalePixel(I)I

    move-result v2

    sput v2, Lnubia/content/res/IconCustomizer;->sCustomizedIconHeight:I

    .line 73
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sput-object v2, Lnubia/content/res/IconCustomizer;->sOldBounds:Landroid/graphics/Rect;

    .line 74
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    sput-object v2, Lnubia/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    .line 75
    sget-object v2, Lnubia/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    new-instance v3, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v4, 0x4

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 77
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lnubia/content/res/IconCustomizer;->sCache:Ljava/util/HashMap;

    .line 79
    const-string/jumbo v2, "sys.ui.app-icon-background"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lnubia/content/res/IconCustomizer;->sExcludeAll:Ljava/lang/Boolean;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnubia/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    .line 83
    sget-object v0, Lnubia/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.nubia.mms.png"

    const-string v2, "com.android.mms.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lnubia/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.qihoo360.mobilesafe_zte.png"

    const-string v2, "com.qihoo360.mobilesafe.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lnubia/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.phone.png"

    const-string v2, "com.android.contacts.DialerActivity.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void

    :cond_0
    move v0, v1

    .line 79
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 544
    return-void
.end method

.method public static clearCache()V
    .locals 2

    .prologue
    .line 92
    sget-object v1, Lnubia/content/res/IconCustomizer;->sExcludeAll:Ljava/lang/Boolean;

    monitor-enter v1

    .line 93
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lnubia/content/res/IconCustomizer;->sExcludes:Ljava/util/Set;

    .line 94
    sget-object v0, Lnubia/content/res/IconCustomizer;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 95
    monitor-exit v1

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static clearCustomizedIcons(Ljava/lang/String;)V
    .locals 5
    .parameter "file"

    .prologue
    .line 103
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    const-string p0, "/data/system/theme/customized_icons/"

    .line 108
    :goto_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/theme/customized_icons/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v2, iconsFolder:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 111
    .local v1, icons:[Ljava/io/File;
    if-eqz v1, :cond_2

    array-length v3, v1

    if-lez v3, :cond_2

    .line 112
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 113
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 112
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    .end local v0           #i:I
    .end local v1           #icons:[Ljava/io/File;
    .end local v2           #iconsFolder:Ljava/io/File;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/theme/customized_icons/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 119
    .restart local v2       #iconsFolder:Ljava/io/File;
    :cond_2
    return-void
.end method

.method private static composeIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "bitmap"

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v14, 0x0

    .line 128
    const-string v4, "icon_background.png"

    invoke-static {v4}, Lnubia/content/res/IconCustomizer;->getCachedThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 129
    .local v10, background:Landroid/graphics/Bitmap;
    if-eqz v10, :cond_2

    .line 130
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 131
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 132
    .local v7, height:I
    mul-int v4, v3, v7

    new-array v1, v4, [I

    .local v1, pixels:[I
    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 133
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 134
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 136
    invoke-static {v3, v7, v1}, Lnubia/content/res/IconCustomizer;->cutEdge(II[I)V

    .line 138
    sget v4, Lnubia/content/res/IconCustomizer;->sCustomizedIconWidth:I

    sget v5, Lnubia/content/res/IconCustomizer;->sCustomizedIconHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 140
    .local v12, customBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 142
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v0, v10, v14, v14, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 144
    const-string v4, "icon_pattern.png"

    invoke-static {v4}, Lnubia/content/res/IconCustomizer;->getCachedThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 145
    .local v13, pattern:Landroid/graphics/Bitmap;
    if-eqz v13, :cond_0

    .line 146
    invoke-virtual {v0, v13, v14, v14, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 149
    :cond_0
    sget v4, Lnubia/content/res/IconCustomizer;->sCustomizedIconWidth:I

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    sget v5, Lnubia/content/res/IconCustomizer;->sCustomizedIconHeight:I

    sub-int/2addr v5, v7

    div-int/lit8 v5, v5, 0x2

    const/4 v8, 0x1

    move v6, v3

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 152
    const-string v2, "icon_border.png"

    invoke-static {v2}, Lnubia/content/res/IconCustomizer;->getCachedThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 153
    .local v11, border:Landroid/graphics/Bitmap;
    if-eqz v11, :cond_1

    .line 154
    invoke-virtual {v0, v11, v14, v14, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 159
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #pixels:[I
    .end local v3           #width:I
    .end local v7           #height:I
    .end local v11           #border:Landroid/graphics/Bitmap;
    .end local v12           #customBitmap:Landroid/graphics/Bitmap;
    .end local v13           #pattern:Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object v12

    :cond_2
    move-object v12, p0

    goto :goto_0
.end method

.method private static composeShortcutIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "bitmap"

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v13, 0x0

    .line 169
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 170
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 171
    .local v7, height:I
    mul-int v4, v3, v7

    new-array v1, v4, [I

    .local v1, pixels:[I
    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 172
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 173
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 174
    invoke-static {v3, v7, v1}, Lnubia/content/res/IconCustomizer;->cutEdge(II[I)V

    .line 176
    sget v4, Lnubia/content/res/IconCustomizer;->sCustomizedIconWidth:I

    sget v5, Lnubia/content/res/IconCustomizer;->sCustomizedIconHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 178
    .local v10, customBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 181
    .local v0, canvas:Landroid/graphics/Canvas;
    const-string v4, "icon_shortcut.png"

    invoke-static {v4}, Lnubia/content/res/IconCustomizer;->getCachedThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 182
    .local v11, shortcut:Landroid/graphics/Bitmap;
    if-eqz v11, :cond_0

    .line 183
    invoke-virtual {v0, v11, v13, v13, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 186
    :cond_0
    sget v4, Lnubia/content/res/IconCustomizer;->sCustomizedIconWidth:I

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    sget v5, Lnubia/content/res/IconCustomizer;->sCustomizedIconHeight:I

    sub-int/2addr v5, v7

    div-int/lit8 v5, v5, 0x2

    const/4 v8, 0x1

    move v6, v3

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 188
    const-string v2, "icon_shortcut_arrow.png"

    invoke-static {v2}, Lnubia/content/res/IconCustomizer;->getCachedThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 189
    .local v12, shortcutArrow:Landroid/graphics/Bitmap;
    if-eqz v12, :cond_1

    .line 190
    invoke-virtual {v0, v12, v13, v13, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 193
    :cond_1
    return-object v10
.end method

.method private static cutEdge(II[I)V
    .locals 11
    .parameter "width"
    .parameter "height"
    .parameter "pixels"

    .prologue
    .line 204
    const-string v2, "icon_mask.png"

    invoke-static {v2}, Lnubia/content/res/IconCustomizer;->getCachedThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 205
    .local v0, iconMask:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 207
    .local v10, iconMaskWidth:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 209
    .local v9, iconMaskHeight:I
    if-lt v10, p0, :cond_0

    if-lt v9, p1, :cond_0

    .line 210
    mul-int v2, v10, v9

    new-array v1, v2, [I

    .line 211
    .local v1, iconMaskPixels:[I
    const/4 v2, 0x0

    sub-int v3, v10, p0

    div-int/lit8 v4, v3, 0x2

    sub-int v3, v9, p1

    div-int/lit8 v5, v3, 0x2

    move v3, p0

    move v6, p0

    move v7, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 212
    mul-int v2, p0, p1

    add-int/lit8 v8, v2, -0x1

    .local v8, i:I
    :goto_0
    if-ltz v8, :cond_0

    .line 213
    aget v2, p2, v8

    const v3, 0xffffff

    aget v4, p2, v8

    ushr-int/lit8 v4, v4, 0x18

    aget v5, v1, v8

    ushr-int/lit8 v5, v5, 0x18

    mul-int/2addr v4, v5

    div-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    add-int/2addr v3, v4

    and-int/2addr v2, v3

    aput v2, p2, v8

    .line 212
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 217
    .end local v1           #iconMaskPixels:[I
    .end local v8           #i:I
    .end local v9           #iconMaskHeight:I
    .end local v10           #iconMaskWidth:I
    :cond_0
    return-void
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 18
    .parameter "drawable"

    .prologue
    .line 225
    sget-object v16, Lnubia/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v16

    .line 226
    :try_start_0
    sget v7, Lnubia/content/res/IconCustomizer;->sIconWidth:I

    .line 227
    .local v7, finalWidth:I
    sget v6, Lnubia/content/res/IconCustomizer;->sIconHeight:I

    .line 228
    .local v6, finalHeight:I
    sget v5, Lnubia/content/res/IconCustomizer;->sIconWidth:I

    .line 229
    .local v5, desiredWidth:I
    sget v4, Lnubia/content/res/IconCustomizer;->sIconHeight:I

    .line 230
    .local v4, desiredHeight:I
    const-string v15, "icon_background.png"

    invoke-static {v15}, Lnubia/content/res/IconCustomizer;->getCachedThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 231
    .local v2, background:Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    .line 232
    sget v5, Lnubia/content/res/IconCustomizer;->sCustomizedIconWidth:I

    .line 233
    sget v4, Lnubia/content/res/IconCustomizer;->sCustomizedIconHeight:I

    .line 234
    sget v7, Lnubia/content/res/IconCustomizer;->sCustomizedIconWidth:I

    .line 235
    sget v6, Lnubia/content/res/IconCustomizer;->sCustomizedIconHeight:I

    .line 237
    :cond_0
    move-object/from16 v0, p0

    instance-of v15, v0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v15, :cond_4

    .line 238
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v12, v0

    .line 239
    .local v12, paintDrawable:Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v12, v7}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 240
    invoke-virtual {v12, v6}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 248
    .end local v12           #paintDrawable:Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    .line 249
    .local v11, originalWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 250
    .local v10, originalHeight:I
    if-lez v11, :cond_3

    if-lez v10, :cond_3

    .line 251
    if-lt v5, v11, :cond_2

    if-ge v4, v10, :cond_6

    .line 253
    :cond_2
    int-to-float v15, v11

    int-to-float v0, v10

    move/from16 v17, v0

    div-float v13, v15, v17

    .line 254
    .local v13, ratio:F
    if-le v11, v10, :cond_5

    .line 256
    int-to-float v15, v5

    div-float/2addr v15, v13

    float-to-int v4, v15

    .line 268
    .end local v13           #ratio:F
    :cond_3
    :goto_1
    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 269
    .local v3, bitmap:Landroid/graphics/Bitmap;
    sget-object v15, Lnubia/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v15, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 270
    sub-int v15, v7, v5

    div-int/lit8 v8, v15, 0x2

    .line 271
    .local v8, left:I
    sub-int v15, v6, v4

    div-int/lit8 v14, v15, 0x2

    .line 272
    .local v14, top:I
    sget-object v15, Lnubia/content/res/IconCustomizer;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 273
    add-int v15, v8, v5

    add-int v17, v14, v4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v8, v14, v15, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 274
    sget-object v15, Lnubia/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 275
    sget-object v15, Lnubia/content/res/IconCustomizer;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 276
    monitor-exit v16

    return-object v3

    .line 241
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #left:I
    .end local v10           #originalHeight:I
    .end local v11           #originalWidth:I
    .end local v14           #top:I
    :cond_4
    move-object/from16 v0, p0

    instance-of v15, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v15, :cond_1

    .line 242
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v9, v0

    .line 243
    .local v9, localBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v15

    if-nez v15, :cond_1

    .line 244
    sget-object v15, Lnubia/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 277
    .end local v2           #background:Landroid/graphics/Bitmap;
    .end local v4           #desiredHeight:I
    .end local v5           #desiredWidth:I
    .end local v6           #finalHeight:I
    .end local v7           #finalWidth:I
    .end local v9           #localBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 259
    .restart local v2       #background:Landroid/graphics/Bitmap;
    .restart local v4       #desiredHeight:I
    .restart local v5       #desiredWidth:I
    .restart local v6       #finalHeight:I
    .restart local v7       #finalWidth:I
    .restart local v10       #originalHeight:I
    .restart local v11       #originalWidth:I
    .restart local v13       #ratio:F
    :cond_5
    int-to-float v15, v4

    mul-float/2addr v15, v13

    float-to-int v5, v15

    goto :goto_1

    .line 263
    .end local v13           #ratio:F
    :cond_6
    move v5, v11

    .line 264
    move v4, v10

    goto :goto_1
.end method

.method public static generateIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter "drawable"

    .prologue
    .line 281
    invoke-static {p0}, Lnubia/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lnubia/content/res/IconCustomizer;->composeIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lnubia/content/res/IconCustomizer;->scaleDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static generateShortcutIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter "drawable"

    .prologue
    .line 285
    invoke-static {p0}, Lnubia/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lnubia/content/res/IconCustomizer;->composeShortcutIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lnubia/content/res/IconCustomizer;->scaleDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static getCachedThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "packageName"

    .prologue
    .line 289
    sget v0, Lnubia/content/res/IconCustomizer;->sCustomizedIconWidth:I

    sget v1, Lnubia/content/res/IconCustomizer;->sCustomizedIconHeight:I

    invoke-static {p0, v0, v1}, Lnubia/content/res/IconCustomizer;->getCachedThemeIcon(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getCachedThemeIcon(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "packageName"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget-object v2, Lnubia/content/res/IconCustomizer;->sCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 296
    .local v1, softReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_0

    .line 297
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 299
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    if-nez v0, :cond_1

    .line 300
    invoke-static {p0}, Lnubia/content/res/IconCustomizer;->getThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 301
    sget-object v2, Lnubia/content/res/IconCustomizer;->sCache:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :cond_1
    invoke-static {v0, p1, p2}, Lnubia/content/res/IconCustomizer;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static getCustomizedIconDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 8
    .parameter "packageName"
    .parameter "packageItemName"

    .prologue
    .line 308
    invoke-static {p0, p1}, Lnubia/content/res/IconCustomizer;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, fileName:Ljava/lang/String;
    invoke-static {v1}, Lnubia/content/res/IconCustomizer;->getThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 311
    .local v2, icon:Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 312
    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/Object;

    .line 313
    .local v5, objects:[Ljava/lang/Object;
    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 314
    const-string v6, "%s.png"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnubia/content/res/IconCustomizer;->getThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 317
    .end local v5           #objects:[Ljava/lang/Object;
    :cond_0
    if-nez v2, :cond_1

    .line 319
    sget-object v6, Lnubia/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 320
    .local v4, mapValue:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 321
    invoke-static {v4}, Lnubia/content/res/IconCustomizer;->getThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 325
    .end local v4           #mapValue:Ljava/lang/String;
    :cond_1
    if-nez v2, :cond_2

    .line 327
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/system/theme/customized_icons/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, iconPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 329
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 330
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 331
    if-nez v2, :cond_2

    .line 332
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 336
    .end local v0           #file:Ljava/io/File;
    .end local v3           #iconPath:Ljava/lang/String;
    :cond_2
    invoke-static {v2}, Lnubia/content/res/IconCustomizer;->scaleDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    return-object v6
.end method

.method public static getFancyIconFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "paramString1"
    .parameter "paramString2"

    .prologue
    .line 346
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "packageName"
    .parameter "packageItemName"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 356
    if-nez p1, :cond_0

    .line 357
    new-array v0, v3, [Ljava/lang/Object;

    .line 358
    .local v0, objects:[Ljava/lang/Object;
    aput-object p0, v0, v2

    .line 359
    const-string v1, "%s.png"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 368
    :goto_0
    return-object v1

    .line 360
    .end local v0           #objects:[Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    new-array v0, v3, [Ljava/lang/Object;

    .line 362
    .restart local v0       #objects:[Ljava/lang/Object;
    aput-object p1, v0, v2

    .line 363
    const-string v1, "%s.png"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 365
    .end local v0           #objects:[Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 366
    .restart local v0       #objects:[Ljava/lang/Object;
    aput-object p0, v0, v2

    .line 367
    aput-object p1, v0, v3

    .line 368
    const-string v1, "%s#%s.png"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getThemeIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "fileName"

    .prologue
    .line 378
    const/4 v0, 0x0

    .line 379
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lnubia/content/res/IconCustomizer;->sDensities:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 381
    invoke-static {}, Lnubia/content/res/ThemeResources;->getSystem()Lnubia/content/res/ThemeResourcesSystem;

    move-result-object v2

    sget-object v3, Lnubia/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lnubia/content/res/IconCustomizer;->sDensities:[I

    aget v5, v5, v1

    invoke-static {v5}, Lnubia/util/DisplayUtils;->getDrawbleDensityFolder(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnubia/content/res/ThemeResourcesSystem;->getIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 382
    if-nez v0, :cond_0

    .line 379
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 385
    :cond_0
    sget-object v2, Lnubia/content/res/IconCustomizer;->sDensities:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_1

    .line 388
    :cond_1
    if-nez v0, :cond_2

    .line 390
    invoke-static {}, Lnubia/content/res/ThemeResources;->getSystem()Lnubia/content/res/ThemeResourcesSystem;

    move-result-object v2

    sget-object v3, Lnubia/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-virtual {v2, v3, p0}, Lnubia/content/res/ThemeResourcesSystem;->getIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 391
    if-eqz v0, :cond_2

    .line 392
    const/16 v2, 0xf0

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 395
    :cond_2
    return-object v0
.end method

.method public static isExclude(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 404
    sget-object v1, Lnubia/content/res/IconCustomizer;->sExcludeAll:Ljava/lang/Boolean;

    monitor-enter v1

    .line 405
    :try_start_0
    sget-object v0, Lnubia/content/res/IconCustomizer;->sExcludes:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 406
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lnubia/content/res/IconCustomizer;->sExcludes:Ljava/util/Set;

    .line 407
    invoke-static {}, Lnubia/content/res/ThemeResources;->getSystem()Lnubia/content/res/ThemeResourcesSystem;

    move-result-object v0

    const-string v2, "exclude_list.txt"

    invoke-virtual {v0, v2}, Lnubia/content/res/ThemeResourcesSystem;->hasIcon(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    sget-object v0, Lnubia/content/res/IconCustomizer;->sExcludes:Ljava/util/Set;

    const-string v2, "com.android.browser"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 409
    sget-object v0, Lnubia/content/res/IconCustomizer;->sExcludes:Ljava/util/Set;

    const-string v2, "com.android.calendar"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 410
    sget-object v0, Lnubia/content/res/IconCustomizer;->sExcludes:Ljava/util/Set;

    const-string v2, "com.android.camera"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 411
    sget-object v0, Lnubia/content/res/IconCustomizer;->sExcludes:Ljava/util/Set;

    const-string v2, "com.android.contacts"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 412
    sget-object v0, Lnubia/content/res/IconCustomizer;->sExcludes:Ljava/util/Set;

    const-string v2, "com.android.deskclock"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 413
    sget-object v0, Lnubia/content/res/IconCustomizer;->sExcludes:Ljava/util/Set;

    const-string v2, "com.android.email"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 414
    sget-object v0, Lnubia/content/res/IconCustomizer;->sExcludes:Ljava/util/Set;

    const-string v2, "com.android.fileexplorer"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 415
    sget-object v0, Lnubia/content/res/IconCustomizer;->sExcludes:Ljava/util/Set;

    const-string v2, "com.android.gallery"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 416
    sget-object v0, Lnubia/content/res/IconCustomizer;->sExcludes:Ljava/util/Set;

    const-string v2, "com.android.launcher"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 417
    sget-object v0, Lnubia/content/res/IconCustomizer;->sExcludes:Ljava/util/Set;

    const-string v2, "com.android.mms"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 418
    sget-object v0, Lnubia/content/res/IconCustomizer;->sExcludes:Ljava/util/Set;

    const-string v2, "com.android.monitor"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 419
    sget-object v0, Lnubia/content/res/IconCustomizer;->sExcludes:Ljava/util/Set;

    const-string v2, "com.android.music"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 420
    sget-object v0, Lnubia/content/res/IconCustomizer;->sExcludes:Ljava/util/Set;

    const-string v2, "com.android.phone"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 421
    sget-object v0, Lnubia/content/res/IconCustomizer;->sExcludes:Ljava/util/Set;

    const-string v2, "com.android.providers.contacts"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 422
    sget-object v0, Lnubia/content/res/IconCustomizer;->sExcludes:Ljava/util/Set;

    const-string v2, "com.android.providers.downloads.ui"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 423
    sget-object v0, Lnubia/content/res/IconCustomizer;->sExcludes:Ljava/util/Set;

    const-string v2, "com.android.providers.telephony"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 424
    sget-object v0, Lnubia/content/res/IconCustomizer;->sExcludes:Ljava/util/Set;

    const-string v2, "com.android.quicksearchbox"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 425
    sget-object v0, Lnubia/content/res/IconCustomizer;->sExcludes:Ljava/util/Set;

    const-string v2, "com.android.settings"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 426
    sget-object v0, Lnubia/content/res/IconCustomizer;->sExcludes:Ljava/util/Set;

    const-string v2, "com.android.soundrecorder"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 427
    sget-object v0, Lnubia/content/res/IconCustomizer;->sExcludes:Ljava/util/Set;

    const-string v2, "com.android.spare_parts"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 428
    sget-object v0, Lnubia/content/res/IconCustomizer;->sExcludes:Ljava/util/Set;

    const-string v2, "com.android.stk"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 429
    sget-object v0, Lnubia/content/res/IconCustomizer;->sExcludes:Ljava/util/Set;

    const-string v2, "com.android.thememanager"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 430
    sget-object v0, Lnubia/content/res/IconCustomizer;->sExcludes:Ljava/util/Set;

    const-string v2, "com.android.updater"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_0
    sget-object v0, Lnubia/content/res/IconCustomizer;->sExcludeAll:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lnubia/content/res/IconCustomizer;->sExcludes:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static prepareCustomizedIcons(Landroid/content/Context;)V
    .locals 1
    .parameter "cxt"

    .prologue
    .line 442
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnubia/content/res/IconCustomizer;->prepareCustomizedIcons(Landroid/content/Context;Lnubia/content/res/IconCustomizer$CustomizedIconsListener;)V

    .line 443
    return-void
.end method

.method public static prepareCustomizedIcons(Landroid/content/Context;Lnubia/content/res/IconCustomizer$CustomizedIconsListener;)V
    .locals 8
    .parameter "cxt"
    .parameter "listener"

    .prologue
    .line 451
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 452
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 455
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 456
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p1, :cond_0

    .line 457
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p1, v6}, Lnubia/content/res/IconCustomizer$CustomizedIconsListener;->beforePrepareIcon(I)V

    .line 459
    :cond_0
    const/4 v1, 0x0

    .line 460
    .local v1, i:I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 461
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 462
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6, v5}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 463
    if-eqz p1, :cond_1

    .line 466
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-interface {p1, v1}, Lnubia/content/res/IconCustomizer$CustomizedIconsListener;->finishPrepareIcon(I)V

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 468
    :cond_2
    if-nez p1, :cond_3

    .line 472
    :goto_1
    return-void

    .line 471
    :cond_3
    invoke-interface {p1}, Lnubia/content/res/IconCustomizer$CustomizedIconsListener;->finishAllIcons()V

    goto :goto_1
.end method

.method public static saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 10
    .parameter "fileName"
    .parameter "bitmap"

    .prologue
    const/4 v9, -0x1

    .line 480
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/system/theme/customized_icons/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 481
    .local v5, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 482
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 484
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    const/16 v6, 0x1b4

    const/4 v7, -0x1

    const/4 v8, -0x1

    :try_start_1
    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    .line 490
    :goto_0
    if-nez v3, :cond_0

    .line 491
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 492
    .local v4, parent:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 493
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1ed

    invoke-static {v6, v7, v9, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 495
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 496
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    const/16 v6, 0x1b4

    const/4 v7, -0x1

    const/4 v8, -0x1

    :try_start_3
    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 502
    .end local v4           #parent:Ljava/io/File;
    :goto_1
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {p1, v6, v7, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 504
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 505
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 509
    :goto_2
    return-void

    .line 486
    :catch_0
    move-exception v6

    :goto_3
    move-object v3, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 497
    .restart local v4       #parent:Ljava/io/File;
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 499
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :goto_4
    goto :goto_2

    .line 506
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v4           #parent:Ljava/io/File;
    :catch_2
    move-exception v6

    goto :goto_2

    .line 497
    .restart local v4       #parent:Ljava/io/File;
    :catch_3
    move-exception v0

    goto :goto_4

    .line 486
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v4           #parent:Ljava/io/File;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v6

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :cond_0
    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private static scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 512
    sget v0, Lnubia/content/res/IconCustomizer;->sCustomizedIconWidth:I

    sget v1, Lnubia/content/res/IconCustomizer;->sCustomizedIconHeight:I

    invoke-static {p0, v0, v1}, Lnubia/content/res/IconCustomizer;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "bitmap"
    .parameter "customizedIconWidth"
    .parameter "customizedIconHeight"

    .prologue
    .line 516
    if-eqz p0, :cond_2

    .line 517
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 518
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 519
    sget v0, Lnubia/content/res/IconCustomizer;->sDensity:I

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 523
    .end local p0
    :cond_1
    :goto_0
    return-object p0

    .restart local p0
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static scaleDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 527
    if-eqz p0, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Lnubia/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-static {p0}, Lnubia/content/res/IconCustomizer;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static scalePixel(I)I
    .locals 2
    .parameter "pixel"

    .prologue
    .line 534
    sget v0, Lnubia/content/res/IconCustomizer;->sDensity:I

    .line 538
    .local v0, density:I
    mul-int v1, p0, v0

    div-int/lit16 v1, v1, 0xf0

    return v1
.end method
