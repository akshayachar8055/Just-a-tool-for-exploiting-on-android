.class Lcom/google/android/gms/c/j$b$1;
.super Lcom/google/android/gms/c/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/j$b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/a;

.field final synthetic b:Lcom/google/android/gms/c/j$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/j$b;Lcom/google/android/gms/c/m;Lcom/google/android/gms/common/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/j$b$1;->b:Lcom/google/android/gms/c/j$b;

    iput-object p3, p0, Lcom/google/android/gms/c/j$b$1;->a:Lcom/google/android/gms/common/a;

    invoke-direct {p0, p2}, Lcom/google/android/gms/c/n$a;-><init>(Lcom/google/android/gms/c/m;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/j$b$1;->b:Lcom/google/android/gms/c/j$b;

    iget-object v0, v0, Lcom/google/android/gms/c/j$b;->a:Lcom/google/android/gms/c/j;

    iget-object v1, p0, Lcom/google/android/gms/c/j$b$1;->a:Lcom/google/android/gms/common/a;

    invoke-static {v0, v1}, Lcom/google/android/gms/c/j;->a(Lcom/google/android/gms/c/j;Lcom/google/android/gms/common/a;)V

    return-void
.end method
