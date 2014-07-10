.class public Landroid/os/SystemHaptics;
.super Landroid/os/Haptics;
.source "SystemHaptics.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SystemHaptics"


# instance fields
.field private final mService:Landroid/os/IHapticsService;

.field private final mToken:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/os/Haptics;-><init>()V

    .line 31
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    .line 34
    const-string v0, "haptics"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IHapticsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHapticsService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    .line 36
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-nez v0, :cond_0

    .line 37
    const-string v0, "SystemHaptics"

    const-string v1, "SystemHaptics construct null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemHaptics mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    invoke-direct {p0, v0}, Landroid/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 41
    return-void

    .line 39
    :cond_0
    const-string v0, "SystemHaptics"

    invoke-direct {p0, v0}, Landroid/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private LOG(Ljava/lang/String;)V
    .locals 0
    .parameter "log_str"

    .prologue
    .line 286
    return-void
.end method


# virtual methods
.method public getChipRevision()I
    .locals 3

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, result:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChipRevision mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    invoke-direct {p0, v1}, Landroid/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-nez v1, :cond_0

    .line 170
    const-string v1, "SystemHaptics"

    const-string/jumbo v2, "no haptics service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_0
    return v0

    .line 173
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    iget-object v2, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Landroid/os/IHapticsService;->getChipRevision(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getDeviceID()I
    .locals 3

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, result:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceID mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    invoke-direct {p0, v1}, Landroid/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-nez v1, :cond_0

    .line 154
    const-string v1, "SystemHaptics"

    const-string/jumbo v2, "no haptics service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :goto_0
    return v0

    .line 157
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    iget-object v2, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Landroid/os/IHapticsService;->getDeviceID(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getRingHapticsName()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, RingNames:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRingHapticsName mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    invoke-direct {p0, v1}, Landroid/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-nez v1, :cond_0

    .line 228
    const-string v1, "SystemHaptics"

    const-string/jumbo v2, "no haptics service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_0
    return-object v0

    .line 231
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    iget-object v2, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Landroid/os/IHapticsService;->getRingHapticsName(Landroid/os/IBinder;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getRingHapticsValue(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, value:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRingHapticsValue mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    invoke-direct {p0, v1}, Landroid/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-nez v1, :cond_0

    .line 258
    const-string v1, "SystemHaptics"

    const-string/jumbo v2, "no haptics service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :goto_0
    return-object v0

    .line 261
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    iget-object v2, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v1, p1, v2}, Landroid/os/IHapticsService;->getRingHapticsValue(ILandroid/os/IBinder;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getRingHapticsValues()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, RingValues:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRingHapticsValues mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    invoke-direct {p0, v1}, Landroid/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-nez v1, :cond_0

    .line 243
    const-string v1, "SystemHaptics"

    const-string/jumbo v2, "no haptics service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :goto_0
    return-object v0

    .line 246
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    iget-object v2, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Landroid/os/IHapticsService;->getRingHapticsValues(Landroid/os/IBinder;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isAudioHapticEnabled()Z
    .locals 3

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, result:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAudioHapticEnabled mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    invoke-direct {p0, v1}, Landroid/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-nez v1, :cond_0

    .line 138
    const-string v1, "SystemHaptics"

    const-string/jumbo v2, "no haptics service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_0
    return v0

    .line 141
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    iget-object v2, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Landroid/os/IHapticsService;->isAudioHapticEnabled(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public playEffectSequence(Ljava/lang/String;)V
    .locals 2
    .parameter "sequence"

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "playEffectSequence mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    invoke-direct {p0, v0}, Landroid/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-nez v0, :cond_0

    .line 86
    const-string v0, "SystemHaptics"

    const-string/jumbo v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    return-void

    .line 89
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, v1}, Landroid/os/IHapticsService;->playEffectSequence(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playEffectSequenceRepeat(Ljava/lang/String;I)V
    .locals 2
    .parameter "sequence"
    .parameter "repeat"

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "playEffectSequenceRepeat mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    invoke-direct {p0, v0}, Landroid/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-nez v0, :cond_0

    .line 99
    const-string v0, "SystemHaptics"

    const-string/jumbo v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_0
    return-void

    .line 102
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, p2, v1}, Landroid/os/IHapticsService;->playEffectSequenceRepeat(Ljava/lang/String;ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playNubiaEffect(I)V
    .locals 1
    .parameter "effectID"

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/SystemHaptics;->playNubiaEffect(IZ)V

    .line 271
    return-void
.end method

.method public playNubiaEffect(IZ)V
    .locals 2
    .parameter "effectID"
    .parameter "ignoreFeedBack"

    .prologue
    .line 274
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-eqz v0, :cond_0

    .line 276
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, p2, v1}, Landroid/os/IHapticsService;->playNubiaEffect(IZLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playRingHaptics(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, result:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "playRingHaptics mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    invoke-direct {p0, v1}, Landroid/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-nez v1, :cond_0

    .line 201
    const-string v1, "SystemHaptics"

    const-string/jumbo v2, "no haptics service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_0
    return-void

    .line 204
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    iget-object v2, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v1, p1, v2}, Landroid/os/IHapticsService;->playRingHaptics(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public playRingSeq(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, result:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "playRingSeq mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    invoke-direct {p0, v1}, Landroid/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-nez v1, :cond_0

    .line 215
    const-string v1, "SystemHaptics"

    const-string/jumbo v2, "no haptics service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :goto_0
    return-void

    .line 218
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    iget-object v2, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v1, p1, v2}, Landroid/os/IHapticsService;->playRingSeq(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public playTimedEffect(I)V
    .locals 2
    .parameter "effectDuration"

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "playTimedEffect mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    invoke-direct {p0, v0}, Landroid/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-nez v0, :cond_0

    .line 73
    const-string v0, "SystemHaptics"

    const-string/jumbo v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    return-void

    .line 76
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, v1}, Landroid/os/IHapticsService;->playTimedEffect(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playeffect(I)V
    .locals 2
    .parameter "effectID"

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "playeffect mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    invoke-direct {p0, v0}, Landroid/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-nez v0, :cond_0

    .line 47
    const-string v0, "SystemHaptics"

    const-string/jumbo v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_0
    return-void

    .line 50
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, v1}, Landroid/os/IHapticsService;->playeffect(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playeffectforce(I)V
    .locals 2
    .parameter "effectID"

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "playeffectforce mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    invoke-direct {p0, v0}, Landroid/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-nez v0, :cond_0

    .line 60
    const-string v0, "SystemHaptics"

    const-string/jumbo v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_0
    return-void

    .line 63
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, v1}, Landroid/os/IHapticsService;->playeffectforce(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public runDiagnostic()I
    .locals 3

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, result:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "runDiagnostic mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    invoke-direct {p0, v1}, Landroid/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-nez v1, :cond_0

    .line 185
    const-string v1, "SystemHaptics"

    const-string/jumbo v2, "no haptics service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_0
    return v0

    .line 188
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    iget-object v2, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Landroid/os/IHapticsService;->runDiagnostic(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setAudioHapticEnabled(Ljava/lang/String;)V
    .locals 2
    .parameter "appname"

    .prologue
    .line 123
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-nez v0, :cond_0

    .line 124
    const-string v0, "SystemHaptics"

    const-string/jumbo v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_0
    return-void

    .line 127
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, v1}, Landroid/os/IHapticsService;->setAudioHapticEnabled(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopPlayingEffect()V
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopPlayingEffect mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    invoke-direct {p0, v0}, Landroid/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    if-nez v0, :cond_0

    .line 112
    const-string v0, "SystemHaptics"

    const-string/jumbo v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_0
    return-void

    .line 115
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemHaptics;->mService:Landroid/os/IHapticsService;

    iget-object v1, p0, Landroid/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1}, Landroid/os/IHapticsService;->stopPlayingEffect(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    goto :goto_0
.end method
