.class public final Lcom/google/android/gms/internal/ads/afa;
.super Ljava/lang/Object;


# static fields
.field protected static final a:Ljava/nio/charset/Charset;

.field public static final b:Ljava/lang/Object;

.field private static final c:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/afa;->a:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/afa;->c:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/afa;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/aew;Lcom/google/android/gms/internal/ads/aew;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aew;->Y:Lcom/google/android/gms/internal/ads/aey;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/aew;->Y:Lcom/google/android/gms/internal/ads/aey;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aey;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/aey;

    iput-object p0, p1, Lcom/google/android/gms/internal/ads/aew;->Y:Lcom/google/android/gms/internal/ads/aey;

    :cond_0
    return-void
.end method
