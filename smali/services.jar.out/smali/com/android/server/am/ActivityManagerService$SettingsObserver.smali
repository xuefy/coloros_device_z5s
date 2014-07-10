.class Lcom/android/server/am/ActivityManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 14840
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$SettingsObserver;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 14841
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 14842
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$SettingsObserver;->context:Landroid/content/Context;

    .line 14843
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 14845
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$SettingsObserver;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 14846
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "single_ui_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 14847
    const-string v1, "single_ui_black_list"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 14848
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$SettingsObserver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$SettingsObserver;->context:Landroid/content/Context;

    #calls: Lcom/android/server/am/ActivityManagerService;->updateSettings(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V

    .line 14849
    return-void
.end method

.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 14852
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$SettingsObserver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$SettingsObserver;->context:Landroid/content/Context;

    #calls: Lcom/android/server/am/ActivityManagerService;->updateSettings(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V

    .line 14853
    return-void
.end method
