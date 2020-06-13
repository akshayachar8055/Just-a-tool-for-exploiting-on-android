.class Landroid/support/v7/widget/ak$b$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ak$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ak$b;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ak$b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ak$b$b;->a:Landroid/support/v7/widget/ak$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ak$b;Landroid/support/v7/widget/ak$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ak$b$b;-><init>(Landroid/support/v7/widget/ak$b;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ak$b$b;->a:Landroid/support/v7/widget/ak$b;

    invoke-static {v0}, Landroid/support/v7/widget/ak$b;->b(Landroid/support/v7/widget/ak$b;)V

    return-void
.end method
