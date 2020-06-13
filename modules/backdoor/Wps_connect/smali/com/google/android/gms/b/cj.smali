.class public Lcom/google/android/gms/b/cj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/cb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/b/cj$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/b/cj$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/b/cj$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/b/cj;->a:Lcom/google/android/gms/b/cj$a;

    return-void
.end method

.method public static a(Lcom/google/android/gms/b/ii;Lcom/google/android/gms/b/cj$a;)V
    .locals 3

    invoke-interface {p0}, Lcom/google/android/gms/b/ii;->l()Lcom/google/android/gms/b/ij;

    move-result-object v0

    const-string v1, "/reward"

    new-instance v2, Lcom/google/android/gms/b/cj;

    invoke-direct {v2, p1}, Lcom/google/android/gms/b/cj;-><init>(Lcom/google/android/gms/b/cj$a;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/b/ij;->a(Ljava/lang/String;Lcom/google/android/gms/b/cb;)V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "amount"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/b/cj;->a:Lcom/google/android/gms/b/cj$a;

    invoke-interface {v1, v0}, Lcom/google/android/gms/b/cj$a;->b(Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unable to parse reward amount."

    invoke-static {v1, v0}, Lcom/google/android/gms/b/hf;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v2

    goto :goto_0
.end method

.method private b(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/b/cj;->a:Lcom/google/android/gms/b/cj$a;

    invoke-interface {v0}, Lcom/google/android/gms/b/cj$a;->E()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/ii;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/b/ii;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "grant"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/b/cj;->a(Ljava/util/Map;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "video_start"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/google/android/gms/b/cj;->b(Ljava/util/Map;)V

    goto :goto_0
.end method
