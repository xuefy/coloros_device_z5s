.class Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;
.super Ljava/lang/Object;
.source "RuimRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfCsimImsimLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method

.method private decodeImsi([B)Ljava/lang/String;
    .locals 14
    .parameter "data"

    .prologue
    .line 355
    const/16 v9, 0x9

    aget-byte v9, p1, v9

    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x8

    const/16 v10, 0x8

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    or-int v7, v9, v10

    .line 356
    .local v7, mcc_data:I
    const/4 v9, 0x3

    invoke-direct {p0, v7, v9}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->decodeImsiDigits(II)I

    move-result v6

    .line 357
    .local v6, mcc:I
    const/4 v9, 0x6

    aget-byte v9, p1, v9

    and-int/lit8 v3, v9, 0x7f

    .line 358
    .local v3, digits_11_12_data:I
    const/4 v9, 0x2

    invoke-direct {p0, v3, v9}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->decodeImsiDigits(II)I

    move-result v2

    .line 361
    .local v2, digits_11_12:I
    const/4 v9, 0x2

    aget-byte v9, p1, v9

    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x8

    const/4 v10, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    add-int v4, v9, v10

    .line 362
    .local v4, first3digits:I
    const/4 v9, 0x5

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    const/4 v10, 0x4

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    shr-int/lit8 v8, v9, 0x6

    .line 363
    .local v8, second3digits:I
    const/4 v9, 0x4

    aget-byte v9, p1, v9

    shr-int/lit8 v9, v9, 0x2

    and-int/lit8 v1, v9, 0xf

    .line 364
    .local v1, digit7:I
    const/16 v9, 0x9

    if-le v1, v9, :cond_0

    const/4 v1, 0x0

    .line 365
    :cond_0
    const/4 v9, 0x4

    aget-byte v9, p1, v9

    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x8

    const/4 v10, 0x3

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    or-int v5, v9, v10

    .line 367
    .local v5, last3digits:I
    const/4 v9, 0x3

    invoke-direct {p0, v4, v9}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->decodeImsiDigits(II)I

    move-result v4

    .line 368
    const/4 v9, 0x3

    invoke-direct {p0, v8, v9}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->decodeImsiDigits(II)I

    move-result v8

    .line 369
    const/4 v9, 0x3

    invoke-direct {p0, v5, v9}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->decodeImsiDigits(II)I

    move-result v5

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .local v0, builder:Ljava/lang/StringBuilder;
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%03d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%02d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%03d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%03d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%03d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method private decodeImsiDigits(II)I
    .locals 4
    .parameter "digits"
    .parameter "length"

    .prologue
    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, constant:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 386
    mul-int/lit8 v3, v0, 0xa

    add-int/lit8 v0, v3, 0x1

    .line 385
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 389
    :cond_0
    add-int/2addr p1, v0

    .line 391
    const/4 v2, 0x0

    const/4 v1, 0x1

    .local v1, denominator:I
    :goto_1
    if-ge v2, p2, :cond_2

    .line 392
    div-int v3, p1, v1

    rem-int/lit8 v3, v3, 0xa

    if-nez v3, :cond_1

    mul-int/lit8 v3, v1, 0xa

    sub-int/2addr p1, v3

    .line 393
    :cond_1
    mul-int/lit8 v1, v1, 0xa

    .line 391
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 396
    :cond_2
    return p1
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    const-string v0, "EF_CSIM_IMSIM"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 7
    .parameter "ar"

    .prologue
    const/4 v6, 0x5

    const/4 v3, 0x0

    .line 330
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    .line 331
    .local v0, data:[B
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CSIM_IMSIM="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 334
    const/4 v2, 0x7

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_1

    const/4 v1, 0x1

    .line 336
    .local v1, provisioned:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 337
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->decodeImsi([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    .line 338
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 339
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v4, v4, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    const/16 v5, 0xf

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$302(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 341
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMSI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v5, v5, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "xxxxxxxxx2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 345
    :goto_1
    return-void

    .end local v1           #provisioned:Z
    :cond_1
    move v1, v3

    .line 334
    goto :goto_0

    .line 343
    .restart local v1       #provisioned:Z
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v3, "min not present"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_1
.end method
