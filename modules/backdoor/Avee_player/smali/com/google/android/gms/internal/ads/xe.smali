.class public final Lcom/google/android/gms/internal/ads/xe;
.super Lcom/google/android/gms/internal/ads/abe;

# interfaces
.implements Lcom/google/android/gms/internal/ads/acn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/xe$a;,
        Lcom/google/android/gms/internal/ads/xe$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/abe<",
        "Lcom/google/android/gms/internal/ads/xe;",
        "Lcom/google/android/gms/internal/ads/xe$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/acn;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lcom/google/android/gms/internal/ads/acx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/acx<",
            "Lcom/google/android/gms/internal/ads/xe;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdlz:Lcom/google/android/gms/internal/ads/xe;


# instance fields
.field private zzdlq:I

.field private zzdlr:I

.field private zzdly:Lcom/google/android/gms/internal/ads/abj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/abj<",
            "Lcom/google/android/gms/internal/ads/xe$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/xe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/xe;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/xe;->zzdlz:Lcom/google/android/gms/internal/ads/xe;

    const-class v0, Lcom/google/android/gms/internal/ads/xe;

    sget-object v1, Lcom/google/android/gms/internal/ads/xe;->zzdlz:Lcom/google/android/gms/internal/ads/xe;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/abe;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/abe;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/abe;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/xe;->m()Lcom/google/android/gms/internal/ads/abj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xe;->zzdly:Lcom/google/android/gms/internal/ads/abj;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/xe$a;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/xe;->zzdlz:Lcom/google/android/gms/internal/ads/xe;

    sget v1, Lcom/google/android/gms/internal/ads/abe$e;->e:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/abe;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/abe$a;

    check-cast v0, Lcom/google/android/gms/internal/ads/xe$a;

    return-object v0
.end method

.method private final a(Lcom/google/android/gms/internal/ads/xe$b;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xe;->zzdly:Lcom/google/android/gms/internal/ads/abj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/abj;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xe;->zzdly:Lcom/google/android/gms/internal/ads/abj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/abj;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xa

    goto :goto_0

    :cond_1
    shl-int/lit8 v1, v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/abj;->a(I)Lcom/google/android/gms/internal/ads/abj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xe;->zzdly:Lcom/google/android/gms/internal/ads/abj;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xe;->zzdly:Lcom/google/android/gms/internal/ads/abj;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/abj;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/xe;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/xe;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/xe;Lcom/google/android/gms/internal/ads/xe$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/xe;->a(Lcom/google/android/gms/internal/ads/xe$b;)V

    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/xe;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/xe;->zzdlz:Lcom/google/android/gms/internal/ads/xe;

    return-object v0
.end method

.method private final b(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/xe;->zzdlr:I

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lcom/google/android/gms/internal/ads/xf;->a:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/xe;->zzakh:Lcom/google/android/gms/internal/ads/acx;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/xe;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/xe;->zzakh:Lcom/google/android/gms/internal/ads/acx;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/abe$b;

    sget-object p3, Lcom/google/android/gms/internal/ads/xe;->zzdlz:Lcom/google/android/gms/internal/ads/xe;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/abe$b;-><init>(Lcom/google/android/gms/internal/ads/abe;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/xe;->zzakh:Lcom/google/android/gms/internal/ads/acx;

    :cond_0
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-object p1

    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/xe;->zzdlz:Lcom/google/android/gms/internal/ads/xe;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdlq"

    aput-object v0, p1, p2

    const-string p2, "zzdlr"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzdly"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lcom/google/android/gms/internal/ads/xe$b;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0003\u0000\u0001\u0000\u0001\u000b\u0002\u001b"

    sget-object p3, Lcom/google/android/gms/internal/ads/xe;->zzdlz:Lcom/google/android/gms/internal/ads/xe;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/xe;->a(Lcom/google/android/gms/internal/ads/acl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/xe$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/xe$a;-><init>(Lcom/google/android/gms/internal/ads/xf;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/xe;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/xe;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
