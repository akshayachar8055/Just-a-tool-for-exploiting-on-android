.class final Lcom/uc/widget/tabbar/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/uc/widget/tabbar/TabPager;


# direct methods
.method constructor <init>(Lcom/uc/widget/tabbar/TabPager;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/widget/tabbar/e;->a:Lcom/uc/widget/tabbar/TabPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/uc/widget/tabbar/e;->a:Lcom/uc/widget/tabbar/TabPager;

    invoke-virtual {v0, v1, v1}, Lcom/uc/widget/tabbar/TabPager;->a(IZ)V

    return-void
.end method
