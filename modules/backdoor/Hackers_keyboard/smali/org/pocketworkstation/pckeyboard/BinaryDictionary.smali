.class public Lorg/pocketworkstation/pckeyboard/BinaryDictionary;
.super Lorg/pocketworkstation/pckeyboard/Dictionary;
.source "BinaryDictionary.java"


# static fields
.field private static final ENABLE_MISSED_CHARACTERS:Z = true

.field private static final MAX_ALTERNATIVES:I = 0x10

.field private static final MAX_BIGRAMS:I = 0x3c

.field private static final MAX_WORDS:I = 0x12

.field protected static final MAX_WORD_LENGTH:I = 0x30

.field private static final TAG:Ljava/lang/String; = "BinaryDictionary"

.field private static final TYPED_LETTER_MULTIPLIER:I = 0x2


# instance fields
.field private mDicTypeId:I

.field private mDictLength:I

.field private mFrequencies:[I

.field private mFrequencies_bigrams:[I

.field private mInputCodes:[I

.field private mNativeDict:J

.field private mNativeDictDirectBuffer:Ljava/nio/ByteBuffer;

.field private mOutputChars:[C

.field private mOutputChars_bigrams:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "jni_pckeyboard"

    .line 64
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "PCKeyboard"

    const-string v1, "loaded jni_pckeyboard"

    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "BinaryDictionary"

    const-string v1, "Could not load native library jni_pckeyboard"

    .line 67
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/nio/ByteBuffer;I)V
    .locals 1

    .line 100
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/Dictionary;-><init>()V

    const/16 p1, 0x300

    .line 53
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mInputCodes:[I

    const/16 p1, 0x360

    .line 54
    new-array p1, p1, [C

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mOutputChars:[C

    const/16 p1, 0xb40

    .line 55
    new-array p1, p1, [C

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mOutputChars_bigrams:[C

    const/16 p1, 0x12

    .line 56
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mFrequencies:[I

    const/16 p1, 0x3c

    .line 57
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mFrequencies_bigrams:[I

    if-eqz p2, :cond_1

    .line 102
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 103
    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mNativeDictDirectBuffer:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mNativeDictDirectBuffer:Ljava/nio/ByteBuffer;

    .line 106
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 107
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mNativeDictDirectBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 109
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mDictLength:I

    .line 110
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mNativeDictDirectBuffer:Ljava/nio/ByteBuffer;

    iget p2, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mDictLength:I

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, v0, p2}, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->openNative(Ljava/nio/ByteBuffer;III)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mNativeDict:J

    .line 113
    :cond_1
    iput p3, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mDicTypeId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[II)V
    .locals 1

    .line 76
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/Dictionary;-><init>()V

    const/16 v0, 0x300

    .line 53
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mInputCodes:[I

    const/16 v0, 0x360

    .line 54
    new-array v0, v0, [C

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mOutputChars:[C

    const/16 v0, 0xb40

    .line 55
    new-array v0, v0, [C

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mOutputChars_bigrams:[C

    const/16 v0, 0x12

    .line 56
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mFrequencies:[I

    const/16 v0, 0x3c

    .line 57
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mFrequencies_bigrams:[I

    if-eqz p2, :cond_0

    .line 77
    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p2, v0

    if-eqz v0, :cond_0

    .line 78
    invoke-direct {p0, p1, p2}, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->loadDictionary(Landroid/content/Context;[I)V

    .line 80
    :cond_0
    iput p3, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mDicTypeId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/io/InputStream;I)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/Dictionary;-><init>()V

    const/16 p1, 0x300

    .line 53
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mInputCodes:[I

    const/16 p1, 0x360

    .line 54
    new-array p1, p1, [C

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mOutputChars:[C

    const/16 p1, 0xb40

    .line 55
    new-array p1, p1, [C

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mOutputChars_bigrams:[C

    const/16 p1, 0x12

    .line 56
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mFrequencies:[I

    const/16 p1, 0x3c

    .line 57
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mFrequencies_bigrams:[I

    if-eqz p2, :cond_0

    .line 89
    array-length p1, p2

    if-lez p1, :cond_0

    .line 90
    invoke-direct {p0, p2}, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->loadDictionary([Ljava/io/InputStream;)V

    .line 92
    :cond_0
    iput p3, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mDicTypeId:I

    return-void
.end method

.method private native closeNative(J)V
.end method

.method private native getBigramsNative(J[CI[II[C[IIII)I
.end method

.method private native getSuggestionsNative(J[II[C[IIIII[II)I
.end method

.method private native isValidWordNative(J[CI)Z
.end method

.method private final loadDictionary(Landroid/content/Context;[I)V
    .locals 4

    .line 169
    array-length v0, p2

    new-array v0, v0, [Ljava/io/InputStream;

    const/4 v1, 0x0

    .line 170
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget v3, p2, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    :cond_0
    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->loadDictionary([Ljava/io/InputStream;)V

    return-void
.end method

.method private final loadDictionary([Ljava/io/InputStream;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 132
    :goto_0
    :try_start_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 133
    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mNativeDictDirectBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 139
    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_1

    .line 140
    aget-object v4, p1, v1

    invoke-static {v4}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v4

    iget-object v5, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mNativeDictDirectBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v4, v5}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    if-eq v3, v2, :cond_2

    const-string v1, "BinaryDictionary"

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes, expected "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 145
    :cond_2
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mNativeDictDirectBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x2

    invoke-direct {p0, v1, v3, v3, v2}, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->openNative(Ljava/nio/ByteBuffer;III)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mNativeDict:J

    .line 147
    iput v2, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mDictLength:I

    .line 149
    :goto_2
    iget v1, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mDictLength:I

    const/16 v2, 0x2710

    if-le v1, v2, :cond_3

    const-string v1, "PCKeyboard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded dictionary, len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mDictLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz p1, :cond_4

    .line 157
    :goto_3
    :try_start_1
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 158
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_6

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "BinaryDictionary"

    const-string v3, "Failed to load native dictionary"

    .line 153
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_4

    .line 157
    :goto_4
    :try_start_3
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 158
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :catch_1
    :try_start_4
    const-string v1, "BinaryDictionary"

    const-string v2, "No available memory for binary dictionary"

    .line 151
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_4

    .line 157
    :goto_5
    :try_start_5
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 158
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :catch_2
    const-string p1, "BinaryDictionary"

    const-string v0, "Failed to close input stream"

    .line 162
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :goto_6
    if-eqz p1, :cond_5

    .line 157
    :goto_7
    :try_start_6
    array-length v2, p1

    if-ge v0, v2, :cond_5

    .line 158
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :catch_3
    const-string p1, "BinaryDictionary"

    const-string v0, "Failed to close input stream"

    .line 162
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_5
    throw v1
.end method

.method private native openNative(Ljava/nio/ByteBuffer;III)J
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 5

    monitor-enter p0

    .line 276
    :try_start_0
    iget-wide v0, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mNativeDict:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 277
    iget-wide v0, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mNativeDict:J

    invoke-direct {p0, v0, v1}, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->closeNative(J)V

    .line 278
    iput-wide v2, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mNativeDict:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 275
    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 284
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->close()V

    .line 285
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getBigrams(Lorg/pocketworkstation/pckeyboard/WordComposer;Ljava/lang/CharSequence;Lorg/pocketworkstation/pckeyboard/Dictionary$WordCallback;[I)V
    .locals 14

    move-object v12, p0

    .line 181
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 182
    iget-object v0, v12, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mOutputChars_bigrams:[C

    const/4 v13, 0x0

    invoke-static {v0, v13}, Ljava/util/Arrays;->fill([CC)V

    .line 183
    iget-object v0, v12, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mFrequencies_bigrams:[I

    invoke-static {v0, v13}, Ljava/util/Arrays;->fill([II)V

    .line 185
    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/WordComposer;->size()I

    move-result v6

    .line 186
    iget-object v0, v12, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mInputCodes:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    move-object v0, p1

    .line 187
    invoke-virtual {p1, v13}, Lorg/pocketworkstation/pckeyboard/WordComposer;->getCodesAt(I)[I

    move-result-object v0

    .line 188
    iget-object v1, v12, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mInputCodes:[I

    array-length v2, v0

    const/16 v4, 0x10

    .line 189
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 188
    invoke-static {v0, v13, v1, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    iget-wide v1, v12, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mNativeDict:J

    array-length v4, v3

    iget-object v5, v12, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mInputCodes:[I

    iget-object v7, v12, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mOutputChars_bigrams:[C

    iget-object v8, v12, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mFrequencies_bigrams:[I

    const/16 v9, 0x30

    const/16 v10, 0x3c

    const/16 v11, 0x10

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->getBigramsNative(J[CI[II[C[IIII)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 196
    iget-object v2, v12, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mFrequencies_bigrams:[I

    aget v2, v2, v1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    goto :goto_2

    :cond_0
    mul-int/lit8 v6, v1, 0x30

    const/4 v7, 0x0

    .line 199
    :goto_1
    iget-object v2, v12, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mOutputChars_bigrams:[C

    add-int v3, v6, v7

    aget-char v2, v2, v3

    if-eqz v2, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    if-lez v7, :cond_2

    .line 203
    iget-object v5, v12, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mOutputChars_bigrams:[C

    iget-object v2, v12, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mFrequencies_bigrams:[I

    aget v8, v2, v1

    iget v9, v12, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mDicTypeId:I

    sget-object v10, Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;->BIGRAM:Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;

    move-object/from16 v4, p3

    invoke-interface/range {v4 .. v10}, Lorg/pocketworkstation/pckeyboard/Dictionary$WordCallback;->addWord([CIIIILorg/pocketworkstation/pckeyboard/Dictionary$DataType;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public getSize()I
    .locals 1

    .line 271
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mDictLength:I

    return v0
.end method

.method public getWords(Lorg/pocketworkstation/pckeyboard/WordComposer;Lorg/pocketworkstation/pckeyboard/Dictionary$WordCallback;[I)V
    .locals 18

    move-object/from16 v13, p0

    move-object/from16 v11, p3

    .line 212
    invoke-virtual/range {p1 .. p1}, Lorg/pocketworkstation/pckeyboard/WordComposer;->size()I

    move-result v14

    const/16 v0, 0x2f

    if-le v14, v0, :cond_0

    return-void

    .line 216
    :cond_0
    iget-object v0, v13, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mInputCodes:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v15, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v14, :cond_1

    move-object/from16 v1, p1

    .line 218
    invoke-virtual {v1, v0}, Lorg/pocketworkstation/pckeyboard/WordComposer;->getCodesAt(I)[I

    move-result-object v2

    .line 219
    iget-object v3, v13, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mInputCodes:[I

    mul-int/lit8 v4, v0, 0x10

    array-length v5, v2

    const/16 v6, 0x10

    .line 220
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 219
    invoke-static {v2, v15, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, v13, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mOutputChars:[C

    invoke-static {v0, v15}, Ljava/util/Arrays;->fill([CC)V

    .line 223
    iget-object v0, v13, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mFrequencies:[I

    invoke-static {v0, v15}, Ljava/util/Arrays;->fill([II)V

    .line 225
    iget-wide v0, v13, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mNativeDict:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    return-void

    .line 228
    :cond_2
    iget-wide v1, v13, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mNativeDict:J

    iget-object v3, v13, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mInputCodes:[I

    iget-object v5, v13, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mOutputChars:[C

    iget-object v6, v13, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mFrequencies:[I

    const/16 v7, 0x30

    const/16 v8, 0x12

    const/16 v9, 0x10

    const/4 v10, -0x1

    if-eqz v11, :cond_3

    array-length v0, v11

    move v12, v0

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    :goto_1
    move-object/from16 v0, p0

    move v4, v14

    move-object/from16 v11, p3

    invoke-direct/range {v0 .. v12}, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->getSuggestionsNative(J[II[C[IIIII[II)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_6

    move v11, v0

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v14, :cond_5

    .line 240
    iget-wide v1, v13, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mNativeDict:J

    iget-object v3, v13, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mInputCodes:[I

    iget-object v5, v13, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mOutputChars:[C

    iget-object v6, v13, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mFrequencies:[I

    const/16 v7, 0x30

    const/16 v8, 0x12

    const/16 v9, 0x10

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move v4, v14

    move v10, v12

    move v15, v11

    move-object/from16 v11, v16

    move/from16 v16, v12

    move/from16 v12, v17

    invoke-direct/range {v0 .. v12}, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->getSuggestionsNative(J[II[C[IIIII[II)I

    move-result v0

    .line 244
    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    if-lez v0, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v12, v16, 0x1

    const/4 v15, 0x0

    goto :goto_2

    :cond_5
    :goto_3
    move v15, v11

    goto :goto_4

    :cond_6
    move v15, v0

    :goto_4
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v15, :cond_a

    .line 250
    iget-object v1, v13, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mFrequencies:[I

    aget v1, v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_7

    goto :goto_7

    :cond_7
    mul-int/lit8 v5, v0, 0x30

    const/4 v6, 0x0

    .line 253
    :goto_6
    iget-object v1, v13, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mOutputChars:[C

    add-int v2, v5, v6

    aget-char v1, v1, v2

    if-eqz v1, :cond_8

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_8
    if-lez v6, :cond_9

    .line 257
    iget-object v4, v13, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mOutputChars:[C

    iget-object v1, v13, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mFrequencies:[I

    aget v7, v1, v0

    iget v8, v13, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mDicTypeId:I

    sget-object v9, Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;->UNIGRAM:Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;

    move-object/from16 v3, p2

    invoke-interface/range {v3 .. v9}, Lorg/pocketworkstation/pckeyboard/Dictionary$WordCallback;->addWord([CIIIILorg/pocketworkstation/pckeyboard/Dictionary$DataType;)Z

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_a
    :goto_7
    return-void
.end method

.method public isValidWord(Ljava/lang/CharSequence;)Z
    .locals 5

    if-eqz p1, :cond_1

    .line 265
    iget-wide v0, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mNativeDict:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 267
    iget-wide v0, p0, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->mNativeDict:J

    array-length v2, p1

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->isValidWordNative(J[CI)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
