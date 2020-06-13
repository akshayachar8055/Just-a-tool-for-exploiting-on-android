.class final Lcom/uc/feedback/view/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/uc/feedback/view/FeedbackSubmitView;


# direct methods
.method constructor <init>(Lcom/uc/feedback/view/FeedbackSubmitView;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/feedback/view/t;->a:Lcom/uc/feedback/view/FeedbackSubmitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/uc/feedback/view/t;->a:Lcom/uc/feedback/view/FeedbackSubmitView;

    invoke-virtual {v0}, Lcom/uc/feedback/view/FeedbackSubmitView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/feedback/view/t;->a:Lcom/uc/feedback/view/FeedbackSubmitView;

    invoke-static {v0, v1}, Lcom/google/android/gcm/a;->a(Landroid/content/Context;Landroid/view/View;)V

    const/4 v0, 0x0

    return v0
.end method
