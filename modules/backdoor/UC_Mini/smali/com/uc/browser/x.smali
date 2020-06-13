.class final Lcom/uc/browser/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/uc/browser/p;


# direct methods
.method constructor <init>(Lcom/uc/browser/p;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/x;->b:Lcom/uc/browser/p;

    iput-object p2, p0, Lcom/uc/browser/x;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/uc/browser/x;->b:Lcom/uc/browser/p;

    iget-object v1, p0, Lcom/uc/browser/x;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/uc/browser/p;->c(Ljava/lang/String;)V

    return-void
.end method
