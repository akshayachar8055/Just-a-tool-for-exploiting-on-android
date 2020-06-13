.class final Lcom/uc/browser/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/browser/ActivityCamera;


# direct methods
.method constructor <init>(Lcom/uc/browser/ActivityCamera;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/d;->a:Lcom/uc/browser/ActivityCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/uc/browser/d;->a:Lcom/uc/browser/ActivityCamera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/uc/browser/ActivityCamera;->setResult(I)V

    iget-object v0, p0, Lcom/uc/browser/d;->a:Lcom/uc/browser/ActivityCamera;

    invoke-virtual {v0}, Lcom/uc/browser/ActivityCamera;->finish()V

    return-void
.end method
