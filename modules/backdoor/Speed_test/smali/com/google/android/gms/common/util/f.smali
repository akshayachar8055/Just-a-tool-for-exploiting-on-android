.class public final Lcom/google/android/gms/common/util/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/util/d;


# static fields
.field private static a:Lcom/google/android/gms/common/util/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/util/f;

    invoke-direct {v0}, Lcom/google/android/gms/common/util/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/util/f;->a:Lcom/google/android/gms/common/util/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lcom/google/android/gms/common/util/d;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/util/f;->a:Lcom/google/android/gms/common/util/f;

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
