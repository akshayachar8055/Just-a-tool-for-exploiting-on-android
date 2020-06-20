.class public Lcom/google/android/gms/common/internal/f;
.super Lcom/google/android/gms/common/internal/safeparcel/a;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/internal/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field b:Landroid/os/IBinder;

.field private c:Lcom/google/android/gms/common/a;

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/g;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/common/a;ZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/f;->a:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/f;->b:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/google/android/gms/common/internal/f;->c:Lcom/google/android/gms/common/a;

    iput-boolean p4, p0, Lcom/google/android/gms/common/internal/f;->d:Z

    iput-boolean p5, p0, Lcom/google/android/gms/common/internal/f;->e:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/common/internal/y;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->b:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/y$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/y;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/android/gms/common/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->c:Lcom/google/android/gms/common/a;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/f;->d:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/f;->e:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/common/internal/f;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/common/internal/f;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/f;->c:Lcom/google/android/gms/common/a;

    iget-object v3, p1, Lcom/google/android/gms/common/internal/f;->c:Lcom/google/android/gms/common/a;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/f;->a()Lcom/google/android/gms/common/internal/y;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/f;->a()Lcom/google/android/gms/common/internal/y;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/g;->a(Lcom/google/android/gms/common/internal/f;Landroid/os/Parcel;I)V

    return-void
.end method
