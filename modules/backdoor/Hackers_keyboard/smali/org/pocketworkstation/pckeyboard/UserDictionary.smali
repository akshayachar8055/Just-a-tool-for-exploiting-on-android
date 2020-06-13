.class public Lorg/pocketworkstation/pckeyboard/UserDictionary;
.super Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;
.source "UserDictionary.java"


# static fields
.field private static final INDEX_FREQUENCY:I = 0x2

.field private static final INDEX_WORD:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "HK/UserDictionary"


# instance fields
.field private mLocale:Ljava/lang/String;

.field private mObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    .line 29
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "word"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "frequency"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lorg/pocketworkstation/pckeyboard/UserDictionary;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    .line 44
    invoke-direct {p0, p1, v0}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;-><init>(Landroid/content/Context;I)V

    .line 45
    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/UserDictionary;->mLocale:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 50
    sget-object p2, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Lorg/pocketworkstation/pckeyboard/UserDictionary$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/pocketworkstation/pckeyboard/UserDictionary$1;-><init>(Lorg/pocketworkstation/pckeyboard/UserDictionary;Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 57
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/UserDictionary;->loadDictionary()V

    return-void
.end method

.method private addWords(Landroid/database/Cursor;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "HK/UserDictionary"

    const-string v0, "Unexpected null cursor in addWords()"

    .line 125
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 128
    :cond_0
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/UserDictionary;->clearDictionary()V

    .line 130
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/UserDictionary;->getMaxWordLength()I

    move-result v0

    .line 131
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 133
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 134
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 137
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v0, :cond_1

    .line 138
    invoke-super {p0, v1, v2}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 140
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 143
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void
.end method


# virtual methods
.method public declared-synchronized addWord(Ljava/lang/String;I)V
    .locals 3

    monitor-enter p0

    .line 88
    :try_start_0
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/UserDictionary;->getRequiresReload()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/UserDictionary;->loadDictionaryAsync()V

    .line 90
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/UserDictionary;->getMaxWordLength()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_1

    monitor-exit p0

    return-void

    .line 92
    :cond_1
    :try_start_1
    invoke-super {p0, p1, p2}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 95
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "word"

    .line 96
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "frequency"

    .line 97
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "locale"

    .line 98
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/UserDictionary;->mLocale:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "appid"

    const/4 p2, 0x0

    .line 99
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/UserDictionary;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 102
    new-instance v1, Lorg/pocketworkstation/pckeyboard/UserDictionary$2;

    const-string v2, "addWord"

    invoke-direct {v1, p0, v2, p1, v0}, Lorg/pocketworkstation/pckeyboard/UserDictionary$2;-><init>(Lorg/pocketworkstation/pckeyboard/UserDictionary;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/content/ContentValues;)V

    .line 106
    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/UserDictionary$2;->start()V

    .line 109
    invoke-virtual {p0, p2}, Lorg/pocketworkstation/pckeyboard/UserDictionary;->setRequiresReload(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 87
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/UserDictionary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/UserDictionary;->mObserver:Landroid/database/ContentObserver;

    .line 66
    :cond_0
    invoke-super {p0}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 61
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWords(Lorg/pocketworkstation/pckeyboard/WordComposer;Lorg/pocketworkstation/pckeyboard/Dictionary$WordCallback;[I)V
    .locals 0

    monitor-enter p0

    .line 115
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->getWords(Lorg/pocketworkstation/pckeyboard/WordComposer;Lorg/pocketworkstation/pckeyboard/Dictionary$WordCallback;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 114
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isValidWord(Ljava/lang/CharSequence;)Z
    .locals 0

    monitor-enter p0

    .line 120
    :try_start_0
    invoke-super {p0, p1}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public loadDictionaryAsync()V
    .locals 7

    .line 71
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/UserDictionary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lorg/pocketworkstation/pckeyboard/UserDictionary;->PROJECTION:[Ljava/lang/String;

    const-string v4, "(locale IS NULL) or (locale=?)"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/UserDictionary;->mLocale:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x0

    .line 72
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 74
    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/UserDictionary;->addWords(Landroid/database/Cursor;)V

    return-void
.end method
