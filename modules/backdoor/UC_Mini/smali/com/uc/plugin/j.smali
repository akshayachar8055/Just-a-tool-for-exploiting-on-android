.class final Lcom/uc/plugin/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/Object;

.field private synthetic c:Lcom/uc/plugin/a;


# direct methods
.method constructor <init>(Lcom/uc/plugin/a;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/plugin/j;->c:Lcom/uc/plugin/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/uc/plugin/j;->a:Ljava/lang/String;

    const-string v2, "PRESS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/plugin/j;->c:Lcom/uc/plugin/a;

    iget v0, v0, Lcom/uc/plugin/a;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/uc/plugin/j;->c:Lcom/uc/plugin/a;

    iget-object v0, v0, Lcom/uc/plugin/a;->b:Lcom/uc/plugin/PluginLayout;

    invoke-virtual {v0, v1}, Lcom/uc/plugin/PluginLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    :goto_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->performClick()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :pswitch_0
    iget-object v0, p0, Lcom/uc/plugin/j;->c:Lcom/uc/plugin/a;

    iget-object v0, v0, Lcom/uc/plugin/a;->h:Lcom/uc/plugin/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uc/plugin/j;->c:Lcom/uc/plugin/a;

    iget-object v0, v0, Lcom/uc/plugin/a;->h:Lcom/uc/plugin/m;

    iget-object v1, p0, Lcom/uc/plugin/j;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/uc/plugin/j;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/uc/plugin/m;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/uc/plugin/j;->c:Lcom/uc/plugin/a;

    iget-object v0, v0, Lcom/uc/plugin/a;->e:Ljava/util/Vector;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/uc/plugin/j;->c:Lcom/uc/plugin/a;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/uc/plugin/a;->e:Ljava/util/Vector;

    iget-object v0, p0, Lcom/uc/plugin/j;->c:Lcom/uc/plugin/a;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/uc/plugin/a;->f:Ljava/util/Vector;

    iget-object v0, p0, Lcom/uc/plugin/j;->c:Lcom/uc/plugin/a;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/uc/plugin/a;->g:Ljava/util/Vector;

    :cond_2
    iget-object v0, p0, Lcom/uc/plugin/j;->c:Lcom/uc/plugin/a;

    iget-object v0, v0, Lcom/uc/plugin/a;->e:Ljava/util/Vector;

    iget-object v1, p0, Lcom/uc/plugin/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uc/plugin/j;->c:Lcom/uc/plugin/a;

    iget-object v0, v0, Lcom/uc/plugin/a;->f:Ljava/util/Vector;

    iget-object v1, p0, Lcom/uc/plugin/j;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uc/plugin/j;->c:Lcom/uc/plugin/a;

    iget-object v0, v0, Lcom/uc/plugin/a;->g:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
