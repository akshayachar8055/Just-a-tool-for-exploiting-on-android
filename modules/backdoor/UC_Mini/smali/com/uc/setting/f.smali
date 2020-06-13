.class final Lcom/uc/setting/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/setting/a;


# direct methods
.method constructor <init>(Lcom/uc/setting/a;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/setting/f;->a:Lcom/uc/setting/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/uc/setting/f;->a:Lcom/uc/setting/a;

    const-string v1, "reset"

    invoke-virtual {v0, v1}, Lcom/uc/setting/a;->b(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
