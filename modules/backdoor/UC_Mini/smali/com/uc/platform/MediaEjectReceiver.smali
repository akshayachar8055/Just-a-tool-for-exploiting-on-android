.class public Lcom/uc/platform/MediaEjectReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static a:Lcom/uc/platform/MediaEjectReceiver;


# instance fields
.field private b:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/uc/platform/MediaEjectReceiver;

    invoke-direct {v0}, Lcom/uc/platform/MediaEjectReceiver;-><init>()V

    sput-object v0, Lcom/uc/platform/MediaEjectReceiver;->a:Lcom/uc/platform/MediaEjectReceiver;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/uc/platform/MediaEjectReceiver;->b:Ljava/util/Vector;

    return-void
.end method

.method public static a()Lcom/uc/platform/MediaEjectReceiver;
    .locals 1

    sget-object v0, Lcom/uc/platform/MediaEjectReceiver;->a:Lcom/uc/platform/MediaEjectReceiver;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/uc/platform/e;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/uc/platform/MediaEjectReceiver;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uc/platform/MediaEjectReceiver;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final b(Lcom/uc/platform/e;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/uc/platform/MediaEjectReceiver;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/uc/platform/MediaEjectReceiver;->b:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/platform/MediaEjectReceiver;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/platform/e;

    invoke-interface {v0}, Lcom/uc/platform/e;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uc/platform/MediaEjectReceiver;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/platform/e;

    invoke-interface {v0}, Lcom/uc/platform/e;->b()V

    goto :goto_1

    :cond_1
    return-void
.end method
