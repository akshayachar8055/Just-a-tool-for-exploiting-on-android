.class final Lcom/uc/browser/cz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/browser/MenuItemView;


# direct methods
.method constructor <init>(Lcom/uc/browser/MenuItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/cz;->a:Lcom/uc/browser/MenuItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/uc/browser/cz;->a:Lcom/uc/browser/MenuItemView;

    invoke-static {v0}, Lcom/uc/browser/MenuItemView;->a(Lcom/uc/browser/MenuItemView;)Lcom/uc/browser/da;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/cz;->a:Lcom/uc/browser/MenuItemView;

    invoke-static {v0}, Lcom/uc/browser/MenuItemView;->b(Lcom/uc/browser/MenuItemView;)Lcom/uc/browser/cy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/cz;->a:Lcom/uc/browser/MenuItemView;

    invoke-static {v0}, Lcom/uc/browser/MenuItemView;->a(Lcom/uc/browser/MenuItemView;)Lcom/uc/browser/da;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/browser/cz;->a:Lcom/uc/browser/MenuItemView;

    invoke-static {v1}, Lcom/uc/browser/MenuItemView;->b(Lcom/uc/browser/MenuItemView;)Lcom/uc/browser/cy;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/uc/browser/da;->a(Lcom/uc/browser/cy;)V

    :cond_0
    return-void
.end method
