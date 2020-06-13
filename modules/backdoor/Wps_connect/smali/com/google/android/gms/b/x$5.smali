.class Lcom/google/android/gms/b/x$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/ib$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/b/x;->b(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/b/ib$c",
        "<",
        "Lcom/google/android/gms/b/de;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/google/android/gms/b/x;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/x;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/x$5;->b:Lcom/google/android/gms/b/x;

    iput-object p2, p0, Lcom/google/android/gms/b/x$5;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/de;)V
    .locals 2

    const-string v0, "AFMA_updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/b/x$5;->a:Lorg/json/JSONObject;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/b/de;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/b/de;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/b/x$5;->a(Lcom/google/android/gms/b/de;)V

    return-void
.end method
