.class final Lcom/uc/feedback/view/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/feedback/view/FeedbackDetailsView;


# direct methods
.method constructor <init>(Lcom/uc/feedback/view/FeedbackDetailsView;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/feedback/view/f;->a:Lcom/uc/feedback/view/FeedbackDetailsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/uc/feedback/view/f;->a:Lcom/uc/feedback/view/FeedbackDetailsView;

    invoke-virtual {v0}, Lcom/uc/feedback/view/FeedbackDetailsView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/feedback/view/f;->a:Lcom/uc/feedback/view/FeedbackDetailsView;

    invoke-static {v0, v1}, Lcom/google/android/gcm/a;->a(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/uc/feedback/view/f;->a:Lcom/uc/feedback/view/FeedbackDetailsView;

    invoke-static {v0}, Lcom/uc/feedback/view/FeedbackDetailsView;->b(Lcom/uc/feedback/view/FeedbackDetailsView;)Lcom/uc/feedback/view/r;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/feedback/view/f;->a:Lcom/uc/feedback/view/FeedbackDetailsView;

    invoke-static {v0}, Lcom/uc/feedback/view/FeedbackDetailsView;->b(Lcom/uc/feedback/view/FeedbackDetailsView;)Lcom/uc/feedback/view/r;

    move-result-object v0

    const/4 v1, -0x4

    invoke-interface {v0, v1}, Lcom/uc/feedback/view/r;->b(I)V

    :cond_0
    return-void
.end method
