.class public final Lcom/UCMobile/Apollo/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/UCMobile/Apollo/a/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/UCMobile/Apollo/a/b;->b:Z

    return-void
.end method

.method public static declared-synchronized a()Z
    .locals 8

    const/4 v0, 0x1

    const-class v1, Lcom/UCMobile/Apollo/a/b;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/UCMobile/Apollo/a/b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    const-string v0, ""

    sput-object v0, Lcom/UCMobile/Apollo/a/b;->a:Ljava/lang/String;

    sget-object v0, Lcom/UCMobile/Apollo/Global;->gApolloSoPath:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/UCMobile/Apollo/a/a;

    const/4 v3, 0x0

    new-instance v4, Lcom/UCMobile/Apollo/a/a;

    const-string v5, "libffmpeg.so"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-direct {v4, v5, v6}, Lcom/UCMobile/Apollo/a/a;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/UCMobile/Apollo/a/a;

    const-string v5, "libu3player.so"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-direct {v4, v5, v6}, Lcom/UCMobile/Apollo/a/a;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/UCMobile/Apollo/a/b;->a([Lcom/UCMobile/Apollo/a/a;)Z

    move-result v0

    sput-boolean v0, Lcom/UCMobile/Apollo/a/b;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized a(Lcom/UCMobile/Apollo/a/a;)Z
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-class v4, Lcom/UCMobile/Apollo/a/b;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/UCMobile/Apollo/a/a;->b:[Ljava/lang/String;

    array-length v6, v5

    move v3, v1

    :goto_0
    if-ge v3, v6, :cond_4

    aget-object v2, v5, v3

    iget-object v7, p0, Lcom/UCMobile/Apollo/a/a;->a:Ljava/lang/String;

    sget-boolean v8, Lcom/UCMobile/Apollo/Global;->gLoadFromAppLibPath:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_1

    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v0

    :goto_1
    if-eqz v2, :cond_2

    :cond_0
    :goto_2
    monitor-exit v4

    return v0

    :catch_0
    move-exception v2

    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/UCMobile/Apollo/a/b;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/UCMobile/Apollo/a/b;->a:Ljava/lang/String;

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v1

    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x7

    if-ge v8, v9, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "Cannot load "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/UCMobile/Apollo/a/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    :goto_3
    if-nez v2, :cond_0

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v8, v8, -0x3

    const/4 v9, 0x3

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    :try_start_3
    invoke-static {v8}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v0

    goto :goto_3

    :catch_1
    move-exception v8

    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/UCMobile/Apollo/a/b;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ":"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v8}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ";"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v8}, Ljava/lang/UnsatisfiedLinkError;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/UCMobile/Apollo/a/b;->a:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_4
    move v0, v1

    goto/16 :goto_2
.end method

.method private static declared-synchronized a([Lcom/UCMobile/Apollo/a/a;)Z
    .locals 5

    const/4 v0, 0x0

    const-class v2, Lcom/UCMobile/Apollo/a/b;

    monitor-enter v2

    :try_start_0
    array-length v3, p0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, p0, v1

    invoke-static {v4}, Lcom/UCMobile/Apollo/a/b;->a(Lcom/UCMobile/Apollo/a/a;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    :goto_1
    monitor-exit v2

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/UCMobile/Apollo/a/b;->a:Ljava/lang/String;

    return-object v0
.end method
