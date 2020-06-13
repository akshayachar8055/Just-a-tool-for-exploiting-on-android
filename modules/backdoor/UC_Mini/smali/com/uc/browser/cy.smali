.class public final Lcom/uc/browser/cy;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(III)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uc/browser/cy;->e:Z

    iput-boolean v1, p0, Lcom/uc/browser/cy;->f:Z

    iput-boolean v1, p0, Lcom/uc/browser/cy;->g:Z

    iput p1, p0, Lcom/uc/browser/cy;->a:I

    iput p3, p0, Lcom/uc/browser/cy;->c:I

    iput p2, p0, Lcom/uc/browser/cy;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/uc/browser/cy;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/uc/browser/cy;->c:I

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uc/browser/cy;->d:Z

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/uc/browser/cy;->b:I

    return v0
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uc/browser/cy;->f:Z

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/uc/browser/cy;->c:I

    return v0
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uc/browser/cy;->e:Z

    return-void
.end method

.method public final d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uc/browser/cy;->g:Z

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uc/browser/cy;->d:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uc/browser/cy;->f:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uc/browser/cy;->e:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uc/browser/cy;->g:Z

    return v0
.end method
