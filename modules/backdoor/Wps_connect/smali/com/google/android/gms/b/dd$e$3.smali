.class Lcom/google/android/gms/b/dd$e$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/ib$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/b/dd$e;->d()V
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
        "Lcom/google/android/gms/b/da;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/dd$e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/dd$e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/dd$e$3;->a:Lcom/google/android/gms/b/dd$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/da;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/b/dd$e$3$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/b/dd$e$3$1;-><init>(Lcom/google/android/gms/b/dd$e$3;Lcom/google/android/gms/b/da;)V

    invoke-static {v0}, Lcom/google/android/gms/b/hj;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/b/da;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/b/dd$e$3;->a(Lcom/google/android/gms/b/da;)V

    return-void
.end method
