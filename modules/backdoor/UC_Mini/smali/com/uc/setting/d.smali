.class final Lcom/uc/setting/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/setting/v;

.field private synthetic b:Lcom/uc/setting/a;


# direct methods
.method constructor <init>(Lcom/uc/setting/a;Lcom/uc/setting/v;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/setting/d;->b:Lcom/uc/setting/a;

    iput-object p2, p0, Lcom/uc/setting/d;->a:Lcom/uc/setting/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/uc/setting/d;->a:Lcom/uc/setting/v;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/uc/setting/v;->a(Z)V

    iget-object v0, p0, Lcom/uc/setting/d;->b:Lcom/uc/setting/a;

    invoke-static {v0}, Lcom/uc/setting/a;->a(Lcom/uc/setting/a;)Lcom/uc/setting/SettingScreenPageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/setting/SettingScreenPageView;->a()V

    return-void
.end method
