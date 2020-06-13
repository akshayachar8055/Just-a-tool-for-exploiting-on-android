.class Lorg/pocketworkstation/pckeyboard/AutoDictionary$UpdateDbTask;
.super Landroid/os/AsyncTask;
.source "AutoDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pocketworkstation/pckeyboard/AutoDictionary;
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
.field private final mDbHelper:Lorg/pocketworkstation/pckeyboard/AutoDictionary$DatabaseHelper;

.field private final mLocale:Ljava/lang/String;

.field private final mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/pocketworkstation/pckeyboard/AutoDictionary$DatabaseHelper;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/pocketworkstation/pckeyboard/AutoDictionary$DatabaseHelper;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 228
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 229
    iput-object p3, p0, Lorg/pocketworkstation/pckeyboard/AutoDictionary$UpdateDbTask;->mMap:Ljava/util/HashMap;

    .line 230
    iput-object p4, p0, Lorg/pocketworkstation/pckeyboard/AutoDictionary$UpdateDbTask;->mLocale:Ljava/lang/String;

    .line 231
    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/AutoDictionary$UpdateDbTask;->mDbHelper:Lorg/pocketworkstation/pckeyboard/AutoDictionary$DatabaseHelper;

    return-void
.end method

.method private getContentValues(Ljava/lang/String;ILjava/lang/String;)Landroid/content/ContentValues;
    .locals 2

    .line 252
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "word"

    .line 253
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "freq"

    .line 254
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "locale"

    .line 255
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 222
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/AutoDictionary$UpdateDbTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    .line 236
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/AutoDictionary$UpdateDbTask;->mDbHelper:Lorg/pocketworkstation/pckeyboard/AutoDictionary$DatabaseHelper;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/AutoDictionary$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 238
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/AutoDictionary$UpdateDbTask;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 239
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 240
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const-string v4, "words"

    const-string v5, "word=? AND locale=?"

    const/4 v6, 0x2

    .line 241
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 242
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/pocketworkstation/pckeyboard/AutoDictionary$UpdateDbTask;->mLocale:Ljava/lang/String;

    aput-object v8, v6, v7

    .line 241
    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz v3, :cond_0

    const-string v4, "words"

    .line 245
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, p0, Lorg/pocketworkstation/pckeyboard/AutoDictionary$UpdateDbTask;->mLocale:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v5}, Lorg/pocketworkstation/pckeyboard/AutoDictionary$UpdateDbTask;->getContentValues(Ljava/lang/String;ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 244
    invoke-virtual {p1, v4, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    :cond_1
    return-object v2
.end method
