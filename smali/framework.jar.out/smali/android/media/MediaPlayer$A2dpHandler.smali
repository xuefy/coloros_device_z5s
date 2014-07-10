.class Landroid/media/MediaPlayer$A2dpHandler;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "A2dpHandler"
.end annotation


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "mp"
    .parameter "looper"

    .prologue
    .line 2239
    iput-object p1, p0, Landroid/media/MediaPlayer$A2dpHandler;->this$0:Landroid/media/MediaPlayer;

    .line 2240
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2241
    iput-object p2, p0, Landroid/media/MediaPlayer$A2dpHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2242
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 2246
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2325
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    :goto_0
    return-void

    .line 2248
    :pswitch_0
    iget-object v1, p0, Landroid/media/MediaPlayer$A2dpHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mContextLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$000(Landroid/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2249
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer$A2dpHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2250
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.qualcomm.MediaPlayer.action.METADATA_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2251
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "duration"

    iget-object v3, p0, Landroid/media/MediaPlayer$A2dpHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2252
    const-string/jumbo v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2253
    const-string/jumbo v1, "position"

    iget-object v3, p0, Landroid/media/MediaPlayer$A2dpHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2254
    const-string/jumbo v1, "uripath"

    iget-object v3, p0, Landroid/media/MediaPlayer$A2dpHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2255
    iget-object v1, p0, Landroid/media/MediaPlayer$A2dpHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2256
    const-string/jumbo v1, "playstate"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2260
    :goto_1
    iget-object v1, p0, Landroid/media/MediaPlayer$A2dpHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2262
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2258
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    :try_start_1
    const-string/jumbo v1, "playstate"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2265
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Landroid/media/MediaPlayer$A2dpHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mContextLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$000(Landroid/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2266
    :try_start_2
    iget-object v1, p0, Landroid/media/MediaPlayer$A2dpHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2267
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.qualcomm.MediaPlayer.action.METADATA_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2268
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "duration"

    iget-object v3, p0, Landroid/media/MediaPlayer$A2dpHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2269
    const-string/jumbo v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2270
    const-string/jumbo v1, "position"

    iget-object v3, p0, Landroid/media/MediaPlayer$A2dpHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2271
    const-string v1, "MediaPlayer"

    const-string/jumbo v3, "start() mUri is <URI SUPPRESSED>"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    const-string/jumbo v1, "uripath"

    iget-object v3, p0, Landroid/media/MediaPlayer$A2dpHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2273
    const-string/jumbo v1, "playstate"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2274
    iget-object v1, p0, Landroid/media/MediaPlayer$A2dpHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2276
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 2279
    :pswitch_2
    iget-object v1, p0, Landroid/media/MediaPlayer$A2dpHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mContextLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$000(Landroid/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2280
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaPlayer$A2dpHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2281
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.qualcomm.MediaPlayer.action.METADATA_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2282
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "duration"

    iget-object v3, p0, Landroid/media/MediaPlayer$A2dpHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2283
    const-string/jumbo v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2284
    const-string/jumbo v1, "position"

    iget-object v3, p0, Landroid/media/MediaPlayer$A2dpHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2285
    const-string v1, "MediaPlayer"

    const-string/jumbo v3, "pause() mUri is <URI SUPPRESSED>"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    const-string/jumbo v1, "uripath"

    iget-object v3, p0, Landroid/media/MediaPlayer$A2dpHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2287
    const-string/jumbo v1, "playstate"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2288
    iget-object v1, p0, Landroid/media/MediaPlayer$A2dpHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2290
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    monitor-exit v2

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    .line 2293
    :pswitch_3
    iget-object v1, p0, Landroid/media/MediaPlayer$A2dpHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mContextLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$000(Landroid/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2294
    :try_start_4
    iget-object v1, p0, Landroid/media/MediaPlayer$A2dpHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2295
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.qualcomm.MediaPlayer.action.METADATA_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2296
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "duration"

    iget-object v3, p0, Landroid/media/MediaPlayer$A2dpHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2297
    const-string/jumbo v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2298
    const-string/jumbo v1, "position"

    iget-object v3, p0, Landroid/media/MediaPlayer$A2dpHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2299
    const-string v1, "MediaPlayer"

    const-string/jumbo v3, "stop() mUri is <URI SUPPRESSED>"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    const-string/jumbo v1, "uripath"

    iget-object v3, p0, Landroid/media/MediaPlayer$A2dpHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2301
    const-string/jumbo v1, "playstate"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2302
    iget-object v1, p0, Landroid/media/MediaPlayer$A2dpHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2304
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    monitor-exit v2

    goto/16 :goto_0

    :catchall_3
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v1

    .line 2307
    :pswitch_4
    iget-object v1, p0, Landroid/media/MediaPlayer$A2dpHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mContextLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$000(Landroid/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2308
    :try_start_5
    iget-object v1, p0, Landroid/media/MediaPlayer$A2dpHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2309
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.qualcomm.MediaPlayer.action.METADATA_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2310
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "duration"

    iget-object v3, p0, Landroid/media/MediaPlayer$A2dpHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2311
    const-string/jumbo v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2312
    const-string/jumbo v1, "position"

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2313
    const-string v1, "MediaPlayer"

    const-string/jumbo v3, "seekTo() mUri is <URI SUPPRESSED>"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    const-string/jumbo v1, "uripath"

    iget-object v3, p0, Landroid/media/MediaPlayer$A2dpHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2315
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-le v1, v3, :cond_6

    .line 2316
    const-string/jumbo v1, "playstate"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2320
    :goto_2
    iget-object v1, p0, Landroid/media/MediaPlayer$A2dpHandler;->this$0:Landroid/media/MediaPlayer;

    #getter for: Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2322
    .end local v0           #intent:Landroid/content/Intent;
    :cond_5
    monitor-exit v2

    goto/16 :goto_0

    :catchall_4
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v1

    .line 2318
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_6
    :try_start_6
    const-string/jumbo v1, "playstate"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_2

    .line 2246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
