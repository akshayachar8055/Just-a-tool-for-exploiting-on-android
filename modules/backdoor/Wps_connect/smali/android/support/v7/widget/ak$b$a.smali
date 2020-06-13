.class Landroid/support/v7/widget/ak$b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ak$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ak$b;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ak$b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ak$b$a;->a:Landroid/support/v7/widget/ak$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ak$b;Landroid/support/v7/widget/ak$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ak$b$a;-><init>(Landroid/support/v7/widget/ak$b;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ak$b$a;->a:Landroid/support/v7/widget/ak$b;

    invoke-static {v0}, Landroid/support/v7/widget/ak$b;->a(Landroid/support/v7/widget/ak$b;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method
