.class Landroid/net/wifi/WifiMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiMonitor;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiMonitor;)V
    .locals 1
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    .line 375
    const-string v0, "WifiMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method private connectToSupplicant()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 512
    const/4 v0, 0x0

    .line 515
    .local v0, connectTries:I
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiNative;->connectToSupplicant()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 524
    :goto_1
    return v2

    .line 518
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .end local v0           #connectTries:I
    .local v1, connectTries:I
    const/4 v3, 0x5

    if-ge v0, v3, :cond_1

    .line 519
    #calls: Landroid/net/wifi/WifiMonitor;->nap(I)V
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$400(I)V

    move v0, v1

    .end local v1           #connectTries:I
    .restart local v0       #connectTries:I
    goto :goto_0

    .line 524
    .end local v0           #connectTries:I
    .restart local v1       #connectTries:I
    :cond_1
    const/4 v2, 0x0

    move v0, v1

    .end local v1           #connectTries:I
    .restart local v0       #connectTries:I
    goto :goto_1
.end method

.method private handleDriverEvent(Ljava/lang/String;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 528
    if-nez p1, :cond_1

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    const-string v0, "HANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const v1, 0x2400c

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method private handleHostApEvents(Ljava/lang/String;)V
    .locals 4
    .parameter "dataString"

    .prologue
    const/4 v3, 0x0

    .line 676
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, tokens:[Ljava/lang/String;
    aget-object v1, v0, v3

    const-string v2, "AP-STA-CONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 679
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x2402a

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    aget-object v1, v0, v3

    const-string v2, "AP-STA-DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x24029

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleP2pEvents(Ljava/lang/String;)V
    .locals 4
    .parameter "dataString"

    .prologue
    .line 622
    const-string v1, "P2P-DEVICE-FOUND"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 623
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x24015

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    const-string v1, "P2P-DEVICE-LOST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 625
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x24016

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 626
    :cond_2
    const-string v1, "P2P-FIND-STOPPED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 627
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x24025

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 628
    :cond_3
    const-string v1, "P2P-GO-NEG-REQUEST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 629
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x24017

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 631
    :cond_4
    const-string v1, "P2P-GO-NEG-SUCCESS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 632
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x24019

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 633
    :cond_5
    const-string v1, "P2P-GO-NEG-FAILURE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 634
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x2401a

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 635
    :cond_6
    const-string v1, "P2P-GROUP-FORMATION-SUCCESS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 636
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x2401b

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 637
    :cond_7
    const-string v1, "P2P-GROUP-FORMATION-FAILURE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 638
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x2401c

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 639
    :cond_8
    const-string v1, "P2P-GROUP-STARTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 640
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x2401d

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 641
    :cond_9
    const-string v1, "P2P-GROUP-REMOVED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 642
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x2401e

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 643
    :cond_a
    const-string v1, "P2P-INVITATION-RECEIVED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 644
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x2401f

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 646
    :cond_b
    const-string v1, "P2P-INVITATION-RESULT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 647
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x24020

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 648
    :cond_c
    const-string v1, "P2P-PROV-DISC-PBC-REQ"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 649
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x24021

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 651
    :cond_d
    const-string v1, "P2P-PROV-DISC-PBC-RESP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 652
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x24022

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 654
    :cond_e
    const-string v1, "P2P-PROV-DISC-ENTER-PIN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 655
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x24023

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 657
    :cond_f
    const-string v1, "P2P-PROV-DISC-SHOW-PIN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 658
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x24024

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 660
    :cond_10
    const-string v1, "P2P-PROV-DISC-FAILURE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 661
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x24027

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 662
    :cond_11
    const-string v1, "P2P-SERV-DISC-RESP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 663
    invoke-static {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->newInstance(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 664
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    if-eqz v0, :cond_12

    .line 665
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x24026

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 667
    :cond_12
    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null service resp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private handleSupplicantStateChange(Ljava/lang/String;)V
    .locals 20
    .parameter "dataString"

    .prologue
    .line 692
    const/16 v16, 0x0

    .line 693
    .local v16, wifiSsid:Landroid/net/wifi/WifiSsid;
    const-string v17, "SSID="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 694
    .local v7, index:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_0

    .line 695
    add-int/lit8 v17, v7, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v16

    .line 698
    :cond_0
    const-string v17, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 700
    .local v4, dataTokens:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 701
    .local v2, BSSID:Ljava/lang/String;
    const/4 v10, -0x1

    .line 702
    .local v10, networkId:I
    const/4 v11, -0x1

    .line 703
    .local v11, newState:I
    move-object v3, v4

    .local v3, arr$:[Ljava/lang/String;
    array-length v8, v3

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v8, :cond_5

    aget-object v14, v3, v6

    .line 704
    .local v14, token:Ljava/lang/String;
    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 705
    .local v9, nameValue:[Ljava/lang/String;
    array-length v0, v9

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 703
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 709
    :cond_2
    const/16 v17, 0x0

    aget-object v17, v9, v17

    const-string v18, "BSSID"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 710
    const/16 v17, 0x1

    aget-object v2, v9, v17

    .line 711
    goto :goto_1

    .line 716
    :cond_3
    const/16 v17, 0x1

    :try_start_0
    aget-object v17, v9, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 721
    .local v15, value:I
    const/16 v17, 0x0

    aget-object v17, v9, v17

    const-string v18, "id"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 722
    move v10, v15

    goto :goto_1

    .line 717
    .end local v15           #value:I
    :catch_0
    move-exception v5

    .line 718
    .local v5, e:Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 723
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .restart local v15       #value:I
    :cond_4
    const/16 v17, 0x0

    aget-object v17, v9, v17

    const-string/jumbo v18, "state"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 724
    move v11, v15

    goto :goto_1

    .line 728
    .end local v9           #nameValue:[Ljava/lang/String;
    .end local v14           #token:Ljava/lang/String;
    .end local v15           #value:I
    :cond_5
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_6

    .line 741
    .end local v3           #arr$:[Ljava/lang/String;
    :goto_2
    return-void

    .line 730
    .restart local v3       #arr$:[Ljava/lang/String;
    :cond_6
    sget-object v12, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    .line 731
    .local v12, newSupplicantState:Landroid/net/wifi/SupplicantState;
    invoke-static {}, Landroid/net/wifi/SupplicantState;->values()[Landroid/net/wifi/SupplicantState;

    move-result-object v3

    .local v3, arr$:[Landroid/net/wifi/SupplicantState;
    array-length v8, v3

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v8, :cond_7

    aget-object v13, v3, v6

    .line 732
    .local v13, state:Landroid/net/wifi/SupplicantState;
    invoke-virtual {v13}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v11, :cond_9

    .line 733
    move-object v12, v13

    .line 737
    .end local v13           #state:Landroid/net/wifi/SupplicantState;
    :cond_7
    sget-object v17, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v17

    if-ne v12, v0, :cond_8

    .line 738
    const-string v17, "WifiMonitor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Invalid supplicant state: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v10, v1, v2, v12}, Landroid/net/wifi/WifiMonitor;->notifySupplicantStateChange(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    goto :goto_2

    .line 731
    .restart local v13       #state:Landroid/net/wifi/SupplicantState;
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method private handleWpsFailEvent(Ljava/lang/String;)V
    .locals 9
    .parameter "dataString"

    .prologue
    const v8, 0x24009

    const/4 v7, 0x0

    .line 562
    const-string v4, "WPS-FAIL msg=\\d+(?: config_error=(\\d+))?(?: reason=(\\d+))?"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 563
    .local v2, p:Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 564
    .local v1, match:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 565
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, cfgErr:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 568
    .local v3, reason:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 569
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 580
    :cond_0
    if-eqz v0, :cond_1

    .line 581
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 594
    .end local v0           #cfgErr:Ljava/lang/String;
    .end local v3           #reason:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    invoke-virtual {v5, v8, v7, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 596
    :goto_0
    return-void

    .line 571
    .restart local v0       #cfgErr:Ljava/lang/String;
    .restart local v3       #reason:Ljava/lang/String;
    :pswitch_0
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 575
    :pswitch_1
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 583
    :sswitch_0
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 587
    :sswitch_1
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 569
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 581
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method private p2pError(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    .locals 8
    .parameter "dataString"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 600
    sget-object v1, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->UNKNOWN:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 601
    .local v1, err:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 602
    .local v3, tokens:[Ljava/lang/String;
    array-length v4, v3

    if-ge v4, v7, :cond_0

    move-object v4, v1

    .line 615
    :goto_0
    return-object v4

    .line 603
    :cond_0
    aget-object v4, v3, v6

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 604
    .local v2, nameValue:[Ljava/lang/String;
    array-length v4, v2

    if-eq v4, v7, :cond_1

    move-object v4, v1

    goto :goto_0

    .line 607
    :cond_1
    aget-object v4, v2, v6

    const-string v5, "FREQ_CONFLICT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 608
    sget-object v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->NO_COMMON_CHANNEL:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    goto :goto_0

    .line 611
    :cond_2
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->valueOf(I)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v4, v1

    .line 615
    goto :goto_0

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method handleEvent(ILjava/lang/String;)V
    .locals 2
    .parameter "event"
    .parameter "remainder"

    .prologue
    .line 543
    packed-switch p1, :pswitch_data_0

    .line 559
    :goto_0
    :pswitch_0
    return-void

    .line 545
    :pswitch_1
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v0, v1, p2}, Landroid/net/wifi/WifiMonitor;->access$500(Landroid/net/wifi/WifiMonitor;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    .line 549
    :pswitch_2
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v0, v1, p2}, Landroid/net/wifi/WifiMonitor;->access$500(Landroid/net/wifi/WifiMonitor;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    .line 553
    :pswitch_3
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const v1, 0x24005

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 543
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public run()V
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x7

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 380
    invoke-direct {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->connectToSupplicant()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 383
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x24001

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 391
    :cond_0
    :goto_0
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiNative;->waitForEvent()Ljava/lang/String;

    move-result-object v3

    .line 397
    .local v3, eventStr:Ljava/lang/String;
    const-string v6, "CTRL-EVENT-"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 400
    const-string v6, "WAPI:"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "certificate initialization failed"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2

    .line 403
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x2400e

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 385
    .end local v3           #eventStr:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x24002

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 509
    :goto_1
    return-void

    .line 406
    .restart local v3       #eventStr:Ljava/lang/String;
    :cond_2
    const-string v6, "WAPI:"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "authentication failed"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_3

    .line 409
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x2400d

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 413
    :cond_3
    const-string v6, "WPA:"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "pre-shared key may be incorrect"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_4

    .line 415
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x24007

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 416
    :cond_4
    const-string v6, "WPS-SUCCESS"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 417
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x24008

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 418
    :cond_5
    const-string v6, "WPS-FAIL"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 419
    invoke-direct {p0, v3}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleWpsFailEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 420
    :cond_6
    const-string v6, "WPS-OVERLAP-DETECTED"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 421
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x2400a

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 422
    :cond_7
    const-string v6, "WPS-TIMEOUT"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 423
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x2400b

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 424
    :cond_8
    const-string v6, "P2P"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 425
    invoke-direct {p0, v3}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleP2pEvents(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 426
    :cond_9
    const-string v6, "AP"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 427
    invoke-direct {p0, v3}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleHostApEvents(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 432
    :cond_a
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$200()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 433
    .local v2, eventName:Ljava/lang/String;
    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 434
    .local v5, nameEnd:I
    if-eq v5, v8, :cond_b

    .line 435
    invoke-virtual {v2, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 436
    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 444
    const-string v6, "CONNECTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 445
    const/4 v0, 0x1

    .line 463
    .local v0, event:I
    :goto_2
    move-object v1, v3

    .line 464
    .local v1, eventData:Ljava/lang/String;
    if-eq v0, v11, :cond_c

    const/4 v6, 0x5

    if-ne v0, v6, :cond_17

    .line 465
    :cond_c
    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v1, v6, v7

    .line 478
    :cond_d
    :goto_3
    if-ne v0, v10, :cond_1a

    .line 479
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleSupplicantStateChange(Ljava/lang/String;)V

    .line 507
    :cond_e
    :goto_4
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #setter for: Landroid/net/wifi/WifiMonitor;->mRecvErrors:I
    invoke-static {v6, v9}, Landroid/net/wifi/WifiMonitor;->access$302(Landroid/net/wifi/WifiMonitor;I)I

    goto/16 :goto_0

    .line 446
    .end local v0           #event:I
    .end local v1           #eventData:Ljava/lang/String;
    :cond_f
    const-string v6, "DISCONNECTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 447
    const/4 v0, 0x2

    .restart local v0       #event:I
    goto :goto_2

    .line 448
    .end local v0           #event:I
    :cond_10
    const-string v6, "STATE-CHANGE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 449
    const/4 v0, 0x3

    .restart local v0       #event:I
    goto :goto_2

    .line 450
    .end local v0           #event:I
    :cond_11
    const-string v6, "SCAN-RESULTS"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 451
    const/4 v0, 0x4

    .restart local v0       #event:I
    goto :goto_2

    .line 452
    .end local v0           #event:I
    :cond_12
    const-string v6, "LINK-SPEED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 453
    const/4 v0, 0x5

    .restart local v0       #event:I
    goto :goto_2

    .line 454
    .end local v0           #event:I
    :cond_13
    const-string v6, "TERMINATING"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 455
    const/4 v0, 0x6

    .restart local v0       #event:I
    goto :goto_2

    .line 456
    .end local v0           #event:I
    :cond_14
    const-string v6, "DRIVER-STATE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 457
    const/4 v0, 0x7

    .restart local v0       #event:I
    goto :goto_2

    .line 458
    .end local v0           #event:I
    :cond_15
    const-string v6, "EAP-FAILURE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 459
    const/16 v0, 0x8

    .restart local v0       #event:I
    goto :goto_2

    .line 461
    .end local v0           #event:I
    :cond_16
    const/16 v0, 0x9

    .restart local v0       #event:I
    goto :goto_2

    .line 466
    .restart local v1       #eventData:Ljava/lang/String;
    :cond_17
    if-eq v0, v10, :cond_18

    if-ne v0, v12, :cond_19

    .line 467
    :cond_18
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 468
    .local v4, ind:I
    if-eq v4, v8, :cond_d

    .line 469
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 472
    .end local v4           #ind:I
    :cond_19
    const-string v6, " - "

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 473
    .restart local v4       #ind:I
    if-eq v4, v8, :cond_d

    .line 474
    add-int/lit8 v6, v4, 0x3

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 480
    .end local v4           #ind:I
    :cond_1a
    if-ne v0, v11, :cond_1b

    .line 481
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleDriverEvent(Ljava/lang/String;)V

    goto :goto_4

    .line 482
    :cond_1b
    const/4 v6, 0x6

    if-ne v0, v6, :cond_1d

    .line 487
    const-string/jumbo v6, "recv error"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 488
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$304(Landroid/net/wifi/WifiMonitor;)I

    move-result v6

    const/16 v7, 0xa

    if-le v6, v7, :cond_0

    .line 498
    :cond_1c
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x24002

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 500
    :cond_1d
    if-ne v0, v12, :cond_1e

    .line 501
    const-string v6, "EAP authentication failed"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 502
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x24007

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_4

    .line 505
    :cond_1e
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleEvent(ILjava/lang/String;)V

    goto/16 :goto_4
.end method
