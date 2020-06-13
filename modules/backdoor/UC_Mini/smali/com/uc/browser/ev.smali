.class final Lcom/uc/browser/ev;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/uc/browser/eu;


# direct methods
.method constructor <init>(Lcom/uc/browser/eu;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/ev;->a:Lcom/uc/browser/eu;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/uc/browser/p;->f()Lcom/uc/browser/p;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/uc/browser/p;->l()Lcom/uc/browser/winmgr/e;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/uc/browser/winmgr/e;->a()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Lcom/uc/browser/winmgr/e;->a(I)Lcom/uc/browser/WindowUCWeb;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/uc/browser/WindowUCWeb;->S()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/uc/browser/p;->Y()Lcom/uc/browser/WindowUCWeb;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/uc/browser/WindowUCWeb;->R()F

    move-result v0

    const/high16 v1, 0x42a00000    # 80.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/uc/browser/ev;->a:Lcom/uc/browser/eu;

    invoke-static {v0}, Lcom/uc/browser/eu;->a(Lcom/uc/browser/eu;)Lcom/uc/widget/UCCustomProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/widget/UCCustomProgressBar;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method
