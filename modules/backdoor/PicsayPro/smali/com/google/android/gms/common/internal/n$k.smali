.class public final Lcom/google/android/gms/common/internal/n$k;
.super Lcom/google/android/gms/common/internal/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/n$a;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/google/android/gms/common/internal/n;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/n;ILandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/n$k;->e:Lcom/google/android/gms/common/internal/n;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/n$a;-><init>(Lcom/google/android/gms/common/internal/n;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/n$k;->e:Lcom/google/android/gms/common/internal/n;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/n;->b:Lcom/google/android/gms/common/internal/n$f;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/n$f;->a(Lcom/google/android/gms/common/a;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/n$k;->e:Lcom/google/android/gms/common/internal/n;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/n;->a(Lcom/google/android/gms/common/a;)V

    return-void
.end method

.method protected a()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/n$k;->e:Lcom/google/android/gms/common/internal/n;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/n;->b:Lcom/google/android/gms/common/internal/n$f;

    sget-object v1, Lcom/google/android/gms/common/a;->a:Lcom/google/android/gms/common/a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/n$f;->a(Lcom/google/android/gms/common/a;)V

    const/4 v0, 0x1

    return v0
.end method
