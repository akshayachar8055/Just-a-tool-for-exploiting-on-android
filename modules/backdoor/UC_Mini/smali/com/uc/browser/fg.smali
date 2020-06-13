.class final Lcom/uc/browser/fg;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private synthetic b:Lcom/uc/browser/fe;


# direct methods
.method private constructor <init>(Lcom/uc/browser/fe;)V
    .locals 1

    iput-object p1, p0, Lcom/uc/browser/fg;->b:Lcom/uc/browser/fe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/uc/browser/fg;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/uc/browser/fe;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uc/browser/fg;-><init>(Lcom/uc/browser/fe;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    array-length v2, v3

    if-lez v2, :cond_2

    array-length v5, v3

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v6, v3, v2

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/graphics/Point;

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    aget-object v6, v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v7, v8, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v3

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v5, v0, Landroid/graphics/Point;->x:I

    const/16 v6, 0x320

    if-lt v5, v6, :cond_4

    if-eqz v1, :cond_1

    iget v5, v1, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->x:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-le v5, v6, :cond_4

    :cond_1
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_3
    if-nez v0, :cond_3

    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x140

    const/16 v2, 0xf0

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method static synthetic a(Lcom/uc/browser/fg;)Z
    .locals 1

    invoke-direct {p0}, Lcom/uc/browser/fg;->d()Z

    move-result v0

    return v0
.end method

.method private d()Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/uc/browser/fg;->b:Lcom/uc/browser/fe;

    iget-object v0, v0, Lcom/uc/browser/fe;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "picture-size-values"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/uc/browser/fg;->a(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    :cond_0
    const/16 v1, 0x140

    const/16 v2, 0xf0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    :try_start_0
    iget-object v1, p0, Lcom/uc/browser/fg;->b:Lcom/uc/browser/fe;

    iget-object v1, v1, Lcom/uc/browser/fe;->a:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v3

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/uc/browser/fg;->a:I

    return v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/uc/browser/fg;->a:I

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/uc/browser/fg;->a:I

    return-void
.end method
