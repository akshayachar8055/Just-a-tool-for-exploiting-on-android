.class public final Lcom/uc/browser/fe;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/hardware/Camera;

.field private b:Lcom/uc/browser/fh;

.field private c:Lcom/uc/browser/fg;

.field private d:Lcom/uc/browser/fj;

.field private e:Lcom/uc/browser/fi;

.field private f:Lcom/uc/browser/fl;


# direct methods
.method private constructor <init>(Landroid/view/SurfaceView;Lcom/uc/browser/ff;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/uc/browser/fi;

    invoke-direct {v0, p0, p2, v2}, Lcom/uc/browser/fi;-><init>(Lcom/uc/browser/fe;Lcom/uc/browser/ff;B)V

    iput-object v0, p0, Lcom/uc/browser/fe;->e:Lcom/uc/browser/fi;

    new-instance v0, Lcom/uc/browser/fl;

    invoke-direct {v0, p0, v2}, Lcom/uc/browser/fl;-><init>(Lcom/uc/browser/fe;B)V

    iput-object v0, p0, Lcom/uc/browser/fe;->f:Lcom/uc/browser/fl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    new-instance v0, Lcom/uc/browser/fj;

    invoke-direct {v0, p0, p1, v2}, Lcom/uc/browser/fj;-><init>(Lcom/uc/browser/fe;Landroid/view/SurfaceView;B)V

    iput-object v0, p0, Lcom/uc/browser/fe;->d:Lcom/uc/browser/fj;

    :goto_0
    new-instance v0, Lcom/uc/browser/fg;

    invoke-direct {v0, p0, v2}, Lcom/uc/browser/fg;-><init>(Lcom/uc/browser/fe;B)V

    iput-object v0, p0, Lcom/uc/browser/fe;->c:Lcom/uc/browser/fg;

    new-instance v0, Lcom/uc/browser/fh;

    invoke-direct {v0, p0, v2}, Lcom/uc/browser/fh;-><init>(Lcom/uc/browser/fe;B)V

    iput-object v0, p0, Lcom/uc/browser/fe;->b:Lcom/uc/browser/fh;

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/browser/fe;->d:Lcom/uc/browser/fj;

    goto :goto_0
.end method

.method public static a(Landroid/view/SurfaceView;Lcom/uc/browser/ff;)Lcom/uc/browser/fe;
    .locals 1

    new-instance v0, Lcom/uc/browser/fe;

    invoke-direct {v0, p0, p1}, Lcom/uc/browser/fe;-><init>(Landroid/view/SurfaceView;Lcom/uc/browser/ff;)V

    return-object v0
.end method

.method static synthetic a(Lcom/uc/browser/fe;)Lcom/uc/browser/fh;
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/fe;->b:Lcom/uc/browser/fh;

    return-object v0
.end method

.method static synthetic b(Lcom/uc/browser/fe;)Lcom/uc/browser/fg;
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/fe;->c:Lcom/uc/browser/fg;

    return-object v0
.end method

.method static synthetic c(Lcom/uc/browser/fe;)Lcom/uc/browser/fl;
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/fe;->f:Lcom/uc/browser/fl;

    return-object v0
.end method

.method static synthetic d(Lcom/uc/browser/fe;)Lcom/uc/browser/fi;
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/fe;->e:Lcom/uc/browser/fi;

    return-object v0
.end method

.method static synthetic e(Lcom/uc/browser/fe;)Lcom/uc/browser/fj;
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/fe;->d:Lcom/uc/browser/fj;

    return-object v0
.end method


# virtual methods
.method final a()Lcom/uc/browser/fh;
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/fe;->b:Lcom/uc/browser/fh;

    return-object v0
.end method

.method public final b()Lcom/uc/browser/fg;
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/fe;->c:Lcom/uc/browser/fg;

    return-object v0
.end method

.method public final finalize()V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/fe;->b:Lcom/uc/browser/fh;

    invoke-virtual {v0}, Lcom/uc/browser/fh;->d()Z

    iget-object v0, p0, Lcom/uc/browser/fe;->b:Lcom/uc/browser/fh;

    invoke-virtual {v0}, Lcom/uc/browser/fh;->f()Z

    return-void
.end method
