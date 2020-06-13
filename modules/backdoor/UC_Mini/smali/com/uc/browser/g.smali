.class final Lcom/uc/browser/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/browser/ActivityCamera;


# direct methods
.method constructor <init>(Lcom/uc/browser/ActivityCamera;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/g;->a:Lcom/uc/browser/ActivityCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/uc/browser/g;->a:Lcom/uc/browser/ActivityCamera;

    iget-object v0, v0, Lcom/uc/browser/ActivityCamera;->a:Lcom/uc/browser/fe;

    invoke-virtual {v0}, Lcom/uc/browser/fe;->a()Lcom/uc/browser/fh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/browser/fh;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/g;->a:Lcom/uc/browser/ActivityCamera;

    invoke-static {v0}, Lcom/uc/browser/ActivityCamera;->e(Lcom/uc/browser/ActivityCamera;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/uc/browser/g;->a:Lcom/uc/browser/ActivityCamera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/uc/browser/ActivityCamera;->setResult(I)V

    iget-object v0, p0, Lcom/uc/browser/g;->a:Lcom/uc/browser/ActivityCamera;

    invoke-virtual {v0}, Lcom/uc/browser/ActivityCamera;->finish()V

    goto :goto_0
.end method
