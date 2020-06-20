.class Lcom/google/ads/mediation/a$b;
.super Lcom/google/android/gms/ads/mediation/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final d:Lcom/google/android/gms/ads/b/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/b/e;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/k;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/a$b;->d:Lcom/google/android/gms/ads/b/e;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/e;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/a$b;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/e;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/a$b;->a(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/e;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/a$b;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/e;->e()Lcom/google/android/gms/ads/b/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/e;->e()Lcom/google/android/gms/ads/b/a$a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/a$b;->a(Lcom/google/android/gms/ads/b/a$a;)V

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/e;->f()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/a$b;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/e;->g()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/a$b;->d(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/ads/mediation/a$b;->a(Z)V

    invoke-virtual {p0, v1}, Lcom/google/ads/mediation/a$b;->b(Z)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/ads/b/c;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/ads/b/c;

    iget-object v0, p0, Lcom/google/ads/mediation/a$b;->d:Lcom/google/android/gms/ads/b/e;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/b/c;->setNativeAd(Lcom/google/android/gms/ads/b/a;)V

    :cond_0
    return-void
.end method
