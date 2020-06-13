.class public Lcom/google/android/gms/b/cr;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/gb;
.end annotation


# instance fields
.field private a:Landroid/content/MutableContextWrapper;

.field private final b:Lcom/google/android/gms/b/du;

.field private final c:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final d:Lcom/google/android/gms/ads/internal/e;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/b/du;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/MutableContextWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/b/cr;->a:Landroid/content/MutableContextWrapper;

    iput-object p2, p0, Lcom/google/android/gms/b/cr;->b:Lcom/google/android/gms/b/du;

    iput-object p3, p0, Lcom/google/android/gms/b/cr;->c:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p4, p0, Lcom/google/android/gms/b/cr;->d:Lcom/google/android/gms/ads/internal/e;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/l;
    .locals 7

    new-instance v0, Lcom/google/android/gms/ads/internal/l;

    iget-object v1, p0, Lcom/google/android/gms/b/cr;->a:Landroid/content/MutableContextWrapper;

    new-instance v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/b/cr;->b:Lcom/google/android/gms/b/du;

    iget-object v5, p0, Lcom/google/android/gms/b/cr;->c:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v6, p0, Lcom/google/android/gms/b/cr;->d:Lcom/google/android/gms/ads/internal/e;

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/l;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/b/du;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/e;)V

    return-object v0
.end method

.method public a()Lcom/google/android/gms/b/cr;
    .locals 5

    new-instance v0, Lcom/google/android/gms/b/cr;

    iget-object v1, p0, Lcom/google/android/gms/b/cr;->a:Landroid/content/MutableContextWrapper;

    invoke-virtual {v1}, Landroid/content/MutableContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/b/cr;->b:Lcom/google/android/gms/b/du;

    iget-object v3, p0, Lcom/google/android/gms/b/cr;->c:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v4, p0, Lcom/google/android/gms/b/cr;->d:Lcom/google/android/gms/ads/internal/e;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/b/cr;-><init>(Landroid/content/Context;Lcom/google/android/gms/b/du;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/e;)V

    return-object v0
.end method

.method public b()Landroid/content/MutableContextWrapper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/cr;->a:Landroid/content/MutableContextWrapper;

    return-object v0
.end method
