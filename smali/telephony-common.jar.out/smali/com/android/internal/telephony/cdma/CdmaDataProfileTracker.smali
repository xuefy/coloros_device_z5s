.class public final Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;
.super Landroid/os/Handler;
.source "CdmaDataProfileTracker.java"


# static fields
.field private static final EVENT_GET_DATA_CALL_PROFILE_DONE:I = 0x1

.field private static final EVENT_LOAD_PROFILES:I = 0x2

.field private static final EVENT_READ_MODEM_PROFILES:I

.field static final PREFERAPN_NO_UPDATE_URI:Landroid/net/Uri;

.field private static final mDefaultApnTypes:[Ljava/lang/String;

.field private static final mSupportedApnTypes:[Ljava/lang/String;


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field protected mActiveDp:Lcom/android/internal/telephony/DataProfile;

.field private mCdmaSsm:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field private mDataProfilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mIsOmhEnabled:Z

.field private mModemDataProfileRegistrants:Landroid/os/RegistrantList;

.field mOmhDataProfilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mOmhReadProfileContext:I

.field private mOmhReadProfileCount:I

.field mOmhServicePriorityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field mTempOmhDataProfilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "default"

    aput-object v1, v0, v3

    const-string v1, "mms"

    aput-object v1, v0, v4

    const-string v1, "supl"

    aput-object v1, v0, v5

    const-string v1, "dun"

    aput-object v1, v0, v6

    const-string v1, "hipri"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "fota"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ims"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cbs"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mSupportedApnTypes:[Ljava/lang/String;

    .line 88
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "default"

    aput-object v1, v0, v3

    const-string v1, "mms"

    aput-object v1, v0, v4

    const-string v1, "supl"

    aput-object v1, v0, v5

    const-string v1, "hipri"

    aput-object v1, v0, v6

    const-string v1, "fota"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "ims"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cbs"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mDefaultApnTypes:[Ljava/lang/String;

    .line 129
    const-string v0, "content://telephony/carriers/preferapn_no_update"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->PREFERAPN_NO_UPDATE_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 4
    .parameter "phone"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 68
    const-string v0, "CDMA"

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->LOG_TAG:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mDataProfilesList:Ljava/util/ArrayList;

    .line 103
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhReadProfileContext:I

    .line 108
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhReadProfileCount:I

    .line 110
    const-string v0, "persist.omh.enabled"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mIsOmhEnabled:Z

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhDataProfilesList:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mModemDataProfileRegistrants:Landroid/os/RegistrantList;

    .line 135
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 136
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v3, v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mCdmaSsm:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhServicePriorityMap:Ljava/util/HashMap;

    .line 141
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->sendMessage(Landroid/os/Message;)Z

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SUPPORT_OMH: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mIsOmhEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method private ZTELoadProfiles()V
    .locals 2

    .prologue
    .line 475
    const-string v0, "loadProfiles..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 478
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->readApnListFromDatabase()V

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " profiles from database"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 484
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->createDefaultDataProfiles()V

    .line 488
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->setActiveDpToDefault()V

    .line 491
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->readDataProfilesFromModem()V

    .line 492
    return-void
.end method

.method private addServiceTypeToUnSpecified()V
    .locals 8

    .prologue
    .line 379
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mSupportedApnTypes:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v3           #i$:I
    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v1, v4

    .line 380
    .local v0, apntype:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhServicePriorityMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 385
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4           #i$:I
    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataProfile;

    .local v2, dp:Lcom/android/internal/telephony/DataProfile;
    move-object v6, v2

    .line 386
    check-cast v6, Lcom/android/internal/telephony/cdma/DataProfileOmh;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/DataProfileOmh;->getDataProfileTypeModem()Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_UNSPECIFIED:Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    if-ne v6, v7, :cond_0

    .line 388
    check-cast v2, Lcom/android/internal/telephony/cdma/DataProfileOmh;

    .end local v2           #dp:Lcom/android/internal/telephony/DataProfile;
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->getDataProfileTypeModem(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/cdma/DataProfileOmh;->addServiceType(Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;)V

    .line 390
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OMH: Service Type added to UNSPECIFIED is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->getDataProfileTypeModem(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 379
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    add-int/lit8 v3, v4, 0x1

    .local v3, i$:I
    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_0

    .line 397
    .end local v0           #apntype:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private createDefaultDataProfiles()V
    .locals 14

    .prologue
    const/4 v6, 0x3

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v2, 0x0

    .line 583
    const-string v1, "Creating default profiles..."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 586
    const-string v1, "persist.telephony.cdma.protocol"

    const-string v3, "IP"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 588
    .local v8, ipProto:Ljava/lang/String;
    const-string v1, "persist.telephony.cdma.rproto"

    const-string v3, "IP"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 596
    .local v9, roamingIpProto:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object v11, v1

    check-cast v11, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    .line 600
    .local v11, cdmaDct:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;
    new-instance v0, Lcom/android/internal/telephony/cdma/DataProfileCdma;

    const-string v1, "default"

    invoke-virtual {v11, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v1

    sget-object v7, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mDefaultApnTypes:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v10

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/cdma/DataProfileCdma;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 605
    .local v0, dp:Lcom/android/internal/telephony/cdma/DataProfileCdma;
    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/cdma/DataProfileCdma;->setProfileId(I)V

    .line 606
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    new-array v7, v13, [Ljava/lang/String;

    const-string v1, "dun"

    aput-object v1, v7, v12

    .line 612
    .local v7, types:[Ljava/lang/String;
    new-instance v0, Lcom/android/internal/telephony/cdma/DataProfileCdma;

    .end local v0           #dp:Lcom/android/internal/telephony/cdma/DataProfileCdma;
    const-string v1, "dun"

    invoke-virtual {v11, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v10

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/cdma/DataProfileCdma;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 617
    .restart local v0       #dp:Lcom/android/internal/telephony/cdma/DataProfileCdma;
    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/cdma/DataProfileCdma;->setProfileId(I)V

    .line 618
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    return-void
.end method

.method private getDuplicateProfile(Lcom/android/internal/telephony/DataProfile;)Lcom/android/internal/telephony/cdma/DataProfileOmh;
    .locals 4
    .parameter "dp"

    .prologue
    .line 343
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataProfile;

    .local v0, dataProfile:Lcom/android/internal/telephony/DataProfile;
    move-object v2, p1

    .line 344
    check-cast v2, Lcom/android/internal/telephony/cdma/DataProfileOmh;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/DataProfileOmh;->getProfileId()I

    move-result v3

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/cdma/DataProfileOmh;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/DataProfileOmh;->getProfileId()I

    move-result v2

    if-ne v3, v2, :cond_0

    .line 346
    check-cast v0, Lcom/android/internal/telephony/cdma/DataProfileOmh;

    .line 349
    .end local v0           #dataProfile:Lcom/android/internal/telephony/DataProfile;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOperatorNumeric()Ljava/lang/String;
    .locals 4

    .prologue
    .line 561
    const/4 v0, 0x0

    .line 564
    .local v0, numeric:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPreferredDataSubscription()I

    move-result v1

    .line 565
    .local v1, subscription:I
    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, ""

    invoke-static {v2, v1, v3}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 572
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 573
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 576
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get numeric of sub: sub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,numeric = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 579
    return-object v0
.end method

.method private getPrefDataProfile(Ljava/lang/String;)Lcom/android/internal/telephony/DataProfile;
    .locals 19
    .parameter "serviceType"

    .prologue
    .line 664
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 665
    .local v5, selection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->PREFERAPN_NO_UPDATE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "name ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 668
    .local v17, cursor:Landroid/database/Cursor;
    const/16 v18, 0x0

    .line 669
    .local v18, dp:Lcom/android/internal/telephony/cdma/DataProfileCdma;
    if-eqz v17, :cond_3

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 670
    const-string v2, "Preferred Apn is read."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 671
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 672
    const-string v2, "type"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->parseTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 674
    .local v13, types:[Ljava/lang/String;
    new-instance v6, Lcom/android/internal/telephony/cdma/DataProfileCdma;

    const-string v2, "_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v2, "numeric"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v2, "apn"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v2, "user"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v2, "password"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v2, "authtype"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v2, "protocol"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v2, "roaming_protocol"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v2, "bearer"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-direct/range {v6 .. v16}, Lcom/android/internal/telephony/cdma/DataProfileCdma;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 686
    .local v6, nai:Lcom/android/internal/telephony/cdma/DataProfileCdma;
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 687
    move-object/from16 v18, v6

    .line 695
    .end local v6           #nai:Lcom/android/internal/telephony/cdma/DataProfileCdma;
    .end local v13           #types:[Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v18, :cond_1

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/DataProfileCdma;->canHandleType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string v2, "default"

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 698
    .end local v18           #dp:Lcom/android/internal/telephony/cdma/DataProfileCdma;
    :cond_2
    :goto_1
    return-object v18

    .line 689
    .restart local v18       #dp:Lcom/android/internal/telephony/cdma/DataProfileCdma;
    :cond_3
    const-string v2, "No Preferred Apn."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 690
    if-eqz v17, :cond_0

    .line 691
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 698
    :cond_4
    const/16 v18, 0x0

    goto :goto_1
.end method

.method private omhListGetArbitratedPriority(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 5
    .parameter
    .parameter "serviceType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataProfile;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 406
    .local p1, dataProfileListModem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfile;>;"
    const/4 v2, 0x0

    .line 408
    .local v2, profile:Lcom/android/internal/telephony/DataProfile;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataProfile;

    .local v0, dp:Lcom/android/internal/telephony/DataProfile;
    move-object v3, v0

    .line 409
    check-cast v3, Lcom/android/internal/telephony/cdma/DataProfileOmh;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/DataProfileOmh;->isValidPriority()Z

    move-result v3

    if-nez v3, :cond_0

    .line 410
    const-string v3, "[OMH] Invalid priority... skipping"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 414
    :cond_0
    if-nez v2, :cond_1

    .line 415
    move-object v2, v0

    goto :goto_0

    .line 417
    :cond_1
    const-string v3, "supl"

    if-ne p2, v3, :cond_3

    move-object v3, v0

    .line 419
    check-cast v3, Lcom/android/internal/telephony/cdma/DataProfileOmh;

    move-object v4, v2

    check-cast v4, Lcom/android/internal/telephony/cdma/DataProfileOmh;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/DataProfileOmh;->getPriority()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/DataProfileOmh;->isPriorityLower(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v2, v0

    :cond_2
    goto :goto_0

    :cond_3
    move-object v3, v0

    .line 423
    check-cast v3, Lcom/android/internal/telephony/cdma/DataProfileOmh;

    move-object v4, v2

    check-cast v4, Lcom/android/internal/telephony/cdma/DataProfileOmh;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/DataProfileOmh;->getPriority()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/DataProfileOmh;->isPriorityHigher(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v2, v0

    :cond_4
    goto :goto_0

    .line 428
    .end local v0           #dp:Lcom/android/internal/telephony/DataProfile;
    :cond_5
    check-cast v2, Lcom/android/internal/telephony/cdma/DataProfileOmh;

    .end local v2           #profile:Lcom/android/internal/telephony/DataProfile;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/DataProfileOmh;->getPriority()I

    move-result v3

    return v3
.end method

.method private onGetDataCallProfileDone(Landroid/os/AsyncResult;I)V
    .locals 8
    .parameter "ar"
    .parameter "context"

    .prologue
    .line 268
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    .line 269
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OMH: Exception in onGetDataCallProfileDone:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhReadProfileContext:I

    if-ne p2, v6, :cond_0

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v0, dataProfileListModem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfile;>;"
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v0           #dataProfileListModem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfile;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 283
    .restart local v0       #dataProfileListModem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfile;>;"
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    .line 285
    .local v3, modemProfile:Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhReadProfileCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhReadProfileCount:I

    .line 287
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 291
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->getDataServiceType()Ljava/lang/String;

    move-result-object v5

    .line 293
    .local v5, serviceType:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OMH: # profiles returned from modem:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 296
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhServicePriorityMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->omhListGetArbitratedPriority(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataProfile;

    .local v1, dp:Lcom/android/internal/telephony/DataProfile;
    move-object v6, v1

    .line 302
    check-cast v6, Lcom/android/internal/telephony/cdma/DataProfileOmh;

    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/cdma/DataProfileOmh;->setDataProfileTypeModem(Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;)V

    .line 308
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->getDuplicateProfile(Lcom/android/internal/telephony/DataProfile;)Lcom/android/internal/telephony/cdma/DataProfileOmh;

    move-result-object v4

    .line 309
    .local v4, omhDuplicatedp:Lcom/android/internal/telephony/cdma/DataProfileOmh;
    if-nez v4, :cond_2

    .line 310
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    check-cast v1, Lcom/android/internal/telephony/cdma/DataProfileOmh;

    .end local v1           #dp:Lcom/android/internal/telephony/DataProfile;
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->getDataProfileTypeModem(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/cdma/DataProfileOmh;->addServiceType(Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;)V

    goto :goto_1

    .line 320
    .restart local v1       #dp:Lcom/android/internal/telephony/DataProfile;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OMH: Duplicate Profile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 321
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->getDataProfileTypeModem(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/cdma/DataProfileOmh;->addServiceType(Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;)V

    goto :goto_1

    .line 328
    .end local v1           #dp:Lcom/android/internal/telephony/DataProfile;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #omhDuplicatedp:Lcom/android/internal/telephony/cdma/DataProfileOmh;
    .end local v5           #serviceType:Ljava/lang/String;
    :cond_3
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhReadProfileCount:I

    if-nez v6, :cond_0

    .line 329
    const-string v6, "OMH: Modem omh profile read complete."

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 330
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->addServiceTypeToUnSpecified()V

    .line 331
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mDataProfilesList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 332
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mModemDataProfileRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0
.end method

.method private onReadDataProfilesFromModem()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 241
    const-string v4, "OMH: onReadDataProfilesFromModem()"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 242
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhReadProfileContext:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhReadProfileContext:I

    .line 244
    iput v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhReadProfileCount:I

    .line 246
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 247
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 248
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhServicePriorityMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 251
    invoke-static {}, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->values()[Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 252
    .local v3, p:Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OMH: Reading profiles for:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->getid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 253
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhReadProfileCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhReadProfileCount:I

    .line 254
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->getid()I

    move-result v5

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mOmhReadProfileContext:I

    invoke-virtual {p0, v6, v7, v8, v3}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallProfile(ILandroid/os/Message;)V

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    .end local v3           #p:Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;
    :cond_0
    return-void
.end method

.method private parseTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "types"

    .prologue
    .line 548
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 549
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 550
    .local v0, result:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    .line 554
    :goto_0
    return-object v0

    .line 552
    .end local v0           #result:[Ljava/lang/String;
    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #result:[Ljava/lang/String;
    goto :goto_0
.end method

.method private populateDataProfilesList(Landroid/database/Cursor;)V
    .locals 11
    .parameter "cursor"

    .prologue
    .line 519
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 521
    :cond_0
    const-string v1, "type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->parseTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 523
    .local v7, types:[Ljava/lang/String;
    new-instance v0, Lcom/android/internal/telephony/cdma/DataProfileCdma;

    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "numeric"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "apn"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "user"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "password"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "authtype"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v8, "protocol"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "roaming_protocol"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "bearer"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/cdma/DataProfileCdma;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 535
    .local v0, nai:Lcom/android/internal/telephony/cdma/DataProfileCdma;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 539
    .end local v0           #nai:Lcom/android/internal/telephony/cdma/DataProfileCdma;
    .end local v7           #types:[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private readApnListFromDatabase()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 495
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 496
    .local v7, operator:Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 497
    :cond_0
    const-string v0, "operatorNumeric invalid. Won\'t read database"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 516
    :cond_1
    :goto_0
    return-void

    .line 501
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading data profiles for operator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 504
    .local v3, selection:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and carrier_enabled = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readApnListFromDatabase: selection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 510
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 511
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 512
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->populateDataProfilesList(Landroid/database/Cursor;)V

    .line 514
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private readDataProfilesFromModem()V
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mIsOmhEnabled:Z

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->sendMessage(Landroid/os/Message;)Z

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    const-string v0, "OMH is disabled, ignoring request!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private readNaiListFromDatabase()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 160
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 161
    .local v7, operator:Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 162
    :cond_0
    const-string v0, "operatorNumeric invalid. Won\'t read database"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->loge(Ljava/lang/String;)V

    .line 182
    :cond_1
    :goto_0
    return-void

    .line 166
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading data profiles for operator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and profile_type = \'nai\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, selection:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and carrier_enabled = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readNaiListFromDatabase: selection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 176
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 177
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 178
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->populateDataProfilesList(Landroid/database/Cursor;)V

    .line 180
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private setActiveDpToDefault()V
    .locals 1

    .prologue
    .line 622
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->getDataProfile(Ljava/lang/String;)Lcom/android/internal/telephony/DataProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mActiveDp:Lcom/android/internal/telephony/DataProfile;

    .line 623
    return-void
.end method


# virtual methods
.method public clearActiveDataProfile()V
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mActiveDp:Lcom/android/internal/telephony/DataProfile;

    .line 433
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 188
    const-string v0, "CDMA"

    const-string v1, "CdmaDataProfileTracker finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method

.method protected getActiveApnTypes()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 454
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mActiveDp:Lcom/android/internal/telephony/DataProfile;

    if-eqz v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mActiveDp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfile;->getServiceTypes()[Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, result:[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 457
    .end local v0           #result:[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 458
    .restart local v0       #result:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "default"

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public getDataProfile(Ljava/lang/String;)Lcom/android/internal/telephony/DataProfile;
    .locals 6
    .parameter "serviceType"

    .prologue
    .line 353
    const/4 v2, 0x0

    .line 355
    .local v2, profile:Lcom/android/internal/telephony/DataProfile;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->getPrefDataProfile(Ljava/lang/String;)Lcom/android/internal/telephony/DataProfile;

    move-result-object v2

    .line 356
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 372
    .end local v2           #profile:Lcom/android/internal/telephony/DataProfile;
    .local v3, profile:Lcom/android/internal/telephony/DataProfile;
    :goto_0
    return-object v3

    .line 359
    .end local v3           #profile:Lcom/android/internal/telephony/DataProfile;
    .restart local v2       #profile:Lcom/android/internal/telephony/DataProfile;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preferred apn is null or can\'t handle type of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 361
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataProfile;

    .line 362
    .local v0, dp:Lcom/android/internal/telephony/DataProfile;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataProfile;->canHandleType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 363
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mIsOmhEnabled:Z

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_OMH:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    if-ne v4, v5, :cond_1

    .line 368
    :cond_2
    move-object v2, v0

    .end local v0           #dp:Lcom/android/internal/telephony/DataProfile;
    :cond_3
    move-object v3, v2

    .line 372
    .end local v2           #profile:Lcom/android/internal/telephony/DataProfile;
    .restart local v3       #profile:Lcom/android/internal/telephony/DataProfile;
    goto :goto_0
.end method

.method public getDataProfileProxy(Lcom/android/internal/telephony/DataProfile;)Landroid/net/ProxyProperties;
    .locals 13
    .parameter "apn"

    .prologue
    const/4 v2, 0x0

    .line 629
    const/4 v8, 0x0

    .line 630
    .local v8, httpproxy:Landroid/net/ProxyProperties;
    const/4 v11, 0x0

    .line 631
    .local v11, proxy:Ljava/lang/String;
    const-string v10, ""

    .line 634
    .local v10, port:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://telephony/carriers/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/telephony/DataProfile;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 635
    .local v12, url:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "name ASC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 638
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 639
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 640
    const-string v0, "proxy"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 641
    const-string v0, "port"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 643
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 647
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 649
    :try_start_0
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v10, "8080"

    .line 650
    :cond_1
    new-instance v9, Landroid/net/ProxyProperties;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {v9, v11, v0, v1}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8           #httpproxy:Landroid/net/ProxyProperties;
    .local v9, httpproxy:Landroid/net/ProxyProperties;
    move-object v8, v9

    .line 657
    .end local v9           #httpproxy:Landroid/net/ProxyProperties;
    .restart local v8       #httpproxy:Landroid/net/ProxyProperties;
    :cond_2
    :goto_0
    return-object v8

    .line 652
    :catch_0
    move-exception v7

    .line 653
    .local v7, e:Ljava/lang/NumberFormatException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDataProfileProxy: NumberFormatException making ProxyProperties ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-nez v0, :cond_0

    .line 203
    const-string v0, "CDMA"

    const-string v1, "Ignore CDMA msgs since CDMA phone is inactive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_0
    return-void

    .line 207
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 221
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 209
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->loadProfiles()V

    goto :goto_0

    .line 212
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->onReadDataProfilesFromModem()V

    goto :goto_0

    .line 216
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->onGetDataCallProfileDone(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public isApnTypeActive(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mActiveDp:Lcom/android/internal/telephony/DataProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mActiveDp:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataProfile;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isApnTypeAvailable(Ljava/lang/String;)Z
    .locals 5
    .parameter "type"

    .prologue
    .line 444
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mSupportedApnTypes:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 445
    .local v3, s:Ljava/lang/String;
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 446
    const/4 v4, 0x1

    .line 449
    .end local v3           #s:Ljava/lang/String;
    :goto_1
    return v4

    .line 444
    .restart local v3       #s:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 449
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public isOmhEnabled()Z
    .locals 1

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mIsOmhEnabled:Z

    return v0
.end method

.method public loadProfiles()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->ZTELoadProfiles()V

    .line 151
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 464
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaDataProfileTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 468
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaDataProfileTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    return-void
.end method

.method public registerForModemProfileReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 192
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 193
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mModemDataProfileRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 194
    return-void
.end method

.method public unregisterForModemProfileReady(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataProfileTracker;->mModemDataProfileRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 198
    return-void
.end method
