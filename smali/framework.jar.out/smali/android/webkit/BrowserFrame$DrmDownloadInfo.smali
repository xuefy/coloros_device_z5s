.class Landroid/webkit/BrowserFrame$DrmDownloadInfo;
.super Ljava/lang/Object;
.source "BrowserFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/BrowserFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrmDownloadInfo"
.end annotation


# instance fields
.field public cancel:Z

.field public downloadID:J

.field final synthetic this$0:Landroid/webkit/BrowserFrame;

.field public used:Z


# direct methods
.method constructor <init>(Landroid/webkit/BrowserFrame;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 126
    iput-object p1, p0, Landroid/webkit/BrowserFrame$DrmDownloadInfo;->this$0:Landroid/webkit/BrowserFrame;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-boolean v0, p0, Landroid/webkit/BrowserFrame$DrmDownloadInfo;->used:Z

    .line 128
    iput-boolean v0, p0, Landroid/webkit/BrowserFrame$DrmDownloadInfo;->cancel:Z

    .line 129
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkit/BrowserFrame$DrmDownloadInfo;->downloadID:J

    return-void
.end method
