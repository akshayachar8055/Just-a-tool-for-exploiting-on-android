.class public final Lcom/uc/browser/upload/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/uc/browser/upload/f;

.field private b:I

.field private c:F

.field private d:F

.field private e:F

.field private f:I

.field private g:I

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/uc/browser/upload/f;)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/uc/browser/upload/c;->d:F

    iput v0, p0, Lcom/uc/browser/upload/c;->e:F

    new-instance v0, Lcom/uc/browser/upload/d;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/uc/browser/upload/d;-><init>(Lcom/uc/browser/upload/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/uc/browser/upload/c;->h:Landroid/os/Handler;

    iput-object p1, p0, Lcom/uc/browser/upload/c;->a:Lcom/uc/browser/upload/f;

    return-void
.end method

.method static synthetic a(Lcom/uc/browser/upload/c;I)I
    .locals 0

    iput p1, p0, Lcom/uc/browser/upload/c;->g:I

    return p1
.end method

.method private a()V
    .locals 3

    const/high16 v1, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/uc/browser/upload/c;->e:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/uc/browser/upload/c;->e:F

    :cond_0
    iget v0, p0, Lcom/uc/browser/upload/c;->d:F

    iget v1, p0, Lcom/uc/browser/upload/c;->d:F

    const v2, 0x3c23d70a    # 0.01f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/uc/browser/upload/c;->d:F

    iget v0, p0, Lcom/uc/browser/upload/c;->c:F

    iget v1, p0, Lcom/uc/browser/upload/c;->d:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/uc/browser/upload/c;->c:F

    return-void
.end method

.method static synthetic a(Lcom/uc/browser/upload/c;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/uc/browser/upload/c;->c:F

    iput v1, p0, Lcom/uc/browser/upload/c;->f:I

    iput v1, p0, Lcom/uc/browser/upload/c;->g:I

    invoke-direct {p0}, Lcom/uc/browser/upload/c;->d()V

    return-void
.end method

.method static synthetic b(Lcom/uc/browser/upload/c;)F
    .locals 1

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/uc/browser/upload/c;->c:F

    return v0
.end method

.method private b()V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/uc/browser/upload/c;->d:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/uc/browser/upload/c;->d:F

    :cond_0
    iget v0, p0, Lcom/uc/browser/upload/c;->c:F

    iget v1, p0, Lcom/uc/browser/upload/c;->e:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/uc/browser/upload/c;->c:F

    iget v0, p0, Lcom/uc/browser/upload/c;->e:F

    iget v1, p0, Lcom/uc/browser/upload/c;->e:F

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/uc/browser/upload/c;->e:F

    iget v0, p0, Lcom/uc/browser/upload/c;->c:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    iput v3, p0, Lcom/uc/browser/upload/c;->c:F

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/uc/browser/upload/c;)Lcom/uc/browser/upload/f;
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/upload/c;->a:Lcom/uc/browser/upload/f;

    return-object v0
.end method

.method private c()V
    .locals 3

    const/high16 v1, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/uc/browser/upload/c;->e:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/uc/browser/upload/c;->e:F

    :cond_0
    iget v0, p0, Lcom/uc/browser/upload/c;->d:F

    iget v1, p0, Lcom/uc/browser/upload/c;->d:F

    const v2, 0x3a83126f    # 0.001f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/uc/browser/upload/c;->d:F

    iget v0, p0, Lcom/uc/browser/upload/c;->c:F

    iget v1, p0, Lcom/uc/browser/upload/c;->d:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/uc/browser/upload/c;->c:F

    return-void
.end method

.method static synthetic d(Lcom/uc/browser/upload/c;)I
    .locals 1

    iget v0, p0, Lcom/uc/browser/upload/c;->g:I

    return v0
.end method

.method private d()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/uc/browser/upload/c;->d:F

    iput v0, p0, Lcom/uc/browser/upload/c;->e:F

    return-void
.end method

.method static synthetic e(Lcom/uc/browser/upload/c;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/upload/c;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/uc/browser/upload/c;)I
    .locals 6

    const/16 v5, 0x14

    const/4 v4, 0x0

    const/16 v3, 0x3c

    const/16 v2, 0x63

    sget-object v0, Lcom/uc/browser/upload/e;->a:[I

    iget v1, p0, Lcom/uc/browser/upload/c;->b:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget v0, p0, Lcom/uc/browser/upload/c;->c:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_c

    const/4 v0, -0x1

    :goto_1
    return v0

    :pswitch_0
    iget v0, p0, Lcom/uc/browser/upload/c;->g:I

    if-le v0, v5, :cond_1

    invoke-direct {p0}, Lcom/uc/browser/upload/c;->b()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/uc/browser/upload/c;->a()V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/uc/browser/upload/c;->g:I

    if-ge v0, v5, :cond_2

    invoke-direct {p0}, Lcom/uc/browser/upload/c;->a()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/uc/browser/upload/c;->g:I

    if-ge v0, v3, :cond_5

    iget v0, p0, Lcom/uc/browser/upload/c;->g:I

    iget v1, p0, Lcom/uc/browser/upload/c;->f:I

    if-le v0, v1, :cond_3

    invoke-direct {p0}, Lcom/uc/browser/upload/c;->b()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/uc/browser/upload/c;->g:I

    iget v1, p0, Lcom/uc/browser/upload/c;->f:I

    if-ge v0, v1, :cond_4

    invoke-direct {p0}, Lcom/uc/browser/upload/c;->a()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/uc/browser/upload/c;->d()V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/uc/browser/upload/c;->g:I

    if-ge v0, v2, :cond_6

    invoke-direct {p0}, Lcom/uc/browser/upload/c;->b()V

    goto :goto_0

    :cond_6
    iput v2, p0, Lcom/uc/browser/upload/c;->g:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/uc/browser/upload/c;->g:I

    if-le v0, v2, :cond_7

    iput v2, p0, Lcom/uc/browser/upload/c;->g:I

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/uc/browser/upload/c;->g:I

    if-ge v0, v3, :cond_9

    invoke-direct {p0}, Lcom/uc/browser/upload/c;->a()V

    :cond_8
    :goto_2
    iget v0, p0, Lcom/uc/browser/upload/c;->g:I

    if-le v0, v2, :cond_0

    iput v2, p0, Lcom/uc/browser/upload/c;->g:I

    goto :goto_0

    :cond_9
    iget v0, p0, Lcom/uc/browser/upload/c;->g:I

    if-ne v0, v3, :cond_a

    iget v0, p0, Lcom/uc/browser/upload/c;->c:F

    const/high16 v1, 0x41000000    # 8.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/uc/browser/upload/c;->c:F

    invoke-direct {p0}, Lcom/uc/browser/upload/c;->d()V

    goto :goto_2

    :cond_a
    iget v0, p0, Lcom/uc/browser/upload/c;->g:I

    if-ge v0, v2, :cond_8

    invoke-direct {p0}, Lcom/uc/browser/upload/c;->c()V

    goto :goto_2

    :pswitch_3
    iget v0, p0, Lcom/uc/browser/upload/c;->g:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_b

    invoke-direct {p0}, Lcom/uc/browser/upload/c;->c()V

    goto :goto_0

    :cond_b
    iput v4, p0, Lcom/uc/browser/upload/c;->c:F

    goto :goto_0

    :cond_c
    const/high16 v0, 0x447a0000    # 1000.0f

    iget v1, p0, Lcom/uc/browser/upload/c;->c:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iput p1, p0, Lcom/uc/browser/upload/c;->f:I

    iget v0, p0, Lcom/uc/browser/upload/c;->g:I

    iget v1, p0, Lcom/uc/browser/upload/c;->f:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/uc/browser/upload/c;->f:I

    iput v0, p0, Lcom/uc/browser/upload/c;->g:I

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 2

    iput p1, p0, Lcom/uc/browser/upload/c;->b:I

    sget-object v0, Lcom/uc/browser/upload/e;->a:[I

    iget v1, p0, Lcom/uc/browser/upload/c;->b:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/uc/browser/upload/c;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/uc/browser/upload/c;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
