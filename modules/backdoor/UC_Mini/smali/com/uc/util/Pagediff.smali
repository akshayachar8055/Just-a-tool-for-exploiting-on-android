.class public Lcom/uc/util/Pagediff;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/uc/util/Pagediff;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/uc/util/Pagediff;->a:Lcom/uc/util/Pagediff;

    :try_start_0
    const-string v0, "Pagediff"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/uc/util/Pagediff;
    .locals 1

    sget-object v0, Lcom/uc/util/Pagediff;->a:Lcom/uc/util/Pagediff;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uc/util/Pagediff;

    invoke-direct {v0}, Lcom/uc/util/Pagediff;-><init>()V

    sput-object v0, Lcom/uc/util/Pagediff;->a:Lcom/uc/util/Pagediff;

    :cond_0
    sget-object v0, Lcom/uc/util/Pagediff;->a:Lcom/uc/util/Pagediff;

    return-object v0
.end method


# virtual methods
.method public native diffData([B[B)[B
.end method

.method public getDiffData([B[B)[B
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    if-eqz p2, :cond_0

    array-length v1, p2

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/uc/util/Pagediff;->diffData([B[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getRevertData([B[B)[B
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    if-eqz p2, :cond_0

    array-length v1, p2

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/uc/util/Pagediff;->revertData([B[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public native revertData([B[B)[B
.end method
