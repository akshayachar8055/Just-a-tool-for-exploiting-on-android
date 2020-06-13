.class final Lcom/uc/plugin/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/uc/plugin/a;


# direct methods
.method constructor <init>(Lcom/uc/plugin/a;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/plugin/k;->a:Lcom/uc/plugin/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/uc/plugin/k;->a:Lcom/uc/plugin/a;

    invoke-static {v0}, Lcom/uc/plugin/a;->a(Lcom/uc/plugin/a;)V

    return-void
.end method
