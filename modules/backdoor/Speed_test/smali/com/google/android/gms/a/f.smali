.class final Lcom/google/android/gms/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/a/k;


# instance fields
.field private synthetic a:Landroid/os/Bundle;

.field private synthetic b:Lcom/google/android/gms/a/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/a/c;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/a/f;->b:Lcom/google/android/gms/a/c;

    iput-object p2, p0, Lcom/google/android/gms/a/f;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/google/android/gms/a/b;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/a/f;->b:Lcom/google/android/gms/a/c;

    invoke-static {v0}, Lcom/google/android/gms/a/c;->b(Lcom/google/android/gms/a/c;)Lcom/google/android/gms/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/a/f;->a:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/google/android/gms/a/b;->a(Landroid/os/Bundle;)V

    return-void
.end method
