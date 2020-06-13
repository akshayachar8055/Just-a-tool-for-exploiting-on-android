.class final Lcom/uc/browser/bm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/uc/browser/p;


# direct methods
.method constructor <init>(Lcom/uc/browser/p;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/bm;->a:Lcom/uc/browser/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/bm;->a:Lcom/uc/browser/p;

    invoke-static {v0}, Lcom/uc/browser/p;->k(Lcom/uc/browser/p;)V

    return-void
.end method
