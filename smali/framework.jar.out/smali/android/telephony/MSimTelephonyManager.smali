.class public Landroid/telephony/MSimTelephonyManager;
.super Ljava/lang/Object;
.source "MSimTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/MSimTelephonyManager$MultiSimVariants;
    }
.end annotation


# static fields
.field protected static multiSimConfig:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Landroid/telephony/MSimTelephonyManager;

.field protected static sRegistryMsim:Lcom/android/internal/telephony/ITelephonyRegistryMSim;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-string/jumbo v0, "persist.multisim.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/MSimTelephonyManager;->multiSimConfig:Ljava/lang/String;

    .line 100
    new-instance v0, Landroid/telephony/MSimTelephonyManager;

    invoke-direct {v0}, Landroid/telephony/MSimTelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/MSimTelephonyManager;->sInstance:Landroid/telephony/MSimTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    sget-object v1, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 85
    .local v0, appContext:Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 86
    sput-object v0, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    .line 91
    :goto_0
    const-string/jumbo v1, "telephony.msim.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    move-result-object v1

    sput-object v1, Landroid/telephony/MSimTelephonyManager;->sRegistryMsim:Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    .line 94
    .end local v0           #appContext:Landroid/content/Context;
    :cond_0
    return-void

    .line 88
    .restart local v0       #appContext:Landroid/content/Context;
    :cond_1
    sput-object p1, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/MSimTelephonyManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 110
    const-string/jumbo v0, "phone_msim"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/MSimTelephonyManager;

    return-object v0
.end method

.method public static getDefault()Landroid/telephony/MSimTelephonyManager;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->sInstance:Landroid/telephony/MSimTelephonyManager;

    return-object v0
.end method

.method private getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;
    .locals 1

    .prologue
    .line 661
    const-string/jumbo v0, "phone_msim"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v0

    return-object v0
.end method

.method public static getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 3
    .parameter "cr"
    .parameter "name"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 905
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 906
    .local v0, v:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 907
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 908
    .local v1, valArray:[Ljava/lang/String;
    if-ltz p2, :cond_0

    array-length v2, v1

    if-ge p2, v2, :cond_0

    aget-object v2, v1, p2

    if-eqz v2, :cond_0

    .line 910
    :try_start_0
    aget-object v2, v1, p2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 911
    :catch_0
    move-exception v2

    .line 916
    .end local v1           #valArray:[Ljava/lang/String;
    :cond_0
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getPhoneTypeFromNetworkType(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    .line 233
    const-string/jumbo v1, "ro.telephony.default_network"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, mode:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 235
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v1

    .line 237
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPhoneTypeFromProperty(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    .line 219
    const-string v1, "gsm.current.phone-type"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, type:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 223
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 225
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getPhoneTypeFromNetworkType(I)I

    move-result v1

    goto :goto_0
.end method

.method public static getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "property"
    .parameter "index"
    .parameter "defaultVal"

    .prologue
    .line 817
    const/4 v1, 0x0

    .line 818
    .local v1, propVal:Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 820
    .local v0, prop:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 821
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 822
    .local v2, values:[Ljava/lang/String;
    if-ltz p1, :cond_0

    array-length v3, v2

    if-ge p1, v3, :cond_0

    aget-object v3, v2, p1

    if-eqz v3, :cond_0

    .line 823
    aget-object v1, v2, p1

    .line 826
    .end local v2           #values:[Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_1
    move-object p2, v1

    goto :goto_0
.end method

.method public static putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 7
    .parameter "cr"
    .parameter "name"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 936
    const-string v0, ""

    .line 937
    .local v0, data:Ljava/lang/String;
    const/4 v4, 0x0

    .line 938
    .local v4, valArray:[Ljava/lang/String;
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 940
    .local v3, v:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 941
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 945
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 946
    const-string v2, ""

    .line 947
    .local v2, str:Ljava/lang/String;
    if-eqz v4, :cond_1

    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 948
    aget-object v2, v4, v1

    .line 950
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 945
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 953
    .end local v2           #str:Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 956
    if-eqz v4, :cond_3

    .line 957
    add-int/lit8 v1, p2, 0x1

    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 958
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 957
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 961
    :cond_3
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    return v5
.end method

.method public static setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .parameter "property"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 784
    const-string v3, ""

    .line 785
    .local v3, propVal:Ljava/lang/String;
    const/4 v1, 0x0

    .line 786
    .local v1, p:[Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 788
    .local v2, prop:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 789
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 792
    :cond_0
    if-gez p1, :cond_1

    .line 809
    :goto_0
    return-void

    .line 794
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_3

    .line 795
    const-string v4, ""

    .line 796
    .local v4, str:Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v5, v1

    if-ge v0, v5, :cond_2

    .line 797
    aget-object v4, v1, v0

    .line 799
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 794
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 802
    .end local v4           #str:Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 803
    if-eqz v1, :cond_4

    .line 804
    add-int/lit8 v0, p1, 0x1

    :goto_2
    array-length v5, v1

    if-ge v0, v5, :cond_4

    .line 805
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 804
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 808
    :cond_4
    invoke-static {p0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getAllCellInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 770
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getAllCellInfo()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 774
    :goto_0
    return-object v1

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 773
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 774
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCallState(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 608
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getCallState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 614
    :goto_0
    return v1

    .line 609
    :catch_0
    move-exception v0

    .line 611
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 612
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 614
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriIconIndex(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, -0x1

    .line 714
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getCdmaEriIconIndex(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 719
    :goto_0
    return v1

    .line 715
    :catch_0
    move-exception v0

    .line 717
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 718
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 719
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriIconMode(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, -0x1

    .line 732
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getCdmaEriIconMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 737
    :goto_0
    return v1

    .line 733
    :catch_0
    move-exception v0

    .line 735
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 736
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 737
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriText(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 748
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getCdmaEriText(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 753
    :goto_0
    return-object v1

    .line 749
    :catch_0
    move-exception v0

    .line 751
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 752
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 753
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 543
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getCompleteVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 548
    :goto_0
    return-object v1

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 546
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 548
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCurrentPhoneType(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    .line 200
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    .line 201
    .local v1, telephony:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-eqz v1, :cond_0

    .line 202
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getActivePhoneType(I)I

    move-result v2

    .line 214
    .end local v1           #telephony:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :goto_0
    return v2

    .line 205
    .restart local v1       #telephony:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_0
    invoke-direct {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getPhoneTypeFromProperty(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 207
    .end local v1           #telephony:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :catch_0
    move-exception v0

    .line 210
    .local v0, ex:Landroid/os/RemoteException;
    invoke-direct {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v2

    goto :goto_0

    .line 211
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 214
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-direct {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v2

    goto :goto_0
.end method

.method public getDataActivity()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 630
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getDataActivity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 636
    :goto_0
    return v1

    .line 631
    :catch_0
    move-exception v0

    .line 633
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 634
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 636
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataState()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 651
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getDataState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 656
    :goto_0
    return v1

    .line 652
    :catch_0
    move-exception v0

    .line 654
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 655
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 656
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDefaultSubscription()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 835
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getDefaultSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 839
    :goto_0
    return v1

    .line 836
    :catch_0
    move-exception v0

    .line 837
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 838
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 839
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 179
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getDeviceId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 183
    :goto_0
    return-object v1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 182
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 183
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceSoftwareVersion(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 159
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getDeviceSvn(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 163
    :goto_0
    return-object v1

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 162
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 163
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1AlphaTag(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 504
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getLine1AlphaTag(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 509
    :goto_0
    return-object v1

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 507
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 509
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 482
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getLine1Number(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 487
    :goto_0
    return-object v1

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 485
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 487
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLteOnCdmaMode(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, -0x1

    .line 434
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getLteOnCdmaMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 440
    :goto_0
    return v1

    .line 435
    :catch_0
    move-exception v0

    .line 437
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 438
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 440
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method protected getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;
    .locals 1

    .prologue
    .line 597
    const-string v0, "iphonesubinfo_msim"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v0

    return-object v0
.end method

.method public getMultiSimConfiguration()Landroid/telephony/MSimTelephonyManager$MultiSimVariants;
    .locals 2

    .prologue
    .line 125
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->multiSimConfig:Ljava/lang/String;

    const-string v1, "dsds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    .line 132
    :goto_0
    return-object v0

    .line 127
    :cond_0
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->multiSimConfig:Ljava/lang/String;

    const-string v1, "dsda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    sget-object v0, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    goto :goto_0

    .line 129
    :cond_1
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->multiSimConfig:Ljava/lang/String;

    const-string/jumbo v1, "tsts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    sget-object v0, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    goto :goto_0

    .line 132
    :cond_2
    sget-object v0, Landroid/telephony/MSimTelephonyManager$MultiSimVariants;->UNKNOWN:Landroid/telephony/MSimTelephonyManager$MultiSimVariants;

    goto :goto_0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 2
    .parameter "subscription"

    .prologue
    .line 273
    const-string v0, "gsm.operator.numeric"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName(I)Ljava/lang/String;
    .locals 2
    .parameter "subscription"

    .prologue
    .line 257
    const-string v0, "gsm.operator.alpha"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v2, 0x0

    .line 316
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    .line 317
    .local v1, iTelephony:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-eqz v1, :cond_0

    .line 318
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getNetworkType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 328
    .end local v1           #iTelephony:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_0
    :goto_0
    return v2

    .line 323
    :catch_0
    move-exception v0

    .line 325
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 326
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 328
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 341
    invoke-virtual {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getNetworkType(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneCount()I
    .locals 2

    .prologue
    .line 142
    const/4 v0, 0x1

    .line 143
    .local v0, phoneCount:I
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const/4 v0, 0x2

    .line 146
    :cond_0
    return v0
.end method

.method public getPreferredDataSubscription()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 848
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getPreferredDataSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 852
    :goto_0
    return v1

    .line 849
    :catch_0
    move-exception v0

    .line 850
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 851
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 852
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getPreferredVoiceSubscription()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 874
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getPreferredVoiceSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 878
    :goto_0
    return v1

    .line 875
    :catch_0
    move-exception v0

    .line 876
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 877
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 878
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 413
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getIccSerialNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 418
    :goto_0
    return-object v1

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 416
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 418
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSimState(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    .line 382
    const-string v1, "gsm.sim.state"

    const-string v2, ""

    invoke-static {v1, p1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, prop:Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    const/4 v1, 0x1

    .line 400
    :goto_0
    return v1

    .line 387
    :cond_0
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    const/4 v1, 0x2

    goto :goto_0

    .line 390
    :cond_1
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 391
    const/4 v1, 0x3

    goto :goto_0

    .line 393
    :cond_2
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 394
    const/4 v1, 0x4

    goto :goto_0

    .line 396
    :cond_3
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 397
    const/4 v1, 0x5

    goto :goto_0

    .line 400
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 462
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getSubscriberId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 467
    :goto_0
    return-object v1

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 465
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 467
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 583
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getVoiceMailAlphaTag(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 588
    :goto_0
    return-object v1

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 586
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 588
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 523
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;->getVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 528
    :goto_0
    return-object v1

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 526
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 528
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMessageCount(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 563
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getVoiceMessageCount(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 568
    :goto_0
    return v1

    .line 564
    :catch_0
    move-exception v0

    .line 565
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 566
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 568
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public hasIccCard(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 358
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->hasIccCard(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 364
    :goto_0
    return v1

    .line 359
    :catch_0
    move-exception v0

    .line 361
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 362
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 364
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isMultiSimEnabled()Z
    .locals 2

    .prologue
    .line 114
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->multiSimConfig:Ljava/lang/String;

    const-string v1, "dsds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/MSimTelephonyManager;->multiSimConfig:Ljava/lang/String;

    const-string v1, "dsda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkRoaming(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    .line 286
    const-string/jumbo v0, "true"

    const-string v1, "gsm.operator.isroaming"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 7
    .parameter "listener"
    .parameter "events"

    .prologue
    .line 695
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 697
    .local v1, pkgForDebug:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 698
    .local v6, notifyNow:Ljava/lang/Boolean;
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->sRegistryMsim:Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    iget-object v2, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget v5, p1, Landroid/telephony/PhoneStateListener;->mSubscription:I

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephonyRegistryMSim;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    .end local v6           #notifyNow:Ljava/lang/Boolean;
    :goto_2
    return-void

    .line 695
    .end local v1           #pkgForDebug:Ljava/lang/String;
    :cond_0
    const-string v1, "<unknown>"

    goto :goto_0

    .line 697
    .restart local v1       #pkgForDebug:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 702
    :catch_0
    move-exception v0

    goto :goto_2

    .line 700
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public setPreferredDataSubscription(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 861
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setPreferredDataSubscription(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 865
    :goto_0
    return v1

    .line 862
    :catch_0
    move-exception v0

    .line 863
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 864
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 865
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method
