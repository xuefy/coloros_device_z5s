.class Lcom/android/internal/telephony/CallManager$1;
.super Landroid/os/Handler;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CallManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2134
    iput-object p1, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 2139
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 2242
    :cond_0
    :goto_0
    return-void

    .line 2141
    :pswitch_0
    const-string v2, "CallManager"

    const-string v3, " handleMessage (EVENT_DISCONNECT)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v2, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {v3, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 2145
    :pswitch_1
    const-string v2, "CallManager"

    const-string v3, " handleMessage (EVENT_PRECISE_CALL_STATE_CHANGED)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v2, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {v3, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 2149
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/CallManager;->handleEventRingingConnection(Landroid/os/Message;)V

    goto :goto_0

    .line 2152
    :pswitch_3
    const-string v2, "CallManager"

    const-string v3, " handleMessage (EVENT_UNKNOWN_CONNECTION)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v2, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {v3, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 2156
    :pswitch_4
    const-string v2, "CallManager"

    const-string v3, " handleMessage (EVENT_INCOMING_RING)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2159
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v2, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {v3, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 2163
    :pswitch_5
    const-string v2, "CallManager"

    const-string v3, " handleMessage (EVENT_RINGBACK_TONE)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v2, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {v3, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 2167
    :pswitch_6
    const-string v2, "CallManager"

    const-string v3, " handleMessage (EVENT_IN_CALL_VOICE_PRIVACY_ON)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v2, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {v3, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 2171
    :pswitch_7
    const-string v2, "CallManager"

    const-string v3, " handleMessage (EVENT_IN_CALL_VOICE_PRIVACY_OFF)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v2, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {v3, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2175
    :pswitch_8
    const-string v2, "CallManager"

    const-string v3, " handleMessage (EVENT_CALL_WAITING)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v2, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {v3, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2179
    :pswitch_9
    const-string v2, "CallManager"

    const-string v3, " handleMessage (EVENT_DISPLAY_INFO)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v2, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {v3, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2183
    :pswitch_a
    const-string v2, "CallManager"

    const-string v3, " handleMessage (EVENT_SIGNAL_INFO)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v2, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {v3, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2187
    :pswitch_b
    const-string v2, "CallManager"

    const-string v3, " handleMessage (EVENT_CDMA_OTA_STATUS_CHANGE)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v2, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {v3, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2191
    :pswitch_c
    const-string v2, "CallManager"

    const-string v3, " handleMessage (EVENT_RESEND_INCALL_MUTE)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v2, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {v3, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2195
    :pswitch_d
    const-string v2, "CallManager"

    const-string v3, " handleMessage (EVENT_MMI_INITIATE)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v2, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {v3, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2199
    :pswitch_e
    const-string v2, "CallManager"

    const-string v3, " handleMessage (EVENT_MMI_COMPLETE)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v2, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {v3, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2203
    :pswitch_f
    const-string v2, "CallManager"

    const-string v3, " handleMessage (EVENT_ECM_TIMER_RESET)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v2, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {v3, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2207
    :pswitch_10
    const-string v2, "CallManager"

    const-string v3, " handleMessage (EVENT_SUBSCRIPTION_INFO_READY)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v2, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {v3, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2211
    :pswitch_11
    const-string v2, "CallManager"

    const-string v3, " handleMessage (EVENT_SUPP_SERVICE_FAILED)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v2, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {v3, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2215
    :pswitch_12
    const-string v2, "CallManager"

    const-string v3, " handleMessage (EVENT_SUPP_SERVICE_NOTIFICATION)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v2, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {v3, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2219
    :pswitch_13
    const-string v2, "CallManager"

    const-string v3, " handleMessage (EVENT_SERVICE_STATE_CHANGED)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v3, v2, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {v3, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2225
    :pswitch_14
    const-string v2, "CallManager"

    const-string v3, " handleMessage (EVENT_POST_DIAL_CHARACTER)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v2, v2, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2228
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v2, v2, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Registrant;

    invoke-virtual {v2}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v1

    .line 2229
    .local v1, notifyMsg:Landroid/os/Message;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2230
    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 2231
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2226
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2235
    .end local v0           #i:I
    .end local v1           #notifyMsg:Landroid/os/Message;
    :pswitch_15
    const-string v2, "CallManager"

    const-string v3, " handleMessage (EVENT_VOICE_SYSTEM_ID)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/CallManager;->handleEventVoiceSysId(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2239
    :pswitch_16
    const-string v2, "CallManager"

    const-string v3, " handleMessage (EVENT_LOCAL_CALL_HOLD)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2139
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_13
        :pswitch_14
        :pswitch_12
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method
