.class Lcom/google/android/exoplayer2/drm/b$b;
.super Landroid/os/Handler;
.source "DefaultDrmSession.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/drm/b;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/drm/b;Landroid/os/Looper;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/b$b;->a:Lcom/google/android/exoplayer2/drm/b;

    .line 462
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 467
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 472
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/b$b;->a:Lcom/google/android/exoplayer2/drm/b;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/b;->b(Lcom/google/android/exoplayer2/drm/b;Ljava/lang/Object;)V

    goto :goto_0

    .line 469
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/b$b;->a:Lcom/google/android/exoplayer2/drm/b;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/b;->a(Lcom/google/android/exoplayer2/drm/b;Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
