.class public final Lcom/google/android/gms/ads/b/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/ads/b/b$a;->a:Z

    iput v0, p0, Lcom/google/android/gms/ads/b/b$a;->b:I

    iput-boolean v0, p0, Lcom/google/android/gms/ads/b/b$a;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/b/b$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/b/b$a;->a:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/ads/b/b$a;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/b/b$a;->b:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/ads/b/b$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/b/b$a;->c:Z

    return v0
.end method


# virtual methods
.method public a(I)Lcom/google/android/gms/ads/b/b$a;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/ads/b/b$a;->b:I

    return-object p0
.end method

.method public a(Z)Lcom/google/android/gms/ads/b/b$a;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/b/b$a;->a:Z

    return-object p0
.end method

.method public a()Lcom/google/android/gms/ads/b/b;
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/b/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/b/b;-><init>(Lcom/google/android/gms/ads/b/b$a;Lcom/google/android/gms/ads/b/b$1;)V

    return-object v0
.end method

.method public b(Z)Lcom/google/android/gms/ads/b/b$a;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/b/b$a;->c:Z

    return-object p0
.end method
