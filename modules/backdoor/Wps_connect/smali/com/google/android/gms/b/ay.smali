.class public Lcom/google/android/gms/b/ay;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/gb;
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/b/aw;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/b/az;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/b/az;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/b/ay;->b:Lcom/google/android/gms/b/az;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/ay;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/b/az;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ay;->b:Lcom/google/android/gms/b/az;

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/b/aw;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/ay;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    iget-object v1, p0, Lcom/google/android/gms/b/ay;->b:Lcom/google/android/gms/b/az;

    iget-object v0, p0, Lcom/google/android/gms/b/ay;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/aw;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v0, p3, p4, v2}, Lcom/google/android/gms/b/au;->a(Lcom/google/android/gms/b/az;Lcom/google/android/gms/b/aw;J[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/b/ay;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/b/ay;->b:Lcom/google/android/gms/b/az;

    invoke-static {v1, p3, p4}, Lcom/google/android/gms/b/au;->a(Lcom/google/android/gms/b/az;J)Lcom/google/android/gms/b/aw;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
