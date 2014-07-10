.class public Lcom/android/internal/telephony/ExtCallManager;
.super Lcom/android/internal/telephony/CallManager;
.source "ExtCallManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ExtCallManager$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "ExtCallManager"

.field private static final VDBG:Z

.field private static mActiveSub:I


# instance fields
.field private mLchStatus:[I

.field private vsidVoice:[J

.field private vsidVoiceDef:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/ExtCallManager;->mActiveSub:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 63
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;-><init>()V

    .line 73
    new-array v0, v1, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->vsidVoiceDef:[J

    .line 74
    new-array v0, v1, [J

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->vsidVoice:[J

    .line 77
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/internal/telephony/ExtCallManager;->mLchStatus:[I

    return-void

    .line 73
    :array_0
    .array-data 0x8
        0x0t 0x10t 0xc0t 0x10t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x10t 0xdct 0x10t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 74
    :array_1
    .array-data 0x8
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 77
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private getFirstActiveCall(Ljava/util/ArrayList;I)Lcom/android/internal/telephony/Call;
    .locals 3
    .parameter
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;I)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .line 850
    .local p1, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 851
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v2

    if-eq v2, p2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v2, :cond_0

    .line 856
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;I)Lcom/android/internal/telephony/Call;
    .locals 3
    .parameter
    .parameter "state"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;",
            "Lcom/android/internal/telephony/Call$State;",
            "I)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .line 864
    .local p1, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 865
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    if-eq v2, p2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v2

    if-eq v2, p3, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v2, :cond_0

    .line 871
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFirstNonIdleCall(Ljava/util/List;I)Lcom/android/internal/telephony/Call;
    .locals 5
    .parameter
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;I)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .line 681
    .local p1, calls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    const/4 v2, 0x0

    .line 682
    .local v2, result:Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 683
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v3

    if-eq v3, p2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    instance-of v3, v3, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v3, :cond_0

    .line 685
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_2

    .line 692
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :goto_1
    return-object v0

    .line 687
    .restart local v0       #call:Lcom/android/internal/telephony/Call;
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    .line 688
    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_0

    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :cond_3
    move-object v0, v2

    .line 692
    goto :goto_1
.end method

.method public static getInstance()Lcom/android/internal/telephony/CallManager;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/internal/telephony/ExtCallManager;->INSTANCE:Lcom/android/internal/telephony/CallManager;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/android/internal/telephony/ExtCallManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/ExtCallManager;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/ExtCallManager;->INSTANCE:Lcom/android/internal/telephony/CallManager;

    .line 87
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/ExtCallManager;->INSTANCE:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method private getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 4
    .parameter "subscription"

    .prologue
    .line 95
    const/4 v1, 0x0

    .line 96
    .local v1, p:Lcom/android/internal/telephony/Phone;
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 97
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 98
    move-object v1, v2

    .line 102
    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    return-object v1
.end method

.method private hasMoreThanOneHoldingCall(I)Z
    .locals 6
    .parameter "subscription"

    .prologue
    const/4 v3, 0x1

    .line 903
    const/4 v1, 0x0

    .line 904
    .local v1, count:I
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 905
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v4

    if-eq v4, p1, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    instance-of v4, v4, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v4, :cond_0

    .line 908
    :cond_1
    add-int/lit8 v1, v1, 0x1

    if-le v1, v3, :cond_0

    .line 911
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private hasMoreThanOneRingingCall()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 882
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v3

    .line 883
    .local v3, subscription:I
    const/4 v1, 0x0

    .line 885
    .local v1, count:I
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 886
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v5

    if-eq v5, v3, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    instance-of v5, v5, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v5, :cond_0

    .line 889
    :cond_1
    add-int/lit8 v1, v1, 0x1

    if-le v1, v4, :cond_0

    .line 892
    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private setAudioParameters(ILandroid/media/AudioManager;)V
    .locals 11
    .parameter "sub"
    .parameter "audioManager"

    .prologue
    .line 265
    const-wide/16 v5, 0x0

    .line 266
    .local v5, vsid:J
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFgPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 267
    .local v3, offHookPhone:Lcom/android/internal/telephony/Phone;
    const/4 v2, 0x1

    .line 268
    .local v2, newCallState:I
    const/4 v1, 0x1

    .line 269
    .local v1, callState:I
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 271
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_0

    .line 274
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getBgPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 275
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 278
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 280
    .local v4, state:Lcom/android/internal/telephony/Call$State;
    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v7, :cond_1

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v7, :cond_1

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v7, :cond_4

    .line 282
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v7

    if-ne p1, v7, :cond_3

    .line 283
    const/4 v2, 0x2

    .line 292
    :goto_0
    const-string v7, "ExtCallManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setAudioParameters old state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " new state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 306
    iget-object v7, p0, Lcom/android/internal/telephony/ExtCallManager;->vsidVoice:[J

    aget-wide v7, v7, p1

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    .line 307
    iget-object v7, p0, Lcom/android/internal/telephony/ExtCallManager;->vsidVoice:[J

    iget-object v8, p0, Lcom/android/internal/telephony/ExtCallManager;->vsidVoiceDef:[J

    aget-wide v8, v8, p1

    aput-wide v8, v7, p1

    .line 309
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/ExtCallManager;->vsidVoice:[J

    aget-wide v5, v7, p1

    .line 312
    :goto_1
    invoke-direct {p0, v5, v6, v2, p2}, Lcom/android/internal/telephony/ExtCallManager;->setAudioStateParam(JILandroid/media/AudioManager;)V

    .line 313
    return-void

    .line 285
    :cond_3
    const/4 v2, 0x4

    goto :goto_0

    .line 287
    :cond_4
    sget-object v7, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v7, :cond_5

    .line 288
    const/4 v2, 0x4

    goto :goto_0

    .line 290
    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    .line 298
    :pswitch_0
    const-string v7, "ExtCallManager"

    const-string v8, "setAudioParameters for SIP"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 301
    :pswitch_1
    const-wide/32 v5, 0x10c02000

    .line 302
    const-string v7, "ExtCallManager"

    const-string v8, "setAudioParameters for IMS"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setAudioStateParam(JILandroid/media/AudioManager;)V
    .locals 4
    .parameter "vsid"
    .parameter "state"
    .parameter "audioManager"

    .prologue
    .line 256
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vsid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "call_state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 259
    .local v0, keyValPairs:Ljava/lang/String;
    const-string v1, "ExtCallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting audio state to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {p4, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method private updateLchStatus(I)V
    .locals 9
    .parameter "sub"

    .prologue
    .line 226
    const/4 v2, 0x0

    .line 227
    .local v2, lchStatus:I
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFgPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 228
    .local v3, offHookPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 230
    .local v1, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_0

    .line 233
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getBgPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 234
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 236
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 238
    .local v5, state:Lcom/android/internal/telephony/Call$State;
    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_1

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_1

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v6

    if-eq p1, v6, :cond_2

    .line 242
    const/4 v2, 0x1

    .line 245
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/ExtCallManager;->mLchStatus:[I

    aget v6, v6, p1

    if-eq v2, v6, :cond_3

    .line 246
    const-string v6, "ExtCallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " setLocal Call Hold to  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-static {v3}, Lcom/android/internal/telephony/ExtCallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 248
    .local v0, basePhone:Lcom/android/internal/telephony/PhoneBase;
    iget-object v4, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v4, Lcom/android/internal/telephony/RIL;

    .line 250
    .local v4, rilCi:Lcom/android/internal/telephony/RIL;
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x7a

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Lcom/android/internal/telephony/RIL;->setLocalCallHold(ILandroid/os/Message;)V

    .line 251
    iget-object v6, p0, Lcom/android/internal/telephony/ExtCallManager;->mLchStatus:[I

    aput v2, v6, p1

    .line 253
    .end local v0           #basePhone:Lcom/android/internal/telephony/PhoneBase;
    .end local v4           #rilCi:Lcom/android/internal/telephony/RIL;
    :cond_3
    return-void
.end method


# virtual methods
.method public canConference(Lcom/android/internal/telephony/Call;I)Z
    .locals 4
    .parameter "heldCall"
    .parameter "subscription"

    .prologue
    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, activePhone:Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 434
    .local v1, heldPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/ExtCallManager;->hasActiveFgCall(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 435
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 438
    :cond_0
    if-eqz p1, :cond_1

    .line 439
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 442
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public canTransfer(Lcom/android/internal/telephony/Call;I)Z
    .locals 3
    .parameter "heldCall"
    .parameter "subscription"

    .prologue
    .line 560
    const/4 v0, 0x0

    .line 561
    .local v0, activePhone:Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 563
    .local v1, heldPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/ExtCallManager;->hasActiveFgCall(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 564
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 567
    :cond_0
    if-eqz p1, :cond_1

    .line 568
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 571
    :cond_1
    if-ne v1, v0, :cond_2

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ExtCallManager;->clearDisconnected(I)V

    .line 539
    return-void
.end method

.method public clearDisconnected(I)V
    .locals 3
    .parameter "subscription"

    .prologue
    .line 547
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 548
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 549
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    goto :goto_0

    .line 552
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    return-void
.end method

.method public conference(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter "heldCall"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 456
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v1

    .line 463
    .local v1, subscription:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ExtCallManager;->getFgPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 464
    .local v0, fgPhone:Lcom/android/internal/telephony/Phone;
    instance-of v2, v0, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v2, :cond_0

    .line 465
    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone;

    .end local v0           #fgPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->conference(Lcom/android/internal/telephony/Call;)V

    .line 477
    :goto_0
    return-void

    .line 466
    .restart local v0       #fgPhone:Lcom/android/internal/telephony/Phone;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->canConference(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 467
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    goto :goto_0

    .line 469
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "Can\'t conference foreground and selected background call"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 9
    .parameter "phone"
    .parameter "dialString"
    .parameter "callType"
    .parameter "extras"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 492
    invoke-static {p1}, Lcom/android/internal/telephony/ExtCallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 500
    .local v1, basePhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->hasActiveFgCall()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 501
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 502
    .local v0, activePhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v4

    .line 505
    .local v2, hasBgCall:Z
    :goto_0
    const-string v6, "ExtCallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasBgCall: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sameChannel:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-ne v0, v1, :cond_2

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    if-eq v0, v1, :cond_0

    .line 513
    if-eqz v2, :cond_3

    .line 514
    const-string v4, "ExtCallManager"

    const-string v5, "Hangup"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 523
    .end local v0           #activePhone:Lcom/android/internal/telephony/Phone;
    .end local v2           #hasBgCall:Z
    :cond_0
    :goto_2
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 524
    invoke-interface {v1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;I[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 533
    .local v3, result:Lcom/android/internal/telephony/Connection;
    :goto_3
    return-object v3

    .end local v3           #result:Lcom/android/internal/telephony/Connection;
    .restart local v0       #activePhone:Lcom/android/internal/telephony/Phone;
    :cond_1
    move v2, v5

    .line 502
    goto :goto_0

    .restart local v2       #hasBgCall:Z
    :cond_2
    move v4, v5

    .line 505
    goto :goto_1

    .line 517
    :cond_3
    const-string v4, "ExtCallManager"

    const-string v5, "Switch"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto :goto_2

    .line 526
    .end local v0           #activePhone:Lcom/android/internal/telephony/Phone;
    .end local v2           #hasBgCall:Z
    :cond_4
    invoke-interface {v1, p2}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .restart local v3       #result:Lcom/android/internal/telephony/Connection;
    goto :goto_3
.end method

.method public getActiveFgCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getActiveFgCall(I)Lcom/android/internal/telephony/Call;
    .locals 3
    .parameter "subscription"

    .prologue
    .line 668
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstNonIdleCall(Ljava/util/List;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 669
    .local v0, call:Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 670
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 671
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 675
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_0
    return-object v0

    .line 671
    .restart local v1       #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0
.end method

.method public getActiveFgCallState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 779
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    return-object v0
.end method

.method public getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;
    .locals 2
    .parameter "subscription"

    .prologue
    .line 784
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 786
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 790
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0
.end method

.method public getActiveSubscription()I
    .locals 3

    .prologue
    .line 219
    const-string v0, "ExtCallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveSubscription  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/ExtCallManager;->mActiveSub:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    sget v0, Lcom/android/internal/telephony/ExtCallManager;->mActiveSub:I

    return v0
.end method

.method public getBgCallConnections(I)Ljava/util/List;
    .locals 2
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 810
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveBgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 811
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 812
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 814
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->emptyConnections:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getBgPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveBgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getFgCallConnections(I)Ljava/util/List;
    .locals 2
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 798
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 799
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 800
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 802
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->emptyConnections:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getFgCallLatestConnection(I)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "subscription"

    .prologue
    .line 823
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 824
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 825
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 827
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFgPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getFirstActiveBgCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 710
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveBgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getFirstActiveBgCall(I)Lcom/android/internal/telephony/Call;
    .locals 3
    .parameter "subscription"

    .prologue
    .line 729
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 730
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->hasMoreThanOneHoldingCall(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 731
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 739
    :cond_0
    :goto_0
    return-object v0

    .line 733
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstNonIdleCall(Ljava/util/List;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 734
    .local v0, call:Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 735
    if-nez v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_1
.end method

.method public getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;
    .locals 3
    .parameter "subscription"

    .prologue
    .line 763
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 764
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstNonIdleCall(Ljava/util/List;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 765
    .local v0, call:Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 766
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 770
    :cond_0
    :goto_0
    return-object v0

    .line 766
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0
.end method

.method public getOtherActiveSub(I)I
    .locals 6
    .parameter "subscription"

    .prologue
    .line 397
    const/4 v2, -0x1

    .line 398
    .local v2, otherSub:I
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v0

    .line 400
    .local v0, count:I
    const-string v3, "ExtCallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is other sub active = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 402
    const-string v3, "ExtCallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Count ** "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    if-eq v1, p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ExtCallManager;->getState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_1

    .line 404
    const-string v3, "ExtCallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got other active sub  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    move v2, v1

    .line 409
    :cond_0
    return v2

    .line 401
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getPhoneInCall(I)Lcom/android/internal/telephony/Phone;
    .locals 2
    .parameter "subscription"

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 207
    :goto_0
    return-object v0

    .line 201
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_1

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveBgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0
.end method

.method public getRingingPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getServiceState(I)I
    .locals 7
    .parameter "subscription"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 143
    const/4 v2, 0x1

    .line 145
    .local v2, resultState:I
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 146
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 147
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 148
    .local v3, serviceState:I
    if-nez v3, :cond_2

    .line 150
    move v2, v3

    .line 166
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    .end local v3           #serviceState:I
    :cond_1
    return v2

    .line 152
    .restart local v1       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v3       #serviceState:I
    :cond_2
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 155
    if-eq v2, v5, :cond_3

    if-ne v2, v6, :cond_0

    .line 157
    :cond_3
    move v2, v3

    goto :goto_0

    .line 159
    :cond_4
    if-ne v3, v5, :cond_0

    .line 160
    if-ne v2, v6, :cond_0

    .line 161
    move v2, v3

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ExtCallManager;->getState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    return-object v0
.end method

.method public getState(I)Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 5
    .parameter "subscription"

    .prologue
    .line 124
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 126
    .local v2, s:Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 127
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 128
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_1

    .line 129
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 130
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_0

    .line 131
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 135
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_2
    return-object v2
.end method

.method protected handleEventRingingConnection(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 917
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 918
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v2

    .line 919
    .local v2, sub:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/ExtCallManager;->hasMoreThanOneRingingCall()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 921
    :cond_0
    :try_start_0
    const-string v3, "ExtCallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "silently drop incoming call: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 929
    :goto_0
    return-void

    .line 923
    :catch_0
    move-exception v1

    .line 924
    .local v1, e:Lcom/android/internal/telephony/CallStateException;
    const-string v3, "ExtCallManager"

    const-string v4, "new ringing connection"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 927
    .end local v1           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-virtual {v4, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method protected handleEventVoiceSysId(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 577
    const/4 v1, -0x1

    .line 579
    .local v1, sub:I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 580
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 581
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 582
    iget-object v3, p0, Lcom/android/internal/telephony/ExtCallManager;->vsidVoice:[J

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 583
    const-string v2, "ExtCallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Voice System ID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/ExtCallManager;->vsidVoice:[J

    aget-wide v4, v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_0
    return-void
.end method

.method public hasActiveBgCall()Z
    .locals 1

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ExtCallManager;->hasActiveBgCall(I)Z

    move-result v0

    return v0
.end method

.method public hasActiveBgCall(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveCall(Ljava/util/ArrayList;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasActiveFgCall()Z
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ExtCallManager;->hasActiveFgCall(I)Z

    move-result v0

    return v0
.end method

.method public hasActiveFgCall(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveCall(Ljava/util/ArrayList;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasActiveFgCallAnyPhone()Z
    .locals 1

    .prologue
    .line 610
    invoke-super {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    return v0
.end method

.method public hasActiveRingingCall()Z
    .locals 1

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ExtCallManager;->hasActiveRingingCall(I)Z

    move-result v0

    return v0
.end method

.method public hasActiveRingingCall(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveCall(Ljava/util/ArrayList;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisconnectedBgCall(I)Z
    .locals 2
    .parameter "subscription"

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisconnectedFgCall(I)Z
    .locals 2
    .parameter "subscription"

    .prologue
    .line 834
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/ExtCallManager;->getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;I)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActiveSubscription(I)V
    .locals 4
    .parameter "subscription"

    .prologue
    const/4 v3, 0x0

    .line 212
    const-string v0, "ExtCallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActiveSubscription existing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/ExtCallManager;->mActiveSub:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "new = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    sput p1, Lcom/android/internal/telephony/ExtCallManager;->mActiveSub:I

    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mActiveSubChangeRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    sget v2, Lcom/android/internal/telephony/ExtCallManager;->mActiveSub:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 215
    return-void
.end method

.method public setAudioMode()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 318
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 319
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_0

    .line 389
    :goto_0
    return-void

    .line 320
    :cond_0
    const-string v7, "audio"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 323
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v3, 0x0

    .line 324
    .local v3, mode:I
    sget-object v7, Lcom/android/internal/telephony/ExtCallManager$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 388
    :cond_1
    :goto_1
    const-string v7, "ExtCallManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setAudioMode State = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 327
    :pswitch_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v7

    if-eq v7, v11, :cond_1

    .line 329
    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    if-lez v7, :cond_2

    .line 330
    const-string v7, "ExtCallManager"

    const-string v8, "requestAudioFocus on STREAM_RING"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {v0, v9, v9}, Landroid/media/AudioManager;->requestAudioFocusForCall(II)V

    .line 334
    :cond_2
    invoke-virtual {v0, v11}, Landroid/media/AudioManager;->setMode(I)V

    .line 335
    const-string v7, "ExtCallManager"

    const-string v8, "setAudioMode RINGING"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 339
    :pswitch_1
    const/4 v6, 0x0

    .local v6, sub:I
    :goto_2
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 342
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v7

    if-eq v7, v6, :cond_3

    .line 343
    invoke-direct {p0, v6, v0}, Lcom/android/internal/telephony/ExtCallManager;->setAudioParameters(ILandroid/media/AudioManager;)V

    .line 344
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ExtCallManager;->updateLchStatus(I)V

    .line 339
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 346
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v7

    invoke-direct {p0, v7, v0}, Lcom/android/internal/telephony/ExtCallManager;->setAudioParameters(ILandroid/media/AudioManager;)V

    .line 348
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 349
    .local v5, offHookPhone:Lcom/android/internal/telephony/Phone;
    const/4 v4, 0x2

    .line 352
    .local v4, newAudioMode:I
    instance-of v7, v5, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v7, :cond_5

    .line 354
    const-string v7, "ExtCallManager"

    const-string v8, "setAudioMode Set audio mode for SIP call!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v4, 0x3

    .line 360
    :cond_5
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    .line 361
    .local v2, currMode:I
    if-eq v2, v4, :cond_1

    .line 363
    invoke-virtual {v0, v10, v9}, Landroid/media/AudioManager;->requestAudioFocusForCall(II)V

    .line 365
    const-string v7, "ExtCallManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setAudioMode Setting audio mode from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setMode(I)V

    goto/16 :goto_1

    .line 372
    .end local v2           #currMode:I
    .end local v4           #newAudioMode:I
    .end local v5           #offHookPhone:Lcom/android/internal/telephony/Phone;
    .end local v6           #sub:I
    :pswitch_2
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v7

    if-eqz v7, :cond_1

    .line 373
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v7

    invoke-direct {p0, v7, v0}, Lcom/android/internal/telephony/ExtCallManager;->setAudioParameters(ILandroid/media/AudioManager;)V

    .line 374
    const/4 v6, 0x0

    .restart local v6       #sub:I
    :goto_3
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 376
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getActiveSubscription()I

    move-result v7

    if-eq v7, v6, :cond_6

    .line 377
    invoke-direct {p0, v6, v0}, Lcom/android/internal/telephony/ExtCallManager;->setAudioParameters(ILandroid/media/AudioManager;)V

    .line 378
    :cond_6
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ExtCallManager;->updateLchStatus(I)V

    .line 375
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 381
    :cond_7
    invoke-virtual {v0, v10}, Landroid/media/AudioManager;->setMode(I)V

    .line 382
    const-string v7, "ExtCallManager"

    const-string v8, "abandonAudioFocus"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {v0}, Landroid/media/AudioManager;->abandonAudioFocusForCall()V

    goto/16 :goto_1

    .line 324
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public switchToLocalHold(IZ)V
    .locals 4
    .parameter "subscription"
    .parameter "switchTo"

    .prologue
    .line 414
    const/4 v0, 0x0

    .line 415
    .local v0, activePhone:Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 417
    .local v1, heldPhone:Lcom/android/internal/telephony/Phone;
    const-string v2, "ExtCallManager"

    const-string v3, " switchToLocalHold update audio state"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->setAudioMode()V

    .line 421
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 936
    .local v0, b:Ljava/lang/StringBuilder;
    const-string v5, "ExtCallManager {"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 938
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\nSUB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\nstate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ExtCallManager;->getState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 941
    .local v1, call:Lcom/android/internal/telephony/Call;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n- Foreground: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ExtCallManager;->getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    const-string v5, "\n  Conn: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ExtCallManager;->getFgCallConnections(I)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 944
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveBgCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 945
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n- Background: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    const-string v5, "\n  Conn: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ExtCallManager;->getBgCallConnections(I)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 948
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ExtCallManager;->getFirstActiveRingingCall(I)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 949
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n- Ringing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 953
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExtCallManager;->getAllPhones()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Phone;

    .line 954
    .local v4, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v4, :cond_1

    .line 955
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\nPhone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 958
    .restart local v1       #call:Lcom/android/internal/telephony/Call;
    const-string v5, "\n- Foreground: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 959
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 960
    const-string v5, " Background: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 961
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 962
    const-string v5, " Ringing: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 965
    .end local v1           #call:Lcom/android/internal/telephony/Call;
    .end local v4           #phone:Lcom/android/internal/telephony/Phone;
    :cond_2
    const-string v5, "\n}"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
