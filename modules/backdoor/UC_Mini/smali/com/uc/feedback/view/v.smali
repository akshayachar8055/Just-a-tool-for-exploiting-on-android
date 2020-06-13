.class final Lcom/uc/feedback/view/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/uc/feedback/view/u;


# direct methods
.method constructor <init>(Lcom/uc/feedback/view/u;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/feedback/view/v;->a:Lcom/uc/feedback/view/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/uc/feedback/view/v;->a:Lcom/uc/feedback/view/u;

    iget-object v0, v0, Lcom/uc/feedback/view/u;->a:Lcom/uc/feedback/view/FeedbackSubmitView;

    invoke-static {v0}, Lcom/uc/feedback/view/FeedbackSubmitView;->e(Lcom/uc/feedback/view/FeedbackSubmitView;)V

    iget-object v0, p0, Lcom/uc/feedback/view/v;->a:Lcom/uc/feedback/view/u;

    iget-object v0, v0, Lcom/uc/feedback/view/u;->a:Lcom/uc/feedback/view/FeedbackSubmitView;

    invoke-static {v0}, Lcom/uc/feedback/view/FeedbackSubmitView;->f(Lcom/uc/feedback/view/FeedbackSubmitView;)V

    return-void
.end method
