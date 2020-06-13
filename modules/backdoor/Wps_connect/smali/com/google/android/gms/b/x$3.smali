.class Lcom/google/android/gms/b/x$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/ib$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/b/x;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/b/gx;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/b/y;Lcom/google/android/gms/b/dd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/b/ib$c",
        "<",
        "Lcom/google/android/gms/b/de;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/x;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/x;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/x$3;->a:Lcom/google/android/gms/b/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/de;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/x$3;->a:Lcom/google/android/gms/b/x;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/x;->a(Lcom/google/android/gms/b/x;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/b/x$3;->a:Lcom/google/android/gms/b/x;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/b/x;->a(Lcom/google/android/gms/b/de;)V

    iget-object v0, p0, Lcom/google/android/gms/b/x$3;->a:Lcom/google/android/gms/b/x;

    invoke-virtual {v0}, Lcom/google/android/gms/b/x;->a()V

    iget-object v0, p0, Lcom/google/android/gms/b/x$3;->a:Lcom/google/android/gms/b/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/x;->b(Z)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/b/de;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/b/x$3;->a(Lcom/google/android/gms/b/de;)V

    return-void
.end method
