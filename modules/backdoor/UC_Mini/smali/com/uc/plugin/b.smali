.class final Lcom/uc/plugin/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/plugin/a;


# direct methods
.method constructor <init>(Lcom/uc/plugin/a;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/plugin/b;->a:Lcom/uc/plugin/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/uc/plugin/b;->a:Lcom/uc/plugin/a;

    invoke-virtual {v0, p1}, Lcom/uc/plugin/a;->a(Landroid/view/View;)V

    return-void
.end method
