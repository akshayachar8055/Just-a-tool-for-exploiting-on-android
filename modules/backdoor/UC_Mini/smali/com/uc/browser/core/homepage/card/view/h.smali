.class final Lcom/uc/browser/core/homepage/card/view/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/browser/core/homepage/card/view/CardManagerLayout;


# direct methods
.method constructor <init>(Lcom/uc/browser/core/homepage/card/view/CardManagerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/core/homepage/card/view/h;->a:Lcom/uc/browser/core/homepage/card/view/CardManagerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/h;->a:Lcom/uc/browser/core/homepage/card/view/CardManagerLayout;

    invoke-static {v0}, Lcom/uc/browser/core/homepage/card/view/CardManagerLayout;->a(Lcom/uc/browser/core/homepage/card/view/CardManagerLayout;)Lcom/uc/browser/core/homepage/card/view/n;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/h;->a:Lcom/uc/browser/core/homepage/card/view/CardManagerLayout;

    invoke-static {v0}, Lcom/uc/browser/core/homepage/card/view/CardManagerLayout;->a(Lcom/uc/browser/core/homepage/card/view/CardManagerLayout;)Lcom/uc/browser/core/homepage/card/view/n;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/browser/core/homepage/card/view/h;->a:Lcom/uc/browser/core/homepage/card/view/CardManagerLayout;

    invoke-static {v1}, Lcom/uc/browser/core/homepage/card/view/CardManagerLayout;->b(Lcom/uc/browser/core/homepage/card/view/CardManagerLayout;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/uc/browser/core/homepage/card/view/n;->a(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
