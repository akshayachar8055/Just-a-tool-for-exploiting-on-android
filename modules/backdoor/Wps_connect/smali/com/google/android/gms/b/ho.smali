.class public Lcom/google/android/gms/b/ho;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/gb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/b/ho$c;,
        Lcom/google/android/gms/b/ho$b;,
        Lcom/google/android/gms/b/ho$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/b/ho$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/b/ho$a",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/google/android/gms/b/iv;

.field private static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/b/ho;->c:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/b/ho$1;

    invoke-direct {v0}, Lcom/google/android/gms/b/ho$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/b/ho;->a:Lcom/google/android/gms/b/ho$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/b/ho;->a(Landroid/content/Context;)Lcom/google/android/gms/b/iv;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/b/ho;->b:Lcom/google/android/gms/b/iv;

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/google/android/gms/b/iv;
    .locals 2

    sget-object v1, Lcom/google/android/gms/b/ho;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/b/ho;->b:Lcom/google/android/gms/b/iv;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/b/d;->a(Landroid/content/Context;)Lcom/google/android/gms/b/iv;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/b/ho;->b:Lcom/google/android/gms/b/iv;

    :cond_0
    sget-object v0, Lcom/google/android/gms/b/ho;->b:Lcom/google/android/gms/b/iv;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/android/gms/b/ho$a;)Lcom/google/android/gms/b/hz;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/b/ho$a",
            "<TT;>;)",
            "Lcom/google/android/gms/b/hz",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/b/ho$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/b/ho$c;-><init>(Lcom/google/android/gms/b/ho;Lcom/google/android/gms/b/ho$1;)V

    sget-object v1, Lcom/google/android/gms/b/ho;->b:Lcom/google/android/gms/b/iv;

    new-instance v2, Lcom/google/android/gms/b/ho$b;

    invoke-direct {v2, p1, p2, v0}, Lcom/google/android/gms/b/ho$b;-><init>(Ljava/lang/String;Lcom/google/android/gms/b/ho$a;Lcom/google/android/gms/b/jb$b;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/b/iv;->a(Lcom/google/android/gms/b/it;)Lcom/google/android/gms/b/it;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/b/hz;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/b/hz",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v3, Lcom/google/android/gms/b/ho$c;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/b/ho$c;-><init>(Lcom/google/android/gms/b/ho;Lcom/google/android/gms/b/ho$1;)V

    new-instance v4, Lcom/google/android/gms/b/ho$2;

    invoke-direct {v4, p0, p1, v3}, Lcom/google/android/gms/b/ho$2;-><init>(Lcom/google/android/gms/b/ho;Ljava/lang/String;Lcom/google/android/gms/b/ho$c;)V

    new-instance v0, Lcom/google/android/gms/b/ho$3;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/b/ho$3;-><init>(Lcom/google/android/gms/b/ho;Ljava/lang/String;Lcom/google/android/gms/b/jb$b;Lcom/google/android/gms/b/jb$a;Ljava/util/Map;)V

    sget-object v1, Lcom/google/android/gms/b/ho;->b:Lcom/google/android/gms/b/iv;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/b/iv;->a(Lcom/google/android/gms/b/it;)Lcom/google/android/gms/b/it;

    return-object v3
.end method
