.class Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;
.super Ljava/lang/Object;
.source "SimUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchInput"
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/TextView;

.field private mEight:Landroid/widget/TextView;

.field private mFive:Landroid/widget/TextView;

.field private mFour:Landroid/widget/TextView;

.field private mNine:Landroid/widget/TextView;

.field private mOne:Landroid/widget/TextView;

.field private mSeven:Landroid/widget/TextView;

.field private mSix:Landroid/widget/TextView;

.field private mThree:Landroid/widget/TextView;

.field private mTwo:Landroid/widget/TextView;

.field private mZero:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;)V
    .locals 2
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 334
    const v0, 0x10203de

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    .line 335
    const v0, 0x10203d5

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    .line 336
    const v0, 0x10203d6

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    .line 337
    const v0, 0x10203d7

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    .line 338
    const v0, 0x10203d8

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    .line 339
    const v0, 0x10203d9

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    .line 340
    const v0, 0x10203da

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    .line 341
    const v0, 0x10203db

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    .line 342
    const v0, 0x10203dc

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    .line 343
    const v0, 0x10203dd

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    .line 344
    const v0, 0x1020274

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/TextView;

    .line 346
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;)V

    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 386
    const/4 v0, -0x1

    .line 387
    .local v0, digit:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 388
    const/4 v0, 0x0

    .line 408
    :cond_0
    :goto_0
    return v0

    .line 389
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    .line 390
    const/4 v0, 0x1

    goto :goto_0

    .line 391
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    .line 392
    const/4 v0, 0x2

    goto :goto_0

    .line 393
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    if-ne p1, v1, :cond_4

    .line 394
    const/4 v0, 0x3

    goto :goto_0

    .line 395
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    if-ne p1, v1, :cond_5

    .line 396
    const/4 v0, 0x4

    goto :goto_0

    .line 397
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    if-ne p1, v1, :cond_6

    .line 398
    const/4 v0, 0x5

    goto :goto_0

    .line 399
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    if-ne p1, v1, :cond_7

    .line 400
    const/4 v0, 0x6

    goto :goto_0

    .line 401
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    if-ne p1, v1, :cond_8

    .line 402
    const/4 v0, 0x7

    goto :goto_0

    .line 403
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    if-ne p1, v1, :cond_9

    .line 404
    const/16 v0, 0x8

    goto :goto_0

    .line 405
    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    .line 406
    const/16 v0, 0x9

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 372
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 373
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;->access$500(Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;->access$300(Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->goToLockScreen()V

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .line 379
    .local v0, digit:I
    if-ltz v0, :cond_0

    .line 380
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;->access$300(Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 381
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;->reportDigit(I)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;->access$700(Lcom/android/internal/policy/impl/keyguard_obsolete/SimUnlockScreen;I)V

    goto :goto_0
.end method
