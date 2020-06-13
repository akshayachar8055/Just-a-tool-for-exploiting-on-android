.class Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$UpdateDbTask;
.super Landroid/os/AsyncTask;
.source "UserBigramDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pocketworkstation/pckeyboard/UserBigramDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateDbTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDbHelper:Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$DatabaseHelper;

.field private final mLocale:Ljava/lang/String;

.field private final mMap:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$Bigram;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$DatabaseHelper;Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$DatabaseHelper;",
            "Ljava/util/HashSet<",
            "Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$Bigram;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 308
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 309
    iput-object p3, p0, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$UpdateDbTask;->mMap:Ljava/util/HashSet;

    .line 310
    iput-object p4, p0, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$UpdateDbTask;->mLocale:Ljava/lang/String;

    .line 311
    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$UpdateDbTask;->mDbHelper:Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$DatabaseHelper;

    return-void
.end method

.method private checkPruneData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10

    const-string v0, "PRAGMA foreign_keys = ON;"

    .line 316
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "frequency"

    const/4 v0, 0x1

    .line 317
    new-array v3, v0, [Ljava/lang/String;

    const-string v1, "pair_id"

    const/4 v9, 0x0

    aput-object v1, v3, v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 320
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 322
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary;->access$000()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 323
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary;->access$000()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {}, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary;->access$100()I

    move-result v3

    add-int/2addr v2, v3

    const-string v3, "pair_id"

    .line 324
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 325
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 327
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_0

    .line 328
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "main"

    const-string v7, "_id=?"

    .line 331
    new-array v8, v0, [Ljava/lang/String;

    aput-object v5, v8, v9

    invoke-virtual {p1, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 333
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 338
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method private getContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2

    .line 386
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "word1"

    .line 387
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "word2"

    .line 388
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "locale"

    .line 389
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getFrequencyContentValues(II)Landroid/content/ContentValues;
    .locals 2

    .line 394
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "pair_id"

    .line 395
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "freq"

    .line 396
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 302
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$UpdateDbTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13

    .line 349
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$UpdateDbTask;->mDbHelper:Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$DatabaseHelper;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v0, "PRAGMA foreign_keys = ON;"

    .line 350
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$UpdateDbTask;->mMap:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 353
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v0, :cond_1

    .line 354
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$Bigram;

    const-string v1, "main"

    const/4 v12, 0x1

    .line 357
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v10

    const-string v3, "word1=? AND word2=? AND locale=?"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, v11, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$Bigram;->word1:Ljava/lang/String;

    aput-object v0, v4, v10

    iget-object v0, v11, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$Bigram;->word2:Ljava/lang/String;

    aput-object v0, v4, v12

    const/4 v0, 0x2

    iget-object v5, p0, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$UpdateDbTask;->mLocale:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 363
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "_id"

    .line 365
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "frequency"

    const-string v3, "pair_id=?"

    .line 366
    new-array v4, v12, [Ljava/lang/String;

    .line 367
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    .line 366
    invoke-virtual {p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const-string v1, "main"

    .line 370
    iget-object v2, v11, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$Bigram;->word1:Ljava/lang/String;

    iget-object v3, v11, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$Bigram;->word2:Ljava/lang/String;

    iget-object v4, p0, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$UpdateDbTask;->mLocale:Ljava/lang/String;

    .line 371
    invoke-direct {p0, v2, v3, v4}, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$UpdateDbTask;->getContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 370
    invoke-virtual {p1, v1, v9, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 372
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    .line 374
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const-string v0, "frequency"

    .line 377
    iget v2, v11, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$Bigram;->frequency:I

    invoke-direct {p0, v1, v2}, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$UpdateDbTask;->getFrequencyContentValues(II)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {p1, v0, v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 379
    :cond_1
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$UpdateDbTask;->checkPruneData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 380
    invoke-static {v10}, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary;->access$202(Z)Z

    return-object v9
.end method

.method protected onPreExecute()V
    .locals 1

    const/4 v0, 0x1

    .line 344
    invoke-static {v0}, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary;->access$202(Z)Z

    return-void
.end method
