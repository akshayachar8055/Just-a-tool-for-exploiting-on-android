.class final Lcom/uc/browser/homepage/view/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/browser/homepage/view/q;


# direct methods
.method constructor <init>(Lcom/uc/browser/homepage/view/q;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/homepage/view/s;->a:Lcom/uc/browser/homepage/view/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/homepage/view/s;->a:Lcom/uc/browser/homepage/view/q;

    invoke-static {v0}, Lcom/uc/browser/homepage/view/q;->d(Lcom/uc/browser/homepage/view/q;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/homepage/view/s;->a:Lcom/uc/browser/homepage/view/q;

    invoke-static {v0}, Lcom/uc/browser/homepage/view/q;->d(Lcom/uc/browser/homepage/view/q;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
