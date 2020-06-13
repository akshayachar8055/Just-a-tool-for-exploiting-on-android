.class public Lcom/uc/widget/SettingRelativeLayout;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Landroid/widget/CompoundButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/widget/SettingRelativeLayout;->a:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Lcom/uc/widget/SettingRelativeLayout;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/widget/SettingRelativeLayout;->a:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Lcom/uc/widget/SettingRelativeLayout;->a()V

    return-void
.end method

.method private a(Landroid/view/View;)Landroid/widget/CompoundButton;
    .locals 3

    instance-of v0, p1, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/CompoundButton;

    :goto_0
    return-object p1

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uc/widget/SettingRelativeLayout;->a(Landroid/view/View;)Landroid/widget/CompoundButton;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/uc/widget/SettingRelativeLayout;)Landroid/widget/CompoundButton;
    .locals 1

    iget-object v0, p0, Lcom/uc/widget/SettingRelativeLayout;->a:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method private a()V
    .locals 2

    new-instance v0, Lcom/uc/widget/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/uc/widget/d;-><init>(Lcom/uc/widget/SettingRelativeLayout;B)V

    invoke-virtual {p0, v0}, Lcom/uc/widget/SettingRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/uc/widget/SettingRelativeLayout;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/uc/widget/SettingRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/uc/widget/SettingRelativeLayout;->a(Landroid/view/View;)Landroid/widget/CompoundButton;

    move-result-object v2

    if-eqz v2, :cond_1

    iput-object v2, p0, Lcom/uc/widget/SettingRelativeLayout;->a:Landroid/widget/CompoundButton;

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setOnPreformClickListener$2db84ca6(Ll;)V
    .locals 0

    return-void
.end method
