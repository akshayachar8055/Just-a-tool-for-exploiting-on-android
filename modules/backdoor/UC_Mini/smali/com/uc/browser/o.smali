.class public final Lcom/uc/browser/o;
.super Ljava/lang/Object;


# instance fields
.field private a:B

.field private b:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uc/browser/o;->b:Ljava/util/ArrayList;

    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/uc/browser/o;->a:B

    return-void
.end method

.method static synthetic a(Lcom/uc/browser/o;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/o;->b:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    new-instance v2, Lcom/uc/browser/n;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v0}, Lcom/uc/browser/n;-><init>(I)V

    iget-object v0, p0, Lcom/uc/browser/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(I)Z
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .locals 1

    iget-byte v0, p0, Lcom/uc/browser/o;->a:B

    return v0
.end method

.method public final b(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/uc/browser/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final c(I)I
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/uc/browser/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/uc/browser/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/browser/n;

    invoke-virtual {v0}, Lcom/uc/browser/n;->a()I

    move-result v0

    if-ne v0, p1, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public final c()V
    .locals 2

    new-instance v0, Lcom/uc/browser/n;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/uc/browser/n;-><init>(I)V

    iget-object v1, p0, Lcom/uc/browser/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(I)I
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/uc/browser/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/uc/browser/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/browser/n;

    invoke-virtual {v0}, Lcom/uc/browser/n;->a()I

    move-result v0

    goto :goto_0
.end method
