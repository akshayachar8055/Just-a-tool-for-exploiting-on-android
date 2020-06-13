.class public Lcom/google/android/gms/b/dd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/gb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/b/dd$a;,
        Lcom/google/android/gms/b/dd$d;,
        Lcom/google/android/gms/b/dd$e;,
        Lcom/google/android/gms/b/dd$c;,
        Lcom/google/android/gms/b/dd$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private e:Lcom/google/android/gms/b/dd$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/b/dd$b",
            "<",
            "Lcom/google/android/gms/b/da;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/gms/b/dd$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/b/dd$b",
            "<",
            "Lcom/google/android/gms/b/da;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/android/gms/b/dd$e;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/dd;->a:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/b/dd;->h:I

    iput-object p3, p0, Lcom/google/android/gms/b/dd;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/dd;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/b/dd;->d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance v0, Lcom/google/android/gms/b/dd$c;

    invoke-direct {v0}, Lcom/google/android/gms/b/dd$c;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/dd;->e:Lcom/google/android/gms/b/dd$b;

    new-instance v0, Lcom/google/android/gms/b/dd$c;

    invoke-direct {v0}, Lcom/google/android/gms/b/dd$c;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/dd;->f:Lcom/google/android/gms/b/dd$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/b/dd$b;Lcom/google/android/gms/b/dd$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/b/dd$b",
            "<",
            "Lcom/google/android/gms/b/da;",
            ">;",
            "Lcom/google/android/gms/b/dd$b",
            "<",
            "Lcom/google/android/gms/b/da;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/b/dd;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/android/gms/b/dd;->e:Lcom/google/android/gms/b/dd$b;

    iput-object p5, p0, Lcom/google/android/gms/b/dd;->f:Lcom/google/android/gms/b/dd$b;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/b/dd;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/b/dd;->h:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/b/dd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/dd;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/b/dd;Lcom/google/android/gms/b/dd$e;)Lcom/google/android/gms/b/dd$e;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/dd;->g:Lcom/google/android/gms/b/dd$e;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gms/b/dd;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/dd;->d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-object v0
.end method

.method private c()Lcom/google/android/gms/b/dd$e;
    .locals 2

    new-instance v0, Lcom/google/android/gms/b/dd$e;

    iget-object v1, p0, Lcom/google/android/gms/b/dd;->f:Lcom/google/android/gms/b/dd$b;

    invoke-direct {v0, v1}, Lcom/google/android/gms/b/dd$e;-><init>(Lcom/google/android/gms/b/dd$b;)V

    new-instance v1, Lcom/google/android/gms/b/dd$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/b/dd$1;-><init>(Lcom/google/android/gms/b/dd;Lcom/google/android/gms/b/dd$e;)V

    invoke-static {v1}, Lcom/google/android/gms/b/hj;->a(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/b/dd;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/dd;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/b/dd;)Lcom/google/android/gms/b/dd$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/dd;->e:Lcom/google/android/gms/b/dd$b;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/b/dd;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/b/dd;->h:I

    return v0
.end method

.method static synthetic f(Lcom/google/android/gms/b/dd;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/dd;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/b/dd;)Lcom/google/android/gms/b/dd$e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/dd;->g:Lcom/google/android/gms/b/dd$e;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/b/da;
    .locals 2

    new-instance v0, Lcom/google/android/gms/b/dc;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/b/dc;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/b/k;)V

    return-object v0
.end method

.method protected a()Lcom/google/android/gms/b/dd$e;
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/b/dd;->c()Lcom/google/android/gms/b/dd$e;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/b/dd$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/b/dd$2;-><init>(Lcom/google/android/gms/b/dd;Lcom/google/android/gms/b/dd$e;)V

    new-instance v2, Lcom/google/android/gms/b/dd$3;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/b/dd$3;-><init>(Lcom/google/android/gms/b/dd;Lcom/google/android/gms/b/dd$e;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/b/dd$e;->a(Lcom/google/android/gms/b/ib$c;Lcom/google/android/gms/b/ib$a;)V

    return-object v0
.end method

.method public b()Lcom/google/android/gms/b/dd$d;
    .locals 4

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/google/android/gms/b/dd;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/dd;->g:Lcom/google/android/gms/b/dd$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/dd;->g:Lcom/google/android/gms/b/dd$e;

    invoke-virtual {v0}, Lcom/google/android/gms/b/dd$e;->f()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/b/dd;->h:I

    invoke-virtual {p0}, Lcom/google/android/gms/b/dd;->a()Lcom/google/android/gms/b/dd$e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/dd;->g:Lcom/google/android/gms/b/dd$e;

    iget-object v0, p0, Lcom/google/android/gms/b/dd;->g:Lcom/google/android/gms/b/dd$e;

    invoke-virtual {v0}, Lcom/google/android/gms/b/dd$e;->a()Lcom/google/android/gms/b/dd$d;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/b/dd;->h:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/b/dd;->g:Lcom/google/android/gms/b/dd$e;

    invoke-virtual {v0}, Lcom/google/android/gms/b/dd$e;->a()Lcom/google/android/gms/b/dd$d;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/b/dd;->h:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/b/dd;->h:I

    invoke-virtual {p0}, Lcom/google/android/gms/b/dd;->a()Lcom/google/android/gms/b/dd$e;

    iget-object v0, p0, Lcom/google/android/gms/b/dd;->g:Lcom/google/android/gms/b/dd$e;

    invoke-virtual {v0}, Lcom/google/android/gms/b/dd$e;->a()Lcom/google/android/gms/b/dd$d;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/b/dd;->h:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/b/dd;->g:Lcom/google/android/gms/b/dd$e;

    invoke-virtual {v0}, Lcom/google/android/gms/b/dd$e;->a()Lcom/google/android/gms/b/dd$d;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/b/dd;->g:Lcom/google/android/gms/b/dd$e;

    invoke-virtual {v0}, Lcom/google/android/gms/b/dd$e;->a()Lcom/google/android/gms/b/dd$d;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
