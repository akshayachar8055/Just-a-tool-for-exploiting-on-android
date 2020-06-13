.class final Lcom/uc/browser/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/uc/browser/ActivityBrowser;


# direct methods
.method constructor <init>(Lcom/uc/browser/ActivityBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/b;->a:Lcom/uc/browser/ActivityBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/b;->a:Lcom/uc/browser/ActivityBrowser;

    invoke-static {v0}, Lcom/uc/browser/ActivityBrowser;->a(Lcom/uc/browser/ActivityBrowser;)V

    return-void
.end method
