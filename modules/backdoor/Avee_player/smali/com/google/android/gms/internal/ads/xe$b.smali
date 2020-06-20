.class public final Lcom/google/android/gms/internal/ads/xe$b;
.super Lcom/google/android/gms/internal/ads/abe;

# interfaces
.implements Lcom/google/android/gms/internal/ads/acn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/xe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/xe$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/abe<",
        "Lcom/google/android/gms/internal/ads/xe$b;",
        "Lcom/google/android/gms/internal/ads/xe$b$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/acn;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lcom/google/android/gms/internal/ads/acx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/acx<",
            "Lcom/google/android/gms/internal/ads/xe$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdma:Lcom/google/android/gms/internal/ads/xe$b;


# instance fields
.field private zzdks:Ljava/lang/String;

.field private zzdlj:I

.field private zzdlv:I

.field private zzdlw:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/xe$b;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/xe$b;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/xe$b;->zzdma:Lcom/google/android/gms/internal/ads/xe$b;

    const-class v0, Lcom/google/android/gms/internal/ads/xe$b;

    sget-object v1, Lcom/google/android/gms/internal/ads/xe$b;->zzdma:Lcom/google/android/gms/internal/ads/xe$b;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/abe;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/abe;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/abe;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xe$b;->zzdks:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/xe$b$a;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/xe$b;->zzdma:Lcom/google/android/gms/internal/ads/xe$b;

    sget v1, Lcom/google/android/gms/internal/ads/abe$e;->e:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/abe;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/abe$a;

    check-cast v0, Lcom/google/android/gms/internal/ads/xe$b$a;

    return-object v0
.end method

.method private final a(Lcom/google/android/gms/internal/ads/ww;)V
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ww;->a()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/xe$b;->zzdlv:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/xe$b;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/xe$b;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/xe$b;Lcom/google/android/gms/internal/ads/ww;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/xe$b;->a(Lcom/google/android/gms/internal/ads/ww;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/xe$b;Lcom/google/android/gms/internal/ads/xp;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/xe$b;->a(Lcom/google/android/gms/internal/ads/xp;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/xe$b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/xe$b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/xp;)V
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/xp;->a()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/xe$b;->zzdlj:I

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xe$b;->zzdks:Ljava/lang/String;

    return-void
.end method

.method static synthetic b()Lcom/google/android/gms/internal/ads/xe$b;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/xe$b;->zzdma:Lcom/google/android/gms/internal/ads/xe$b;

    return-object v0
.end method

.method private final b(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/xe$b;->zzdlw:I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/xe$b;->zzakh:Lcom/google/android/gms/internal/ads/acx;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/xe$b;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/xe$b;->zzakh:Lcom/google/android/gms/internal/ads/acx;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/abe$b;

    sget-object p3, Lcom/google/android/gms/internal/ads/xe$b;->zzdma:Lcom/google/android/gms/internal/ads/xe$b;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/abe$b;-><init>(Lcom/google/android/gms/internal/ads/abe;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/xe$b;->zzakh:Lcom/google/android/gms/internal/ads/acx;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/xe$b;->zzdma:Lcom/google/android/gms/internal/ads/xe$b;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdks"

    aput-object v0, p1, p2

    const-string p2, "zzdlv"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzdlw"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzdlj"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0005\u0000\u0000\u0000\u0001\u0208\u0002\u000c\u0003\u000b\u0004\u000c"

    sget-object p3, Lcom/google/android/gms/internal/ads/xe$b;->zzdma:Lcom/google/android/gms/internal/ads/xe$b;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/xe$b;->a(Lcom/google/android/gms/internal/ads/acl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/xe$b$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/xe$b$a;-><init>(Lcom/google/android/gms/internal/ads/xf;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/xe$b;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/xe$b;-><init>()V

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
