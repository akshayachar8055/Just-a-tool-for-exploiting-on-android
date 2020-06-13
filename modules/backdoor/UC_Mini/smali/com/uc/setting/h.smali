.class final Lcom/uc/setting/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:[Ljava/lang/Object;

.field private synthetic c:Lcom/uc/setting/o;

.field private synthetic d:[Ljava/lang/String;

.field private synthetic e:Lcom/uc/setting/a;


# direct methods
.method constructor <init>(Lcom/uc/setting/a;Ljava/lang/String;[Ljava/lang/Object;Lcom/uc/setting/o;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/setting/h;->e:Lcom/uc/setting/a;

    iput-object p2, p0, Lcom/uc/setting/h;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/uc/setting/h;->b:[Ljava/lang/Object;

    iput-object p4, p0, Lcom/uc/setting/h;->c:Lcom/uc/setting/o;

    iput-object p5, p0, Lcom/uc/setting/h;->d:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/uc/setting/h;->e:Lcom/uc/setting/a;

    iget-object v1, p0, Lcom/uc/setting/h;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/uc/setting/h;->b:[Ljava/lang/Object;

    aget-object v2, v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/uc/setting/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/uc/setting/h;->c:Lcom/uc/setting/o;

    iget-object v1, p0, Lcom/uc/setting/h;->d:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/uc/setting/o;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uc/setting/h;->e:Lcom/uc/setting/a;

    invoke-static {v0}, Lcom/uc/setting/a;->a(Lcom/uc/setting/a;)Lcom/uc/setting/SettingScreenPageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/setting/h;->e:Lcom/uc/setting/a;

    invoke-static {v0}, Lcom/uc/setting/a;->a(Lcom/uc/setting/a;)Lcom/uc/setting/SettingScreenPageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/setting/SettingScreenPageView;->a()V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
