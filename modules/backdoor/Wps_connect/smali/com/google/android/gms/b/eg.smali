.class public final Lcom/google/android/gms/b/eg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/l;


# annotations
.annotation runtime Lcom/google/android/gms/b/gb;
.end annotation


# instance fields
.field private final a:Ljava/util/Date;

.field private final b:I

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z

.field private final e:Landroid/location/Location;

.field private final f:I

.field private final g:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Z


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZILcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/location/Location;",
            "ZI",
            "Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/b/eg;->a:Ljava/util/Date;

    iput p2, p0, Lcom/google/android/gms/b/eg;->b:I

    iput-object p3, p0, Lcom/google/android/gms/b/eg;->c:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/b/eg;->e:Landroid/location/Location;

    iput-boolean p5, p0, Lcom/google/android/gms/b/eg;->d:Z

    iput p6, p0, Lcom/google/android/gms/b/eg;->f:I

    iput-object p7, p0, Lcom/google/android/gms/b/eg;->g:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iput-object p8, p0, Lcom/google/android/gms/b/eg;->h:Ljava/util/List;

    iput-boolean p9, p0, Lcom/google/android/gms/b/eg;->i:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/eg;->a:Ljava/util/Date;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/b/eg;->b:I

    return v0
.end method

.method public c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/b/eg;->c:Ljava/util/Set;

    return-object v0
.end method

.method public d()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/eg;->e:Landroid/location/Location;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/b/eg;->f:I

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/b/eg;->d:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/b/eg;->i:Z

    return v0
.end method

.method public h()Lcom/google/android/gms/ads/b/b;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/eg;->g:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/b/b$a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/b/b$a;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/b/eg;->g:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->b:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/b/b$a;->a(Z)Lcom/google/android/gms/ads/b/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/eg;->g:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->c:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/b/b$a;->a(I)Lcom/google/android/gms/ads/b/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/b/eg;->g:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->d:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/b/b$a;->b(Z)Lcom/google/android/gms/ads/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/b$a;->a()Lcom/google/android/gms/ads/b/b;

    move-result-object v0

    goto :goto_0
.end method

.method public i()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/eg;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/eg;->h:Ljava/util/List;

    const-string v1, "2"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/eg;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/eg;->h:Ljava/util/List;

    const-string v1, "1"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
