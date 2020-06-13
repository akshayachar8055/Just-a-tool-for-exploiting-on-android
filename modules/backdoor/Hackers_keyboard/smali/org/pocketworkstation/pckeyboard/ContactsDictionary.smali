.class public Lorg/pocketworkstation/pckeyboard/ContactsDictionary;
.super Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;
.source "ContactsDictionary.java"


# static fields
.field private static final FREQUENCY_FOR_CONTACTS:I = 0x80

.field private static final FREQUENCY_FOR_CONTACTS_BIGRAM:I = 0x5a

.field private static final INDEX_NAME:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ContactsDictionary"


# instance fields
.field private mLastLoadedContacts:J

.field private mObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 30
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "display_name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lorg/pocketworkstation/pckeyboard/ContactsDictionary;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;-><init>(Landroid/content/Context;I)V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 55
    sget-object p2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Lorg/pocketworkstation/pckeyboard/ContactsDictionary$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/pocketworkstation/pckeyboard/ContactsDictionary$1;-><init>(Lorg/pocketworkstation/pckeyboard/ContactsDictionary;Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/ContactsDictionary;->mObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 62
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/ContactsDictionary;->loadDictionary()V

    return-void
.end method

.method private addWords(Landroid/database/Cursor;)V
    .locals 9

    .line 98
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/ContactsDictionary;->clearDictionary()V

    .line 100
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/ContactsDictionary;->getMaxWordLength()I

    move-result v0

    .line 102
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 103
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x1

    .line 104
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 107
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_5

    .line 112
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v6, v5, 0x1

    :goto_2
    if-ge v6, v3, :cond_1

    .line 115
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_0

    const/16 v8, 0x27

    if-eq v7, v8, :cond_0

    .line 118
    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_3

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 123
    :cond_1
    :goto_3
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v6, -0x1

    .line 130
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v0, :cond_4

    if-le v7, v1, :cond_4

    const/16 v7, 0x80

    .line 132
    invoke-super {p0, v5, v7}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 133
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const/16 v7, 0x5a

    .line 136
    invoke-super {p0, v4, v5, v7}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->setBigram(Ljava/lang/String;Ljava/lang/String;I)I

    :cond_2
    move-object v4, v5

    goto :goto_4

    :cond_3
    move v6, v5

    :cond_4
    :goto_4
    add-int/lit8 v5, v6, 0x1

    goto :goto_1

    .line 144
    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 147
    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    const-string p1, "ContactsDictionary"

    const-string v0, "Contacts DB is having problems"

    .line 149
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/ContactsDictionary;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/ContactsDictionary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/ContactsDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/ContactsDictionary;->mObserver:Landroid/database/ContentObserver;

    .line 71
    :cond_0
    invoke-super {p0}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 66
    monitor-exit p0

    throw v0
.end method

.method public loadDictionaryAsync()V
    .locals 7

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/ContactsDictionary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lorg/pocketworkstation/pckeyboard/ContactsDictionary;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 87
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/ContactsDictionary;->addWords(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "ContactsDictionary"

    const-string v1, "Contacts DB is having problems"

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/pocketworkstation/pckeyboard/ContactsDictionary;->mLastLoadedContacts:J

    return-void
.end method

.method public startDictionaryLoadingTaskLocked()V
    .locals 7

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 77
    iget-wide v2, p0, Lorg/pocketworkstation/pckeyboard/ContactsDictionary;->mLastLoadedContacts:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    iget-wide v2, p0, Lorg/pocketworkstation/pckeyboard/ContactsDictionary;->mLastLoadedContacts:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 79
    :cond_0
    invoke-super {p0}, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;->startDictionaryLoadingTaskLocked()V

    :cond_1
    return-void
.end method
