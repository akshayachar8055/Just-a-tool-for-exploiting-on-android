.class final Lcom/uc/browser/fk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/uc/browser/fj;


# direct methods
.method constructor <init>(Lcom/uc/browser/fj;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/fk;->a:Lcom/uc/browser/fj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/uc/browser/fk;->a:Lcom/uc/browser/fj;

    iget-object v0, v0, Lcom/uc/browser/fj;->a:Lcom/uc/browser/fe;

    invoke-static {v0}, Lcom/uc/browser/fe;->a(Lcom/uc/browser/fe;)Lcom/uc/browser/fh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/browser/fh;->c()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
