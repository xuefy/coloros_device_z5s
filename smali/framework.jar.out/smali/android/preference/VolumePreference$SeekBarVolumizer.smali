.class public Landroid/preference/VolumePreference$SeekBarVolumizer;
.super Ljava/lang/Object;
.source "VolumePreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/VolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarVolumizer"
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLastProgress:I

.field private mOriginalRingMode:I

.field private mOriginalStreamVolume:I

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtone:Landroid/media/Ringtone;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStreamType:I

.field private mVolumeBeforeMute:I

.field private mVolumeObserver:Landroid/database/ContentObserver;

.field final synthetic this$0:Landroid/preference/VolumePreference;


# direct methods
.method public constructor <init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "seekBar"
    .parameter "streamType"

    .prologue
    .line 253
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    .line 254
    return-void
.end method

.method public constructor <init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "seekBar"
    .parameter "streamType"
    .parameter "defaultUri"

    .prologue
    const/4 v1, -0x1

    .line 256
    iput-object p1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 228
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 233
    iput v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalRingMode:I

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 237
    iput v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 239
    iput v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 241
    new-instance v0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;

    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Landroid/preference/VolumePreference$SeekBarVolumizer$1;-><init>(Landroid/preference/VolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    .line 257
    iput-object p2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 258
    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 259
    iput p4, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    .line 260
    iput-object p3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 262
    invoke-direct {p0, p3, p5}, Landroid/preference/VolumePreference$SeekBarVolumizer;->initSeekBar(Landroid/widget/SeekBar;Landroid/net/Uri;)V

    .line 263
    return-void
.end method

.method static synthetic access$000(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 225
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$100(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 225
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$200(Landroid/preference/VolumePreference$SeekBarVolumizer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 225
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    return v0
.end method

.method static synthetic access$302(Landroid/preference/VolumePreference$SeekBarVolumizer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 225
    iput p1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalRingMode:I

    return p1
.end method

.method static synthetic access$402(Landroid/preference/VolumePreference$SeekBarVolumizer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 225
    iput p1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    return p1
.end method

.method private initSeekBar(Landroid/widget/SeekBar;Landroid/net/Uri;)V
    .locals 5
    .parameter "seekBar"
    .parameter "defaultUri"

    .prologue
    .line 266
    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 267
    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 268
    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    iput v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalRingMode:I

    .line 269
    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 270
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 272
    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 278
    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 279
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 280
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.ztemt.globalaction"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    new-instance v1, Landroid/preference/VolumePreference$SeekBarVolumizer$2;

    invoke-direct {v1, p0}, Landroid/preference/VolumePreference$SeekBarVolumizer$2;-><init>(Landroid/preference/VolumePreference$SeekBarVolumizer;)V

    iput-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 290
    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 293
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    if-nez p2, :cond_1

    .line 294
    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 295
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 303
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 305
    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_2

    .line 306
    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 308
    :cond_2
    return-void

    .line 296
    :cond_3
    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 297
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 299
    :cond_4
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method public changeVolumeBy(I)V
    .locals 1
    .parameter "amount"

    .prologue
    .line 377
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 378
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->startSample()V

    .line 381
    :cond_0
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 382
    const/4 v0, -0x1

    iput v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 383
    return-void
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public isSamplePlaying()Z
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public muteVolume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 386
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    if-eq v0, v2, :cond_0

    .line 387
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 388
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->startSample()V

    .line 389
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {p0, v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 390
    iput v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 397
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 393
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 394
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 395
    invoke-virtual {p0, v1}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 329
    if-nez p3, :cond_0

    .line 333
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-virtual {p0, p2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V
    .locals 2
    .parameter "volumeStore"

    .prologue
    .line 407
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 408
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    iput v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 409
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    iput v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 410
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p0, v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 412
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V
    .locals 1
    .parameter "volumeStore"

    .prologue
    .line 400
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_0

    .line 401
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    iput v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    .line 402
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    iput v0, p1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    .line 404
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 343
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 346
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->startSample()V

    .line 349
    :cond_0
    return-void
.end method

.method postSetVolume(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 337
    iput p1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 338
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 339
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 340
    return-void
.end method

.method public revertVolume()V
    .locals 4

    .prologue
    .line 318
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalRingMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalRingMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 320
    :cond_0
    iget v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalRingMode:I

    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 321
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalRingMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 325
    :cond_1
    :goto_0
    return-void

    .line 324
    :cond_2
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 352
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 353
    return-void
.end method

.method public startSample()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    invoke-virtual {v0, p0}, Landroid/preference/VolumePreference;->onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V

    .line 361
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 364
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 311
    invoke-virtual {p0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 312
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 313
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 314
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 315
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Landroid/preference/VolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 370
    :cond_0
    return-void
.end method
