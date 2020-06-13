.class final Lcom/uc/browser/ew;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/browser/UCSpinner;


# direct methods
.method constructor <init>(Lcom/uc/browser/UCSpinner;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/ew;->a:Lcom/uc/browser/UCSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/ew;->a:Lcom/uc/browser/UCSpinner;

    invoke-static {v0, p2}, Lcom/uc/browser/UCSpinner;->a(Lcom/uc/browser/UCSpinner;I)I

    iget-object v0, p0, Lcom/uc/browser/ew;->a:Lcom/uc/browser/UCSpinner;

    invoke-virtual {v0}, Lcom/uc/browser/UCSpinner;->invalidate()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
