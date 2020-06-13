.class Lorg/pocketworkstation/pckeyboard/MiniKeyboardKeyDetector;
.super Lorg/pocketworkstation/pckeyboard/KeyDetector;
.source "MiniKeyboardKeyDetector.java"


# static fields
.field private static final MAX_NEARBY_KEYS:I = 0x1


# instance fields
.field private final mSlideAllowanceSquare:I

.field private final mSlideAllowanceSquareTop:I


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/KeyDetector;-><init>()V

    mul-float p1, p1, p1

    float-to-int p1, p1

    .line 29
    iput p1, p0, Lorg/pocketworkstation/pckeyboard/MiniKeyboardKeyDetector;->mSlideAllowanceSquare:I

    .line 31
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/MiniKeyboardKeyDetector;->mSlideAllowanceSquare:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/MiniKeyboardKeyDetector;->mSlideAllowanceSquareTop:I

    return-void
.end method


# virtual methods
.method public getKeyIndexAndNearbyCodes(II[I)I
    .locals 8

    .line 41
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/MiniKeyboardKeyDetector;->getKeys()[Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    move-result-object v0

    .line 42
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/MiniKeyboardKeyDetector;->getTouchX(I)I

    move-result p1

    .line 43
    invoke-virtual {p0, p2}, Lorg/pocketworkstation/pckeyboard/MiniKeyboardKeyDetector;->getTouchY(I)I

    move-result v1

    if-gez p2, :cond_0

    .line 45
    iget p2, p0, Lorg/pocketworkstation/pckeyboard/MiniKeyboardKeyDetector;->mSlideAllowanceSquareTop:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lorg/pocketworkstation/pckeyboard/MiniKeyboardKeyDetector;->mSlideAllowanceSquare:I

    .line 46
    :goto_0
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, -0x1

    move v5, p2

    const/4 p2, 0x0

    const/4 v6, -0x1

    :goto_1
    if-ge p2, v2, :cond_2

    .line 48
    aget-object v7, v0, p2

    .line 49
    invoke-virtual {v7, p1, v1}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v7

    if-ge v7, v5, :cond_1

    move v6, p2

    move v5, v7

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    if-eq v6, v4, :cond_3

    .line 56
    aget-object p1, v0, v6

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->getPrimaryCode()I

    move-result p1

    aput p1, p3, v3

    :cond_3
    return v6
.end method

.method protected getMaxNearbyKeys()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
