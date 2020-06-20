.class public Lio/realm/internal/NativeObjectReference$b;
.super Ljava/lang/Object;
.source "NativeObjectReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/NativeObjectReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lio/realm/internal/NativeObjectReference;


# direct methods
.method public synthetic constructor <init>(Lio/realm/internal/NativeObjectReference$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lio/realm/internal/NativeObjectReference;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-object v0, p1, Lio/realm/internal/NativeObjectReference;->d:Lio/realm/internal/NativeObjectReference;

    .line 2
    iget-object v0, p0, Lio/realm/internal/NativeObjectReference$b;->a:Lio/realm/internal/NativeObjectReference;

    .line 3
    iput-object v0, p1, Lio/realm/internal/NativeObjectReference;->e:Lio/realm/internal/NativeObjectReference;

    .line 4
    iget-object v0, p0, Lio/realm/internal/NativeObjectReference$b;->a:Lio/realm/internal/NativeObjectReference;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lio/realm/internal/NativeObjectReference$b;->a:Lio/realm/internal/NativeObjectReference;

    .line 6
    iput-object p1, v0, Lio/realm/internal/NativeObjectReference;->d:Lio/realm/internal/NativeObjectReference;

    .line 7
    :cond_0
    iput-object p1, p0, Lio/realm/internal/NativeObjectReference$b;->a:Lio/realm/internal/NativeObjectReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lio/realm/internal/NativeObjectReference;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p1, Lio/realm/internal/NativeObjectReference;->e:Lio/realm/internal/NativeObjectReference;

    .line 2
    iget-object v1, p1, Lio/realm/internal/NativeObjectReference;->d:Lio/realm/internal/NativeObjectReference;

    const/4 v2, 0x0

    .line 3
    iput-object v2, p1, Lio/realm/internal/NativeObjectReference;->e:Lio/realm/internal/NativeObjectReference;

    .line 4
    iput-object v2, p1, Lio/realm/internal/NativeObjectReference;->d:Lio/realm/internal/NativeObjectReference;

    if-eqz v1, :cond_0

    .line 5
    iput-object v0, v1, Lio/realm/internal/NativeObjectReference;->e:Lio/realm/internal/NativeObjectReference;

    goto :goto_0

    .line 6
    :cond_0
    iput-object v0, p0, Lio/realm/internal/NativeObjectReference$b;->a:Lio/realm/internal/NativeObjectReference;

    :goto_0
    if-eqz v0, :cond_1

    .line 7
    iput-object v1, v0, Lio/realm/internal/NativeObjectReference;->d:Lio/realm/internal/NativeObjectReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
