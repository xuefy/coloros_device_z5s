.class public Lcom/android/internal/telephony/cdma/DataProfileCdma;
.super Lcom/android/internal/telephony/DataProfile;
.source "DataProfileCdma.java"


# instance fields
.field private mProfileId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "id"
    .parameter "numeric"
    .parameter "name"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "types"
    .parameter "protocol"
    .parameter "roamingProtocol"
    .parameter "bearer"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p10}, Lcom/android/internal/telephony/DataProfile;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/DataProfileCdma;->mProfileId:I

    .line 36
    return-void
.end method


# virtual methods
.method public canHandleType(Ljava/lang/String;)Z
    .locals 5
    .parameter "type"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfile;->types:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 44
    .local v3, t:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "hipri"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "dun"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 47
    :cond_1
    const/4 v4, 0x1

    .line 50
    .end local v3           #t:Ljava/lang/String;
    :goto_1
    return v4

    .line 42
    .restart local v3       #t:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    .end local v3           #t:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_CDMA:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    return-object v0
.end method

.method public getProfileId()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/android/internal/telephony/cdma/DataProfileCdma;->mProfileId:I

    return v0
.end method

.method public setProfileId(I)V
    .locals 0
    .parameter "profileId"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/internal/telephony/cdma/DataProfileCdma;->mProfileId:I

    .line 67
    return-void
.end method

.method public toHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/DataProfileCdma;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "DataProfileCdma"

    return-object v0
.end method
