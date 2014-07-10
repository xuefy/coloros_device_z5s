.class public abstract Landroid/bluetooth/IBluetoothGatt$Stub;
.super Landroid/os/Binder;
.source "IBluetoothGatt.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGatt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGatt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothGatt"

.field static final TRANSACTION_addCharacteristic:I = 0x19

.field static final TRANSACTION_addDescriptor:I = 0x1a

.field static final TRANSACTION_addIncludedService:I = 0x18

.field static final TRANSACTION_beginReliableWrite:I = 0x10

.field static final TRANSACTION_beginServiceDeclaration:I = 0x17

.field static final TRANSACTION_clearServices:I = 0x1d

.field static final TRANSACTION_clientConnect:I = 0x7

.field static final TRANSACTION_clientDisconnect:I = 0x8

.field static final TRANSACTION_discoverServices:I = 0xa

.field static final TRANSACTION_endReliableWrite:I = 0x11

.field static final TRANSACTION_endServiceDeclaration:I = 0x1b

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x1

.field static final TRANSACTION_monitorRssi:I = 0x22

.field static final TRANSACTION_readCharacteristic:I = 0xb

.field static final TRANSACTION_readDescriptor:I = 0xd

.field static final TRANSACTION_readRemoteRssi:I = 0x12

.field static final TRANSACTION_refreshDevice:I = 0x9

.field static final TRANSACTION_registerClient:I = 0x5

.field static final TRANSACTION_registerExtras:I = 0x20

.field static final TRANSACTION_registerForNotification:I = 0xf

.field static final TRANSACTION_registerServer:I = 0x13

.field static final TRANSACTION_removeService:I = 0x1c

.field static final TRANSACTION_scanFilterAddDeviceAddress:I = 0x24

.field static final TRANSACTION_scanFilterAddLocalName:I = 0x26

.field static final TRANSACTION_scanFilterAddManufacturerData:I = 0x27

.field static final TRANSACTION_scanFilterAddServiceChanged:I = 0x28

.field static final TRANSACTION_scanFilterAddSolicitUuid:I = 0x25

.field static final TRANSACTION_scanFilterClear:I = 0x29

.field static final TRANSACTION_sendNotification:I = 0x1f

.field static final TRANSACTION_sendResponse:I = 0x1e

.field static final TRANSACTION_serverConnect:I = 0x15

.field static final TRANSACTION_serverDisconnect:I = 0x16

.field static final TRANSACTION_serverListen:I = 0x23

.field static final TRANSACTION_startScan:I = 0x2

.field static final TRANSACTION_startScanWithUuids:I = 0x3

.field static final TRANSACTION_stopScan:I = 0x4

.field static final TRANSACTION_unregisterClient:I = 0x6

.field static final TRANSACTION_unregisterExtras:I = 0x21

.field static final TRANSACTION_unregisterServer:I = 0x14

.field static final TRANSACTION_writeCharacteristic:I = 0xc

.field static final TRANSACTION_writeDescriptor:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGatt;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "android.bluetooth.IBluetoothGatt"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/bluetooth/IBluetoothGatt;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 720
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 46
    :sswitch_0
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v1, 0x1

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 54
    .local v2, _arg0:[I
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v14

    .line 55
    .local v14, _result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 57
    const/4 v1, 0x1

    goto :goto_0

    .line 61
    .end local v2           #_arg0:[I
    .end local v14           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_2
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 65
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    .line 66
    .local v3, _arg1:Z
    :goto_1
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->startScan(IZ)V

    .line 67
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    const/4 v1, 0x1

    goto :goto_0

    .line 65
    .end local v3           #_arg1:Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 72
    .end local v2           #_arg0:I
    :sswitch_3
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 76
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    .line 78
    .restart local v3       #_arg1:Z
    :goto_2
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/ParcelUuid;

    .line 79
    .local v4, _arg2:[Landroid/os/ParcelUuid;
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->startScanWithUuids(IZ[Landroid/os/ParcelUuid;)V

    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    const/4 v1, 0x1

    goto :goto_0

    .line 76
    .end local v3           #_arg1:Z
    .end local v4           #_arg2:[Landroid/os/ParcelUuid;
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 85
    .end local v2           #_arg0:I
    :sswitch_4
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 89
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    .line 90
    .restart local v3       #_arg1:Z
    :goto_3
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->stopScan(IZ)V

    .line 91
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    const/4 v1, 0x1

    goto :goto_0

    .line 89
    .end local v3           #_arg1:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 96
    .end local v2           #_arg0:I
    :sswitch_5
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 99
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 105
    .local v2, _arg0:Landroid/os/ParcelUuid;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattCallback;

    move-result-object v3

    .line 106
    .local v3, _arg1:Landroid/bluetooth/IBluetoothGattCallback;
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V

    .line 107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 102
    .end local v2           #_arg0:Landroid/os/ParcelUuid;
    .end local v3           #_arg1:Landroid/bluetooth/IBluetoothGattCallback;
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/os/ParcelUuid;
    goto :goto_4

    .line 112
    .end local v2           #_arg0:Landroid/os/ParcelUuid;
    :sswitch_6
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 115
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregisterClient(I)V

    .line 116
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 121
    .end local v2           #_arg0:I
    :sswitch_7
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 125
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v4, 0x1

    .line 128
    .local v4, _arg2:Z
    :goto_5
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientConnect(ILjava/lang/String;Z)V

    .line 129
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 127
    .end local v4           #_arg2:Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    .line 134
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_8
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 138
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 139
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientDisconnect(ILjava/lang/String;)V

    .line 140
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 145
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_9
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 149
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 150
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->refreshDevice(ILjava/lang/String;)V

    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 156
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_a
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 160
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 161
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->discoverServices(ILjava/lang/String;)V

    .line 162
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 167
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_b
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 171
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 173
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 175
    .local v4, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 177
    .local v5, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 178
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 184
    .local v6, _arg4:Landroid/os/ParcelUuid;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 186
    .local v7, _arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 187
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelUuid;

    .line 193
    .local v8, _arg6:Landroid/os/ParcelUuid;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, _arg7:I
    move-object v1, p0

    .line 194
    invoke-virtual/range {v1 .. v9}, Landroid/bluetooth/IBluetoothGatt$Stub;->readCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V

    .line 195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 181
    .end local v6           #_arg4:Landroid/os/ParcelUuid;
    .end local v7           #_arg5:I
    .end local v8           #_arg6:Landroid/os/ParcelUuid;
    .end local v9           #_arg7:I
    :cond_5
    const/4 v6, 0x0

    .restart local v6       #_arg4:Landroid/os/ParcelUuid;
    goto :goto_6

    .line 190
    .restart local v7       #_arg5:I
    :cond_6
    const/4 v8, 0x0

    .restart local v8       #_arg6:Landroid/os/ParcelUuid;
    goto :goto_7

    .line 200
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    .end local v6           #_arg4:Landroid/os/ParcelUuid;
    .end local v7           #_arg5:I
    .end local v8           #_arg6:Landroid/os/ParcelUuid;
    :sswitch_c
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 204
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 206
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 208
    .restart local v4       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 210
    .restart local v5       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    .line 211
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 217
    .restart local v6       #_arg4:Landroid/os/ParcelUuid;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 219
    .restart local v7       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    .line 220
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelUuid;

    .line 226
    .restart local v8       #_arg6:Landroid/os/ParcelUuid;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 228
    .restart local v9       #_arg7:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 230
    .local v10, _arg8:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    .local v11, _arg9:[B
    move-object v1, p0

    .line 231
    invoke-virtual/range {v1 .. v11}, Landroid/bluetooth/IBluetoothGatt$Stub;->writeCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V

    .line 232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 214
    .end local v6           #_arg4:Landroid/os/ParcelUuid;
    .end local v7           #_arg5:I
    .end local v8           #_arg6:Landroid/os/ParcelUuid;
    .end local v9           #_arg7:I
    .end local v10           #_arg8:I
    .end local v11           #_arg9:[B
    :cond_7
    const/4 v6, 0x0

    .restart local v6       #_arg4:Landroid/os/ParcelUuid;
    goto :goto_8

    .line 223
    .restart local v7       #_arg5:I
    :cond_8
    const/4 v8, 0x0

    .restart local v8       #_arg6:Landroid/os/ParcelUuid;
    goto :goto_9

    .line 237
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    .end local v6           #_arg4:Landroid/os/ParcelUuid;
    .end local v7           #_arg5:I
    .end local v8           #_arg6:Landroid/os/ParcelUuid;
    :sswitch_d
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 241
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 243
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 245
    .restart local v4       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 247
    .restart local v5       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 248
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 254
    .restart local v6       #_arg4:Landroid/os/ParcelUuid;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 256
    .restart local v7       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 257
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelUuid;

    .line 263
    .restart local v8       #_arg6:Landroid/os/ParcelUuid;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 265
    .restart local v9       #_arg7:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    .line 266
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/ParcelUuid;

    .line 272
    .local v10, _arg8:Landroid/os/ParcelUuid;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, _arg9:I
    move-object v1, p0

    .line 273
    invoke-virtual/range {v1 .. v11}, Landroid/bluetooth/IBluetoothGatt$Stub;->readDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V

    .line 274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 251
    .end local v6           #_arg4:Landroid/os/ParcelUuid;
    .end local v7           #_arg5:I
    .end local v8           #_arg6:Landroid/os/ParcelUuid;
    .end local v9           #_arg7:I
    .end local v10           #_arg8:Landroid/os/ParcelUuid;
    .end local v11           #_arg9:I
    :cond_9
    const/4 v6, 0x0

    .restart local v6       #_arg4:Landroid/os/ParcelUuid;
    goto :goto_a

    .line 260
    .restart local v7       #_arg5:I
    :cond_a
    const/4 v8, 0x0

    .restart local v8       #_arg6:Landroid/os/ParcelUuid;
    goto :goto_b

    .line 269
    .restart local v9       #_arg7:I
    :cond_b
    const/4 v10, 0x0

    .restart local v10       #_arg8:Landroid/os/ParcelUuid;
    goto :goto_c

    .line 279
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    .end local v6           #_arg4:Landroid/os/ParcelUuid;
    .end local v7           #_arg5:I
    .end local v8           #_arg6:Landroid/os/ParcelUuid;
    .end local v9           #_arg7:I
    .end local v10           #_arg8:Landroid/os/ParcelUuid;
    :sswitch_e
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 283
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 285
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 287
    .restart local v4       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 289
    .restart local v5       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    .line 290
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 296
    .restart local v6       #_arg4:Landroid/os/ParcelUuid;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 298
    .restart local v7       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    .line 299
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelUuid;

    .line 305
    .restart local v8       #_arg6:Landroid/os/ParcelUuid;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 307
    .restart local v9       #_arg7:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    .line 308
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/ParcelUuid;

    .line 314
    .restart local v10       #_arg8:Landroid/os/ParcelUuid;
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 316
    .restart local v11       #_arg9:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 318
    .local v12, _arg10:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .local v13, _arg11:[B
    move-object v1, p0

    .line 319
    invoke-virtual/range {v1 .. v13}, Landroid/bluetooth/IBluetoothGatt$Stub;->writeDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V

    .line 320
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 293
    .end local v6           #_arg4:Landroid/os/ParcelUuid;
    .end local v7           #_arg5:I
    .end local v8           #_arg6:Landroid/os/ParcelUuid;
    .end local v9           #_arg7:I
    .end local v10           #_arg8:Landroid/os/ParcelUuid;
    .end local v11           #_arg9:I
    .end local v12           #_arg10:I
    .end local v13           #_arg11:[B
    :cond_c
    const/4 v6, 0x0

    .restart local v6       #_arg4:Landroid/os/ParcelUuid;
    goto :goto_d

    .line 302
    .restart local v7       #_arg5:I
    :cond_d
    const/4 v8, 0x0

    .restart local v8       #_arg6:Landroid/os/ParcelUuid;
    goto :goto_e

    .line 311
    .restart local v9       #_arg7:I
    :cond_e
    const/4 v10, 0x0

    .restart local v10       #_arg8:Landroid/os/ParcelUuid;
    goto :goto_f

    .line 325
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    .end local v6           #_arg4:Landroid/os/ParcelUuid;
    .end local v7           #_arg5:I
    .end local v8           #_arg6:Landroid/os/ParcelUuid;
    .end local v9           #_arg7:I
    .end local v10           #_arg8:Landroid/os/ParcelUuid;
    :sswitch_f
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 329
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 331
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 333
    .restart local v4       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 335
    .restart local v5       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    .line 336
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 342
    .restart local v6       #_arg4:Landroid/os/ParcelUuid;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 344
    .restart local v7       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    .line 345
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelUuid;

    .line 351
    .restart local v8       #_arg6:Landroid/os/ParcelUuid;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v9, 0x1

    .local v9, _arg7:Z
    :goto_12
    move-object v1, p0

    .line 352
    invoke-virtual/range {v1 .. v9}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerForNotification(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Z)V

    .line 353
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 339
    .end local v6           #_arg4:Landroid/os/ParcelUuid;
    .end local v7           #_arg5:I
    .end local v8           #_arg6:Landroid/os/ParcelUuid;
    .end local v9           #_arg7:Z
    :cond_f
    const/4 v6, 0x0

    .restart local v6       #_arg4:Landroid/os/ParcelUuid;
    goto :goto_10

    .line 348
    .restart local v7       #_arg5:I
    :cond_10
    const/4 v8, 0x0

    .restart local v8       #_arg6:Landroid/os/ParcelUuid;
    goto :goto_11

    .line 351
    :cond_11
    const/4 v9, 0x0

    goto :goto_12

    .line 358
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    .end local v6           #_arg4:Landroid/os/ParcelUuid;
    .end local v7           #_arg5:I
    .end local v8           #_arg6:Landroid/os/ParcelUuid;
    :sswitch_10
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 362
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 363
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->beginReliableWrite(ILjava/lang/String;)V

    .line 364
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 369
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_11
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 373
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 375
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    const/4 v4, 0x1

    .line 376
    .local v4, _arg2:Z
    :goto_13
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->endReliableWrite(ILjava/lang/String;Z)V

    .line 377
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 375
    .end local v4           #_arg2:Z
    :cond_12
    const/4 v4, 0x0

    goto :goto_13

    .line 382
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_12
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 386
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 387
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->readRemoteRssi(ILjava/lang/String;)V

    .line 388
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 393
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_13
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    .line 396
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 402
    .local v2, _arg0:Landroid/os/ParcelUuid;
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v3

    .line 403
    .local v3, _arg1:Landroid/bluetooth/IBluetoothGattServerCallback;
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerServer(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattServerCallback;)V

    .line 404
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 399
    .end local v2           #_arg0:Landroid/os/ParcelUuid;
    .end local v3           #_arg1:Landroid/bluetooth/IBluetoothGattServerCallback;
    :cond_13
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/os/ParcelUuid;
    goto :goto_14

    .line 409
    .end local v2           #_arg0:Landroid/os/ParcelUuid;
    :sswitch_14
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 412
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregisterServer(I)V

    .line 413
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 418
    .end local v2           #_arg0:I
    :sswitch_15
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 422
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 424
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    const/4 v4, 0x1

    .line 425
    .restart local v4       #_arg2:Z
    :goto_15
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverConnect(ILjava/lang/String;Z)V

    .line 426
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 424
    .end local v4           #_arg2:Z
    :cond_14
    const/4 v4, 0x0

    goto :goto_15

    .line 431
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_16
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 435
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 436
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverDisconnect(ILjava/lang/String;)V

    .line 437
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 442
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_17
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 446
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 448
    .local v3, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 450
    .local v4, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 452
    .restart local v5       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_15

    .line 453
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .restart local v6       #_arg4:Landroid/os/ParcelUuid;
    :goto_16
    move-object v1, p0

    .line 458
    invoke-virtual/range {v1 .. v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->beginServiceDeclaration(IIIILandroid/os/ParcelUuid;)V

    .line 459
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 456
    .end local v6           #_arg4:Landroid/os/ParcelUuid;
    :cond_15
    const/4 v6, 0x0

    .restart local v6       #_arg4:Landroid/os/ParcelUuid;
    goto :goto_16

    .line 464
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    .end local v6           #_arg4:Landroid/os/ParcelUuid;
    :sswitch_18
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 468
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 470
    .restart local v3       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 472
    .restart local v4       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_16

    .line 473
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelUuid;

    .line 478
    .local v5, _arg3:Landroid/os/ParcelUuid;
    :goto_17
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->addIncludedService(IIILandroid/os/ParcelUuid;)V

    .line 479
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 476
    .end local v5           #_arg3:Landroid/os/ParcelUuid;
    :cond_16
    const/4 v5, 0x0

    .restart local v5       #_arg3:Landroid/os/ParcelUuid;
    goto :goto_17

    .line 484
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    .end local v5           #_arg3:Landroid/os/ParcelUuid;
    :sswitch_19
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 488
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_17

    .line 489
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 495
    .local v3, _arg1:Landroid/os/ParcelUuid;
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 497
    .restart local v4       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 498
    .local v5, _arg3:I
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->addCharacteristic(ILandroid/os/ParcelUuid;II)V

    .line 499
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 492
    .end local v3           #_arg1:Landroid/os/ParcelUuid;
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    :cond_17
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_18

    .line 504
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/os/ParcelUuid;
    :sswitch_1a
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 508
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_18

    .line 509
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 515
    .restart local v3       #_arg1:Landroid/os/ParcelUuid;
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 516
    .restart local v4       #_arg2:I
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->addDescriptor(ILandroid/os/ParcelUuid;I)V

    .line 517
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 512
    .end local v3           #_arg1:Landroid/os/ParcelUuid;
    .end local v4           #_arg2:I
    :cond_18
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_19

    .line 522
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/os/ParcelUuid;
    :sswitch_1b
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 525
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->endServiceDeclaration(I)V

    .line 526
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 531
    .end local v2           #_arg0:I
    :sswitch_1c
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 535
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 537
    .local v3, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 539
    .restart local v4       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_19

    .line 540
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelUuid;

    .line 545
    .local v5, _arg3:Landroid/os/ParcelUuid;
    :goto_1a
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->removeService(IIILandroid/os/ParcelUuid;)V

    .line 546
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 543
    .end local v5           #_arg3:Landroid/os/ParcelUuid;
    :cond_19
    const/4 v5, 0x0

    .restart local v5       #_arg3:Landroid/os/ParcelUuid;
    goto :goto_1a

    .line 551
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    .end local v5           #_arg3:Landroid/os/ParcelUuid;
    :sswitch_1d
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 554
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->clearServices(I)V

    .line 555
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 560
    .end local v2           #_arg0:I
    :sswitch_1e
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 564
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 566
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 568
    .restart local v4       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 570
    .local v5, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 572
    .local v6, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .local v7, _arg5:[B
    move-object v1, p0

    .line 573
    invoke-virtual/range {v1 .. v7}, Landroid/bluetooth/IBluetoothGatt$Stub;->sendResponse(ILjava/lang/String;III[B)V

    .line 574
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 579
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    .end local v6           #_arg4:I
    .end local v7           #_arg5:[B
    :sswitch_1f
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 581
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 583
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 585
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 587
    .restart local v4       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 589
    .restart local v5       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 590
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    .line 596
    .local v6, _arg4:Landroid/os/ParcelUuid;
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 598
    .local v7, _arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1b

    .line 599
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelUuid;

    .line 605
    .restart local v8       #_arg6:Landroid/os/ParcelUuid;
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v9, 0x1

    .line 607
    .restart local v9       #_arg7:Z
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .local v10, _arg8:[B
    move-object v1, p0

    .line 608
    invoke-virtual/range {v1 .. v10}, Landroid/bluetooth/IBluetoothGatt$Stub;->sendNotification(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Z[B)V

    .line 609
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 593
    .end local v6           #_arg4:Landroid/os/ParcelUuid;
    .end local v7           #_arg5:I
    .end local v8           #_arg6:Landroid/os/ParcelUuid;
    .end local v9           #_arg7:Z
    .end local v10           #_arg8:[B
    :cond_1a
    const/4 v6, 0x0

    .restart local v6       #_arg4:Landroid/os/ParcelUuid;
    goto :goto_1b

    .line 602
    .restart local v7       #_arg5:I
    :cond_1b
    const/4 v8, 0x0

    .restart local v8       #_arg6:Landroid/os/ParcelUuid;
    goto :goto_1c

    .line 605
    :cond_1c
    const/4 v9, 0x0

    goto :goto_1d

    .line 614
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    .end local v6           #_arg4:Landroid/os/ParcelUuid;
    .end local v7           #_arg5:I
    .end local v8           #_arg6:Landroid/os/ParcelUuid;
    :sswitch_20
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 618
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothGattExtrasCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattExtrasCallback;

    move-result-object v3

    .line 619
    .local v3, _arg1:Landroid/bluetooth/IBluetoothGattExtrasCallback;
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerExtras(ILandroid/bluetooth/IBluetoothGattExtrasCallback;)V

    .line 620
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 625
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/bluetooth/IBluetoothGattExtrasCallback;
    :sswitch_21
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 628
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregisterExtras(I)V

    .line 629
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 634
    .end local v2           #_arg0:I
    :sswitch_22
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 638
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 640
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 642
    .restart local v4       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 644
    .restart local v5       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg4:I
    move-object v1, p0

    .line 645
    invoke-virtual/range {v1 .. v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->monitorRssi(ILjava/lang/String;III)V

    .line 646
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 651
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    .end local v6           #_arg4:I
    :sswitch_23
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 653
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 655
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v3, 0x1

    .line 656
    .local v3, _arg1:Z
    :goto_1e
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverListen(IZ)V

    .line 657
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 655
    .end local v3           #_arg1:Z
    :cond_1d
    const/4 v3, 0x0

    goto :goto_1e

    .line 662
    .end local v2           #_arg0:I
    :sswitch_24
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 664
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 666
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 667
    .local v3, _arg1:B
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->scanFilterAddDeviceAddress(Ljava/lang/String;B)V

    .line 668
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 673
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:B
    :sswitch_25
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 675
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1e

    .line 676
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 681
    .local v2, _arg0:Landroid/os/ParcelUuid;
    :goto_1f
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->scanFilterAddSolicitUuid(Landroid/os/ParcelUuid;)V

    .line 682
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 679
    .end local v2           #_arg0:Landroid/os/ParcelUuid;
    :cond_1e
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/os/ParcelUuid;
    goto :goto_1f

    .line 687
    .end local v2           #_arg0:Landroid/os/ParcelUuid;
    :sswitch_26
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 690
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->scanFilterAddLocalName(Ljava/lang/String;)V

    .line 691
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 696
    .end local v2           #_arg0:Ljava/lang/String;
    :sswitch_27
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 700
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 701
    .local v3, _arg1:[B
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->scanFilterAddManufacturerData(I[B)V

    .line 702
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 707
    .end local v2           #_arg0:I
    .end local v3           #_arg1:[B
    :sswitch_28
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 708
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothGatt$Stub;->scanFilterAddServiceChanged()V

    .line 709
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 714
    :sswitch_29
    const-string v1, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothGatt$Stub;->scanFilterClear()V

    .line 716
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 42
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
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
