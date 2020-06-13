.class Lcom/google/android/gms/b/dd$e$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/ib$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/b/dd$e;->a()Lcom/google/android/gms/b/dd$d;
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
.field final synthetic a:Lcom/google/android/gms/b/dd$d;

.field final synthetic b:Lcom/google/android/gms/b/dd$e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/dd$e;Lcom/google/android/gms/b/dd$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/dd$e$1;->b:Lcom/google/android/gms/b/dd$e;

    iput-object p2, p0, Lcom/google/android/gms/b/dd$e$1;->a:Lcom/google/android/gms/b/dd$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/da;)V
    .locals 2

    const-string v0, "Getting a new session for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/b/hf;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/b/dd$e$1;->a:Lcom/google/android/gms/b/dd$d;

    invoke-interface {p1}, Lcom/google/android/gms/b/da;->b()Lcom/google/android/gms/b/df;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/dd$d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/b/da;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/b/dd$e$1;->a(Lcom/google/android/gms/b/da;)V

    return-void
.end method
