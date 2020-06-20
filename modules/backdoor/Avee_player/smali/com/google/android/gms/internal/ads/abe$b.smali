.class public final Lcom/google/android/gms/internal/ads/abe$b;
.super Lcom/google/android/gms/internal/ads/zp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/abe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/internal/ads/abe<",
        "TT;*>;>",
        "Lcom/google/android/gms/internal/ads/zp<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/abe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/abe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abe$b;->a:Lcom/google/android/gms/internal/ads/abe;

    return-void
.end method
