.class final Lcom/uc/browser/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uc/widget/p;


# instance fields
.field private synthetic a:Lcom/uc/browser/p;


# direct methods
.method constructor <init>(Lcom/uc/browser/p;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/aa;->a:Lcom/uc/browser/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/uc/browser/aa;->a:Lcom/uc/browser/p;

    invoke-static {v0}, Lcom/uc/browser/p;->c(Lcom/uc/browser/p;)Lcom/uc/browser/k;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/browser/aa;->a:Lcom/uc/browser/p;

    invoke-virtual {v1}, Lcom/uc/browser/p;->Y()Lcom/uc/browser/WindowUCWeb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uc/browser/k;->b(Lcom/uc/browser/WindowUCWeb;)V

    iget-object v0, p0, Lcom/uc/browser/aa;->a:Lcom/uc/browser/p;

    invoke-static {v0}, Lcom/uc/browser/p;->d(Lcom/uc/browser/p;)Lcom/uc/browser/cm;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/aa;->a:Lcom/uc/browser/p;

    invoke-static {v0}, Lcom/uc/browser/p;->d(Lcom/uc/browser/p;)Lcom/uc/browser/cm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/browser/cm;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/aa;->a:Lcom/uc/browser/p;

    invoke-static {v0}, Lcom/uc/browser/p;->d(Lcom/uc/browser/p;)Lcom/uc/browser/cm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/uc/browser/cm;->a(Z)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/uc/widget/UCCustomProgressBar;)V
    .locals 2

    iget-object v0, p0, Lcom/uc/browser/aa;->a:Lcom/uc/browser/p;

    invoke-static {v0}, Lcom/uc/browser/p;->c(Lcom/uc/browser/p;)Lcom/uc/browser/k;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/browser/aa;->a:Lcom/uc/browser/p;

    invoke-virtual {v1}, Lcom/uc/browser/p;->Y()Lcom/uc/browser/WindowUCWeb;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/uc/browser/k;->a(Lcom/uc/widget/UCCustomProgressBar;Lcom/uc/browser/WindowUCWeb;)V

    iget-object v0, p0, Lcom/uc/browser/aa;->a:Lcom/uc/browser/p;

    invoke-static {v0}, Lcom/uc/browser/p;->d(Lcom/uc/browser/p;)Lcom/uc/browser/cm;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/aa;->a:Lcom/uc/browser/p;

    invoke-static {v0}, Lcom/uc/browser/p;->d(Lcom/uc/browser/p;)Lcom/uc/browser/cm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/browser/cm;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/aa;->a:Lcom/uc/browser/p;

    invoke-static {v0}, Lcom/uc/browser/p;->d(Lcom/uc/browser/p;)Lcom/uc/browser/cm;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/uc/browser/cm;->a(Z)V

    :cond_0
    return-void
.end method
