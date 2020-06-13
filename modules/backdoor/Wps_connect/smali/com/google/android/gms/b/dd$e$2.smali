.class Lcom/google/android/gms/b/dd$e$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/ib$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/b/dd$e;->a()Lcom/google/android/gms/b/dd$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/dd$d;

.field final synthetic b:Lcom/google/android/gms/b/dd$e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/dd$e;Lcom/google/android/gms/b/dd$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/dd$e$2;->b:Lcom/google/android/gms/b/dd$e;

    iput-object p2, p0, Lcom/google/android/gms/b/dd$e$2;->a:Lcom/google/android/gms/b/dd$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, "Rejecting reference for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/b/hf;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/b/dd$e$2;->a:Lcom/google/android/gms/b/dd$d;

    invoke-virtual {v0}, Lcom/google/android/gms/b/dd$d;->e()V

    return-void
.end method
