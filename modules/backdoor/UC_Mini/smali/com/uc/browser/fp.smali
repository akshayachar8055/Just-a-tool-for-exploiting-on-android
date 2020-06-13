.class final Lcom/uc/browser/fp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:I

.field private synthetic e:Lcom/uc/browser/fm;


# direct methods
.method constructor <init>(Lcom/uc/browser/fm;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/fp;->e:Lcom/uc/browser/fm;

    iput p2, p0, Lcom/uc/browser/fp;->a:I

    iput-object p3, p0, Lcom/uc/browser/fp;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/uc/browser/fp;->c:Ljava/lang/String;

    iput p5, p0, Lcom/uc/browser/fp;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/uc/browser/fp;->e:Lcom/uc/browser/fm;

    invoke-static {v0}, Lcom/uc/browser/fm;->a(Lcom/uc/browser/fm;)Lcom/uc/browser/fq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/fp;->e:Lcom/uc/browser/fm;

    invoke-static {v0}, Lcom/uc/browser/fm;->a(Lcom/uc/browser/fm;)Lcom/uc/browser/fq;

    move-result-object v0

    iget v1, p0, Lcom/uc/browser/fp;->a:I

    iget-object v2, p0, Lcom/uc/browser/fp;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/uc/browser/fp;->c:Ljava/lang/String;

    iget v4, p0, Lcom/uc/browser/fp;->d:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/uc/browser/fq;->a(ILjava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
