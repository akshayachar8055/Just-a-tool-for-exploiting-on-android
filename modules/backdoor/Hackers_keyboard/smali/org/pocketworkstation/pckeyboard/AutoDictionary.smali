.class public Lorg/pocketworkstation/pckeyboard/AutoDictionary;
.super Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;
.source "AutoDictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/pocketworkstation/pckeyboard/AutoDictionary$UpdateDbTask;,
        Lorg/pocketworkstation/pckeyboard/AutoDictionary$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final AUTODICT_TABLE_NAME:Ljava/lang/String; = "words"

.field private static final COLUMN_FREQUENCY:Ljava/lang/String; = "freq"

.field private static final COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final COLUMN_LOCALE:Ljava/lang/String; = "locale"

.field private static final COLUMN_WORD:Ljava/lang/String; = "word"

.field private static final DATABASE_NAME:Ljava/lang/String; = "auto_dict.db"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "freq DESC"

.field static final FREQUENCY_FOR_AUTO_ADD:I = 0xfa

.field static final FREQUENCY_FOR_PICKED:I = 0x3

.field static final FREQUENCY_FOR_TYPED:I = 0x1

.field private static final PROMOTION_THRESHOLD:I = 0xc

.field private static final VALIDITY_THRESHOLD:I = 0x6

.field private static sDictProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sOpenHelper:Lorg/pocketworkstation/pckeyboard/AutoDictionary$DatabaseHelper;


# instance fields
.field private mIme:Lorg/pocketworkstation/pckeyboard/LatinIME;

.field private mLocale:Ljava/lang/String;

.field private mPendingWrites:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingWritesLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    .line 80
    sget-object v0, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "word"

    const-string v2, "word"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "freq"

    const-string v2, "freq"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "locale"

    const-string v2, "locale"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 86
    sput-object v0, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->sOpenHelper:Lorg/pocketworkstation/pckeyboard/AutoDictionary$DatabaseHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/pocketworkstation/pckeyboard/LatinIME;Ljava/lang/String;I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p4}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;-><init>(Landroid/content/Context;I)V

    .line 56
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->mPendingWrites:Ljava/util/HashMap;

    .line 57
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->mPendingWritesLock:Ljava/lang/Object;

    .line 90
    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->mIme:Lorg/pocketworkstation/pckeyboard/LatinIME;

    .line 91
    iput-object p3, p0, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->mLocale:Ljava/lang/String;

    .line 92
    sget-object p1, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->sOpenHelper:Lorg/pocketworkstation/pckeyboard/AutoDictionary$DatabaseHelper;

    if-nez p1, :cond_0

    .line 93
    new-instance p1, Lorg/pocketworkstation/pckeyboard/AutoDictionary$DatabaseHelper;

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/pocketworkstation/pckeyboard/AutoDictionary$DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object p1, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->sOpenHelper:Lorg/pocketworkstation/pckeyboard/AutoDictionary$DatabaseHelper;

    .line 95
    :cond_0
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->mLocale:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->mLocale:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_1

    .line 96
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->loadDictionary()V

    :cond_1
    return-void
.end method

.method private query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 207
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "words"

    .line 208
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 209
    sget-object v1, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 212
    sget-object v1, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->sOpenHelper:Lorg/pocketworkstation/pckeyboard/AutoDictionary$DatabaseHelper;

    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/AutoDictionary$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v7, "freq DESC"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    .line 213
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addWord(Ljava/lang/String;I)V
    .locals 3

    .line 142
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_5

    .line 144
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->getMaxWordLength()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_2

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->mIme:Lorg/pocketworkstation/pckeyboard/LatinIME;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->getCurrentWord()Lorg/pocketworkstation/pckeyboard/WordComposer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/WordComposer;->isAutoCapitalized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 149
    :cond_1
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->getWordFrequency(Ljava/lang/CharSequence;)I

    move-result v0

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    add-int/2addr p2, v0

    .line 151
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    const/16 v0, 0xc

    if-lt p2, v0, :cond_3

    .line 154
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->mIme:Lorg/pocketworkstation/pckeyboard/LatinIME;

    const/16 v0, 0xfa

    invoke-virtual {p2, p1, v0}, Lorg/pocketworkstation/pckeyboard/LatinIME;->promoteToUserDictionary(Ljava/lang/String;I)V

    const/4 p2, 0x0

    .line 158
    :cond_3
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->mPendingWritesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_0
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->mPendingWrites:Ljava/util/HashMap;

    if-nez p2, :cond_4

    const/4 p2, 0x0

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object p2, v2

    :goto_1
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    :goto_2
    return-void
.end method

.method public close()V
    .locals 0

    .line 108
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->flushPendingWrites()V

    .line 113
    invoke-super {p0}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->close()V

    return-void
.end method

.method public flushPendingWrites()V
    .locals 6

    .line 168
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->mPendingWritesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_0
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->mPendingWrites:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 172
    :cond_0
    new-instance v1, Lorg/pocketworkstation/pckeyboard/AutoDictionary$UpdateDbTask;

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->sOpenHelper:Lorg/pocketworkstation/pckeyboard/AutoDictionary$DatabaseHelper;

    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->mPendingWrites:Ljava/util/HashMap;

    iget-object v5, p0, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->mLocale:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/pocketworkstation/pckeyboard/AutoDictionary$UpdateDbTask;-><init>(Landroid/content/Context;Lorg/pocketworkstation/pckeyboard/AutoDictionary$DatabaseHelper;Ljava/util/HashMap;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lorg/pocketworkstation/pckeyboard/AutoDictionary$UpdateDbTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 174
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->mPendingWrites:Ljava/util/HashMap;

    .line 175
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isValidWord(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 102
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->getWordFrequency(Ljava/lang/CharSequence;)I

    move-result p1

    const/4 v0, 0x6

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public loadDictionaryAsync()V
    .locals 7

    const-string v0, "locale=?"

    const/4 v1, 0x1

    .line 119
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->mLocale:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 121
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "word"

    .line 122
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "freq"

    .line 123
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 124
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 125
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 129
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/AutoDictionary;->getMaxWordLength()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 130
    invoke-super {p0, v3, v4}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 132
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 136
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method
