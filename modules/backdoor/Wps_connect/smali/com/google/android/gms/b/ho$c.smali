.class Lcom/google/android/gms/b/ho$c;
.super Lcom/google/android/gms/b/hw;

# interfaces
.implements Lcom/google/android/gms/b/jb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/b/ho;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/b/hw",
        "<TT;>;",
        "Lcom/google/android/gms/b/jb$b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/ho;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/b/ho;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/ho$c;->a:Lcom/google/android/gms/b/ho;

    invoke-direct {p0}, Lcom/google/android/gms/b/hw;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/b/ho;Lcom/google/android/gms/b/ho$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/b/ho$c;-><init>(Lcom/google/android/gms/b/ho;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/android/gms/b/hw;->b(Ljava/lang/Object;)V

    return-void
.end method
