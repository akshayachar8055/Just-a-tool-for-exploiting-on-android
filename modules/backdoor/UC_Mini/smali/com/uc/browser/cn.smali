.class final Lcom/uc/browser/cn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/uc/browser/cm;


# direct methods
.method constructor <init>(Lcom/uc/browser/cm;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/cn;->a:Lcom/uc/browser/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/uc/browser/cn;->a:Lcom/uc/browser/cm;

    invoke-static {v0}, Lcom/uc/browser/cm;->a(Lcom/uc/browser/cm;)Lcom/uc/browser/ViewWebSch;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/uc/browser/ViewWebSch;->setVisibility(I)V

    iget-object v0, p0, Lcom/uc/browser/cn;->a:Lcom/uc/browser/cm;

    invoke-static {v0}, Lcom/uc/browser/cm;->b(Lcom/uc/browser/cm;)Z

    iget-object v1, p0, Lcom/uc/browser/cn;->a:Lcom/uc/browser/cm;

    iget-object v0, p0, Lcom/uc/browser/cn;->a:Lcom/uc/browser/cm;

    invoke-static {v0}, Lcom/uc/browser/cm;->c(Lcom/uc/browser/cm;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uc/browser/cn;->a:Lcom/uc/browser/cm;

    invoke-static {v0}, Lcom/uc/browser/cm;->d(Lcom/uc/browser/cm;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/cn;->a:Lcom/uc/browser/cm;

    invoke-static {v0}, Lcom/uc/browser/cm;->e(Lcom/uc/browser/cm;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/uc/browser/cm;->a(Lcom/uc/browser/cm;Z)Z

    iget-object v0, p0, Lcom/uc/browser/cn;->a:Lcom/uc/browser/cm;

    invoke-static {v0}, Lcom/uc/browser/cm;->f(Lcom/uc/browser/cm;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
