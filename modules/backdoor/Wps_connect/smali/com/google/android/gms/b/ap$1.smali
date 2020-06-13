.class Lcom/google/android/gms/b/ap$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/b/ap;->a(Lcom/google/android/gms/b/am;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/am;

.field final synthetic b:Lcom/google/android/gms/b/ap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/ap;Lcom/google/android/gms/b/am;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/ap$1;->b:Lcom/google/android/gms/b/ap;

    iput-object p2, p0, Lcom/google/android/gms/b/ap$1;->a:Lcom/google/android/gms/b/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/b/ap$1;->a:Lcom/google/android/gms/b/am;

    iget-object v1, p0, Lcom/google/android/gms/b/ap$1;->b:Lcom/google/android/gms/b/ap;

    invoke-static {v1}, Lcom/google/android/gms/b/ap;->a(Lcom/google/android/gms/b/ap;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/am;->a(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
