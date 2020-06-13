.class public final Lq;
.super Ljava/lang/Object;


# static fields
.field private static a:Lp;

.field private static b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lq;->a:Lp;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lq;->b:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lp;
    .locals 2

    const-class v1, Lq;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lq;->a:Lp;

    if-eqz v0, :cond_0

    sget-object v0, Lq;->a:Lp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    :try_start_1
    invoke-static {p0}, Lq;->b(Landroid/content/Context;)Lp;

    move-result-object v0

    sput-object v0, Lq;->a:Lp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Lp;
    .locals 7

    if-eqz p0, :cond_2

    new-instance v0, Lp;

    invoke-direct {v0}, Lp;-><init>()V

    sget-object v2, Lq;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lr;->a(Landroid/content/Context;)Lr;

    move-result-object v0

    invoke-virtual {v0}, Lr;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gcm/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    new-instance v0, Lp;

    invoke-direct {v0}, Lp;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {p0}, Lcom/google/android/gcm/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lcom/google/android/gcm/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5}, Lp;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lp;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lp;->a(J)V

    invoke-virtual {v0, v6}, Lp;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lp;->d(Ljava/lang/String;)V

    const-string v1, "%s%s%s%s%s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lp;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lp;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Lp;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v0}, Lp;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-virtual {v0}, Lp;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gcm/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/zip/Adler32;

    invoke-direct {v3}, Ljava/util/zip/Adler32;-><init>()V

    invoke-virtual {v3}, Ljava/util/zip/Adler32;->reset()V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/zip/Adler32;->update([B)V

    invoke-virtual {v3}, Ljava/util/zip/Adler32;->getValue()J

    :cond_0
    monitor-exit v2

    :goto_1
    return-object v0

    :cond_1
    monitor-exit v2

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method
