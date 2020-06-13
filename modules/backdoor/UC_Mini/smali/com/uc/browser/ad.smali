.class final Lcom/uc/browser/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private synthetic a:Lcom/uc/browser/p;


# direct methods
.method constructor <init>(Lcom/uc/browser/p;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/ad;->a:Lcom/uc/browser/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/uc/browser/ad;->a:Lcom/uc/browser/p;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/uc/browser/p;->e:Z

    invoke-static {}, Lcom/uc/browser/p;->an()V

    return-void
.end method
