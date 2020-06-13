.class final Lcom/uc/browser/homepage/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/uc/browser/homepage/a;


# direct methods
.method constructor <init>(Lcom/uc/browser/homepage/a;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/homepage/i;->a:Lcom/uc/browser/homepage/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/homepage/i;->a:Lcom/uc/browser/homepage/a;

    invoke-static {v0}, Lcom/uc/browser/homepage/a;->a(Lcom/uc/browser/homepage/a;)V

    return-void
.end method
