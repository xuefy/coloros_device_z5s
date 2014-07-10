.class public abstract Landroid/os/Haptics;
.super Ljava/lang/Object;
.source "Haptics.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public abstract getChipRevision()I
.end method

.method public abstract getDeviceID()I
.end method

.method public abstract getRingHapticsName()[Ljava/lang/String;
.end method

.method public abstract getRingHapticsValue(I)Ljava/lang/String;
.end method

.method public abstract getRingHapticsValues()[Ljava/lang/String;
.end method

.method public abstract isAudioHapticEnabled()Z
.end method

.method public abstract playEffectSequence(Ljava/lang/String;)V
.end method

.method public abstract playEffectSequenceRepeat(Ljava/lang/String;I)V
.end method

.method public abstract playNubiaEffect(I)V
.end method

.method public abstract playNubiaEffect(IZ)V
.end method

.method public abstract playRingHaptics(I)V
.end method

.method public abstract playRingSeq(I)V
.end method

.method public abstract playTimedEffect(I)V
.end method

.method public abstract playeffect(I)V
.end method

.method public abstract playeffectforce(I)V
.end method

.method public abstract runDiagnostic()I
.end method

.method public abstract setAudioHapticEnabled(Ljava/lang/String;)V
.end method

.method public abstract stopPlayingEffect()V
.end method
