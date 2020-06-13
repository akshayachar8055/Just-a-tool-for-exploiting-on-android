.class final Lcom/uc/feedback/view/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/feedback/view/FeedbackSubmitView;


# direct methods
.method constructor <init>(Lcom/uc/feedback/view/FeedbackSubmitView;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/feedback/view/s;->a:Lcom/uc/feedback/view/FeedbackSubmitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/uc/feedback/view/s;->a:Lcom/uc/feedback/view/FeedbackSubmitView;

    invoke-virtual {v0}, Lcom/uc/feedback/view/FeedbackSubmitView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/feedback/view/s;->a:Lcom/uc/feedback/view/FeedbackSubmitView;

    invoke-static {v0, v1}, Lcom/google/android/gcm/a;->a(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/uc/feedback/view/s;->a:Lcom/uc/feedback/view/FeedbackSubmitView;

    invoke-static {v0}, Lcom/uc/feedback/view/FeedbackSubmitView;->a(Lcom/uc/feedback/view/FeedbackSubmitView;)Lcom/uc/feedback/view/r;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/feedback/view/s;->a:Lcom/uc/feedback/view/FeedbackSubmitView;

    invoke-static {v0}, Lcom/uc/feedback/view/FeedbackSubmitView;->a(Lcom/uc/feedback/view/FeedbackSubmitView;)Lcom/uc/feedback/view/r;

    move-result-object v0

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Lcom/uc/feedback/view/r;->b(I)V

    :cond_0
    return-void
.end method
