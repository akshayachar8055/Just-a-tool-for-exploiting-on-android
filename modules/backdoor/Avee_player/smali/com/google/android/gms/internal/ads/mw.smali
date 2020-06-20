.class final synthetic Lcom/google/android/gms/internal/ads/mw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/np;

.field private final b:Lcom/google/android/gms/internal/ads/mo;

.field private final c:Lcom/google/android/gms/internal/ads/ne;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/np;Lcom/google/android/gms/internal/ads/mo;Lcom/google/android/gms/internal/ads/ne;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mw;->a:Lcom/google/android/gms/internal/ads/np;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mw;->b:Lcom/google/android/gms/internal/ads/mo;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/mw;->c:Lcom/google/android/gms/internal/ads/ne;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mw;->a:Lcom/google/android/gms/internal/ads/np;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mw;->b:Lcom/google/android/gms/internal/ads/mo;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/mw;->c:Lcom/google/android/gms/internal/ads/ne;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/mt;->a(Lcom/google/android/gms/internal/ads/np;Lcom/google/android/gms/internal/ads/mo;Lcom/google/android/gms/internal/ads/ne;)V

    return-void
.end method
