.class final Lcom/uc/browser/homepage/view/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/browser/homepage/view/HomeWidget;


# direct methods
.method constructor <init>(Lcom/uc/browser/homepage/view/HomeWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/homepage/view/n;->a:Lcom/uc/browser/homepage/view/HomeWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/uc/browser/homepage/view/n;->a:Lcom/uc/browser/homepage/view/HomeWidget;

    invoke-static {v0}, Lcom/uc/browser/homepage/view/HomeWidget;->a(Lcom/uc/browser/homepage/view/HomeWidget;)Lcom/uc/browser/homepage/p;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/browser/homepage/view/n;->a:Lcom/uc/browser/homepage/view/HomeWidget;

    invoke-interface {v0, v1}, Lcom/uc/browser/homepage/p;->c(Lcom/uc/browser/homepage/view/HomeWidget;)V

    return-void
.end method
