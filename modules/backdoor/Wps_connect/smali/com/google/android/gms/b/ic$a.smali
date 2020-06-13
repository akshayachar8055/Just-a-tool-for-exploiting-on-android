.class Lcom/google/android/gms/b/ic$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/b/ic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/b/ib$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/b/ib$c",
            "<TT;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/android/gms/b/ib$a;

.field final synthetic c:Lcom/google/android/gms/b/ic;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/b/ic;Lcom/google/android/gms/b/ib$c;Lcom/google/android/gms/b/ib$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/b/ib$c",
            "<TT;>;",
            "Lcom/google/android/gms/b/ib$a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/b/ic$a;->c:Lcom/google/android/gms/b/ic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/b/ic$a;->a:Lcom/google/android/gms/b/ib$c;

    iput-object p3, p0, Lcom/google/android/gms/b/ic$a;->b:Lcom/google/android/gms/b/ib$a;

    return-void
.end method
