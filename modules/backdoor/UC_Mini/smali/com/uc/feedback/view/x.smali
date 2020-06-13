.class final Lcom/uc/feedback/view/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/feedback/view/FeedbackSubmitView;


# direct methods
.method constructor <init>(Lcom/uc/feedback/view/FeedbackSubmitView;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/feedback/view/x;->a:Lcom/uc/feedback/view/FeedbackSubmitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/uc/feedback/view/x;->a:Lcom/uc/feedback/view/FeedbackSubmitView;

    invoke-static {v0}, Lcom/uc/feedback/view/FeedbackSubmitView;->a(Lcom/uc/feedback/view/FeedbackSubmitView;)Lcom/uc/feedback/view/r;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/feedback/view/x;->a:Lcom/uc/feedback/view/FeedbackSubmitView;

    invoke-static {v0}, Lcom/uc/feedback/view/FeedbackSubmitView;->a(Lcom/uc/feedback/view/FeedbackSubmitView;)Lcom/uc/feedback/view/r;

    move-result-object v0

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Lcom/uc/feedback/view/r;->b(I)V

    :cond_0
    return-void
.end method
