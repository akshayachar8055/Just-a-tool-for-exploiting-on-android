.class public final Lcom/google/android/gms/internal/ads/zzms;
.super Lcom/google/android/gms/internal/ads/zzjn;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzjn;)V
    .locals 11

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzjn;->a:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzjn;->b:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzjn;->c:I

    iget-boolean v4, p1, Lcom/google/android/gms/internal/ads/zzjn;->d:Z

    iget v5, p1, Lcom/google/android/gms/internal/ads/zzjn;->e:I

    iget v6, p1, Lcom/google/android/gms/internal/ads/zzjn;->f:I

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzjn;->g:[Lcom/google/android/gms/internal/ads/zzjn;

    iget-boolean v8, p1, Lcom/google/android/gms/internal/ads/zzjn;->h:Z

    iget-boolean v9, p1, Lcom/google/android/gms/internal/ads/zzjn;->i:Z

    iget-boolean v10, p1, Lcom/google/android/gms/internal/ads/zzjn;->j:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzjn;-><init>(Ljava/lang/String;IIZII[Lcom/google/android/gms/internal/ads/zzjn;ZZZ)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzms;->a:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzms;->b:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzms;->e:I

    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V

    return-void
.end method
