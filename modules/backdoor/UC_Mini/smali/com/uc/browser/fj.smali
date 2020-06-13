.class final Lcom/uc/browser/fj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic a:Lcom/uc/browser/fe;

.field private b:Landroid/view/SurfaceView;

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/uc/browser/fe;Landroid/view/SurfaceView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/uc/browser/fj;->a:Lcom/uc/browser/fe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/uc/browser/fj;->e:Z

    iput-object p2, p0, Lcom/uc/browser/fj;->b:Landroid/view/SurfaceView;

    iput-boolean v0, p0, Lcom/uc/browser/fj;->c:Z

    iput-boolean v0, p0, Lcom/uc/browser/fj;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/uc/browser/fe;Landroid/view/SurfaceView;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uc/browser/fj;-><init>(Lcom/uc/browser/fe;Landroid/view/SurfaceView;)V

    return-void
.end method

.method static synthetic a(Lcom/uc/browser/fj;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/uc/browser/fj;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/uc/browser/fj;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/uc/browser/fj;->c:Z

    return v0
.end method


# virtual methods
.method public final a()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/uc/browser/fj;->d:Z

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/uc/browser/fj;->b:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    iget-boolean v4, p0, Lcom/uc/browser/fj;->e:Z

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    iput-boolean v0, p0, Lcom/uc/browser/fj;->c:Z

    iget-object v1, p0, Lcom/uc/browser/fj;->b:Landroid/view/SurfaceView;

    new-instance v2, Lcom/uc/browser/fk;

    invoke-direct {v2, p0}, Lcom/uc/browser/fk;-><init>(Lcom/uc/browser/fj;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/SurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/uc/browser/fj;->a:Lcom/uc/browser/fe;

    iget-object v3, v3, Lcom/uc/browser/fe;->a:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean v1, p0, Lcom/uc/browser/fj;->c:Z

    :try_start_1
    iget-object v2, p0, Lcom/uc/browser/fj;->a:Lcom/uc/browser/fe;

    iget-object v2, v2, Lcom/uc/browser/fe;->a:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iput-boolean v0, p0, Lcom/uc/browser/fj;->d:Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {v2, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/uc/browser/fj;->b:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iput-boolean v1, p0, Lcom/uc/browser/fj;->c:Z

    :try_start_0
    iget-object v0, p0, Lcom/uc/browser/fj;->a:Lcom/uc/browser/fe;

    iget-object v0, v0, Lcom/uc/browser/fe;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-boolean v1, p0, Lcom/uc/browser/fj;->d:Z

    iput-boolean v1, p0, Lcom/uc/browser/fj;->e:Z

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-boolean v0, p0, Lcom/uc/browser/fj;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/fj;->a:Lcom/uc/browser/fe;

    invoke-static {v0}, Lcom/uc/browser/fe;->a(Lcom/uc/browser/fe;)Lcom/uc/browser/fh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/browser/fh;->c()Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uc/browser/fj;->e:Z

    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/browser/fj;->e:Z

    iget-object v0, p0, Lcom/uc/browser/fj;->a:Lcom/uc/browser/fe;

    invoke-static {v0}, Lcom/uc/browser/fe;->a(Lcom/uc/browser/fe;)Lcom/uc/browser/fh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/browser/fh;->d()Z

    return-void
.end method
