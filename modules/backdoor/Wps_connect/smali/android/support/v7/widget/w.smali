.class public Landroid/support/v7/widget/w;
.super Landroid/widget/SeekBar;


# instance fields
.field private a:Landroid/support/v7/widget/x;

.field private b:Landroid/support/v7/widget/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroid/support/v7/b/a$a;->seekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Landroid/support/v7/widget/m;->a()Landroid/support/v7/widget/m;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/w;->b:Landroid/support/v7/widget/m;

    new-instance v0, Landroid/support/v7/widget/x;

    iget-object v1, p0, Landroid/support/v7/widget/w;->b:Landroid/support/v7/widget/m;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/x;-><init>(Landroid/widget/SeekBar;Landroid/support/v7/widget/m;)V

    iput-object v0, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/x;

    iget-object v0, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/x;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/x;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method
