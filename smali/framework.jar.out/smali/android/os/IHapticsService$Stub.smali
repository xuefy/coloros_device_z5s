.class public abstract Landroid/os/IHapticsService$Stub;
.super Landroid/os/Binder;
.source "IHapticsService.java"

# interfaces
.implements Landroid/os/IHapticsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IHapticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IHapticsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IHapticsService"

.field static final TRANSACTION_getChipRevision:I = 0xa

.field static final TRANSACTION_getDeviceID:I = 0x9

.field static final TRANSACTION_getRingHapticsName:I = 0xd

.field static final TRANSACTION_getRingHapticsValue:I = 0xf

.field static final TRANSACTION_getRingHapticsValues:I = 0xe

.field static final TRANSACTION_isAudioHapticEnabled:I = 0x8

.field static final TRANSACTION_playEffectSequence:I = 0x4

.field static final TRANSACTION_playEffectSequenceRepeat:I = 0x5

.field static final TRANSACTION_playNubiaEffect:I = 0x11

.field static final TRANSACTION_playRingHaptics:I = 0xc

.field static final TRANSACTION_playRingSeq:I = 0x10

.field static final TRANSACTION_playTimedEffect:I = 0x3

.field static final TRANSACTION_playeffect:I = 0x1

.field static final TRANSACTION_playeffectforce:I = 0x2

.field static final TRANSACTION_runDiagnostic:I = 0xb

.field static final TRANSACTION_setAudioHapticEnabled:I = 0x7

.field static final TRANSACTION_stopPlayingEffect:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.IHapticsService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IHapticsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IHapticsService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.os.IHapticsService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IHapticsService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/IHapticsService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/os/IHapticsService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IHapticsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 231
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 43
    :sswitch_0
    const-string v4, "android.os.IHapticsService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v4, "android.os.IHapticsService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 53
    .local v1, _arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1}, Landroid/os/IHapticsService$Stub;->playeffect(ILandroid/os/IBinder;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 59
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/os/IBinder;
    :sswitch_2
    const-string v4, "android.os.IHapticsService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 63
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 64
    .restart local v1       #_arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1}, Landroid/os/IHapticsService$Stub;->playeffectforce(ILandroid/os/IBinder;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 70
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/os/IBinder;
    :sswitch_3
    const-string v4, "android.os.IHapticsService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 74
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 75
    .restart local v1       #_arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1}, Landroid/os/IHapticsService$Stub;->playTimedEffect(ILandroid/os/IBinder;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 81
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/os/IBinder;
    :sswitch_4
    const-string v4, "android.os.IHapticsService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 86
    .restart local v1       #_arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1}, Landroid/os/IHapticsService$Stub;->playEffectSequence(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 92
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Landroid/os/IBinder;
    :sswitch_5
    const-string v4, "android.os.IHapticsService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 98
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 99
    .local v2, _arg2:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/IHapticsService$Stub;->playEffectSequenceRepeat(Ljava/lang/String;ILandroid/os/IBinder;)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 105
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Landroid/os/IBinder;
    :sswitch_6
    const-string v4, "android.os.IHapticsService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 108
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/os/IHapticsService$Stub;->stopPlayingEffect(Landroid/os/IBinder;)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 114
    .end local v0           #_arg0:Landroid/os/IBinder;
    :sswitch_7
    const-string v4, "android.os.IHapticsService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 119
    .local v1, _arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1}, Landroid/os/IHapticsService$Stub;->setAudioHapticEnabled(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 125
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Landroid/os/IBinder;
    :sswitch_8
    const-string v6, "android.os.IHapticsService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 128
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/os/IHapticsService$Stub;->isAudioHapticEnabled(Landroid/os/IBinder;)Z

    move-result v3

    .line 129
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    if-eqz v3, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 135
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v3           #_result:Z
    :sswitch_9
    const-string v4, "android.os.IHapticsService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 138
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/os/IHapticsService$Stub;->getDeviceID(Landroid/os/IBinder;)I

    move-result v3

    .line 139
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 145
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v3           #_result:I
    :sswitch_a
    const-string v4, "android.os.IHapticsService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 148
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/os/IHapticsService$Stub;->getChipRevision(Landroid/os/IBinder;)I

    move-result v3

    .line 149
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 155
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v3           #_result:I
    :sswitch_b
    const-string v4, "android.os.IHapticsService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 158
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/os/IHapticsService$Stub;->runDiagnostic(Landroid/os/IBinder;)I

    move-result v3

    .line 159
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 165
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v3           #_result:I
    :sswitch_c
    const-string v4, "android.os.IHapticsService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 169
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 170
    .restart local v1       #_arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1}, Landroid/os/IHapticsService$Stub;->playRingHaptics(ILandroid/os/IBinder;)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 176
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/os/IBinder;
    :sswitch_d
    const-string v4, "android.os.IHapticsService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 179
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/os/IHapticsService$Stub;->getRingHapticsName(Landroid/os/IBinder;)[Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v3           #_result:[Ljava/lang/String;
    :sswitch_e
    const-string v4, "android.os.IHapticsService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 189
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/os/IHapticsService$Stub;->getRingHapticsValues(Landroid/os/IBinder;)[Ljava/lang/String;

    move-result-object v3

    .line 190
    .restart local v3       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 196
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v3           #_result:[Ljava/lang/String;
    :sswitch_f
    const-string v4, "android.os.IHapticsService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 200
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 201
    .restart local v1       #_arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1}, Landroid/os/IHapticsService$Stub;->getRingHapticsValue(ILandroid/os/IBinder;)Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 208
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/os/IBinder;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_10
    const-string v4, "android.os.IHapticsService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 212
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 213
    .restart local v1       #_arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1}, Landroid/os/IHapticsService$Stub;->playRingSeq(ILandroid/os/IBinder;)V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 219
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/os/IBinder;
    :sswitch_11
    const-string v6, "android.os.IHapticsService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 223
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    move v1, v5

    .line 225
    .local v1, _arg1:Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 226
    .restart local v2       #_arg2:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/IHapticsService$Stub;->playNubiaEffect(IZLandroid/os/IBinder;)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg1:Z
    .end local v2           #_arg2:Landroid/os/IBinder;
    :cond_1
    move v1, v4

    .line 223
    goto :goto_1

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
