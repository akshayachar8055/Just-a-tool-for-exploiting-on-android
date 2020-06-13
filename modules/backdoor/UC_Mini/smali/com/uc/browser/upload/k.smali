.class public Lcom/uc/browser/upload/k;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/uc/browser/upload/k;


# instance fields
.field private a:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/uc/browser/upload/k;->b:Lcom/uc/browser/upload/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/uc/browser/upload/k;->a:Ljava/util/Hashtable;

    return-void
.end method

.method public static a()Lcom/uc/browser/upload/k;
    .locals 2

    sget-object v0, Lcom/uc/browser/upload/k;->b:Lcom/uc/browser/upload/k;

    if-nez v0, :cond_1

    const-class v1, Lcom/uc/browser/upload/k;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/uc/browser/upload/k;->b:Lcom/uc/browser/upload/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uc/browser/upload/k;

    invoke-direct {v0}, Lcom/uc/browser/upload/k;-><init>()V

    sput-object v0, Lcom/uc/browser/upload/k;->b:Lcom/uc/browser/upload/k;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/uc/browser/upload/k;->b:Lcom/uc/browser/upload/k;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;[B)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/uc/browser/upload/k;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)[B
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uc/browser/upload/k;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/uc/browser/upload/k;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
