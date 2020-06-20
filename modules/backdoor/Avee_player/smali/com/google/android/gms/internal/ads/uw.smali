.class public final Lcom/google/android/gms/internal/ads/uw;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/xr;

.field private static final b:Lcom/google/android/gms/internal/ads/xr;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/internal/ads/xr;->b()Lcom/google/android/gms/internal/ads/xr$a;

    move-result-object v0

    const-string v1, "TINK_MAC_1_0_0"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/xr$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/xr$a;

    move-result-object v0

    const-string v1, "TinkMac"

    const-string v2, "Mac"

    const-string v3, "HmacKey"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/tj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/xa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/xr$a;->a(Lcom/google/android/gms/internal/ads/xa;)Lcom/google/android/gms/internal/ads/xr$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abe$a;->c()Lcom/google/android/gms/internal/ads/abe;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/abe;

    check-cast v0, Lcom/google/android/gms/internal/ads/xr;

    sput-object v0, Lcom/google/android/gms/internal/ads/uw;->a:Lcom/google/android/gms/internal/ads/xr;

    invoke-static {}, Lcom/google/android/gms/internal/ads/xr;->b()Lcom/google/android/gms/internal/ads/xr$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/uw;->a:Lcom/google/android/gms/internal/ads/xr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/abe$a;->a(Lcom/google/android/gms/internal/ads/abe;)Lcom/google/android/gms/internal/ads/abe$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/xr$a;

    const-string v1, "TINK_MAC_1_1_0"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/xr$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/xr$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abe$a;->c()Lcom/google/android/gms/internal/ads/abe;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/abe;

    check-cast v0, Lcom/google/android/gms/internal/ads/xr;

    sput-object v0, Lcom/google/android/gms/internal/ads/uw;->b:Lcom/google/android/gms/internal/ads/xr;

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/uw;->a()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a()V
    .locals 2

    const-string v0, "TinkMac"

    new-instance v1, Lcom/google/android/gms/internal/ads/uv;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/uv;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/tw;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/ti;)V

    return-void
.end method
