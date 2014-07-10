.class Lcom/android/internal/policy/impl/PhoneWindowManager$25$1;
.super Landroid/os/AsyncTask;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$25;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$25;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$25;)V
    .locals 0
    .parameter

    .prologue
    .line 4781
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$25$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$25;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4781
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$25$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .parameter "params"

    .prologue
    const/4 v7, 0x0

    .line 4784
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$25$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$25;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager$25;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppSwitchList:Ljava/util/List;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2900(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$25$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$25;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager$25;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppSwitchList:Ljava/util/List;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2900(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 4785
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$25$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$25;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager$25;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppSwitchList:Ljava/util/List;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2900(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 4787
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$25$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$25;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager$25;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4788
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/16 v5, 0x15

    const/4 v6, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v4

    .line 4790
    .local v4, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 4802
    :cond_1
    return-object v7

    .line 4791
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 4792
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 4793
    .local v3, recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    if-nez v3, :cond_4

    .line 4791
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4795
    :cond_4
    iget-object v5, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v5, :cond_3

    .line 4796
    iget-object v5, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4797
    .local v2, packageName:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$25$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$25;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager$25;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->canAddIntoRecentAppSwitchList(Ljava/lang/String;)Z
    invoke-static {v5, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3000(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4798
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$25$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$25;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager$25;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppSwitchList:Ljava/util/List;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2900(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
