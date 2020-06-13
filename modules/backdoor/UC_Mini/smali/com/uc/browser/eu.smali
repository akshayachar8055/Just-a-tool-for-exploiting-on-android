.class public final Lcom/uc/browser/eu;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Timer;

.field private b:Lcom/uc/widget/UCCustomProgressBar;


# direct methods
.method public constructor <init>(Lcom/uc/widget/UCCustomProgressBar;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uc/browser/eu;->b:Lcom/uc/widget/UCCustomProgressBar;

    iget-object v0, p0, Lcom/uc/browser/eu;->a:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/uc/browser/eu;->a:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/uc/browser/eu;->a:Ljava/util/Timer;

    new-instance v1, Lcom/uc/browser/ev;

    invoke-direct {v1, p0}, Lcom/uc/browser/ev;-><init>(Lcom/uc/browser/eu;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1e

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method static synthetic a(Lcom/uc/browser/eu;)Lcom/uc/widget/UCCustomProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/eu;->b:Lcom/uc/widget/UCCustomProgressBar;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/eu;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/eu;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/browser/eu;->a:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method public final a(Lcom/uc/widget/UCCustomProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/eu;->b:Lcom/uc/widget/UCCustomProgressBar;

    return-void
.end method
