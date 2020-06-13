.class final Lcom/uc/browser/fl;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Z

.field private synthetic c:Lcom/uc/browser/fe;


# direct methods
.method private constructor <init>(Lcom/uc/browser/fe;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/uc/browser/fl;->c:Lcom/uc/browser/fe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/uc/browser/fl;->a:Z

    iput-boolean v0, p0, Lcom/uc/browser/fl;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/uc/browser/fe;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uc/browser/fl;-><init>(Lcom/uc/browser/fe;)V

    return-void
.end method

.method static synthetic a(Lcom/uc/browser/fl;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/browser/fl;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/uc/browser/fl;)V
    .locals 1

    iget-boolean v0, p0, Lcom/uc/browser/fl;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/browser/fl;->a:Z

    invoke-direct {p0}, Lcom/uc/browser/fl;->b()Z

    :cond_0
    return-void
.end method

.method private b()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/uc/browser/fl;->a:Z

    :try_start_0
    iget-object v2, p0, Lcom/uc/browser/fl;->c:Lcom/uc/browser/fe;

    iget-object v2, v2, Lcom/uc/browser/fe;->a:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/uc/browser/fl;->c:Lcom/uc/browser/fe;

    invoke-static {v3}, Lcom/uc/browser/fe;->d(Lcom/uc/browser/fe;)Lcom/uc/browser/fi;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/uc/browser/fl;->c:Lcom/uc/browser/fe;

    invoke-static {v5}, Lcom/uc/browser/fe;->d(Lcom/uc/browser/fe;)Lcom/uc/browser/fi;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean v0, p0, Lcom/uc/browser/fl;->b:Z

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/uc/browser/fl;->b:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/uc/browser/fl;->c:Lcom/uc/browser/fe;

    iget-object v1, v1, Lcom/uc/browser/fe;->a:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/uc/browser/fl;->c:Lcom/uc/browser/fe;

    invoke-static {v2}, Lcom/uc/browser/fe;->d(Lcom/uc/browser/fe;)Lcom/uc/browser/fi;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput-boolean v0, p0, Lcom/uc/browser/fl;->a:Z

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method
