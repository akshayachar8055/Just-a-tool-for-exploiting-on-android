.class final Lcom/uc/widget/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/widget/SettingRelativeLayout;


# direct methods
.method private constructor <init>(Lcom/uc/widget/SettingRelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/widget/d;->a:Lcom/uc/widget/SettingRelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uc/widget/SettingRelativeLayout;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uc/widget/d;-><init>(Lcom/uc/widget/SettingRelativeLayout;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/uc/widget/d;->a:Lcom/uc/widget/SettingRelativeLayout;

    invoke-static {v0}, Lcom/uc/widget/SettingRelativeLayout;->a(Lcom/uc/widget/SettingRelativeLayout;)Landroid/widget/CompoundButton;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/widget/d;->a:Lcom/uc/widget/SettingRelativeLayout;

    invoke-static {v0}, Lcom/uc/widget/SettingRelativeLayout;->a(Lcom/uc/widget/SettingRelativeLayout;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->performClick()Z

    :cond_0
    return-void
.end method
