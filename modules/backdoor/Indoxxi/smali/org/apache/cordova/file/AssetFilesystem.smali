.class public Lorg/apache/cordova/file/AssetFilesystem;
.super Lorg/apache/cordova/file/Filesystem;
.source "AssetFilesystem.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AssetFilesystem"

.field private static lengthCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static listCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static listCacheFromFile:Z

.field private static listCacheLock:Ljava/lang/Object;


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/cordova/file/AssetFilesystem;->listCacheLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Lorg/apache/cordova/CordovaResourceApi;)V
    .locals 2
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "resourceApi"    # Lorg/apache/cordova/CordovaResourceApi;

    .prologue
    .line 137
    const-string v0, "file:///android_asset/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "assets"

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/cordova/file/Filesystem;-><init>(Landroid/net/Uri;Ljava/lang/String;Lorg/apache/cordova/CordovaResourceApi;)V

    .line 138
    iput-object p1, p0, Lorg/apache/cordova/file/AssetFilesystem;->assetManager:Landroid/content/res/AssetManager;

    .line 139
    return-void
.end method

.method private getAssetSize(Ljava/lang/String;)J
    .locals 9
    .param p1, "assetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 101
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 102
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 104
    :cond_0
    invoke-direct {p0}, Lorg/apache/cordova/file/AssetFilesystem;->lazyInitCaches()V

    .line 105
    sget-object v6, Lorg/apache/cordova/file/AssetFilesystem;->lengthCache:Ljava/util/Map;

    if-eqz v6, :cond_3

    .line 106
    sget-object v6, Lorg/apache/cordova/file/AssetFilesystem;->lengthCache:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 107
    .local v5, "ret":Ljava/lang/Long;
    if-nez v5, :cond_1

    .line 108
    new-instance v6, Ljava/io/FileNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Asset not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 110
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 120
    .end local v5    # "ret":Ljava/lang/Long;
    :cond_2
    :goto_0
    return-wide v2

    .line 112
    :cond_3
    const/4 v4, 0x0

    .line 114
    .local v4, "offr":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    :try_start_0
    iget-object v6, p0, Lorg/apache/cordova/file/AssetFilesystem;->resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    invoke-virtual {p0, p1}, Lorg/apache/cordova/file/AssetFilesystem;->nativeUriForFullPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/cordova/CordovaResourceApi;->openForRead(Landroid/net/Uri;)Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;

    move-result-object v4

    .line 115
    iget-wide v2, v4, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->length:J

    .line 116
    .local v2, "length":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_4

    .line 118
    iget-object v6, v4, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    int-to-long v2, v6

    .line 126
    :cond_4
    if-eqz v4, :cond_2

    .line 128
    :try_start_1
    iget-object v6, v4, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "AssetFilesystem"

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "length":J
    :catch_1
    move-exception v0

    .line 122
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    invoke-virtual {v1, v0}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 124
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fnfe":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_5

    .line 128
    :try_start_3
    iget-object v7, v4, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 131
    :cond_5
    :goto_1
    throw v6

    .line 129
    :catch_2
    move-exception v0

    .line 130
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "AssetFilesystem"

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isDirectory(Ljava/lang/String;)Z
    .locals 3
    .param p1, "assetPath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 180
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/cordova/file/AssetFilesystem;->listAssets(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 182
    :cond_0
    :goto_0
    return v1

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private lazyInitCaches()V
    .locals 7

    .prologue
    .line 51
    sget-object v4, Lorg/apache/cordova/file/AssetFilesystem;->listCacheLock:Ljava/lang/Object;

    monitor-enter v4

    .line 52
    :try_start_0
    sget-object v3, Lorg/apache/cordova/file/AssetFilesystem;->listCache:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 53
    const/4 v1, 0x0

    .line 55
    .local v1, "ois":Ljava/io/ObjectInputStream;
    :try_start_1
    new-instance v2, Ljava/io/ObjectInputStream;

    iget-object v3, p0, Lorg/apache/cordova/file/AssetFilesystem;->assetManager:Landroid/content/res/AssetManager;

    const-string v5, "cdvasset.manifest"

    invoke-virtual {v3, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .local v2, "ois":Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    sput-object v3, Lorg/apache/cordova/file/AssetFilesystem;->listCache:Ljava/util/Map;

    .line 57
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    sput-object v3, Lorg/apache/cordova/file/AssetFilesystem;->lengthCache:Ljava/util/Map;

    .line 58
    const/4 v3, 0x1

    sput-boolean v3, Lorg/apache/cordova/file/AssetFilesystem;->listCacheFromFile:Z
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 64
    if-eqz v2, :cond_3

    .line 66
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v2

    .line 72
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    :cond_0
    :goto_0
    :try_start_4
    sget-object v3, Lorg/apache/cordova/file/AssetFilesystem;->listCache:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 73
    const-string v3, "AssetFilesystem"

    const-string v5, "Asset manifest not found. Recursive copies and directory listing will be slow."

    invoke-static {v3, v5}, Lorg/apache/cordova/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lorg/apache/cordova/file/AssetFilesystem;->listCache:Ljava/util/Map;

    .line 77
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    :cond_1
    monitor-exit v4

    .line 78
    return-void

    .line 67
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "AssetFilesystem"

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v2

    .line 69
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 59
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 64
    if-eqz v1, :cond_0

    .line 66
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 67
    :catch_2
    move-exception v0

    .line 68
    .local v0, "e":Ljava/io/IOException;
    :try_start_7
    const-string v3, "AssetFilesystem"

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v3

    .line 61
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v3

    .line 64
    :goto_2
    if-eqz v1, :cond_0

    .line 66
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 67
    :catch_4
    move-exception v0

    .line 68
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_9
    const-string v3, "AssetFilesystem"

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .line 64
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    :goto_3
    if-eqz v1, :cond_2

    .line 66
    :try_start_a
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 69
    :cond_2
    :goto_4
    :try_start_b
    throw v3

    .line 67
    :catch_5
    move-exception v0

    .line 68
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "AssetFilesystem"

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_4

    .line 64
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_3

    .line 61
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    :catch_6
    move-exception v3

    move-object v1, v2

    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 59
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_1

    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    :cond_3
    move-object v1, v2

    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_0
.end method

.method private listAssets(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "assetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 81
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 84
    :cond_0
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 87
    :cond_1
    invoke-direct {p0}, Lorg/apache/cordova/file/AssetFilesystem;->lazyInitCaches()V

    .line 88
    sget-object v1, Lorg/apache/cordova/file/AssetFilesystem;->listCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 89
    .local v0, "ret":[Ljava/lang/String;
    if-nez v0, :cond_2

    .line 90
    sget-boolean v1, Lorg/apache/cordova/file/AssetFilesystem;->listCacheFromFile:Z

    if-eqz v1, :cond_3

    .line 91
    new-array v0, v2, [Ljava/lang/String;

    .line 97
    :cond_2
    :goto_0
    return-object v0

    .line 93
    :cond_3
    iget-object v1, p0, Lorg/apache/cordova/file/AssetFilesystem;->assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 94
    sget-object v1, Lorg/apache/cordova/file/AssetFilesystem;->listCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method URLforFilesystemPath(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 281
    const/4 v0, 0x0

    return-object v0
.end method

.method public canRemoveFileAtLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Z
    .locals 1
    .param p1, "inputURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method filesystemPathForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Lorg/apache/cordova/file/LocalFilesystemURL;

    .prologue
    .line 276
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/cordova/file/AssetFilesystem;->rootUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lorg/apache/cordova/file/LocalFilesystemURL;->path:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileForLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .locals 4
    .param p1, "inputURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "options"    # Lorg/json/JSONObject;
    .param p4, "directory"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/FileExistsException;,
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/TypeMismatchException;,
            Lorg/apache/cordova/file/EncodingException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 213
    if-eqz p3, :cond_0

    const-string v2, "create"

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Assets are read-only"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 218
    :cond_0
    if-eqz p4, :cond_1

    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 223
    :cond_1
    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 224
    invoke-static {p2}, Lorg/apache/cordova/file/AssetFilesystem;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/cordova/file/AssetFilesystem;->localUrlforFullPath(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v1

    .line 230
    .local v1, "requestedURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/cordova/file/AssetFilesystem;->getFileMetadataForLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/json/JSONObject;

    .line 232
    iget-object v2, v1, Lorg/apache/cordova/file/LocalFilesystemURL;->path:Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/apache/cordova/file/AssetFilesystem;->isDirectory(Ljava/lang/String;)Z

    move-result v0

    .line 233
    .local v0, "isDir":Z
    if-eqz p4, :cond_3

    if-nez v0, :cond_3

    .line 234
    new-instance v2, Lorg/apache/cordova/file/TypeMismatchException;

    const-string v3, "path doesn\'t exist or is file"

    invoke-direct {v2, v3}, Lorg/apache/cordova/file/TypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 226
    .end local v0    # "isDir":Z
    .end local v1    # "requestedURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lorg/apache/cordova/file/LocalFilesystemURL;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/cordova/file/AssetFilesystem;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/cordova/file/AssetFilesystem;->localUrlforFullPath(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v1

    .restart local v1    # "requestedURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    goto :goto_0

    .line 235
    .restart local v0    # "isDir":Z
    :cond_3
    if-nez p4, :cond_4

    if-eqz v0, :cond_4

    .line 236
    new-instance v2, Lorg/apache/cordova/file/TypeMismatchException;

    const-string v3, "path doesn\'t exist or is directory"

    invoke-direct {v2, v3}, Lorg/apache/cordova/file/TypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 240
    :cond_4
    invoke-virtual {p0, v1}, Lorg/apache/cordova/file/AssetFilesystem;->makeEntryForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/json/JSONObject;

    move-result-object v2

    return-object v2
.end method

.method public getFileMetadataForLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "inputURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 245
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 246
    .local v1, "metadata":Lorg/json/JSONObject;
    iget-boolean v4, p1, Lorg/apache/cordova/file/LocalFilesystemURL;->isDirectory:Z

    if-eqz v4, :cond_0

    const-wide/16 v2, 0x0

    .line 248
    .local v2, "size":J
    :goto_0
    :try_start_0
    const-string v4, "size"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 249
    const-string v5, "type"

    iget-boolean v4, p1, Lorg/apache/cordova/file/LocalFilesystemURL;->isDirectory:Z

    if-eqz v4, :cond_1

    const-string v4, "text/directory"

    :goto_1
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    const-string v4, "name"

    new-instance v5, Ljava/io/File;

    iget-object v6, p1, Lorg/apache/cordova/file/LocalFilesystemURL;->path:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    const-string v4, "fullPath"

    iget-object v5, p1, Lorg/apache/cordova/file/LocalFilesystemURL;->path:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    const-string v4, "lastModifiedDate"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    .end local v1    # "metadata":Lorg/json/JSONObject;
    :goto_2
    return-object v1

    .line 246
    .end local v2    # "size":J
    .restart local v1    # "metadata":Lorg/json/JSONObject;
    :cond_0
    iget-object v4, p1, Lorg/apache/cordova/file/LocalFilesystemURL;->path:Ljava/lang/String;

    invoke-direct {p0, v4}, Lorg/apache/cordova/file/AssetFilesystem;->getAssetSize(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    .line 249
    .restart local v2    # "size":J
    :cond_1
    :try_start_1
    iget-object v4, p0, Lorg/apache/cordova/file/AssetFilesystem;->resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    invoke-virtual {p0, p1}, Lorg/apache/cordova/file/AssetFilesystem;->toNativeUri(Lorg/apache/cordova/file/LocalFilesystemURL;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/cordova/CordovaResourceApi;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_1

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public listChildren(Lorg/apache/cordova/file/LocalFilesystemURL;)[Lorg/apache/cordova/file/LocalFilesystemURL;
    .locals 9
    .param p1, "inputURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v6, p1, Lorg/apache/cordova/file/LocalFilesystemURL;->path:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, "pathNoSlashes":Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 190
    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 195
    :cond_0
    :try_start_0
    invoke-direct {p0, v5}, Lorg/apache/cordova/file/AssetFilesystem;->listAssets(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 202
    .local v2, "files":[Ljava/lang/String;
    array-length v6, v2

    new-array v1, v6, [Lorg/apache/cordova/file/LocalFilesystemURL;

    .line 203
    .local v1, "entries":[Lorg/apache/cordova/file/LocalFilesystemURL;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, v2

    if-ge v4, v6, :cond_1

    .line 204
    new-instance v6, Ljava/io/File;

    iget-object v7, p1, Lorg/apache/cordova/file/LocalFilesystemURL;->path:Ljava/lang/String;

    aget-object v8, v2, v4

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/cordova/file/AssetFilesystem;->localUrlforFullPath(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v6

    aput-object v6, v1, v4

    .line 203
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 196
    .end local v1    # "entries":[Lorg/apache/cordova/file/LocalFilesystemURL;
    .end local v2    # "files":[Ljava/lang/String;
    .end local v4    # "i":I
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/io/FileNotFoundException;

    invoke-direct {v3}, Ljava/io/FileNotFoundException;-><init>()V

    .line 198
    .local v3, "fnfe":Ljava/io/FileNotFoundException;
    invoke-virtual {v3, v0}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 199
    throw v3

    .line 206
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "fnfe":Ljava/io/FileNotFoundException;
    .restart local v1    # "entries":[Lorg/apache/cordova/file/LocalFilesystemURL;
    .restart local v2    # "files":[Ljava/lang/String;
    .restart local v4    # "i":I
    :cond_1
    return-object v1
.end method

.method recursiveRemoveFileAtLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Z
    .locals 2
    .param p1, "inputURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/NoModificationAllowedException;
        }
    .end annotation

    .prologue
    .line 291
    new-instance v0, Lorg/apache/cordova/file/NoModificationAllowedException;

    const-string v1, "Assets are read-only"

    invoke-direct {v0, v1}, Lorg/apache/cordova/file/NoModificationAllowedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeFileAtLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Z
    .locals 2
    .param p1, "inputURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/InvalidModificationException;,
            Lorg/apache/cordova/file/NoModificationAllowedException;
        }
    .end annotation

    .prologue
    .line 286
    new-instance v0, Lorg/apache/cordova/file/NoModificationAllowedException;

    const-string v1, "Assets are read-only"

    invoke-direct {v0, v1}, Lorg/apache/cordova/file/NoModificationAllowedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toLocalUri(Landroid/net/Uri;)Lorg/apache/cordova/file/LocalFilesystemURL;
    .locals 8
    .param p1, "inputURL"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    .line 148
    const-string v6, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-object v5

    .line 151
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 154
    .local v2, "resolvedUri":Landroid/net/Uri;
    iget-object v6, p0, Lorg/apache/cordova/file/AssetFilesystem;->rootUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "rootUriNoTrailingSlash":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 159
    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, "subPath":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 162
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 164
    :cond_2
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    const-string v6, "cdvfile"

    .line 165
    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "localhost"

    .line 166
    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/cordova/file/AssetFilesystem;->name:Ljava/lang/String;

    .line 167
    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 168
    .local v0, "b":Landroid/net/Uri$Builder;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 169
    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 171
    :cond_3
    invoke-direct {p0, v4}, Lorg/apache/cordova/file/AssetFilesystem;->isDirectory(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 173
    :cond_4
    const-string v5, ""

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 175
    :cond_5
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/cordova/file/LocalFilesystemURL;->parse(Landroid/net/Uri;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v5

    goto :goto_0
.end method

.method public toNativeUri(Lorg/apache/cordova/file/LocalFilesystemURL;)Landroid/net/Uri;
    .locals 1
    .param p1, "inputURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;

    .prologue
    .line 143
    iget-object v0, p1, Lorg/apache/cordova/file/LocalFilesystemURL;->path:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/cordova/file/AssetFilesystem;->nativeUriForFullPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method truncateFileAtURL(Lorg/apache/cordova/file/LocalFilesystemURL;J)J
    .locals 2
    .param p1, "inputURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;
    .param p2, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/NoModificationAllowedException;
        }
    .end annotation

    .prologue
    .line 271
    new-instance v0, Lorg/apache/cordova/file/NoModificationAllowedException;

    const-string v1, "Assets are read-only"

    invoke-direct {v0, v1}, Lorg/apache/cordova/file/NoModificationAllowedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method writeToFileAtURL(Lorg/apache/cordova/file/LocalFilesystemURL;Ljava/lang/String;IZ)J
    .locals 2
    .param p1, "inputURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "isBinary"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/NoModificationAllowedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    new-instance v0, Lorg/apache/cordova/file/NoModificationAllowedException;

    const-string v1, "Assets are read-only"

    invoke-direct {v0, v1}, Lorg/apache/cordova/file/NoModificationAllowedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
