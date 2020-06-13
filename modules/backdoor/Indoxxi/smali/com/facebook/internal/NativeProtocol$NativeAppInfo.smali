.class abstract Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
.super Ljava/lang/Object;
.source "NativeProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/NativeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "NativeAppInfo"
.end annotation


# instance fields
.field private availableVersions:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/internal/NativeProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/internal/NativeProtocol$1;

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;-><init>()V

    return-void
.end method

.method static synthetic access$900(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->fetchAvailableVersions(Z)V

    return-void
.end method

.method private declared-synchronized fetchAvailableVersions(Z)V
    .locals 1
    .param p1, "force"    # Z

    .prologue
    .line 265
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->availableVersions:Ljava/util/TreeSet;

    if-nez v0, :cond_1

    .line 266
    :cond_0
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->access$000(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Ljava/util/TreeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->availableVersions:Ljava/util/TreeSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :cond_1
    monitor-exit p0

    return-void

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getAvailableVersions()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->availableVersions:Ljava/util/TreeSet;

    if-nez v0, :cond_0

    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->fetchAvailableVersions(Z)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->availableVersions:Ljava/util/TreeSet;

    return-object v0
.end method

.method protected abstract getLoginActivity()Ljava/lang/String;
.end method

.method protected abstract getPackage()Ljava/lang/String;
.end method
