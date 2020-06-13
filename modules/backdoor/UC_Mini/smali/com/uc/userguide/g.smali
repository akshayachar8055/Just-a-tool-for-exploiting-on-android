.class final Lcom/uc/userguide/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/userguide/e;


# direct methods
.method constructor <init>(Lcom/uc/userguide/e;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/userguide/g;->a:Lcom/uc/userguide/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/uc/userguide/g;->a:Lcom/uc/userguide/e;

    invoke-static {v0}, Lcom/uc/userguide/e;->c(Lcom/uc/userguide/e;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/userguide/g;->a:Lcom/uc/userguide/e;

    invoke-static {v0}, Lcom/uc/userguide/e;->c(Lcom/uc/userguide/e;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/uc/userguide/g;->a:Lcom/uc/userguide/e;

    invoke-static {v0}, Lcom/uc/userguide/e;->d(Lcom/uc/userguide/e;)V

    return-void
.end method
