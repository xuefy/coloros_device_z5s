.class Lcom/android/internal/os/storage/ExternalStorageFormatter$3;
.super Ljava/lang/Thread;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;


# direct methods
.method constructor <init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 317
    const/4 v5, 0x0

    .line 322
    .local v5, success:Z
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 323
    .local v2, mountService:Landroid/os/storage/IMountService;
    invoke-interface {v2}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 324
    .local v6, volumes:[Landroid/os/storage/StorageVolume;
    invoke-static {v6}, Landroid/os/storage/StorageManager;->getPhysicalExternalVolume([Landroid/os/storage/StorageVolume;)Ljava/util/ArrayList;

    move-result-object v4

    .line 325
    .local v4, physicalVols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    const/4 v1, 0x0

    .line 327
    .local v1, extStoragePath:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Landroid/os/storage/StorageVolume;

    move-result-object v7

    if-nez v7, :cond_1

    .line 328
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 329
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    const v8, 0x10404ae

    invoke-virtual {v7, v8}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    .line 396
    .end local v1           #extStoragePath:Ljava/lang/String;
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    .end local v4           #physicalVols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v6           #volumes:[Landroid/os/storage/StorageVolume;
    :goto_0
    return-void

    .line 333
    .restart local v1       #extStoragePath:Ljava/lang/String;
    .restart local v2       #mountService:Landroid/os/storage/IMountService;
    .restart local v4       #physicalVols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v6       #volumes:[Landroid/os/storage/StorageVolume;
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    .line 334
    .local v3, physicalVol:Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 341
    .end local v3           #physicalVol:Landroid/os/storage/StorageVolume;
    :goto_1
    invoke-interface {v2, v1}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    const/4 v5, 0x1

    .line 360
    .end local v1           #extStoragePath:Ljava/lang/String;
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    .end local v4           #physicalVols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v6           #volumes:[Landroid/os/storage/StorageVolume;
    :goto_2
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryAll:Z
    invoke-static {v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 361
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$400(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 339
    .restart local v1       #extStoragePath:Ljava/lang/String;
    .restart local v2       #mountService:Landroid/os/storage/IMountService;
    .restart local v4       #physicalVols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v6       #volumes:[Landroid/os/storage/StorageVolume;
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Landroid/os/storage/StorageVolume;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    .line 343
    .end local v1           #extStoragePath:Ljava/lang/String;
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    .end local v4           #physicalVols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v6           #volumes:[Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v0

    .line 345
    .local v0, e:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Landroid/os/storage/StorageVolume;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Landroid/os/storage/StorageVolume;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/storage/sdcard0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 346
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    const v8, 0x1040584

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 348
    :cond_2
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Landroid/os/storage/StorageVolume;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Landroid/os/storage/StorageVolume;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$300()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 349
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    const v8, 0x104057d

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 352
    :cond_3
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    const v8, 0x10404b0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 365
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    if-eqz v5, :cond_5

    .line 366
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z
    invoke-static {v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$500(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 367
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 369
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto/16 :goto_0

    .line 375
    :cond_5
    if-nez v5, :cond_6

    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z
    invoke-static {v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$600(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 376
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 395
    :goto_3
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto/16 :goto_0

    .line 379
    :cond_6
    :try_start_2
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 380
    .restart local v2       #mountService:Landroid/os/storage/IMountService;
    invoke-interface {v2}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 381
    .restart local v6       #volumes:[Landroid/os/storage/StorageVolume;
    invoke-static {v6}, Landroid/os/storage/StorageManager;->getPhysicalExternalVolume([Landroid/os/storage/StorageVolume;)Ljava/util/ArrayList;

    move-result-object v4

    .line 382
    .restart local v4       #physicalVols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    .line 383
    .restart local v3       #physicalVol:Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_7

    .line 384
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    const v8, 0x10404ae

    invoke-virtual {v7, v8}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 391
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    .end local v3           #physicalVol:Landroid/os/storage/StorageVolume;
    .end local v4           #physicalVols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v6           #volumes:[Landroid/os/storage/StorageVolume;
    :catch_1
    move-exception v0

    .line 392
    .local v0, e:Landroid/os/RemoteException;
    const-string v7, "ExternalStorageFormatter"

    const-string v8, "Failed talking with mount service"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 388
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v2       #mountService:Landroid/os/storage/IMountService;
    .restart local v3       #physicalVol:Landroid/os/storage/StorageVolume;
    .restart local v4       #physicalVols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v6       #volumes:[Landroid/os/storage/StorageVolume;
    :cond_7
    :try_start_3
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Landroid/os/storage/StorageVolume;

    move-result-object v7

    if-nez v7, :cond_8

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 389
    .restart local v1       #extStoragePath:Ljava/lang/String;
    :goto_4
    invoke-interface {v2, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    goto :goto_3

    .line 388
    .end local v1           #extStoragePath:Ljava/lang/String;
    :cond_8
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Landroid/os/storage/StorageVolume;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    goto :goto_4
.end method
