.class Lcom/google/android/gms/c/p$a$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/p$a;->a(Lcom/google/android/gms/common/a;Lcom/google/android/gms/common/api/a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/a;

.field final synthetic b:Lcom/google/android/gms/c/p$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/p$a;Lcom/google/android/gms/common/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/p$a$3;->b:Lcom/google/android/gms/c/p$a;

    iput-object p2, p0, Lcom/google/android/gms/c/p$a$3;->a:Lcom/google/android/gms/common/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/c/p$a$3;->b:Lcom/google/android/gms/c/p$a;

    iget-object v1, p0, Lcom/google/android/gms/c/p$a$3;->a:Lcom/google/android/gms/common/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/p$a;->a(Lcom/google/android/gms/common/a;)V

    return-void
.end method
