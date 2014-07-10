.class Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBluetoothGattCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGattCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGattCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter "remote"

    .prologue
    .line 427
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput-object p1, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 429
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    const-string v0, "android.bluetooth.IBluetoothGattCallback"

    return-object v0
.end method

.method public onCharacteristicRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 5
    .parameter "address"
    .parameter "status"
    .parameter "srvcType"
    .parameter "srvcInstId"
    .parameter "srvcUuid"
    .parameter "charInstId"
    .parameter "charUuid"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 637
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 638
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 640
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 641
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 642
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 643
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 645
    if-eqz p5, :cond_0

    .line 646
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 647
    const/4 v2, 0x0

    invoke-virtual {p5, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 652
    :goto_0
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 653
    if-eqz p7, :cond_1

    .line 654
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 655
    const/4 v2, 0x0

    invoke-virtual {p7, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 660
    :goto_1
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 661
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 662
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 666
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 668
    return-void

    .line 650
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 665
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 666
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 658
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onCharacteristicWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .locals 5
    .parameter "address"
    .parameter "status"
    .parameter "srvcType"
    .parameter "srvcInstId"
    .parameter "srvcUuid"
    .parameter "charInstId"
    .parameter "charUuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 671
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 672
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 674
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 675
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 676
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 677
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 678
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 679
    if-eqz p5, :cond_0

    .line 680
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 681
    const/4 v2, 0x0

    invoke-virtual {p5, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 686
    :goto_0
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    if-eqz p7, :cond_1

    .line 688
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 689
    const/4 v2, 0x0

    invoke-virtual {p7, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 694
    :goto_1
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 695
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 701
    return-void

    .line 684
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 698
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 692
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onClientConnectionState(IIZLjava/lang/String;)V
    .locals 5
    .parameter "status"
    .parameter "clientIf"
    .parameter "connected"
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 456
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 457
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 459
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 464
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 465
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 471
    return-void

    .line 468
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onClientRegistered(II)V
    .locals 5
    .parameter "status"
    .parameter "clientIf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 440
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 441
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 443
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 447
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 453
    return-void

    .line 450
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onDescriptorRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 5
    .parameter "address"
    .parameter "status"
    .parameter "srvcType"
    .parameter "srvcInstId"
    .parameter "srvcUuid"
    .parameter "charInstId"
    .parameter "charUuid"
    .parameter "descrInstId"
    .parameter "descrUuid"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 720
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 721
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 723
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 724
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 725
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 726
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 727
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 728
    if-eqz p5, :cond_0

    .line 729
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 730
    const/4 v2, 0x0

    invoke-virtual {p5, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 735
    :goto_0
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 736
    if-eqz p7, :cond_1

    .line 737
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 738
    const/4 v2, 0x0

    invoke-virtual {p7, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 743
    :goto_1
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 744
    if-eqz p9, :cond_2

    .line 745
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    const/4 v2, 0x0

    invoke-virtual {p9, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 751
    :goto_2
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 752
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 753
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 756
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 757
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 759
    return-void

    .line 733
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 756
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 757
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 741
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 749
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public onDescriptorWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .locals 5
    .parameter "address"
    .parameter "status"
    .parameter "srvcType"
    .parameter "srvcInstId"
    .parameter "srvcUuid"
    .parameter "charInstId"
    .parameter "charUuid"
    .parameter "descrInstId"
    .parameter "descrUuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 762
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 763
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 765
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 766
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 767
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 770
    if-eqz p5, :cond_0

    .line 771
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 772
    const/4 v2, 0x0

    invoke-virtual {p5, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 777
    :goto_0
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 778
    if-eqz p7, :cond_1

    .line 779
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 780
    const/4 v2, 0x0

    invoke-virtual {p7, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 785
    :goto_1
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 786
    if-eqz p9, :cond_2

    .line 787
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    const/4 v2, 0x0

    invoke-virtual {p9, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 793
    :goto_2
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 794
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 797
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 798
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 800
    return-void

    .line 775
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 797
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 798
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 783
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 791
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public onExecuteWrite(Ljava/lang/String;I)V
    .locals 5
    .parameter "address"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 705
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 707
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 708
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 709
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 710
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 711
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 717
    return-void

    .line 714
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onGetCharacteristic(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    .locals 5
    .parameter "address"
    .parameter "srvcType"
    .parameter "srvcInstId"
    .parameter "srvcUuid"
    .parameter "charInstId"
    .parameter "charUuid"
    .parameter "charProps"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 548
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 549
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 551
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    if-eqz p4, :cond_0

    .line 556
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    const/4 v2, 0x0

    invoke-virtual {p4, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 562
    :goto_0
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 563
    if-eqz p6, :cond_1

    .line 564
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    const/4 v2, 0x0

    invoke-virtual {p6, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 570
    :goto_1
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 572
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 578
    return-void

    .line 560
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 575
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 568
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onGetDescriptor(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .locals 5
    .parameter "address"
    .parameter "srvcType"
    .parameter "srvcInstId"
    .parameter "srvcUuid"
    .parameter "charInstId"
    .parameter "charUuid"
    .parameter "descrInstId"
    .parameter "descrUuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 581
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 582
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 584
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 586
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    if-eqz p4, :cond_0

    .line 589
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 590
    const/4 v2, 0x0

    invoke-virtual {p4, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 595
    :goto_0
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    if-eqz p6, :cond_1

    .line 597
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    const/4 v2, 0x0

    invoke-virtual {p6, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 603
    :goto_1
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    if-eqz p8, :cond_2

    .line 605
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    const/4 v2, 0x0

    invoke-virtual {p8, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 611
    :goto_2
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 612
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 616
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 618
    return-void

    .line 593
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 615
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 616
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 601
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 609
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public onGetIncludedService(Ljava/lang/String;IILandroid/os/ParcelUuid;IILandroid/os/ParcelUuid;)V
    .locals 5
    .parameter "address"
    .parameter "srvcType"
    .parameter "srvcInstId"
    .parameter "srvcUuid"
    .parameter "inclSrvcType"
    .parameter "inclSrvcInstId"
    .parameter "inclSrvcUuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 515
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 516
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 518
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 520
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    if-eqz p4, :cond_0

    .line 523
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    const/4 v2, 0x0

    invoke-virtual {p4, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 529
    :goto_0
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    if-eqz p7, :cond_1

    .line 532
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    const/4 v2, 0x0

    invoke-virtual {p7, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 538
    :goto_1
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 539
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 545
    return-void

    .line 527
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 542
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 536
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onGetService(Ljava/lang/String;IILandroid/os/ParcelUuid;)V
    .locals 5
    .parameter "address"
    .parameter "srvcType"
    .parameter "srvcInstId"
    .parameter "srvcUuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 492
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 494
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 498
    if-eqz p4, :cond_0

    .line 499
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    const/4 v2, 0x0

    invoke-virtual {p4, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 505
    :goto_0
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 506
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 512
    return-void

    .line 503
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 509
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onNotify(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 5
    .parameter "address"
    .parameter "srvcType"
    .parameter "srvcInstId"
    .parameter "srvcUuid"
    .parameter "charInstId"
    .parameter "charUuid"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 803
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 804
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 806
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 807
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 808
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 809
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 810
    if-eqz p4, :cond_0

    .line 811
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 812
    const/4 v2, 0x0

    invoke-virtual {p4, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 817
    :goto_0
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 818
    if-eqz p6, :cond_1

    .line 819
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    const/4 v2, 0x0

    invoke-virtual {p6, v0, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 825
    :goto_1
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 826
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 827
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 830
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 833
    return-void

    .line 815
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 830
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 823
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onReadRemoteRssi(Ljava/lang/String;II)V
    .locals 5
    .parameter "address"
    .parameter "rssi"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 836
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 837
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 839
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 840
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 841
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 842
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 843
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 844
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 850
    return-void

    .line 847
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onScanResult(Ljava/lang/String;I[B)V
    .locals 5
    .parameter "address"
    .parameter "rssi"
    .parameter "advData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 474
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 475
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 477
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 481
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 482
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 488
    return-void

    .line 485
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onSearchComplete(Ljava/lang/String;I)V
    .locals 5
    .parameter "address"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 621
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 622
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 624
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 625
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 626
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    iget-object v2, p0, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 628
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 634
    return-void

    .line 631
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
