.class public final enum Lcom/google/android/gms/internal/ads/yh;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/yh;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/ads/yh;

.field public static final enum b:Lcom/google/android/gms/internal/ads/yh;

.field public static final enum c:Lcom/google/android/gms/internal/ads/yh;

.field private static final synthetic d:[Lcom/google/android/gms/internal/ads/yh;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/ads/yh;

    const-string v1, "NIST_P256"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/yh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/yh;->a:Lcom/google/android/gms/internal/ads/yh;

    new-instance v0, Lcom/google/android/gms/internal/ads/yh;

    const-string v1, "NIST_P384"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ads/yh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/yh;->b:Lcom/google/android/gms/internal/ads/yh;

    new-instance v0, Lcom/google/android/gms/internal/ads/yh;

    const-string v1, "NIST_P521"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/yh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/yh;->c:Lcom/google/android/gms/internal/ads/yh;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/yh;

    sget-object v1, Lcom/google/android/gms/internal/ads/yh;->a:Lcom/google/android/gms/internal/ads/yh;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/yh;->b:Lcom/google/android/gms/internal/ads/yh;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/yh;->c:Lcom/google/android/gms/internal/ads/yh;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/internal/ads/yh;->d:[Lcom/google/android/gms/internal/ads/yh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/yh;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/yh;->d:[Lcom/google/android/gms/internal/ads/yh;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/yh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/yh;

    return-object v0
.end method
