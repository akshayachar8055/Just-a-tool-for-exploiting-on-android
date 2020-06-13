.class final Lcom/uc/feedback/view/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/feedback/view/FeedbackSubmitView;


# direct methods
.method constructor <init>(Lcom/uc/feedback/view/FeedbackSubmitView;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/feedback/view/z;->a:Lcom/uc/feedback/view/FeedbackSubmitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/uc/feedback/view/z;->a:Lcom/uc/feedback/view/FeedbackSubmitView;

    invoke-static {v0, p2}, Lcom/uc/feedback/view/FeedbackSubmitView;->a(Lcom/uc/feedback/view/FeedbackSubmitView;I)I

    iget-object v0, p0, Lcom/uc/feedback/view/z;->a:Lcom/uc/feedback/view/FeedbackSubmitView;

    invoke-static {v0}, Lcom/uc/feedback/view/FeedbackSubmitView;->i(Lcom/uc/feedback/view/FeedbackSubmitView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/feedback/view/z;->a:Lcom/uc/feedback/view/FeedbackSubmitView;

    invoke-static {v1}, Lcom/uc/feedback/view/FeedbackSubmitView;->h(Lcom/uc/feedback/view/FeedbackSubmitView;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/uc/feedback/view/z;->a:Lcom/uc/feedback/view/FeedbackSubmitView;

    invoke-static {v0}, Lcom/uc/feedback/view/FeedbackSubmitView;->j(Lcom/uc/feedback/view/FeedbackSubmitView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uc/feedback/view/z;->a:Lcom/uc/feedback/view/FeedbackSubmitView;

    invoke-static {v0}, Lcom/uc/feedback/view/FeedbackSubmitView;->d(Lcom/uc/feedback/view/FeedbackSubmitView;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
