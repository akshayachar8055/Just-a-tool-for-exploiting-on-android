.class public Lcom/bumptech/glide/g/a/g;
.super Ljava/lang/Object;
.source "ViewAnimationFactory.java"

# interfaces
.implements Lcom/bumptech/glide/g/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/g/a/d<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/g/a/f$a;

.field private b:Lcom/bumptech/glide/g/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/g/a/c<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/g/a/f$a;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/bumptech/glide/g/a/g;->a:Lcom/bumptech/glide/g/a/f$a;

    return-void
.end method


# virtual methods
.method public a(ZZ)Lcom/bumptech/glide/g/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/bumptech/glide/g/a/c<",
            "TR;>;"
        }
    .end annotation

    if-nez p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/bumptech/glide/g/a/g;->b:Lcom/bumptech/glide/g/a/c;

    if-nez p1, :cond_1

    .line 45
    new-instance p1, Lcom/bumptech/glide/g/a/f;

    iget-object p2, p0, Lcom/bumptech/glide/g/a/g;->a:Lcom/bumptech/glide/g/a/f$a;

    invoke-direct {p1, p2}, Lcom/bumptech/glide/g/a/f;-><init>(Lcom/bumptech/glide/g/a/f$a;)V

    iput-object p1, p0, Lcom/bumptech/glide/g/a/g;->b:Lcom/bumptech/glide/g/a/c;

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/bumptech/glide/g/a/g;->b:Lcom/bumptech/glide/g/a/c;

    return-object p1

    .line 41
    :cond_2
    :goto_0
    invoke-static {}, Lcom/bumptech/glide/g/a/e;->b()Lcom/bumptech/glide/g/a/c;

    move-result-object p1

    return-object p1
.end method
