.class final Lcom/uc/browser/bi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uc/platform/e;


# instance fields
.field private synthetic a:Lcom/uc/browser/p;


# direct methods
.method constructor <init>(Lcom/uc/browser/p;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/bi;->a:Lcom/uc/browser/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/uc/platform/g;->h()Lcom/uc/platform/g;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/browser/bi;->a:Lcom/uc/browser/p;

    iget-object v1, v1, Lcom/uc/browser/p;->a:Lcom/uc/browser/ActivityBrowser;

    invoke-virtual {v1}, Lcom/uc/browser/ActivityBrowser;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uc/platform/g;->c(Landroid/content/Context;)V

    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/uc/platform/g;->h()Lcom/uc/platform/g;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/browser/bi;->a:Lcom/uc/browser/p;

    iget-object v1, v1, Lcom/uc/browser/p;->a:Lcom/uc/browser/ActivityBrowser;

    invoke-virtual {v1}, Lcom/uc/browser/ActivityBrowser;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uc/platform/g;->c(Landroid/content/Context;)V

    return-void
.end method
