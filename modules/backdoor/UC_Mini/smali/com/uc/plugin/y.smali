.class public final Lcom/uc/plugin/y;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Vector;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/uc/plugin/y;->a:Ljava/util/Vector;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/plugin/y;->b:Z

    return-void
.end method

.method public static a()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/plugin/y;->b:Z

    sget-object v0, Lcom/uc/plugin/y;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/plugin/a;

    invoke-virtual {v0}, Lcom/uc/plugin/a;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Lcom/uc/plugin/a;)Z
    .locals 1

    sget-object v0, Lcom/uc/plugin/y;->a:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/uc/plugin/y;->b:Z

    return v0
.end method

.method public static b()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/plugin/y;->b:Z

    sget-object v0, Lcom/uc/plugin/y;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/plugin/a;

    invoke-virtual {v0}, Lcom/uc/plugin/a;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b(Lcom/uc/plugin/a;)V
    .locals 1

    sget-object v0, Lcom/uc/plugin/y;->a:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    return-void
.end method
