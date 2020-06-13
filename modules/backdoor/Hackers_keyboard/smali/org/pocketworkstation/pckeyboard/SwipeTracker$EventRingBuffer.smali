.class Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;
.super Ljava/lang/Object;
.source "SwipeTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pocketworkstation/pckeyboard/SwipeTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EventRingBuffer"
.end annotation


# instance fields
.field private final bufSize:I

.field private count:I

.field private end:I

.field private final timeBuf:[J

.field private top:I

.field private final xBuf:[F

.field private final yBuf:[F


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput p1, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->bufSize:I

    .line 105
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->xBuf:[F

    .line 106
    new-array v0, p1, [F

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->yBuf:[F

    .line 107
    new-array p1, p1, [J

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->timeBuf:[J

    .line 108
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->clear()V

    return-void
.end method

.method private advance(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 125
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->bufSize:I

    rem-int/2addr p1, v0

    return p1
.end method

.method private index(I)I
    .locals 1

    .line 121
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->end:I

    add-int/2addr v0, p1

    iget p1, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->bufSize:I

    rem-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public add(FFJ)V
    .locals 2

    .line 129
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->xBuf:[F

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->top:I

    aput p1, v0, v1

    .line 130
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->yBuf:[F

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->top:I

    aput p2, p1, v0

    .line 131
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->timeBuf:[J

    iget p2, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->top:I

    aput-wide p3, p1, p2

    .line 132
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->top:I

    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->advance(I)I

    move-result p1

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->top:I

    .line 133
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->count:I

    iget p2, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->bufSize:I

    if-ge p1, p2, :cond_0

    .line 134
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->count:I

    goto :goto_0

    .line 136
    :cond_0
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->end:I

    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->advance(I)I

    move-result p1

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->end:I

    :goto_0
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->count:I

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->end:I

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->top:I

    return-void
.end method

.method public dropOldest()V
    .locals 1

    .line 153
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->count:I

    .line 154
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->end:I

    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->advance(I)I

    move-result v0

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->end:I

    return-void
.end method

.method public getTime(I)J
    .locals 3

    .line 149
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->timeBuf:[J

    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->index(I)I

    move-result p1

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getX(I)F
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->xBuf:[F

    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->index(I)I

    move-result p1

    aget p1, v0, p1

    return p1
.end method

.method public getY(I)F
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->yBuf:[F

    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->index(I)I

    move-result p1

    aget p1, v0, p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 116
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/SwipeTracker$EventRingBuffer;->count:I

    return v0
.end method
