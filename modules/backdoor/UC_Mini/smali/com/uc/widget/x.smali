.class public Lcom/uc/widget/x;
.super Lcom/uc/widget/q;


# instance fields
.field public a:Z

.field private b:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-direct {p0, v0}, Lcom/uc/widget/x;-><init>(Ljava/util/Vector;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Vector;)V
    .locals 1

    invoke-direct {p0}, Lcom/uc/widget/q;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/widget/x;->a:Z

    iput-object p1, p0, Lcom/uc/widget/x;->b:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Vector;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/widget/x;->b:Ljava/util/Vector;

    return-void
.end method

.method public final b()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/uc/widget/x;->b:Ljava/util/Vector;

    return-object v0
.end method

.method public final c(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/uc/widget/q;->c(II)V

    iget-object v0, p0, Lcom/uc/widget/x;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/widget/q;

    invoke-virtual {v0, p1, p2}, Lcom/uc/widget/q;->c(II)V

    goto :goto_0

    :cond_0
    return-void
.end method
