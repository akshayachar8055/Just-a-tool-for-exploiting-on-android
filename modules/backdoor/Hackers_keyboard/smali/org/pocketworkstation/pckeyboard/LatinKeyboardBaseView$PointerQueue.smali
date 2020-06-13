.class Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;
.super Ljava/lang/Object;
.source "LatinKeyboardBaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PointerQueue"
.end annotation


# instance fields
.field private mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/pocketworkstation/pckeyboard/PointerTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public add(Lorg/pocketworkstation/pckeyboard/PointerTracker;)V
    .locals 1

    .line 387
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isInSlidingKeyInput()Z
    .locals 2

    .line 432
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/pocketworkstation/pckeyboard/PointerTracker;

    .line 433
    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->isInSlidingKeyInput()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Lorg/pocketworkstation/pckeyboard/PointerTracker;)I
    .locals 3

    .line 391
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    .line 392
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 393
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/pocketworkstation/pckeyboard/PointerTracker;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public releaseAllPointersExcept(Lorg/pocketworkstation/pckeyboard/PointerTracker;J)V
    .locals 4

    .line 416
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/pocketworkstation/pckeyboard/PointerTracker;

    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->getLastX()I

    move-result v2

    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->getLastY()I

    move-result v3

    invoke-virtual {v1, v2, v3, p2, p3}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->onUpEvent(IIJ)V

    .line 420
    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->setAlreadyProcessed()V

    goto :goto_0

    .line 422
    :cond_1
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->clear()V

    if-eqz p1, :cond_2

    .line 424
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public releaseAllPointersOlderThan(Lorg/pocketworkstation/pckeyboard/PointerTracker;J)V
    .locals 5

    .line 401
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    const/4 v1, 0x0

    .line 403
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/pocketworkstation/pckeyboard/PointerTracker;

    if-eq v2, p1, :cond_2

    .line 404
    invoke-virtual {v2}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->isModifier()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 407
    :cond_1
    invoke-virtual {v2}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->getLastX()I

    move-result v3

    invoke-virtual {v2}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->getLastY()I

    move-result v4

    invoke-virtual {v2, v3, v4, p2, p3}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->onUpEvent(IIJ)V

    .line 408
    invoke-virtual {v2}, Lorg/pocketworkstation/pckeyboard/PointerTracker;->setAlreadyProcessed()V

    .line 409
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 411
    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_2
    return-void
.end method

.method public remove(Lorg/pocketworkstation/pckeyboard/PointerTracker;)V
    .locals 1

    .line 428
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
