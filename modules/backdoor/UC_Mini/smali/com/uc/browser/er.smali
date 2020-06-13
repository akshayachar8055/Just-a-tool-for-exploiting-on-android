.class final Lcom/uc/browser/er;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/uc/browser/UCEditText;


# direct methods
.method constructor <init>(Lcom/uc/browser/UCEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/er;->a:Lcom/uc/browser/UCEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/er;->a:Lcom/uc/browser/UCEditText;

    iget-object v1, p0, Lcom/uc/browser/er;->a:Lcom/uc/browser/UCEditText;

    invoke-virtual {v1}, Lcom/uc/browser/UCEditText;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Lcom/uc/browser/er;->a:Lcom/uc/browser/UCEditText;

    invoke-virtual {v2}, Lcom/uc/browser/UCEditText;->getSelectionEnd()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/uc/browser/UCEditText;->a(Lcom/uc/browser/UCEditText;II)V

    :cond_0
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
