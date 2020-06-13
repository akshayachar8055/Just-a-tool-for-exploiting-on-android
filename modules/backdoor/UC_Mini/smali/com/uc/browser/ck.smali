.class public final Lcom/uc/browser/ck;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field private static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    sput-boolean v1, Lcom/uc/browser/ck;->b:Z

    sput-boolean v1, Lcom/uc/browser/ck;->c:Z

    sput-boolean v0, Lcom/uc/browser/ck;->d:Z

    sput-boolean v0, Lcom/uc/browser/ck;->e:Z

    sput-boolean v0, Lcom/uc/browser/ck;->a:Z

    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 1

    sget-boolean v0, Lcom/uc/browser/ck;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/uc/browser/ck;->c(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/graphics/Canvas;)Z
    .locals 4

    const/4 v1, 0x0

    sget-boolean v0, Lcom/uc/browser/ck;->c:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/uc/browser/ck;->b:Z

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-le v0, v2, :cond_2

    :try_start_0
    const-class v0, Landroid/graphics/Canvas;

    const-string v2, "isHardwareAccelerated"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    sget-boolean v2, Lcom/uc/browser/ck;->c:Z

    if-eqz v2, :cond_1

    sput-boolean v0, Lcom/uc/browser/ck;->b:Z

    sput-boolean v1, Lcom/uc/browser/ck;->c:Z

    :cond_1
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static b(Landroid/view/View;)V
    .locals 2

    sget-boolean v0, Lcom/uc/browser/ck;->e:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/uc/browser/ck;->d:Z

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/uc/browser/ck;->c(Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    sput-boolean v0, Lcom/uc/browser/ck;->d:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/browser/ck;->e:Z

    sget-boolean v0, Lcom/uc/browser/ck;->d:Z

    goto :goto_0
.end method

.method public static c(Landroid/view/View;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    invoke-virtual {p0, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "LAYER_TYPE_SOFTWARE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    if-eqz p0, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Paint;

    aput-object v4, v2, v3

    const-string v3, "setLayerType"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v1, 0x1

    const/4 v3, 0x0

    aput-object v3, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sput-boolean v5, Lcom/uc/browser/ck;->b:Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcom/uc/browser/ck;->b:Z

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/browser/ck;->b:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
