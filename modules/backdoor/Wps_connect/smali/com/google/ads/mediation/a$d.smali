.class final Lcom/google/ads/mediation/a$d;
.super Lcom/google/android/gms/ads/a;

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field final a:Lcom/google/ads/mediation/a;

.field final b:Lcom/google/android/gms/ads/mediation/f;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/a;Lcom/google/android/gms/ads/mediation/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/a;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/a$d;->a:Lcom/google/ads/mediation/a;

    iput-object p2, p0, Lcom/google/ads/mediation/a$d;->b:Lcom/google/android/gms/ads/mediation/f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/a$d;->b:Lcom/google/android/gms/ads/mediation/f;

    iget-object v1, p0, Lcom/google/ads/mediation/a$d;->a:Lcom/google/ads/mediation/a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/f;->a(Lcom/google/android/gms/ads/mediation/e;)V

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/a$d;->b:Lcom/google/android/gms/ads/mediation/f;

    iget-object v1, p0, Lcom/google/ads/mediation/a$d;->a:Lcom/google/ads/mediation/a;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/mediation/f;->a(Lcom/google/android/gms/ads/mediation/e;I)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/a$d;->b:Lcom/google/android/gms/ads/mediation/f;

    iget-object v1, p0, Lcom/google/ads/mediation/a$d;->a:Lcom/google/ads/mediation/a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/f;->b(Lcom/google/android/gms/ads/mediation/e;)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/a$d;->b:Lcom/google/android/gms/ads/mediation/f;

    iget-object v1, p0, Lcom/google/ads/mediation/a$d;->a:Lcom/google/ads/mediation/a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/f;->c(Lcom/google/android/gms/ads/mediation/e;)V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/a$d;->b:Lcom/google/android/gms/ads/mediation/f;

    iget-object v1, p0, Lcom/google/ads/mediation/a$d;->a:Lcom/google/ads/mediation/a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/f;->d(Lcom/google/android/gms/ads/mediation/e;)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/a$d;->b:Lcom/google/android/gms/ads/mediation/f;

    iget-object v1, p0, Lcom/google/ads/mediation/a$d;->a:Lcom/google/ads/mediation/a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/f;->e(Lcom/google/android/gms/ads/mediation/e;)V

    return-void
.end method
