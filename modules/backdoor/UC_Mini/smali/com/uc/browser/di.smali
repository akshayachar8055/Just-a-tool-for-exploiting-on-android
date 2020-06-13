.class public final Lcom/uc/browser/di;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/uc/browser/di;->a:I

    iput v1, p0, Lcom/uc/browser/di;->b:I

    iput v1, p0, Lcom/uc/browser/di;->c:I

    iput v1, p0, Lcom/uc/browser/di;->d:I

    iput v1, p0, Lcom/uc/browser/di;->e:I

    iput-object v2, p0, Lcom/uc/browser/di;->f:Ljava/lang/String;

    iput v1, p0, Lcom/uc/browser/di;->g:I

    const-string v0, ""

    iput-object v0, p0, Lcom/uc/browser/di;->h:Ljava/lang/String;

    iput v1, p0, Lcom/uc/browser/di;->i:I

    iput v1, p0, Lcom/uc/browser/di;->j:I

    iput-object v2, p0, Lcom/uc/browser/di;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/uc/browser/di;->a:I

    return v0
.end method

.method public final a(I)Lcom/uc/browser/di;
    .locals 0

    iput p1, p0, Lcom/uc/browser/di;->a:I

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/uc/browser/di;
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/di;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/uc/browser/di;->b:I

    return v0
.end method

.method public final b(I)Lcom/uc/browser/di;
    .locals 0

    iput p1, p0, Lcom/uc/browser/di;->b:I

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/uc/browser/di;
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/di;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/uc/browser/di;->c:I

    return v0
.end method

.method public final c(I)Lcom/uc/browser/di;
    .locals 0

    iput p1, p0, Lcom/uc/browser/di;->c:I

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/uc/browser/di;
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/di;->k:Ljava/lang/String;

    return-object p0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/uc/browser/di;->d:I

    return v0
.end method

.method public final d(I)Lcom/uc/browser/di;
    .locals 0

    iput p1, p0, Lcom/uc/browser/di;->d:I

    return-object p0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/uc/browser/di;->e:I

    return v0
.end method

.method public final e(I)Lcom/uc/browser/di;
    .locals 0

    iput p1, p0, Lcom/uc/browser/di;->e:I

    return-object p0
.end method

.method public final f(I)Lcom/uc/browser/di;
    .locals 0

    iput p1, p0, Lcom/uc/browser/di;->g:I

    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/di;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/uc/browser/di;->g:I

    return v0
.end method

.method public final g(I)Lcom/uc/browser/di;
    .locals 0

    iput p1, p0, Lcom/uc/browser/di;->i:I

    return-object p0
.end method

.method public final h(I)Lcom/uc/browser/di;
    .locals 0

    iput p1, p0, Lcom/uc/browser/di;->j:I

    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/di;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/uc/browser/di;->i:I

    return v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lcom/uc/browser/di;->j:I

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/di;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "kw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/uc/browser/di;->f:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "|title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/uc/browser/di;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "|it="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/uc/browser/di;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "|eid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/uc/browser/di;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "|sid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/uc/browser/di;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "|cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/uc/browser/di;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "|fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/uc/browser/di;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "|subid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/uc/browser/di;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "|pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/uc/browser/di;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "|did="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/uc/browser/di;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "|vid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/uc/browser/di;->k:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
