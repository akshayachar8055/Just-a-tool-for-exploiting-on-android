.class Lcom/google/android/gms/b/gd$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/dd$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/b/gd;-><init>(Landroid/content/Context;Lcom/google/android/gms/b/aj;Lcom/google/android/gms/b/gc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/b/dd$b",
        "<",
        "Lcom/google/android/gms/b/da;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/gd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/gd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/gd$6;->a:Lcom/google/android/gms/b/gd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/da;)V
    .locals 2

    const-string v0, "/log"

    sget-object v1, Lcom/google/android/gms/b/ca;->i:Lcom/google/android/gms/b/cb;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/b/da;->a(Ljava/lang/String;Lcom/google/android/gms/b/cb;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/b/da;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/b/gd$6;->a(Lcom/google/android/gms/b/da;)V

    return-void
.end method
