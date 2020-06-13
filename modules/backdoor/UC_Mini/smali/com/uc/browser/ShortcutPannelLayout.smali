.class public Lcom/uc/browser/ShortcutPannelLayout;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Lcom/uc/browser/ee;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/uc/browser/ShortcutPannelLayout;->a:Lcom/uc/browser/ee;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/ShortcutPannelLayout;->a:Lcom/uc/browser/ee;

    invoke-virtual {v0}, Lcom/uc/browser/ee;->a()V

    :cond_0
    return-void
.end method

.method public setDialog(Lcom/uc/browser/ee;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/ShortcutPannelLayout;->a:Lcom/uc/browser/ee;

    return-void
.end method
