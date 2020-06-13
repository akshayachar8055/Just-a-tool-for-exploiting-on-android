.class final Lcom/uc/feedback/view/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/uc/feedback/view/FeedbackDetailsView;


# direct methods
.method constructor <init>(Lcom/uc/feedback/view/FeedbackDetailsView;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/feedback/view/d;->a:Lcom/uc/feedback/view/FeedbackDetailsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/feedback/view/d;->a:Lcom/uc/feedback/view/FeedbackDetailsView;

    invoke-static {v0}, Lcom/uc/feedback/view/FeedbackDetailsView;->a(Lcom/uc/feedback/view/FeedbackDetailsView;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/uc/feedback/view/d;->a:Lcom/uc/feedback/view/FeedbackDetailsView;

    invoke-static {v0}, Lcom/uc/feedback/view/FeedbackDetailsView;->a(Lcom/uc/feedback/view/FeedbackDetailsView;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
