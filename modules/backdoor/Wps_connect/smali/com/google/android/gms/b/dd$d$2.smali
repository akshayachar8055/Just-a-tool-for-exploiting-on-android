.class Lcom/google/android/gms/b/dd$d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/ib$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/b/dd$d;->a()V
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
.field final synthetic a:Lcom/google/android/gms/b/dd$d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/dd$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/dd$d$2;->a:Lcom/google/android/gms/b/dd$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/de;)V
    .locals 1

    const-string v0, "Releasing engine reference."

    invoke-static {v0}, Lcom/google/android/gms/b/hf;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/b/dd$d$2;->a:Lcom/google/android/gms/b/dd$d;

    invoke-static {v0}, Lcom/google/android/gms/b/dd$d;->a(Lcom/google/android/gms/b/dd$d;)Lcom/google/android/gms/b/dd$e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/b/dd$e;->b()V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/b/de;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/b/dd$d$2;->a(Lcom/google/android/gms/b/de;)V

    return-void
.end method
