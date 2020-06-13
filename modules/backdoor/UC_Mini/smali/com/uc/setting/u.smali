.class final Lcom/uc/setting/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/setting/SettingScreenPageView;


# direct methods
.method constructor <init>(Lcom/uc/setting/SettingScreenPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/setting/u;->a:Lcom/uc/setting/SettingScreenPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/uc/setting/u;->a:Lcom/uc/setting/SettingScreenPageView;

    invoke-static {v0}, Lcom/uc/setting/SettingScreenPageView;->a(Lcom/uc/setting/SettingScreenPageView;)Lcom/uc/setting/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/setting/u;->a:Lcom/uc/setting/SettingScreenPageView;

    invoke-static {v0}, Lcom/uc/setting/SettingScreenPageView;->b(Lcom/uc/setting/SettingScreenPageView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uc/setting/u;->a:Lcom/uc/setting/SettingScreenPageView;

    invoke-static {v0}, Lcom/uc/setting/SettingScreenPageView;->a(Lcom/uc/setting/SettingScreenPageView;)Lcom/uc/setting/s;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/setting/u;->a:Lcom/uc/setting/SettingScreenPageView;

    invoke-static {v1}, Lcom/uc/setting/SettingScreenPageView;->b(Lcom/uc/setting/SettingScreenPageView;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/uc/setting/s;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
