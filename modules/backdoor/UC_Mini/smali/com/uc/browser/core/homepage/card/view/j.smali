.class final Lcom/uc/browser/core/homepage/card/view/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/uc/browser/core/homepage/card/view/CardManagerLayout;


# direct methods
.method constructor <init>(Lcom/uc/browser/core/homepage/card/view/CardManagerLayout;I)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/core/homepage/card/view/j;->b:Lcom/uc/browser/core/homepage/card/view/CardManagerLayout;

    iput p2, p0, Lcom/uc/browser/core/homepage/card/view/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/j;->b:Lcom/uc/browser/core/homepage/card/view/CardManagerLayout;

    invoke-static {v0}, Lcom/uc/browser/core/homepage/card/view/CardManagerLayout;->e(Lcom/uc/browser/core/homepage/card/view/CardManagerLayout;)[Z

    move-result-object v0

    iget v1, p0, Lcom/uc/browser/core/homepage/card/view/j;->a:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
