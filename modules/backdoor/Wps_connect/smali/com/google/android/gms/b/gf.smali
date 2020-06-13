.class public final Lcom/google/android/gms/b/gf;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/gb;
.end annotation


# instance fields
.field a:Lcom/google/android/gms/b/ii;

.field b:Lcom/google/android/gms/b/dd$d;

.field public final c:Lcom/google/android/gms/b/cb;

.field public final d:Lcom/google/android/gms/b/cb;

.field private final e:Ljava/lang/Object;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/google/android/gms/b/hw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/b/hw",
            "<",
            "Lcom/google/android/gms/b/gi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/gf;->e:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/b/hw;

    invoke-direct {v0}, Lcom/google/android/gms/b/hw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/gf;->h:Lcom/google/android/gms/b/hw;

    new-instance v0, Lcom/google/android/gms/b/gf$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/b/gf$1;-><init>(Lcom/google/android/gms/b/gf;)V

    iput-object v0, p0, Lcom/google/android/gms/b/gf;->c:Lcom/google/android/gms/b/cb;

    new-instance v0, Lcom/google/android/gms/b/gf$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/b/gf$2;-><init>(Lcom/google/android/gms/b/gf;)V

    iput-object v0, p0, Lcom/google/android/gms/b/gf;->d:Lcom/google/android/gms/b/cb;

    iput-object p2, p0, Lcom/google/android/gms/b/gf;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/b/gf;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/b/gf;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/gf;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/b/gf;)Lcom/google/android/gms/b/hw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/gf;->h:Lcom/google/android/gms/b/hw;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/b/gf;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/gf;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/b/gf;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/gf;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/b/dd$d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/gf;->b:Lcom/google/android/gms/b/dd$d;

    return-object v0
.end method

.method public a(Lcom/google/android/gms/b/dd$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/gf;->b:Lcom/google/android/gms/b/dd$d;

    return-void
.end method

.method public a(Lcom/google/android/gms/b/ii;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/gf;->a:Lcom/google/android/gms/b/ii;

    return-void
.end method

.method public b()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/b/gi;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/b/gf;->h:Lcom/google/android/gms/b/hw;

    return-object v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/gf;->a:Lcom/google/android/gms/b/ii;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/gf;->a:Lcom/google/android/gms/b/ii;

    invoke-interface {v0}, Lcom/google/android/gms/b/ii;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/b/gf;->a:Lcom/google/android/gms/b/ii;

    :cond_0
    return-void
.end method
