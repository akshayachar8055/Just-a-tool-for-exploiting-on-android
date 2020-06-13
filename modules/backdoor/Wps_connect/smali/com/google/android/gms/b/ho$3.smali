.class Lcom/google/android/gms/b/ho$3;
.super Lcom/google/android/gms/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/b/ho;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/b/hz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/google/android/gms/b/ho;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/ho;Ljava/lang/String;Lcom/google/android/gms/b/jb$b;Lcom/google/android/gms/b/jb$a;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/ho$3;->b:Lcom/google/android/gms/b/ho;

    iput-object p5, p0, Lcom/google/android/gms/b/ho$3;->a:Ljava/util/Map;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/gms/b/c;-><init>(Ljava/lang/String;Lcom/google/android/gms/b/jb$b;Lcom/google/android/gms/b/jb$a;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/b/ho$3;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/b/c;->a()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/ho$3;->a:Ljava/util/Map;

    goto :goto_0
.end method
