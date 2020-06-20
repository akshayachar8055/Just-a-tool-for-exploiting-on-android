.class public final Lcom/google/ads/b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final a:Lcom/google/ads/b;

.field public static final b:Lcom/google/ads/b;

.field public static final c:Lcom/google/ads/b;

.field public static final d:Lcom/google/ads/b;

.field public static final e:Lcom/google/ads/b;

.field public static final f:Lcom/google/ads/b;


# instance fields
.field private final g:Lcom/google/android/gms/ads/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/ads/b;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const-string v3, "mb"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/b;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/b;->a:Lcom/google/ads/b;

    new-instance v0, Lcom/google/ads/b;

    const/16 v1, 0x140

    const/16 v2, 0x32

    const-string v3, "mb"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/b;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/b;->b:Lcom/google/ads/b;

    new-instance v0, Lcom/google/ads/b;

    const/16 v1, 0x12c

    const/16 v2, 0xfa

    const-string v3, "as"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/b;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/b;->c:Lcom/google/ads/b;

    new-instance v0, Lcom/google/ads/b;

    const/16 v1, 0x1d4

    const/16 v2, 0x3c

    const-string v3, "as"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/b;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/b;->d:Lcom/google/ads/b;

    new-instance v0, Lcom/google/ads/b;

    const/16 v1, 0x2d8

    const/16 v2, 0x5a

    const-string v3, "as"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/b;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/b;->e:Lcom/google/ads/b;

    new-instance v0, Lcom/google/ads/b;

    const/16 v1, 0xa0

    const/16 v2, 0x258

    const-string v3, "as"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/b;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/b;->f:Lcom/google/ads/b;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/d;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/ads/d;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/google/ads/b;-><init>(Lcom/google/android/gms/ads/d;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/b;->g:Lcom/google/android/gms/ads/d;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/b;->g:Lcom/google/android/gms/ads/d;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/d;->b()I

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/b;->g:Lcom/google/android/gms/ads/d;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/d;->a()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/ads/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/google/ads/b;

    iget-object v0, p0, Lcom/google/ads/b;->g:Lcom/google/android/gms/ads/d;

    iget-object v1, p1, Lcom/google/ads/b;->g:Lcom/google/android/gms/ads/d;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/b;->g:Lcom/google/android/gms/ads/d;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/d;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/b;->g:Lcom/google/android/gms/ads/d;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
