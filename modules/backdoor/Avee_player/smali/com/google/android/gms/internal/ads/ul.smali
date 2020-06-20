.class public final Lcom/google/android/gms/internal/ads/ul;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/xr;

.field private static final b:Lcom/google/android/gms/internal/ads/xr;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/internal/ads/xr;->b()Lcom/google/android/gms/internal/ads/xr$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/tz;->a:Lcom/google/android/gms/internal/ads/xr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/abe$a;->a(Lcom/google/android/gms/internal/ads/abe;)Lcom/google/android/gms/internal/ads/abe$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/xr$a;

    const-string v1, "TinkHybridDecrypt"

    const-string v2, "HybridDecrypt"

    const-string v3, "EciesAeadHkdfPrivateKey"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v5, v4}, Lcom/google/android/gms/internal/ads/tj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/xa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/xr$a;->a(Lcom/google/android/gms/internal/ads/xa;)Lcom/google/android/gms/internal/ads/xr$a;

    move-result-object v0

    const-string v1, "TinkHybridEncrypt"

    const-string v2, "HybridEncrypt"

    const-string v3, "EciesAeadHkdfPublicKey"

    invoke-static {v1, v2, v3, v5, v4}, Lcom/google/android/gms/internal/ads/tj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/ads/xa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/xr$a;->a(Lcom/google/android/gms/internal/ads/xa;)Lcom/google/android/gms/internal/ads/xr$a;

    move-result-object v0

    const-string v1, "TINK_HYBRID_1_0_0"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/xr$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/xr$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abe$a;->c()Lcom/google/android/gms/internal/ads/abe;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/abe;

    check-cast v0, Lcom/google/android/gms/internal/ads/xr;

    sput-object v0, Lcom/google/android/gms/internal/ads/ul;->a:Lcom/google/android/gms/internal/ads/xr;

    invoke-static {}, Lcom/google/android/gms/internal/ads/xr;->b()Lcom/google/android/gms/internal/ads/xr$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/ul;->a:Lcom/google/android/gms/internal/ads/xr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/abe$a;->a(Lcom/google/android/gms/internal/ads/abe;)Lcom/google/android/gms/internal/ads/abe$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/xr$a;

    const-string v1, "TINK_HYBRID_1_1_0"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/xr$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/xr$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abe$a;->c()Lcom/google/android/gms/internal/ads/abe;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/abe;

    check-cast v0, Lcom/google/android/gms/internal/ads/xr;

    sput-object v0, Lcom/google/android/gms/internal/ads/ul;->b:Lcom/google/android/gms/internal/ads/xr;

    :try_start_0
    const-string v0, "TinkHybridEncrypt"

    new-instance v1, Lcom/google/android/gms/internal/ads/un;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/un;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/tw;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/ti;)V

    const-string v0, "TinkHybridDecrypt"

    new-instance v1, Lcom/google/android/gms/internal/ads/um;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/um;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/tw;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/ti;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/tz;->a()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
