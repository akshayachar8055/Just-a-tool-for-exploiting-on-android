.class final Lcom/uc/browser/dg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/uc/browser/de;


# direct methods
.method constructor <init>(Lcom/uc/browser/de;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/dg;->c:Lcom/uc/browser/de;

    iput p2, p0, Lcom/uc/browser/dg;->a:I

    iput-object p3, p0, Lcom/uc/browser/dg;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/uc/browser/dg;->c:Lcom/uc/browser/de;

    invoke-static {v0}, Lcom/uc/browser/de;->a(Lcom/uc/browser/de;)Lcom/uc/browser/dh;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/dg;->c:Lcom/uc/browser/de;

    invoke-static {v0}, Lcom/uc/browser/de;->a(Lcom/uc/browser/de;)Lcom/uc/browser/dh;

    move-result-object v0

    iget v1, p0, Lcom/uc/browser/dg;->a:I

    iget-object v2, p0, Lcom/uc/browser/dg;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/uc/browser/dh;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
