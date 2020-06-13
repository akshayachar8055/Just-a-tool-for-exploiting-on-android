.class final Lcom/uc/browser/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/browser/p;


# direct methods
.method constructor <init>(Lcom/uc/browser/p;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/an;->a:Lcom/uc/browser/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/an;->a:Lcom/uc/browser/p;

    invoke-virtual {v0}, Lcom/uc/browser/p;->Y()Lcom/uc/browser/WindowUCWeb;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/an;->a:Lcom/uc/browser/p;

    invoke-virtual {v0}, Lcom/uc/browser/p;->Y()Lcom/uc/browser/WindowUCWeb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/browser/WindowUCWeb;->ai()V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
