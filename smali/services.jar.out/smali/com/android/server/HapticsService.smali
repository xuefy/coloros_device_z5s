.class public Lcom/android/server/HapticsService;
.super Landroid/os/IHapticsService$Stub;
.source "HapticsService.java"


# static fields
.field private static final DATA_HAPTICTHEME_DIALPAD:Ljava/lang/String; = "data_haptictheme_dialpad"

.field private static final DATA_HAPTICTHEME_GALLERY:Ljava/lang/String; = "data_haptictheme_gallery"

.field private static final DATA_HAPTICTHEME_LAUNCHER:Ljava/lang/String; = "data_haptictheme_launcher"

.field private static final DATA_HAPTICTHEME_LONGPRESS:Ljava/lang/String; = "data_haptictheme_longpress"

.field private static final DATA_HAPTICTHEME_ROTATE:Ljava/lang/String; = "data_haptictheme_rotate"

.field private static final DATA_HAPTICTHEME_SIP:Ljava/lang/String; = "data_haptictheme_SIP"

.field private static final DATA_HAPTICTHEME_VIRTUALKEY:Ljava/lang/String; = "data_haptictheme_virtualkey"

.field private static final DATA_HAPTIC_A2H:Ljava/lang/String; = "haptic_A2H_data"

.field private static final DATA_HAPTIC_VIBRATE:Ljava/lang/String; = "haptic_vibrate_data"

.field private static final DEBUG:Z = false

.field private static final HAPTICS_GALLERY_MULTITOUCH:I = 0xb

.field private static final HAPTICS_HAPTICRING:I = 0x6

.field private static final HAPTICS_HAPTICTHEME_DIALPAD:I = 0x2

.field private static final HAPTICS_HAPTICTHEME_GALLERY:I = 0x8

.field private static final HAPTICS_HAPTICTHEME_LAUNCHER:I = 0x3

.field private static final HAPTICS_HAPTICTHEME_LONGPRESS:I = 0x4

.field private static final HAPTICS_HAPTICTHEME_ROTATE:I = 0x7

.field private static final HAPTICS_HAPTICTHEME_SIP:I = 0x1

.field private static final HAPTICS_HAPTICTHEME_VIRTUALKEY:I = 0x5

.field private static final HAPTICS_LOCKSCREEN:I = 0x9

.field private static final HAPTICS_SCROLLING:I = 0xa

.field private static final HAPTIC_MODE_AUDIO2HAPTIC:I = 0x1

.field private static final HAPTIC_MODE_IDLE:I = 0x0

.field private static final HAPTIC_MODE_RING:I = 0x8

.field private static final HAPTIC_MODE_RTP_PLAYBACK:I = 0x4

.field private static final HAPTIC_MODE_SEQUENCE_PLAYBACK:I = 0x2

.field private static final HAPTIC_RING_CONFIG:Ljava/lang/String; = "/system/etc/RingHaptics.xml"

.field private static final HAPTIC_RING_SILENCE:Ljava/lang/String; = "0"

.field private static final SW_STATE_AUDIO2HAPTIC:I = 0x1

.field private static final SW_STATE_IDLE:I = 0x0

.field private static final SW_STATE_RTP_PLAYBACK:I = 0x4

.field private static final SW_STATE_SEQUENCE_PLAYBACK:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HapticsService"

.field private static final XML_HAPTICS:Ljava/lang/String; = "Haptics"

.field private static final XML_HAPTICS_NAME:Ljava/lang/String; = "name"

.field private static final XML_HAPTICS_SEQ:Ljava/lang/String; = "seq"


# instance fields
.field private mA2H_str:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mFeedbackEnabled:I

.field private mHapticWhenRing:I

.field private mHapticsGalleryMultitouch:I

.field private mHapticsLockScreen:I

.field private mHapticsMode:I

.field private mHapticsRepeat:I

.field private mHapticsScrolling:I

.field private mHapticsStatus:I

.field private mHapticsStatusObserver:Landroid/os/UEventObserver;

.field private mHapticsStatusPrev:I

.field private mHapticsThemeDialpad:I

.field private mHapticsThemeGallery:I

.field private mHapticsThemeLPress:I

.field private mHapticsThemeLauncher:I

.field private mHapticsThemeRotate:I

.field private mHapticsThemeSIP:I

.field private mHapticsThemeVK:I

.field private mRingHapticsDefault:I

.field private mRingHapticsName:[Ljava/lang/String;

.field private mRingHapticsSeq:[Ljava/lang/String;

.field private mSeq:[B

.field private final resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 152
    invoke-direct {p0}, Landroid/os/IHapticsService$Stub;-><init>()V

    .line 114
    iput v1, p0, Lcom/android/server/HapticsService;->mHapticsThemeSIP:I

    .line 115
    iput v1, p0, Lcom/android/server/HapticsService;->mHapticsThemeVK:I

    .line 116
    iput v1, p0, Lcom/android/server/HapticsService;->mHapticsThemeLPress:I

    .line 117
    iput v1, p0, Lcom/android/server/HapticsService;->mHapticsThemeLauncher:I

    .line 118
    iput v1, p0, Lcom/android/server/HapticsService;->mHapticsThemeDialpad:I

    .line 119
    iput v1, p0, Lcom/android/server/HapticsService;->mHapticsThemeRotate:I

    .line 120
    iput v1, p0, Lcom/android/server/HapticsService;->mHapticsThemeGallery:I

    .line 121
    const/16 v0, 0x18

    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsLockScreen:I

    .line 122
    iput v2, p0, Lcom/android/server/HapticsService;->mHapticsScrolling:I

    .line 123
    iput v2, p0, Lcom/android/server/HapticsService;->mHapticsGalleryMultitouch:I

    .line 125
    iput v1, p0, Lcom/android/server/HapticsService;->mFeedbackEnabled:I

    .line 126
    iput v1, p0, Lcom/android/server/HapticsService;->mHapticWhenRing:I

    .line 127
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/HapticsService;->mSeq:[B

    .line 128
    iput v1, p0, Lcom/android/server/HapticsService;->mHapticsStatusPrev:I

    .line 129
    iput v1, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    .line 130
    iput v1, p0, Lcom/android/server/HapticsService;->mHapticsRepeat:I

    .line 131
    iput v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    .line 133
    new-instance v0, Lcom/android/server/HapticsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/HapticsService$1;-><init>(Lcom/android/server/HapticsService;)V

    iput-object v0, p0, Lcom/android/server/HapticsService;->mHapticsStatusObserver:Landroid/os/UEventObserver;

    .line 153
    iput-object p1, p0, Lcom/android/server/HapticsService;->mContext:Landroid/content/Context;

    .line 154
    iget-object v0, p0, Lcom/android/server/HapticsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HapticsService, context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/HapticsService;->LOG(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method private GetRingHapticsFromConfig()V
    .locals 17

    .prologue
    .line 608
    const/4 v11, 0x0

    .line 609
    .local v11, inputStream:Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 610
    .local v8, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x0

    .line 611
    .local v1, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Ljava/io/File;

    const-string v15, "/system/etc/RingHaptics.xml"

    invoke-direct {v2, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 612
    .local v2, config_file:Ljava/io/File;
    const/4 v3, 0x0

    .line 614
    .local v3, document:Lorg/w3c/dom/Document;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 615
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    .line 618
    :try_start_0
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 625
    :goto_0
    :try_start_1
    new-instance v12, Ljava/io/BufferedInputStream;

    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v12, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v11           #inputStream:Ljava/io/InputStream;
    .local v12, inputStream:Ljava/io/InputStream;
    move-object v11, v12

    .line 632
    .end local v12           #inputStream:Ljava/io/InputStream;
    .restart local v11       #inputStream:Ljava/io/InputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v1, v11}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v3

    .line 641
    :goto_2
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v14

    .line 642
    .local v14, root:Lorg/w3c/dom/Element;
    const-string v15, "Haptics"

    invoke-interface {v14, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 643
    .local v13, nl_haptics:Lorg/w3c/dom/NodeList;
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    .line 644
    .local v9, haptics_count:I
    if-nez v9, :cond_0

    .line 668
    .end local v9           #haptics_count:I
    .end local v13           #nl_haptics:Lorg/w3c/dom/NodeList;
    .end local v14           #root:Lorg/w3c/dom/Element;
    :goto_3
    return-void

    .line 619
    :catch_0
    move-exception v4

    .line 621
    .local v4, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v4}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 626
    .end local v4           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v4

    .line 628
    .local v4, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 633
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v5

    .line 635
    .local v5, e1:Lorg/xml/sax/SAXException;
    invoke-virtual {v5}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_2

    .line 636
    .end local v5           #e1:Lorg/xml/sax/SAXException;
    :catch_3
    move-exception v5

    .line 638
    .local v5, e1:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 647
    .end local v5           #e1:Ljava/io/IOException;
    .restart local v9       #haptics_count:I
    .restart local v13       #nl_haptics:Lorg/w3c/dom/NodeList;
    .restart local v14       #root:Lorg/w3c/dom/Element;
    :cond_0
    new-array v15, v9, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/HapticsService;->mRingHapticsName:[Ljava/lang/String;

    .line 648
    new-array v15, v9, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    .line 650
    const/4 v10, 0x0

    .local v10, i:I
    :goto_4
    if-ge v10, v9, :cond_1

    .line 651
    invoke-interface {v13, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 652
    .local v6, em_haptics:Lorg/w3c/dom/Element;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/HapticsService;->mRingHapticsName:[Ljava/lang/String;

    const-string v16, "name"

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v10

    .line 654
    const-string v15, "seq"

    invoke-interface {v6, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 655
    .local v7, em_seq:Lorg/w3c/dom/Element;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    invoke-interface {v7}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v10

    .line 656
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "name="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/HapticsService;->mRingHapticsName:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v10

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " seq="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v10

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/HapticsService;->LOG(Ljava/lang/String;)V

    .line 650
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 660
    .end local v6           #em_haptics:Lorg/w3c/dom/Element;
    .end local v7           #em_seq:Lorg/w3c/dom/Element;
    :cond_1
    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_3

    .line 661
    :catch_4
    move-exception v4

    .line 663
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 666
    .end local v4           #e:Ljava/io/IOException;
    .end local v9           #haptics_count:I
    .end local v10           #i:I
    .end local v13           #nl_haptics:Lorg/w3c/dom/NodeList;
    .end local v14           #root:Lorg/w3c/dom/Element;
    :cond_2
    const-string v15, "HapticsService"

    const-string v16, "/system/etc/RingHaptics.xml is missing"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private InitHapticsA2HSetting()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 199
    iget-object v5, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v6, "haptic_A2H_data"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/HapticsService;->mA2H_str:Ljava/lang/String;

    .line 200
    iget-object v5, p0, Lcom/android/server/HapticsService;->mA2H_str:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 201
    new-instance v1, Ljava/io/File;

    const-string v5, "/system/etc/haptics_A2H.conf"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v1, a2h_f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 203
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v4, v5

    .line 204
    .local v4, filelen:I
    if-lez v4, :cond_1

    .line 205
    new-array v0, v4, [C

    .line 207
    .local v0, a2hBuf:[C
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 208
    .local v2, bufReader:Ljava/io/BufferedReader;
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v4}, Ljava/io/BufferedReader;->read([CII)I

    .line 209
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v2           #bufReader:Ljava/io/BufferedReader;
    :goto_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v5, p0, Lcom/android/server/HapticsService;->mA2H_str:Ljava/lang/String;

    .line 223
    .end local v0           #a2hBuf:[C
    .end local v4           #filelen:I
    :goto_1
    iget-object v5, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v6, "haptic_A2H_data"

    iget-object v7, p0, Lcom/android/server/HapticsService;->mA2H_str:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 226
    .end local v1           #a2h_f:Ljava/io/File;
    :cond_0
    iget-object v5, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v6, "haptic_A2H_data"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Lcom/android/server/HapticsService$2;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8}, Lcom/android/server/HapticsService$2;-><init>(Lcom/android/server/HapticsService;Landroid/os/Handler;)V

    invoke-virtual {v5, v6, v9, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 234
    return-void

    .line 210
    .restart local v0       #a2hBuf:[C
    .restart local v1       #a2h_f:Ljava/io/File;
    .restart local v4       #filelen:I
    :catch_0
    move-exception v3

    .line 211
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "HapticsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "A2H BufferedReader: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    .end local v0           #a2hBuf:[C
    .end local v3           #e:Ljava/lang/Exception;
    :cond_1
    const-string v5, "HapticsService"

    const-string v6, "A2H a2h_f length ZERO"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    iput-object v5, p0, Lcom/android/server/HapticsService;->mA2H_str:Ljava/lang/String;

    goto :goto_1

    .line 219
    .end local v4           #filelen:I
    :cond_2
    const-string v5, "HapticsService"

    const-string v6, "A2H a2h_f is not exist"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    iput-object v5, p0, Lcom/android/server/HapticsService;->mA2H_str:Ljava/lang/String;

    goto :goto_1
.end method

.method private InitHapticsEffectSettings(Ljava/lang/String;I)V
    .locals 6
    .parameter "setting_str"
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 264
    iget-object v1, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    invoke-static {v1, p1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 265
    .local v0, setting:I
    if-nez v0, :cond_0

    .line 266
    iget-object v1, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 267
    move v0, p2

    .line 270
    :cond_0
    const-string v1, "data_haptictheme_SIP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeSIP:I

    .line 286
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/android/server/HapticsService$5;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4, p1}, Lcom/android/server/HapticsService$5;-><init>(Lcom/android/server/HapticsService;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 316
    return-void

    .line 272
    :cond_2
    const-string v1, "data_haptictheme_dialpad"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 273
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeDialpad:I

    goto :goto_0

    .line 274
    :cond_3
    const-string v1, "data_haptictheme_launcher"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 275
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeLauncher:I

    goto :goto_0

    .line 276
    :cond_4
    const-string v1, "data_haptictheme_longpress"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 277
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeLPress:I

    goto :goto_0

    .line 278
    :cond_5
    const-string v1, "data_haptictheme_virtualkey"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 279
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeVK:I

    goto :goto_0

    .line 280
    :cond_6
    const-string v1, "data_haptictheme_rotate"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 281
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeRotate:I

    goto :goto_0

    .line 282
    :cond_7
    const-string v1, "data_haptictheme_gallery"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeGallery:I

    goto :goto_0
.end method

.method private InitHapticsRingSetting()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 237
    invoke-direct {p0}, Lcom/android/server/HapticsService;->GetRingHapticsFromConfig()V

    .line 238
    iget-object v0, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v1, "haptic_vibrate_data"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/HapticsService;->mRingHapticsDefault:I

    .line 239
    iget v0, p0, Lcom/android/server/HapticsService;->mRingHapticsDefault:I

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v1, "haptic_vibrate_data"

    iget v2, p0, Lcom/android/server/HapticsService;->mRingHapticsDefault:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v1, "haptic_vibrate_data"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/HapticsService$3;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/HapticsService$3;-><init>(Lcom/android/server/HapticsService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 252
    iget-object v0, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v1, "vibrate_when_ringing"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/HapticsService;->mHapticWhenRing:I

    .line 253
    iget-object v0, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v1, "vibrate_when_ringing"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/HapticsService$4;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/HapticsService$4;-><init>(Lcom/android/server/HapticsService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 261
    return-void
.end method

.method private LOG(Ljava/lang/String;)V
    .locals 0
    .parameter "log_str"

    .prologue
    .line 593
    return-void
.end method

.method private LookupHapticValue(I)I
    .locals 1
    .parameter "effectID"

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, value:I
    packed-switch p1, :pswitch_data_0

    .line 195
    :goto_0
    :pswitch_0
    return v0

    .line 162
    :pswitch_1
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeSIP:I

    .line 163
    goto :goto_0

    .line 165
    :pswitch_2
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeDialpad:I

    .line 166
    goto :goto_0

    .line 168
    :pswitch_3
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeLauncher:I

    .line 169
    goto :goto_0

    .line 171
    :pswitch_4
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeLPress:I

    .line 172
    goto :goto_0

    .line 174
    :pswitch_5
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeVK:I

    .line 175
    goto :goto_0

    .line 177
    :pswitch_6
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeRotate:I

    .line 178
    goto :goto_0

    .line 180
    :pswitch_7
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsThemeGallery:I

    .line 181
    goto :goto_0

    .line 183
    :pswitch_8
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsLockScreen:I

    .line 184
    goto :goto_0

    .line 186
    :pswitch_9
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsScrolling:I

    .line 187
    goto :goto_0

    .line 189
    :pswitch_a
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsGalleryMultitouch:I

    .line 190
    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/server/HapticsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/HapticsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/HapticsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsStatusPrev:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/HapticsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/server/HapticsService;->mHapticsThemeDialpad:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/HapticsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/server/HapticsService;->mHapticsStatusPrev:I

    return p1
.end method

.method static synthetic access$1102(Lcom/android/server/HapticsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/server/HapticsService;->mHapticsThemeLauncher:I

    return p1
.end method

.method static synthetic access$1202(Lcom/android/server/HapticsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/server/HapticsService;->mHapticsThemeLPress:I

    return p1
.end method

.method static synthetic access$1302(Lcom/android/server/HapticsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/server/HapticsService;->mHapticsThemeVK:I

    return p1
.end method

.method static synthetic access$1402(Lcom/android/server/HapticsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/server/HapticsService;->mHapticsThemeRotate:I

    return p1
.end method

.method static synthetic access$1502(Lcom/android/server/HapticsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/server/HapticsService;->mHapticsThemeGallery:I

    return p1
.end method

.method static synthetic access$1602(Lcom/android/server/HapticsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/server/HapticsService;->mFeedbackEnabled:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/HapticsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    return v0
.end method

.method static synthetic access$272(Lcom/android/server/HapticsService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/HapticsService;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/HapticsService;->mSeq:[B

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/HapticsService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/HapticsService;->LOG(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/server/HapticsService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/server/HapticsService;->mA2H_str:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/HapticsService;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/HapticsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/server/HapticsService;->mRingHapticsDefault:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/HapticsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/server/HapticsService;->mHapticWhenRing:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/server/HapticsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/server/HapticsService;->mHapticsThemeSIP:I

    return p1
.end method

.method private isA2HEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "appname"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/server/HapticsService;->mA2H_str:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private setupSeq(Ljava/lang/String;)V
    .locals 4
    .parameter "sequence"

    .prologue
    .line 358
    iget-object v2, p0, Lcom/android/server/HapticsService;->mSeq:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 359
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, seq_str:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 361
    iget-object v2, p0, Lcom/android/server/HapticsService;->mSeq:[B

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_0
    return-void
.end method


# virtual methods
.method public getChipRevision(Landroid/os/IBinder;)I
    .locals 1
    .parameter "token"

    .prologue
    .line 542
    invoke-static {}, Lcom/immersion/Haptic;->getChipRevision()I

    move-result v0

    return v0
.end method

.method public getDeviceID(Landroid/os/IBinder;)I
    .locals 1
    .parameter "token"

    .prologue
    .line 534
    invoke-static {}, Lcom/immersion/Haptic;->getDeviceID()I

    move-result v0

    return v0
.end method

.method public getRingHapticsName(Landroid/os/IBinder;)[Ljava/lang/String;
    .locals 1
    .parameter "token"

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/server/HapticsService;->mRingHapticsName:[Ljava/lang/String;

    return-object v0
.end method

.method public getRingHapticsValue(ILandroid/os/IBinder;)Ljava/lang/String;
    .locals 1
    .parameter "index"
    .parameter "token"

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getRingHapticsValues(Landroid/os/IBinder;)[Ljava/lang/String;
    .locals 1
    .parameter "token"

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    return-object v0
.end method

.method public isAudioHapticEnabled(Landroid/os/IBinder;)Z
    .locals 1
    .parameter "token"

    .prologue
    .line 526
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playEffectSequence(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2
    .parameter "sequence"
    .parameter "token"

    .prologue
    .line 455
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 456
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playEffectSequence skip,mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HapticStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/HapticsService;->LOG(Ljava/lang/String;)V

    .line 470
    :goto_0
    return-void

    .line 458
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playEffectSequence Token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/HapticsService;->LOG(Ljava/lang/String;)V

    .line 459
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 460
    const-string v0, "HapticsService"

    const-string v1, "Seq ZERO, bypass"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 464
    :cond_2
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    .line 465
    invoke-direct {p0, p1}, Lcom/android/server/HapticsService;->setupSeq(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/android/server/HapticsService;->mSeq:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/immersion/Haptic;->playEffectSequence([BI)V

    goto :goto_0
.end method

.method public playEffectSequenceRepeat(Ljava/lang/String;ILandroid/os/IBinder;)V
    .locals 2
    .parameter "sequence"
    .parameter "repeat"
    .parameter "token"

    .prologue
    .line 474
    iput p2, p0, Lcom/android/server/HapticsService;->mHapticsRepeat:I

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playEffectSequence Token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/HapticsService;->LOG(Ljava/lang/String;)V

    .line 476
    invoke-direct {p0, p1}, Lcom/android/server/HapticsService;->setupSeq(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/android/server/HapticsService;->mSeq:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/immersion/Haptic;->playEffectSequence([BI)V

    .line 480
    return-void
.end method

.method public playNubiaEffect(IZLandroid/os/IBinder;)V
    .locals 2
    .parameter "effectID"
    .parameter "ignoreFeedBack"
    .parameter "token"

    .prologue
    .line 391
    if-nez p2, :cond_2

    .line 392
    iget v0, p0, Lcom/android/server/HapticsService;->mFeedbackEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 393
    if-lez p1, :cond_1

    const/16 v0, 0x7c

    if-ge p1, v0, :cond_1

    .line 394
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    if-eqz v0, :cond_0

    .line 395
    invoke-static {}, Lcom/immersion/Haptic;->stopPlayingEffect()V

    .line 397
    :cond_0
    invoke-static {p1}, Lcom/immersion/Haptic;->playEffect(I)V

    .line 408
    :cond_1
    :goto_0
    return-void

    .line 401
    :cond_2
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    if-eqz v0, :cond_3

    .line 402
    invoke-static {}, Lcom/immersion/Haptic;->stopPlayingEffect()V

    .line 404
    :cond_3
    invoke-static {p1}, Lcom/immersion/Haptic;->playEffect(I)V

    goto :goto_0
.end method

.method public playRingHaptics(ILandroid/os/IBinder;)V
    .locals 2
    .parameter "index"
    .parameter "token"

    .prologue
    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playRingHaptics: index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRingHapticsDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/HapticsService;->mRingHapticsDefault:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HapticStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/HapticsService;->LOG(Ljava/lang/String;)V

    .line 558
    if-nez p1, :cond_0

    iget v0, p0, Lcom/android/server/HapticsService;->mRingHapticsDefault:I

    if-nez v0, :cond_0

    .line 574
    :goto_0
    return-void

    .line 561
    :cond_0
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    .line 562
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 563
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/immersion/Haptic;->setAudioHapticEnabled(Z)V

    .line 566
    :cond_1
    if-nez p1, :cond_2

    .line 567
    iget-object v0, p0, Lcom/android/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    iget v1, p0, Lcom/android/server/HapticsService;->mRingHapticsDefault:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/HapticsService;->setupSeq(Ljava/lang/String;)V

    .line 572
    :goto_1
    iget-object v0, p0, Lcom/android/server/HapticsService;->mSeq:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/immersion/Haptic;->playEffectSequence([BI)V

    goto :goto_0

    .line 569
    :cond_2
    iget-object v0, p0, Lcom/android/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcom/android/server/HapticsService;->setupSeq(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public playRingSeq(ILandroid/os/IBinder;)V
    .locals 2
    .parameter "index"
    .parameter "token"

    .prologue
    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playRingSeq :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HapticStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/HapticsService;->LOG(Ljava/lang/String;)V

    .line 579
    if-nez p1, :cond_0

    .line 588
    :goto_0
    return-void

    .line 582
    :cond_0
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    .line 584
    iget-object v0, p0, Lcom/android/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcom/android/server/HapticsService;->setupSeq(Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/android/server/HapticsService;->mSeq:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/immersion/Haptic;->playEffectSequence([BI)V

    goto :goto_0
.end method

.method public playTimedEffect(ILandroid/os/IBinder;)V
    .locals 2
    .parameter "effectDuration"
    .parameter "token"

    .prologue
    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playTimedEffect Token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/HapticsService;->LOG(Ljava/lang/String;)V

    .line 447
    invoke-static {p1}, Lcom/immersion/Haptic;->playTimedEffect(I)V

    .line 450
    return-void
.end method

.method public playeffect(ILandroid/os/IBinder;)V
    .locals 4
    .parameter "effectID"
    .parameter "token"

    .prologue
    .line 367
    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 374
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playeffect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") skip,mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HapticStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/HapticsService;->LOG(Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_3
    iget v1, p0, Lcom/android/server/HapticsService;->mFeedbackEnabled:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playeffect Token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/HapticsService;->LOG(Ljava/lang/String;)V

    .line 379
    invoke-direct {p0, p1}, Lcom/android/server/HapticsService;->LookupHapticValue(I)I

    move-result v0

    .line 380
    .local v0, value:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "effectID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " val="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/HapticsService;->LOG(Ljava/lang/String;)V

    .line 381
    if-lez v0, :cond_4

    const/16 v1, 0x7c

    if-ge v0, v1, :cond_4

    .line 382
    invoke-static {v0}, Lcom/immersion/Haptic;->playEffect(I)V

    goto/16 :goto_0

    .line 384
    :cond_4
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effectID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " invalid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public playeffectforce(ILandroid/os/IBinder;)V
    .locals 4
    .parameter "effectID"
    .parameter "token"

    .prologue
    .line 411
    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 421
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playeffectforce playeffect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") skip,mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " HapticStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/HapticsService;->LOG(Ljava/lang/String;)V

    goto :goto_0

    .line 424
    :cond_3
    iget v1, p0, Lcom/android/server/HapticsService;->mFeedbackEnabled:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playeffect Token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/HapticsService;->LOG(Ljava/lang/String;)V

    .line 426
    invoke-direct {p0, p1}, Lcom/android/server/HapticsService;->LookupHapticValue(I)I

    move-result v0

    .line 427
    .local v0, value:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "effectID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " val="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/HapticsService;->LOG(Ljava/lang/String;)V

    .line 428
    if-lez v0, :cond_5

    const/16 v1, 0x7c

    if-ge v0, v1, :cond_5

    .line 429
    iget v1, p0, Lcom/android/server/HapticsService;->mHapticsStatus:I

    if-eqz v1, :cond_4

    .line 430
    invoke-static {}, Lcom/immersion/Haptic;->stopPlayingEffect()V

    .line 432
    :cond_4
    invoke-static {v0}, Lcom/immersion/Haptic;->playEffect(I)V

    goto/16 :goto_0

    .line 435
    :cond_5
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effectID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " invalid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public runDiagnostic(Landroid/os/IBinder;)I
    .locals 1
    .parameter "token"

    .prologue
    .line 550
    invoke-static {}, Lcom/immersion/Haptic;->runDiagnostic()I

    move-result v0

    return v0
.end method

.method public setAudioHapticEnabled(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 4
    .parameter "appname"
    .parameter "token"

    .prologue
    const/4 v3, 0x1

    .line 504
    invoke-direct {p0, p1}, Lcom/android/server/HapticsService;->isA2HEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 505
    .local v0, sw:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioHapticEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mHapticsMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SW="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/HapticsService;->LOG(Ljava/lang/String;)V

    .line 506
    if-eqz v0, :cond_1

    .line 507
    iget v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    .line 508
    iget v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    .line 521
    :goto_0
    return-void

    .line 511
    :cond_0
    invoke-static {v3}, Lcom/immersion/Haptic;->setAudioHapticEnabled(Z)V

    goto :goto_0

    .line 514
    :cond_1
    iget v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    if-ne v1, v3, :cond_2

    .line 515
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/immersion/Haptic;->setAudioHapticEnabled(Z)V

    .line 517
    :cond_2
    iget v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    goto :goto_0
.end method

.method public stopPlayingEffect(Landroid/os/IBinder;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 484
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 485
    invoke-static {}, Lcom/immersion/Haptic;->stopPlayingEffect()V

    .line 486
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    .line 489
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopPlayingEffect2 mHapticsMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/HapticsService;->LOG(Ljava/lang/String;)V

    .line 490
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 491
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/immersion/Haptic;->setAudioHapticEnabled(Z)V

    .line 492
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    .line 495
    :cond_1
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 496
    invoke-static {}, Lcom/immersion/Haptic;->stopPlayingEffect()V

    .line 497
    iget v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/server/HapticsService;->mHapticsMode:I

    .line 500
    :cond_2
    return-void
.end method

.method public systemReady()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 319
    const-string v1, "systemReady"

    invoke-direct {p0, v1}, Lcom/android/server/HapticsService;->LOG(Ljava/lang/String;)V

    .line 322
    :try_start_0
    invoke-static {}, Lcom/immersion/Haptic;->initialize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    const-string v1, "data_haptictheme_SIP"

    invoke-direct {p0, v1, v4}, Lcom/android/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 328
    const-string v1, "data_haptictheme_dialpad"

    invoke-direct {p0, v1, v4}, Lcom/android/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 329
    const-string v1, "data_haptictheme_launcher"

    invoke-direct {p0, v1, v4}, Lcom/android/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 330
    const-string v1, "data_haptictheme_longpress"

    invoke-direct {p0, v1, v4}, Lcom/android/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 331
    const-string v1, "data_haptictheme_virtualkey"

    invoke-direct {p0, v1, v4}, Lcom/android/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 332
    const-string v1, "data_haptictheme_rotate"

    invoke-direct {p0, v1, v4}, Lcom/android/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 333
    const-string v1, "data_haptictheme_gallery"

    invoke-direct {p0, v1, v4}, Lcom/android/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 334
    invoke-direct {p0}, Lcom/android/server/HapticsService;->InitHapticsA2HSetting()V

    .line 335
    invoke-direct {p0}, Lcom/android/server/HapticsService;->InitHapticsRingSetting()V

    .line 337
    iget-object v1, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/HapticsService;->mFeedbackEnabled:I

    .line 338
    iget-object v1, p0, Lcom/android/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/android/server/HapticsService$6;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/HapticsService$6;-><init>(Lcom/android/server/HapticsService;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 346
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/virtual/switch/haptics/state"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/android/server/HapticsService;->mHapticsStatusObserver:Landroid/os/UEventObserver;

    const-string v2, "DEVPATH=/devices/virtual/switch/haptics"

    invoke-virtual {v1, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 351
    :goto_1
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 349
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v1, "switch not exist"

    invoke-direct {p0, v1}, Lcom/android/server/HapticsService;->LOG(Ljava/lang/String;)V

    goto :goto_1
.end method
