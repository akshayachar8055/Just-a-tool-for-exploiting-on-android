.class public final Lcom/google/android/gms/ads/j$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/j$a;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/j$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/j$a;->a:Z

    return v0
.end method


# virtual methods
.method public a(Z)Lcom/google/android/gms/ads/j$a;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/j$a;->a:Z

    return-object p0
.end method

.method public a()Lcom/google/android/gms/ads/j;
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/j;-><init>(Lcom/google/android/gms/ads/j$a;Lcom/google/android/gms/ads/j$1;)V

    return-object v0
.end method
