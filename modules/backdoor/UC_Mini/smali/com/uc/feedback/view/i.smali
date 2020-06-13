.class final Lcom/uc/feedback/view/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/uc/feedback/view/h;


# direct methods
.method constructor <init>(Lcom/uc/feedback/view/h;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/feedback/view/i;->a:Lcom/uc/feedback/view/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/uc/feedback/view/i;->a:Lcom/uc/feedback/view/h;

    iget-object v0, v0, Lcom/uc/feedback/view/h;->a:Lcom/uc/feedback/view/g;

    iget-object v0, v0, Lcom/uc/feedback/view/g;->a:Lcom/uc/feedback/view/FeedbackDetailsView;

    invoke-static {v0}, Lcom/uc/feedback/view/FeedbackDetailsView;->f(Lcom/uc/feedback/view/FeedbackDetailsView;)V

    return-void
.end method
