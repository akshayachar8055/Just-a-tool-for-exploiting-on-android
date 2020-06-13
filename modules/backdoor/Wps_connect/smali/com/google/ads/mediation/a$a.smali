.class Lcom/google/ads/mediation/a$a;
.super Lcom/google/android/gms/ads/mediation/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final d:Lcom/google/android/gms/ads/b/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/b/d;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/j;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/a$a;->d:Lcom/google/android/gms/ads/b/d;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/d;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/a$a;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/d;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/a$a;->a(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/d;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/a$a;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/d;->e()Lcom/google/android/gms/ads/b/a$a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/a$a;->a(Lcom/google/android/gms/ads/b/a$a;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/d;->f()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/a$a;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/d;->g()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/mediation/a$a;->a(D)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/d;->h()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/a$a;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/d;->i()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/a$a;->e(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/google/ads/mediation/a$a;->a(Z)V

    invoke-virtual {p0, v2}, Lcom/google/ads/mediation/a$a;->b(Z)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/ads/b/c;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/ads/b/c;

    iget-object v0, p0, Lcom/google/ads/mediation/a$a;->d:Lcom/google/android/gms/ads/b/d;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/b/c;->setNativeAd(Lcom/google/android/gms/ads/b/a;)V

    :cond_0
    return-void
.end method
