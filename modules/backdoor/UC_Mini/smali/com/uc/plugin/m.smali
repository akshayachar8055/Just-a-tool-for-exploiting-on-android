.class final Lcom/uc/plugin/m;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/reflect/Method;

.field c:Z

.field final synthetic d:Lcom/uc/plugin/a;

.field private e:Ljava/lang/reflect/Method;

.field private f:Ljava/lang/reflect/Method;

.field private g:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/uc/plugin/a;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 1

    iput-object p1, p0, Lcom/uc/plugin/m;->d:Lcom/uc/plugin/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/plugin/m;->c:Z

    iput-object p2, p0, Lcom/uc/plugin/m;->g:Ljava/lang/Class;

    iput-object p3, p0, Lcom/uc/plugin/m;->b:Ljava/lang/reflect/Method;

    iput-object p4, p0, Lcom/uc/plugin/m;->e:Ljava/lang/reflect/Method;

    iput-object p5, p0, Lcom/uc/plugin/m;->f:Ljava/lang/reflect/Method;

    :try_start_0
    iget-object v0, p0, Lcom/uc/plugin/m;->g:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/plugin/m;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method final a()Landroid/view/View;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/uc/plugin/m;->e:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/uc/plugin/m;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method final a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/uc/plugin/m;->f:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/uc/plugin/m;->a:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method
