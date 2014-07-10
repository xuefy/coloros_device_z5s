.class Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AGpsConnectionInfo"
.end annotation


# static fields
.field private static final BEARER_INVALID:I = -0x1

.field private static final BEARER_IPV4:I = 0x0

.field private static final BEARER_IPV4V6:I = 0x2

.field private static final BEARER_IPV6:I = 0x1

.field private static final CONNECTION_TYPE_ANY:I = 0x0

.field private static final CONNECTION_TYPE_C2K:I = 0x2

.field private static final CONNECTION_TYPE_SUPL:I = 0x1

.field private static final CONNECTION_TYPE_WIFI:I = 0x4

.field private static final CONNECTION_TYPE_WWAN_ANY:I = 0x3

.field private static final STATE_CLOSED:I = 0x0

.field private static final STATE_KEEP_OPEN:I = 0x3

.field private static final STATE_OPEN:I = 0x2

.field private static final STATE_OPENING:I = 0x1


# instance fields
.field private mAPN:Ljava/lang/String;

.field private final mAgpsType:I

.field private mBearerType:I

.field private final mCMConnType:I

.field private mIPvVerType:I

.field private mIpAddr:Ljava/net/InetAddress;

.field private final mPHConnFeatureStr:Ljava/lang/String;

.field private mState:I

.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/location/GpsLocationProvider;II)V
    .locals 2
    .parameter
    .parameter "connMgrConnType"
    .parameter "agpsType"

    .prologue
    const/4 v1, 0x0

    .line 2144
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2145
    iput p2, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mCMConnType:I

    .line 2146
    iput p3, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I

    .line 2147
    const/4 v0, 0x3

    if-ne v0, p2, :cond_0

    .line 2148
    const-string v0, "enableSUPL"

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mPHConnFeatureStr:Ljava/lang/String;

    .line 2152
    :goto_0
    iput-object v1, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    .line 2153
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I

    .line 2154
    iput-object v1, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIpAddr:Ljava/net/InetAddress;

    .line 2155
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I

    .line 2156
    return-void

    .line 2150
    :cond_0
    const-string v0, "enableMMS"

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mPHConnFeatureStr:Ljava/lang/String;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/server/location/GpsLocationProvider;IILcom/android/server/location/GpsLocationProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 2114
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;-><init>(Lcom/android/server/location/GpsLocationProvider;II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2114
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2114
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/net/InetAddress;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2114
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getIpAddr()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2114
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getCMConnType()I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2114
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getAgpsType()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2114
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getApn(Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Landroid/net/NetworkInfo;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2114
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getBearerType(Landroid/net/NetworkInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2114
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2114
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Landroid/net/NetworkInfo;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2114
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->connect(Landroid/net/NetworkInfo;[B)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2114
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getApn(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2114
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mPHConnFeatureStr:Ljava/lang/String;

    return-object v0
.end method

.method private connect(Landroid/net/NetworkInfo;[B)V
    .locals 7
    .parameter "info"
    .parameter "ipAddr"

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2237
    const/4 v0, -0x1

    .line 2238
    .local v0, result:I
    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mCMConnType:I

    if-nez v2, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2240
    iput v6, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I

    .line 2241
    const/4 v0, 0x0

    .line 2256
    :cond_0
    :goto_0
    if-nez v0, :cond_4

    .line 2257
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "GpsLocationProvider"

    const-string v3, "Phone.APN_ALREADY_ACTIVE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    :cond_1
    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I

    if-eq v2, v6, :cond_2

    .line 2259
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I

    .line 2268
    :cond_2
    :goto_1
    return-void

    .line 2245
    :cond_3
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I

    .line 2246
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$5300(Lcom/android/server/location/GpsLocationProvider;)Landroid/net/ConnectivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mPHConnFeatureStr:Ljava/lang/String;

    invoke-virtual {v2, v5, v3}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .line 2248
    if-eqz p2, :cond_0

    .line 2250
    :try_start_0
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIpAddr:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2251
    :catch_0
    move-exception v1

    .line 2252
    .local v1, uhe:Ljava/net/UnknownHostException;
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "GpsLocationProvider"

    const-string v3, "bad ipaddress"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2261
    .end local v1           #uhe:Ljava/net/UnknownHostException;
    :cond_4
    if-ne v0, v4, :cond_5

    .line 2262
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "GpsLocationProvider"

    const-string v3, "Phone.APN_REQUEST_STARTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2265
    :cond_5
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startUsingNetworkFeature failed with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    :cond_6
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I

    goto :goto_1
.end method

.method private getAgpsType()I
    .locals 1

    .prologue
    .line 2158
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I

    return v0
.end method

.method private getApn(Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 1
    .parameter "info"

    .prologue
    .line 2167
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->getDefaultApn()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$5200(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getApn(Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getApn(Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "info"
    .parameter "defaultApn"

    .prologue
    .line 2171
    if-eqz p1, :cond_0

    .line 2172
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    .line 2174
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2177
    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    .line 2180
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    return-object v0
.end method

.method private getBearerType(Landroid/net/NetworkInfo;)I
    .locals 12
    .parameter "info"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2183
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2184
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->getApn(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    .line 2186
    :cond_0
    const/4 v7, 0x0

    .line 2187
    .local v7, ipProtocol:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 2191
    .local v9, phone:Landroid/telephony/TelephonyManager;
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 2192
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    .line 2193
    .local v8, networkType:I
    const/4 v0, 0x4

    if-eq v0, v8, :cond_1

    const/4 v0, 0x5

    if-eq v0, v8, :cond_1

    const/4 v0, 0x6

    if-eq v0, v8, :cond_1

    const/4 v0, 0x7

    if-eq v0, v8, :cond_1

    const/16 v0, 0xc

    if-ne v0, v8, :cond_2

    .line 2198
    :cond_1
    const-string v0, "persist.telephony.cdma.protocol"

    const-string v1, "IP"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2202
    .end local v8           #networkType:I
    :cond_2
    if-nez v7, :cond_4

    .line 2203
    const-string v3, "current = 1"

    .line 2204
    .local v3, selection:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and apn = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and carrier_enabled = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2207
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const-string v4, "protocol"

    aput-object v4, v2, v10

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2210
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 2212
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2213
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 2216
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2220
    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_4
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ipProtocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " apn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " networkType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    if-nez v7, :cond_5

    .line 2224
    iput v10, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I

    .line 2233
    :goto_0
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I

    return v0

    .line 2216
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2225
    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_5
    const-string v0, "IPV6"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2226
    iput v11, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I

    goto :goto_0

    .line 2227
    :cond_6
    const-string v0, "IPV4V6"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2228
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I

    goto :goto_0

    .line 2230
    :cond_7
    iput v10, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I

    goto :goto_0
.end method

.method private getCMConnType()I
    .locals 1

    .prologue
    .line 2161
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mCMConnType:I

    return v0
.end method

.method private getIpAddr()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 2164
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIpAddr:Ljava/net/InetAddress;

    return-object v0
.end method
