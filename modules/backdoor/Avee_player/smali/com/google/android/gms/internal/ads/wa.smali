.class public final Lcom/google/android/gms/internal/ads/wa;
.super Lcom/google/android/gms/internal/ads/abe;

# interfaces
.implements Lcom/google/android/gms/internal/ads/acn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/wa$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/abe<",
        "Lcom/google/android/gms/internal/ads/wa;",
        "Lcom/google/android/gms/internal/ads/wa$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/acn;"
    }
.end annotation


# static fields
.field private static volatile zzakh:Lcom/google/android/gms/internal/ads/acx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/acx<",
            "Lcom/google/android/gms/internal/ads/wa;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzdjo:Lcom/google/android/gms/internal/ads/wa;


# instance fields
.field private zzdjl:Lcom/google/android/gms/internal/ads/wg;

.field private zzdjm:Lcom/google/android/gms/internal/ads/vw;

.field private zzdjn:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/wa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/wa;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/wa;->zzdjo:Lcom/google/android/gms/internal/ads/wa;

    const-class v0, Lcom/google/android/gms/internal/ads/wa;

    sget-object v1, Lcom/google/android/gms/internal/ads/wa;->zzdjo:Lcom/google/android/gms/internal/ads/wa;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/abe;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/abe;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/abe;-><init>()V

    return-void
.end method

.method public static d()Lcom/google/android/gms/internal/ads/wa;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/wa;->zzdjo:Lcom/google/android/gms/internal/ads/wa;

    return-object v0
.end method

.method static synthetic e()Lcom/google/android/gms/internal/ads/wa;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/wa;->zzdjo:Lcom/google/android/gms/internal/ads/wa;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/wg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wa;->zzdjl:Lcom/google/android/gms/internal/ads/wg;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/wg;->d()Lcom/google/android/gms/internal/ads/wg;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wa;->zzdjl:Lcom/google/android/gms/internal/ads/wg;

    return-object v0
.end method

.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lcom/google/android/gms/internal/ads/wb;->a:[I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/wa;->zzakh:Lcom/google/android/gms/internal/ads/acx;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/wa;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/wa;->zzakh:Lcom/google/android/gms/internal/ads/acx;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/abe$b;

    sget-object p3, Lcom/google/android/gms/internal/ads/wa;->zzdjo:Lcom/google/android/gms/internal/ads/wa;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/abe$b;-><init>(Lcom/google/android/gms/internal/ads/abe;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/wa;->zzakh:Lcom/google/android/gms/internal/ads/acx;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/wa;->zzdjo:Lcom/google/android/gms/internal/ads/wa;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdjl"

    aput-object v0, p1, p2

    const-string p2, "zzdjm"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzdjn"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0004\u0000\u0000\u0000\u0001\t\u0002\t\u0003\u000c"

    sget-object p3, Lcom/google/android/gms/internal/ads/wa;->zzdjo:Lcom/google/android/gms/internal/ads/wa;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/ads/wa;->a(Lcom/google/android/gms/internal/ads/acl;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/wa$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/wa$a;-><init>(Lcom/google/android/gms/internal/ads/wb;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/wa;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/wa;-><init>()V

    return-object p1

    nop

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

.method public final b()Lcom/google/android/gms/internal/ads/vw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wa;->zzdjm:Lcom/google/android/gms/internal/ads/vw;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/vw;->b()Lcom/google/android/gms/internal/ads/vw;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wa;->zzdjm:Lcom/google/android/gms/internal/ads/vw;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/vu;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/wa;->zzdjn:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vu;->a(I)Lcom/google/android/gms/internal/ads/vu;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/vu;->d:Lcom/google/android/gms/internal/ads/vu;

    :cond_0
    return-object v0
.end method
