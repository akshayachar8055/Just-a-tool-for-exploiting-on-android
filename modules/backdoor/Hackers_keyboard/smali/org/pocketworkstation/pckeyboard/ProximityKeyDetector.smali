.class Lorg/pocketworkstation/pckeyboard/ProximityKeyDetector;
.super Lorg/pocketworkstation/pckeyboard/KeyDetector;
.source "ProximityKeyDetector.java"


# static fields
.field private static final MAX_NEARBY_KEYS:I = 0xc


# instance fields
.field private mDistances:[I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/KeyDetector;-><init>()V

    const/16 v0, 0xc

    .line 27
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/ProximityKeyDetector;->mDistances:[I

    return-void
.end method


# virtual methods
.method public getKeyIndexAndNearbyCodes(II[I)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 36
    invoke-virtual/range {p0 .. p0}, Lorg/pocketworkstation/pckeyboard/ProximityKeyDetector;->getKeys()[Lorg/pocketworkstation/pckeyboard/Keyboard$Key;

    move-result-object v2

    .line 37
    invoke-virtual/range {p0 .. p1}, Lorg/pocketworkstation/pckeyboard/ProximityKeyDetector;->getTouchX(I)I

    move-result v3

    move/from16 v4, p2

    .line 38
    invoke-virtual {v0, v4}, Lorg/pocketworkstation/pckeyboard/ProximityKeyDetector;->getTouchY(I)I

    move-result v4

    .line 41
    iget v5, v0, Lorg/pocketworkstation/pckeyboard/ProximityKeyDetector;->mProximityThresholdSquare:I

    add-int/lit8 v5, v5, 0x1

    .line 42
    iget-object v6, v0, Lorg/pocketworkstation/pckeyboard/ProximityKeyDetector;->mDistances:[I

    const v7, 0x7fffffff

    .line 43
    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([II)V

    .line 44
    iget-object v7, v0, Lorg/pocketworkstation/pckeyboard/ProximityKeyDetector;->mKeyboard:Lorg/pocketworkstation/pckeyboard/Keyboard;

    invoke-virtual {v7, v3, v4}, Lorg/pocketworkstation/pckeyboard/Keyboard;->getNearestKeys(II)[I

    move-result-object v7

    .line 45
    array-length v8, v7

    move v13, v5

    const/4 v5, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    :goto_0
    if-ge v5, v8, :cond_7

    .line 47
    aget v14, v7, v5

    aget-object v14, v2, v14

    .line 49
    invoke-virtual {v14, v3, v4}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->isInside(II)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 51
    aget v11, v7, v5

    .line 54
    :cond_0
    iget-boolean v9, v0, Lorg/pocketworkstation/pckeyboard/ProximityKeyDetector;->mProximityCorrectOn:Z

    if-eqz v9, :cond_1

    .line 55
    invoke-virtual {v14, v3, v4}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v9

    iget v10, v0, Lorg/pocketworkstation/pckeyboard/ProximityKeyDetector;->mProximityThresholdSquare:I

    if-lt v9, v10, :cond_2

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    if-eqz v15, :cond_4

    :cond_2
    iget-object v10, v14, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    const/4 v15, 0x0

    aget v10, v10, v15

    const/16 v15, 0x20

    if-le v10, v15, :cond_4

    .line 59
    iget-object v10, v14, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    array-length v10, v10

    if-ge v9, v13, :cond_3

    .line 62
    aget v12, v7, v5

    move v13, v9

    :cond_3
    if-nez v1, :cond_5

    :cond_4
    move-object/from16 v16, v2

    :goto_2
    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    .line 67
    :goto_3
    array-length v0, v6

    if-ge v15, v0, :cond_4

    .line 68
    aget v0, v6, v15

    if-le v0, v9, :cond_6

    add-int v0, v15, v10

    move-object/from16 v16, v2

    .line 70
    array-length v2, v6

    sub-int/2addr v2, v15

    sub-int/2addr v2, v10

    invoke-static {v6, v15, v6, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    array-length v2, v1

    sub-int/2addr v2, v15

    sub-int/2addr v2, v10

    invoke-static {v1, v15, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget-object v2, v14, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->codes:[I

    const/4 v14, 0x0

    invoke-static {v2, v14, v1, v15, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    invoke-static {v6, v15, v0, v9}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_2

    :cond_6
    move-object/from16 v16, v2

    const/4 v0, 0x0

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :goto_4
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v16

    move-object/from16 v0, p0

    goto :goto_0

    :cond_7
    const/4 v2, -0x1

    if-ne v11, v2, :cond_8

    goto :goto_5

    :cond_8
    move v12, v11

    :goto_5
    return v12
.end method

.method protected getMaxNearbyKeys()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method
