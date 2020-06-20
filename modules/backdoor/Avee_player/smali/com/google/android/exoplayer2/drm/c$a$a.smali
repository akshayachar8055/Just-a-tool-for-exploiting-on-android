.class final Lcom/google/android/exoplayer2/drm/c$a$a;
.super Ljava/lang/Object;
.source "DefaultDrmSessionEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lcom/google/android/exoplayer2/drm/c;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/c;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/c$a$a;->a:Landroid/os/Handler;

    .line 137
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/c$a$a;->b:Lcom/google/android/exoplayer2/drm/c;

    return-void
.end method
