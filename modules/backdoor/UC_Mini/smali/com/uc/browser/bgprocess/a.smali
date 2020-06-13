.class public abstract Lcom/uc/browser/bgprocess/a;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Lcom/uc/browser/bgprocess/b;

.field private c:Z


# direct methods
.method public constructor <init>(ILcom/uc/browser/bgprocess/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/browser/bgprocess/a;->c:Z

    iput p1, p0, Lcom/uc/browser/bgprocess/a;->a:I

    iput-object p2, p0, Lcom/uc/browser/bgprocess/a;->b:Lcom/uc/browser/bgprocess/b;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uc/browser/bgprocess/a;->c:Z

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/browser/bgprocess/a;->c:Z

    iget-object v0, p0, Lcom/uc/browser/bgprocess/a;->b:Lcom/uc/browser/bgprocess/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/bgprocess/a;->b:Lcom/uc/browser/bgprocess/b;

    invoke-interface {v0}, Lcom/uc/browser/bgprocess/b;->a()V

    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uc/browser/bgprocess/a;->c:Z

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/uc/browser/bgprocess/a;->a:I

    return v0
.end method
