.class final Lcom/uc/browser/core/homepage/card/view/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Landroid/widget/CompoundButton;

.field private synthetic c:Lcom/uc/browser/core/homepage/card/view/CardManagerLayout;


# direct methods
.method constructor <init>(Lcom/uc/browser/core/homepage/card/view/CardManagerLayout;ILandroid/widget/CompoundButton;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/core/homepage/card/view/k;->c:Lcom/uc/browser/core/homepage/card/view/CardManagerLayout;

    iput p2, p0, Lcom/uc/browser/core/homepage/card/view/k;->a:I

    iput-object p3, p0, Lcom/uc/browser/core/homepage/card/view/k;->b:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/k;->c:Lcom/uc/browser/core/homepage/card/view/CardManagerLayout;

    invoke-static {v0}, Lcom/uc/browser/core/homepage/card/view/CardManagerLayout;->e(Lcom/uc/browser/core/homepage/card/view/CardManagerLayout;)[Z

    move-result-object v0

    iget v1, p0, Lcom/uc/browser/core/homepage/card/view/k;->a:I

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/k;->b:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method
