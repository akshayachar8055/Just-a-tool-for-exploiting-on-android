.class Lcom/google/android/gms/ads/c/a$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/c/a;->a(Lcom/google/android/gms/ads/c/a$a;ZFLjava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/c/a;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/ads/c/a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/c/b;

    invoke-direct {v0}, Lcom/google/android/gms/ads/c/b;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/ads/c/a$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/c/b;->a(Ljava/lang/String;)V

    return-void
.end method
