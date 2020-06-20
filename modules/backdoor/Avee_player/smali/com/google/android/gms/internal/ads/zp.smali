.class public Lcom/google/android/gms/internal/ads/zp;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lcom/google/android/gms/internal/ads/acl;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/aar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/aar;->a()Lcom/google/android/gms/internal/ads/aar;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zp;->a:Lcom/google/android/gms/internal/ads/aar;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
