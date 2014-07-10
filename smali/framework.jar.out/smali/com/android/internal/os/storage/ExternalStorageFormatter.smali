.class public Lcom/android/internal/os/storage/ExternalStorageFormatter;
.super Landroid/app/Service;
.source "ExternalStorageFormatter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field public static final COMPONENT_NAME:Landroid/content/ComponentName; = null

.field private static final ERASE_ALL:I = 0x3

.field private static final ERASE_EXTERNAL:I = 0x2

.field private static final ERASE_INTERNAL:I = 0x1

.field private static final ERASE_OPTION:Ljava/lang/String; = "erase_option"

.field public static final EXTRA_ALWAYS_RESET:Ljava/lang/String; = "always_reset"

.field public static final FORMAT_AND_FACTORY_RESET:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

.field public static final FORMAT_ONLY:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_ONLY"

.field private static final INTERNAL_STORAGE_PATH:Ljava/lang/String; = "/storage/sdcard0"

.field static final TAG:Ljava/lang/String; = "ExternalStorageFormatter"

.field private static final USB_OTG_STORAGE_PATH:Ljava/lang/String;


# instance fields
.field private externalVolume:Landroid/os/storage/StorageVolume;

.field private internalVolume:Landroid/os/storage/StorageVolume;

.field private mAlwaysReset:Z

.field private mFactoryAll:Z

.field private mFactoryReset:Z

.field private mHandler:Landroid/os/Handler;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Landroid/os/Environment;->getOtgMountPoint()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->USB_OTG_STORAGE_PATH:Ljava/lang/String;

    .line 58
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 62
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    .line 64
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 68
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 70
    iput-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    .line 71
    iput-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryAll:Z

    .line 76
    new-instance v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 196
    new-instance v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;

    invoke-direct {v0, p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryAll:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/os/storage/ExternalStorageFormatter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryAll:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Landroid/os/storage/StorageVolume;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/os/storage/ExternalStorageFormatter;Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Landroid/os/storage/StorageVolume;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->externalVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->USB_OTG_STORAGE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    return v0
.end method

.method private updateProgressStateForOption(I)V
    .locals 9
    .parameter "option"

    .prologue
    const/4 v8, 0x1

    .line 206
    iput-boolean v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    .line 207
    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 208
    .local v4, volumes:[Landroid/os/storage/StorageVolume;
    move-object v0, v4

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 209
    .local v3, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 210
    iput-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->internalVolume:Landroid/os/storage/StorageVolume;

    .line 208
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/Environment;->getSecondaryStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 212
    iput-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->externalVolume:Landroid/os/storage/StorageVolume;

    goto :goto_1

    .line 215
    .end local v3           #volume:Landroid/os/storage/StorageVolume;
    :cond_2
    const-string v5, "ExternalStorageFormatter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " option = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v5, 0x2

    if-ne p1, v5, :cond_4

    .line 217
    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->externalVolume:Landroid/os/storage/StorageVolume;

    iput-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 218
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressState()V

    .line 227
    :cond_3
    :goto_2
    return-void

    .line 219
    :cond_4
    if-ne p1, v8, :cond_5

    .line 220
    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->internalVolume:Landroid/os/storage/StorageVolume;

    iput-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 221
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressState()V

    goto :goto_2

    .line 222
    :cond_5
    const/4 v5, 0x3

    if-ne p1, v5, :cond_3

    .line 223
    iput-boolean v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryAll:Z

    .line 224
    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->internalVolume:Landroid/os/storage/StorageVolume;

    iput-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 225
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressState()V

    goto :goto_2
.end method


# virtual methods
.method fail(I)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 180
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 182
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryAll:Z

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 191
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    if-eqz v0, :cond_1

    .line 188
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 190
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto :goto_0
.end method

.method getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 466
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 467
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 468
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 469
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    .line 474
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    return-object v1

    .line 471
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    const-string v1, "ExternalStorageFormatter"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 8
    .parameter "dialog"

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 154
    .local v2, mountService:Landroid/os/storage/IMountService;
    :try_start_0
    invoke-interface {v2}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 155
    .local v5, volumes:[Landroid/os/storage/StorageVolume;
    invoke-static {v5}, Landroid/os/storage/StorageManager;->getPhysicalExternalVolume([Landroid/os/storage/StorageVolume;)Ljava/util/ArrayList;

    move-result-object v4

    .line 156
    .local v4, physicalVols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    const/4 v1, 0x0

    .line 158
    .local v1, extStoragePath:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v6, :cond_1

    .line 159
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 160
    const v6, 0x10404ae

    invoke-virtual {p0, v6}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v1           #extStoragePath:Ljava/lang/String;
    .end local v4           #physicalVols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v5           #volumes:[Landroid/os/storage/StorageVolume;
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    .line 177
    return-void

    .line 163
    .restart local v1       #extStoragePath:Ljava/lang/String;
    .restart local v4       #physicalVols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v5       #volumes:[Landroid/os/storage/StorageVolume;
    :cond_0
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    .line 164
    .local v3, physicalVol:Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-interface {v2, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 173
    .end local v1           #extStoragePath:Ljava/lang/String;
    .end local v3           #physicalVol:Landroid/os/storage/StorageVolume;
    .end local v4           #physicalVols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v5           #volumes:[Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Landroid/os/RemoteException;
    const-string v6, "ExternalStorageFormatter"

    const-string v7, "Failed talking with mount service"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 170
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #extStoragePath:Ljava/lang/String;
    .restart local v4       #physicalVols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v5       #volumes:[Landroid/os/storage/StorageVolume;
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-interface {v2, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 90
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 91
    const-string/jumbo v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 92
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 95
    :cond_0
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "ExternalStorageFormatter"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 97
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 98
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 142
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 143
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 102
    const-string v1, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iput-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    .line 105
    :cond_0
    const-string v1, "always_reset"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    iput-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    .line 109
    :cond_1
    const-string/jumbo v1, "storage_volume"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 111
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_3

    .line 112
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 113
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 114
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 115
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 116
    iget-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    if-nez v1, :cond_2

    .line 117
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 120
    :cond_2
    const-string v1, "erase_option"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 121
    .local v0, option:I
    if-eq v0, v4, :cond_4

    .line 122
    invoke-direct {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressStateForOption(I)V

    .line 127
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 130
    .end local v0           #option:I
    :cond_3
    const/4 v1, 0x3

    return v1

    .line 125
    .restart local v0       #option:I
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressState()V

    goto :goto_0
.end method

.method public updateProgressDialog(I)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 455
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 456
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 457
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 458
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 459
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 463
    return-void
.end method

.method updateProgressState()V
    .locals 10

    .prologue
    .line 231
    const/4 v5, 0x0

    .line 236
    .local v5, status:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 237
    .local v2, mountService:Landroid/os/storage/IMountService;
    invoke-interface {v2}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 238
    .local v6, volumes:[Landroid/os/storage/StorageVolume;
    invoke-static {v6}, Landroid/os/storage/StorageManager;->getPhysicalExternalVolume([Landroid/os/storage/StorageVolume;)Ljava/util/ArrayList;

    move-result-object v4

    .line 240
    .local v4, physicalVols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v7, :cond_2

    .line 241
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 242
    const v7, 0x10404ae

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    .line 451
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    .end local v4           #physicalVols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v6           #volumes:[Landroid/os/storage/StorageVolume;
    :goto_0
    return-void

    .line 246
    .restart local v2       #mountService:Landroid/os/storage/IMountService;
    .restart local v4       #physicalVols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v6       #volumes:[Landroid/os/storage/StorageVolume;
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    .line 247
    .local v3, physicalVol:Landroid/os/storage/StorageVolume;
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 258
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    .end local v3           #physicalVol:Landroid/os/storage/StorageVolume;
    .end local v4           #physicalVols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v6           #volumes:[Landroid/os/storage/StorageVolume;
    :goto_1
    const-string/jumbo v7, "mounted"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "mounted_ro"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 261
    :cond_1
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/storage/sdcard0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 262
    const v7, 0x1040582

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    .line 272
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 273
    .restart local v2       #mountService:Landroid/os/storage/IMountService;
    invoke-interface {v2}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 274
    .restart local v6       #volumes:[Landroid/os/storage/StorageVolume;
    invoke-static {v6}, Landroid/os/storage/StorageManager;->getPhysicalExternalVolume([Landroid/os/storage/StorageVolume;)Ljava/util/ArrayList;

    move-result-object v4

    .line 277
    .restart local v4       #physicalVols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v7, :cond_6

    .line 278
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_5

    .line 279
    const v7, 0x10404ae

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 295
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    .end local v4           #physicalVols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v6           #volumes:[Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v0

    .line 296
    .local v0, e:Landroid/os/RemoteException;
    const-string v7, "ExternalStorageFormatter"

    const-string v8, "Failed talking with mount service"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 252
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v2       #mountService:Landroid/os/storage/IMountService;
    .restart local v4       #physicalVols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v6       #volumes:[Landroid/os/storage/StorageVolume;
    :cond_2
    :try_start_2
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    goto :goto_1

    .line 255
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    .end local v4           #physicalVols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v6           #volumes:[Landroid/os/storage/StorageVolume;
    :catch_1
    move-exception v0

    .line 256
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v7, "ExternalStorageFormatter"

    const-string v8, "Failed talking with mount service"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 263
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/os/storage/ExternalStorageFormatter;->USB_OTG_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 264
    const v7, 0x104057b

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    goto :goto_2

    .line 266
    :cond_4
    const v7, 0x10404ad

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    goto :goto_2

    .line 283
    .restart local v2       #mountService:Landroid/os/storage/IMountService;
    .restart local v4       #physicalVols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .restart local v6       #volumes:[Landroid/os/storage/StorageVolume;
    :cond_5
    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    .line 284
    .restart local v3       #physicalVol:Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, extStoragePath:Ljava/lang/String;
    const-string v7, "ExternalStorageFormatter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "physicalVol : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v7, 0x1

    iget-boolean v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    invoke-interface {v2, v1, v7, v8}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 291
    .end local v1           #extStoragePath:Ljava/lang/String;
    .end local v3           #physicalVol:Landroid/os/storage/StorageVolume;
    :cond_6
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 292
    .restart local v1       #extStoragePath:Ljava/lang/String;
    const/4 v7, 0x1

    iget-boolean v8, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    invoke-interface {v2, v1, v7, v8}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 299
    .end local v1           #extStoragePath:Ljava/lang/String;
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    .end local v4           #physicalVols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    .end local v6           #volumes:[Landroid/os/storage/StorageVolume;
    :cond_7
    const-string/jumbo v7, "nofs"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string/jumbo v7, "unmounted"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string/jumbo v7, "unmountable"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 303
    :cond_8
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/storage/sdcard0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 304
    const v7, 0x1040583

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    .line 312
    :goto_3
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 313
    .restart local v2       #mountService:Landroid/os/storage/IMountService;
    if-eqz v2, :cond_b

    .line 314
    new-instance v7, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;

    invoke-direct {v7, p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V

    invoke-virtual {v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->start()V

    goto/16 :goto_0

    .line 305
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    :cond_9
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/os/storage/ExternalStorageFormatter;->USB_OTG_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 306
    const v7, 0x104057c

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    goto :goto_3

    .line 308
    :cond_a
    const v7, 0x10404af

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    goto :goto_3

    .line 400
    .restart local v2       #mountService:Landroid/os/storage/IMountService;
    :cond_b
    const-string v7, "ExternalStorageFormatter"

    const-string v8, "Unable to locate IMountService"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 402
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    :cond_c
    const-string v7, "bad_removal"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 404
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/storage/sdcard0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 405
    const v7, 0x1040585

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_0

    .line 406
    :cond_d
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/os/storage/ExternalStorageFormatter;->USB_OTG_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 407
    const v7, 0x104057e

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_0

    .line 409
    :cond_e
    const v7, 0x10404b1

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_0

    .line 413
    :cond_f
    const-string v7, "checking"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 415
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/storage/sdcard0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 416
    const v7, 0x1040586

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_0

    .line 417
    :cond_10
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/os/storage/ExternalStorageFormatter;->USB_OTG_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 418
    const v7, 0x104057f

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_0

    .line 420
    :cond_11
    const v7, 0x10404b2

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_0

    .line 424
    :cond_12
    const-string/jumbo v7, "removed"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 426
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/storage/sdcard0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 427
    const v7, 0x10405a0

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_0

    .line 428
    :cond_13
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/os/storage/ExternalStorageFormatter;->USB_OTG_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 429
    const v7, 0x1040580

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_0

    .line 431
    :cond_14
    const v7, 0x10404b3

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_0

    .line 435
    :cond_15
    const-string/jumbo v7, "shared"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 437
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/storage/sdcard0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 438
    const v7, 0x1040588

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_0

    .line 439
    :cond_16
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/os/storage/ExternalStorageFormatter;->USB_OTG_STORAGE_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 440
    const v7, 0x1040581

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_0

    .line 442
    :cond_17
    const v7, 0x10404b4

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_0

    .line 447
    :cond_18
    const v7, 0x10404b5

    invoke-virtual {p0, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    .line 448
    const-string v7, "ExternalStorageFormatter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown storage state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto/16 :goto_0
.end method
