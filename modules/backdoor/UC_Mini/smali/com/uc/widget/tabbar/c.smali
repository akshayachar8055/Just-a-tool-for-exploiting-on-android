.class final Lcom/uc/widget/tabbar/c;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:I

.field private b:Z

.field private synthetic c:Lcom/uc/widget/tabbar/TabCursor;


# direct methods
.method private constructor <init>(Lcom/uc/widget/tabbar/TabCursor;)V
    .locals 1

    iput-object p1, p0, Lcom/uc/widget/tabbar/c;->c:Lcom/uc/widget/tabbar/TabCursor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/uc/widget/tabbar/c;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uc/widget/tabbar/c;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/uc/widget/tabbar/TabCursor;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uc/widget/tabbar/c;-><init>(Lcom/uc/widget/tabbar/TabCursor;)V

    return-void
.end method

.method static synthetic a(Lcom/uc/widget/tabbar/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/uc/widget/tabbar/c;->b:Z

    return v0
.end method

.method private varargs b()Ljava/lang/Void;
    .locals 3

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/uc/widget/tabbar/c;->b:Z

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget v0, p0, Lcom/uc/widget/tabbar/c;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uc/widget/tabbar/c;->a:I

    iget v0, p0, Lcom/uc/widget/tabbar/c;->a:I

    iget-object v1, p0, Lcom/uc/widget/tabbar/c;->c:Lcom/uc/widget/tabbar/TabCursor;

    invoke-static {v1}, Lcom/uc/widget/tabbar/TabCursor;->a(Lcom/uc/widget/tabbar/TabCursor;)I

    move-result v1

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/uc/widget/tabbar/c;->a:I

    iget-object v1, p0, Lcom/uc/widget/tabbar/c;->c:Lcom/uc/widget/tabbar/TabCursor;

    invoke-static {v1}, Lcom/uc/widget/tabbar/TabCursor;->a(Lcom/uc/widget/tabbar/TabCursor;)I

    move-result v1

    iget-object v2, p0, Lcom/uc/widget/tabbar/c;->c:Lcom/uc/widget/tabbar/TabCursor;

    invoke-static {v2}, Lcom/uc/widget/tabbar/TabCursor;->b(Lcom/uc/widget/tabbar/TabCursor;)I

    move-result v2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/uc/widget/tabbar/c;->c:Lcom/uc/widget/tabbar/TabCursor;

    invoke-static {v0}, Lcom/uc/widget/tabbar/TabCursor;->c(Lcom/uc/widget/tabbar/TabCursor;)I

    move-result v0

    iget v1, p0, Lcom/uc/widget/tabbar/c;->a:I

    iget-object v2, p0, Lcom/uc/widget/tabbar/c;->c:Lcom/uc/widget/tabbar/TabCursor;

    invoke-static {v2}, Lcom/uc/widget/tabbar/TabCursor;->a(Lcom/uc/widget/tabbar/TabCursor;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/uc/widget/tabbar/c;->c:Lcom/uc/widget/tabbar/TabCursor;

    invoke-static {v2}, Lcom/uc/widget/tabbar/TabCursor;->c(Lcom/uc/widget/tabbar/TabCursor;)I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/uc/widget/tabbar/c;->c:Lcom/uc/widget/tabbar/TabCursor;

    invoke-static {v2}, Lcom/uc/widget/tabbar/TabCursor;->b(Lcom/uc/widget/tabbar/TabCursor;)I

    move-result v2

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/uc/widget/tabbar/c;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/uc/widget/tabbar/c;->a:I

    iget-object v1, p0, Lcom/uc/widget/tabbar/c;->c:Lcom/uc/widget/tabbar/TabCursor;

    invoke-static {v1}, Lcom/uc/widget/tabbar/TabCursor;->a(Lcom/uc/widget/tabbar/TabCursor;)I

    move-result v1

    iget-object v2, p0, Lcom/uc/widget/tabbar/c;->c:Lcom/uc/widget/tabbar/TabCursor;

    invoke-static {v2}, Lcom/uc/widget/tabbar/TabCursor;->b(Lcom/uc/widget/tabbar/TabCursor;)I

    move-result v2

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/widget/tabbar/c;->b:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/uc/widget/tabbar/c;->a:I

    return-void
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/uc/widget/tabbar/c;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/uc/widget/tabbar/c;->c:Lcom/uc/widget/tabbar/TabCursor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/uc/widget/tabbar/TabCursor;->a(Lcom/uc/widget/tabbar/TabCursor;I)V

    return-void
.end method

.method protected final synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 2

    check-cast p1, [Ljava/lang/Integer;

    iget-object v0, p0, Lcom/uc/widget/tabbar/c;->c:Lcom/uc/widget/tabbar/TabCursor;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/uc/widget/tabbar/TabCursor;->a(Lcom/uc/widget/tabbar/TabCursor;I)V

    return-void
.end method
