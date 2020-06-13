.class public Lorg/apache/cordova/file/LocalFilesystem;
.super Lorg/apache/cordova/file/Filesystem;
.source "LocalFilesystem.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lorg/apache/cordova/CordovaResourceApi;Ljava/io/File;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resourceApi"    # Lorg/apache/cordova/CordovaResourceApi;
    .param p4, "fsRoot"    # Ljava/io/File;

    .prologue
    .line 48
    invoke-static {p4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p1, p3}, Lorg/apache/cordova/file/Filesystem;-><init>(Landroid/net/Uri;Ljava/lang/String;Lorg/apache/cordova/CordovaResourceApi;)V

    .line 49
    iput-object p2, p0, Lorg/apache/cordova/file/LocalFilesystem;->context:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private broadcastNewFile(Landroid/net/Uri;)V
    .locals 2
    .param p1, "nativeUri"    # Landroid/net/Uri;

    .prologue
    .line 439
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 440
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/apache/cordova/file/LocalFilesystem;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 441
    return-void
.end method

.method private copyDirectory(Lorg/apache/cordova/file/Filesystem;Lorg/apache/cordova/file/LocalFilesystemURL;Ljava/io/File;Z)V
    .locals 10
    .param p1, "srcFs"    # Lorg/apache/cordova/file/Filesystem;
    .param p2, "srcURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;
    .param p3, "dstDir"    # Ljava/io/File;
    .param p4, "move"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/NoModificationAllowedException;,
            Lorg/apache/cordova/file/InvalidModificationException;,
            Lorg/apache/cordova/file/FileExistsException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 283
    if-eqz p4, :cond_3

    .line 284
    invoke-virtual {p1, p2}, Lorg/apache/cordova/file/Filesystem;->filesystemPathForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "realSrcPath":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 286
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    .local v3, "srcDir":Ljava/io/File;
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 289
    invoke-virtual {p3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_0

    .line 290
    new-instance v5, Lorg/apache/cordova/file/InvalidModificationException;

    const-string v6, "directory is not empty"

    invoke-direct {v5, v6}, Lorg/apache/cordova/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 292
    :cond_0
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 295
    :cond_1
    invoke-virtual {v3, p3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 326
    .end local v2    # "realSrcPath":Ljava/lang/String;
    .end local v3    # "srcDir":Ljava/io/File;
    :cond_2
    :goto_0
    return-void

    .line 302
    :cond_3
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 303
    invoke-virtual {p3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_5

    .line 304
    new-instance v5, Lorg/apache/cordova/file/InvalidModificationException;

    const-string v6, "directory is not empty"

    invoke-direct {v5, v6}, Lorg/apache/cordova/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 307
    :cond_4
    invoke-virtual {p3}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-nez v5, :cond_5

    .line 309
    new-instance v5, Lorg/apache/cordova/file/NoModificationAllowedException;

    const-string v6, "Couldn\'t create the destination directory"

    invoke-direct {v5, v6}, Lorg/apache/cordova/file/NoModificationAllowedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 313
    :cond_5
    invoke-virtual {p1, p2}, Lorg/apache/cordova/file/Filesystem;->listChildren(Lorg/apache/cordova/file/LocalFilesystemURL;)[Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v1

    .line 314
    .local v1, "children":[Lorg/apache/cordova/file/LocalFilesystemURL;
    array-length v7, v1

    move v5, v6

    :goto_1
    if-ge v5, v7, :cond_7

    aget-object v0, v1, v5

    .line 315
    .local v0, "childLocalUrl":Lorg/apache/cordova/file/LocalFilesystemURL;
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/io/File;

    iget-object v9, v0, Lorg/apache/cordova/file/LocalFilesystemURL;->path:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, p3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 316
    .local v4, "target":Ljava/io/File;
    iget-boolean v8, v0, Lorg/apache/cordova/file/LocalFilesystemURL;->isDirectory:Z

    if-eqz v8, :cond_6

    .line 317
    invoke-direct {p0, p1, v0, v4, v6}, Lorg/apache/cordova/file/LocalFilesystem;->copyDirectory(Lorg/apache/cordova/file/Filesystem;Lorg/apache/cordova/file/LocalFilesystemURL;Ljava/io/File;Z)V

    .line 314
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 319
    :cond_6
    invoke-direct {p0, p1, v0, v4, v6}, Lorg/apache/cordova/file/LocalFilesystem;->copyFile(Lorg/apache/cordova/file/Filesystem;Lorg/apache/cordova/file/LocalFilesystemURL;Ljava/io/File;Z)V

    goto :goto_2

    .line 323
    .end local v0    # "childLocalUrl":Lorg/apache/cordova/file/LocalFilesystemURL;
    .end local v4    # "target":Ljava/io/File;
    :cond_7
    if-eqz p4, :cond_2

    .line 324
    invoke-virtual {p1, p2}, Lorg/apache/cordova/file/Filesystem;->recursiveRemoveFileAtLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Z

    goto :goto_0
.end method

.method private copyFile(Lorg/apache/cordova/file/Filesystem;Lorg/apache/cordova/file/LocalFilesystemURL;Ljava/io/File;Z)V
    .locals 5
    .param p1, "srcFs"    # Lorg/apache/cordova/file/Filesystem;
    .param p2, "srcURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;
    .param p3, "destFile"    # Ljava/io/File;
    .param p4, "move"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/InvalidModificationException;,
            Lorg/apache/cordova/file/NoModificationAllowedException;
        }
    .end annotation

    .prologue
    .line 263
    if-eqz p4, :cond_1

    .line 264
    invoke-virtual {p1, p2}, Lorg/apache/cordova/file/Filesystem;->filesystemPathForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "realSrcPath":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 266
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    .local v2, "srcFile":Ljava/io/File;
    invoke-virtual {v2, p3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 280
    .end local v1    # "realSrcPath":Ljava/lang/String;
    .end local v2    # "srcFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v3, p0, Lorg/apache/cordova/file/LocalFilesystem;->resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    invoke-virtual {p1, p2}, Lorg/apache/cordova/file/Filesystem;->toNativeUri(Lorg/apache/cordova/file/LocalFilesystemURL;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/cordova/CordovaResourceApi;->openForRead(Landroid/net/Uri;)Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;

    move-result-object v0

    .line 275
    .local v0, "offr":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, v3}, Lorg/apache/cordova/file/LocalFilesystem;->copyResource(Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;Ljava/io/OutputStream;)V

    .line 277
    if-eqz p4, :cond_0

    .line 278
    invoke-virtual {p1, p2}, Lorg/apache/cordova/file/Filesystem;->removeFileAtLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Z

    goto :goto_0
.end method

.method private static copyResource(Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;Ljava/io/OutputStream;)V
    .locals 14
    .param p0, "input"    # Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 480
    :try_start_0
    iget-object v11, p0, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    .line 481
    .local v11, "inputStream":Ljava/io/InputStream;
    instance-of v4, v11, Ljava/io/FileInputStream;

    if-eqz v4, :cond_3

    instance-of v4, p1, Ljava/io/FileOutputStream;

    if-eqz v4, :cond_3

    .line 482
    iget-object v4, p0, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    check-cast v4, Ljava/io/FileInputStream;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 483
    .local v3, "inChannel":Ljava/nio/channels/FileChannel;
    move-object v0, p1

    check-cast v0, Ljava/io/FileOutputStream;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 484
    .local v2, "outChannel":Ljava/nio/channels/FileChannel;
    const-wide/16 v12, 0x0

    .line 485
    .local v12, "offset":J
    iget-wide v6, p0, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->length:J

    .line 486
    .local v6, "length":J
    iget-object v4, p0, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->assetFd:Landroid/content/res/AssetFileDescriptor;

    if-eqz v4, :cond_0

    .line 487
    iget-object v4, p0, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->assetFd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v12

    .line 491
    :cond_0
    invoke-virtual {v3, v12, v13}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 492
    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    .end local v2    # "outChannel":Ljava/nio/channels/FileChannel;
    .end local v3    # "inChannel":Ljava/nio/channels/FileChannel;
    .end local v6    # "length":J
    .end local v12    # "offset":J
    :cond_1
    iget-object v4, p0, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 508
    if-eqz p1, :cond_2

    .line 509
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 512
    :cond_2
    return-void

    .line 494
    :cond_3
    const/16 v8, 0x2000

    .line 495
    .local v8, "BUFFER_SIZE":I
    const/16 v4, 0x2000

    :try_start_1
    new-array v9, v4, [B

    .line 498
    .local v9, "buffer":[B
    :goto_0
    const/4 v4, 0x0

    const/16 v5, 0x2000

    invoke-virtual {v11, v9, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    .line 500
    .local v10, "bytesRead":I
    if-lez v10, :cond_1

    .line 503
    const/4 v4, 0x0

    invoke-virtual {p1, v9, v4, v10}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 507
    .end local v8    # "BUFFER_SIZE":I
    .end local v9    # "buffer":[B
    .end local v10    # "bytesRead":I
    .end local v11    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 508
    if-eqz p1, :cond_4

    .line 509
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_4
    throw v4
.end method

.method private fullPathForFilesystemPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "absolutePath"    # Ljava/lang/String;

    .prologue
    .line 62
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/cordova/file/LocalFilesystem;->rootUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lorg/apache/cordova/file/LocalFilesystem;->rootUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPublicDirectory(Ljava/lang/String;)Z
    .locals 6
    .param p1, "absolutePath"    # Ljava/lang/String;

    .prologue
    .line 422
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 424
    iget-object v2, p0, Lorg/apache/cordova/file/LocalFilesystem;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 425
    .local v1, "f":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 426
    const/4 v2, 0x1

    .line 432
    .end local v1    # "f":Ljava/io/File;
    :goto_1
    return v2

    .line 424
    .restart local v1    # "f":Ljava/io/File;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 431
    .end local v1    # "f":Ljava/io/File;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "extPath":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1
.end method


# virtual methods
.method public URLforFilesystemPath(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lorg/apache/cordova/file/LocalFilesystem;->fullPathForFilesystemPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/cordova/file/LocalFilesystem;->localUrlforFullPath(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v0

    return-object v0
.end method

.method public canRemoveFileAtLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Z
    .locals 3
    .param p1, "inputURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;

    .prologue
    .line 469
    invoke-virtual {p0, p1}, Lorg/apache/cordova/file/LocalFilesystem;->filesystemPathForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 471
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    return v2
.end method

.method public copyFileToURL(Lorg/apache/cordova/file/LocalFilesystemURL;Ljava/lang/String;Lorg/apache/cordova/file/Filesystem;Lorg/apache/cordova/file/LocalFilesystemURL;Z)Lorg/json/JSONObject;
    .locals 9
    .param p1, "destURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "srcFs"    # Lorg/apache/cordova/file/Filesystem;
    .param p4, "srcURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;
    .param p5, "move"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/InvalidModificationException;,
            Lorg/json/JSONException;,
            Lorg/apache/cordova/file/NoModificationAllowedException;,
            Lorg/apache/cordova/file/FileExistsException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-virtual {p0, p1}, Lorg/apache/cordova/file/LocalFilesystem;->filesystemPathForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, "newParent":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    .local v1, "destinationDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 337
    new-instance v6, Ljava/io/FileNotFoundException;

    const-string v7, "The source does not exist"

    invoke-direct {v6, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 341
    :cond_0
    iget-boolean v6, p4, Lorg/apache/cordova/file/LocalFilesystemURL;->isDirectory:Z

    invoke-virtual {p0, p2, p4, p1, v6}, Lorg/apache/cordova/file/LocalFilesystem;->makeDestinationURL(Ljava/lang/String;Lorg/apache/cordova/file/LocalFilesystemURL;Lorg/apache/cordova/file/LocalFilesystemURL;Z)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v2

    .line 343
    .local v2, "destinationURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    invoke-virtual {p0, v2}, Lorg/apache/cordova/file/LocalFilesystem;->toNativeUri(Lorg/apache/cordova/file/LocalFilesystemURL;)Landroid/net/Uri;

    move-result-object v3

    .line 344
    .local v3, "dstNativeUri":Landroid/net/Uri;
    invoke-virtual {p3, p4}, Lorg/apache/cordova/file/Filesystem;->toNativeUri(Lorg/apache/cordova/file/LocalFilesystemURL;)Landroid/net/Uri;

    move-result-object v5

    .line 346
    .local v5, "srcNativeUri":Landroid/net/Uri;
    invoke-virtual {v3, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 347
    new-instance v6, Lorg/apache/cordova/file/InvalidModificationException;

    const-string v7, "Can\'t copy onto itself"

    invoke-direct {v6, v7}, Lorg/apache/cordova/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 350
    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual {p3, p4}, Lorg/apache/cordova/file/Filesystem;->canRemoveFileAtLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 351
    new-instance v6, Lorg/apache/cordova/file/InvalidModificationException;

    const-string v7, "Source URL is read-only (cannot move)"

    invoke-direct {v6, v7}, Lorg/apache/cordova/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 354
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 355
    .local v0, "destFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 356
    iget-boolean v6, p4, Lorg/apache/cordova/file/LocalFilesystemURL;->isDirectory:Z

    if-nez v6, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 357
    new-instance v6, Lorg/apache/cordova/file/InvalidModificationException;

    const-string v7, "Can\'t copy/move a file to an existing directory"

    invoke-direct {v6, v7}, Lorg/apache/cordova/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 358
    :cond_3
    iget-boolean v6, p4, Lorg/apache/cordova/file/LocalFilesystemURL;->isDirectory:Z

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 359
    new-instance v6, Lorg/apache/cordova/file/InvalidModificationException;

    const-string v7, "Can\'t copy/move a directory to an existing file"

    invoke-direct {v6, v7}, Lorg/apache/cordova/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 363
    :cond_4
    iget-boolean v6, p4, Lorg/apache/cordova/file/LocalFilesystemURL;->isDirectory:Z

    if-eqz v6, :cond_6

    .line 365
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 366
    new-instance v6, Lorg/apache/cordova/file/InvalidModificationException;

    const-string v7, "Can\'t copy directory into itself"

    invoke-direct {v6, v7}, Lorg/apache/cordova/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 368
    :cond_5
    invoke-direct {p0, p3, p4, v0, p5}, Lorg/apache/cordova/file/LocalFilesystem;->copyDirectory(Lorg/apache/cordova/file/Filesystem;Lorg/apache/cordova/file/LocalFilesystemURL;Ljava/io/File;Z)V

    .line 372
    :goto_0
    invoke-virtual {p0, v2}, Lorg/apache/cordova/file/LocalFilesystem;->makeEntryForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/json/JSONObject;

    move-result-object v6

    return-object v6

    .line 370
    :cond_6
    invoke-direct {p0, p3, p4, v0, p5}, Lorg/apache/cordova/file/LocalFilesystem;->copyFile(Lorg/apache/cordova/file/Filesystem;Lorg/apache/cordova/file/LocalFilesystemURL;Ljava/io/File;Z)V

    goto :goto_0
.end method

.method public exists(Lorg/apache/cordova/file/LocalFilesystemURL;)Z
    .locals 2
    .param p1, "inputURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;

    .prologue
    .line 189
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lorg/apache/cordova/file/LocalFilesystem;->filesystemPathForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, "fp":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public filesystemPathForFullPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fullPath"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/cordova/file/LocalFilesystem;->rootUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public filesystemPathForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Lorg/apache/cordova/file/LocalFilesystemURL;

    .prologue
    .line 58
    iget-object v0, p1, Lorg/apache/cordova/file/LocalFilesystemURL;->path:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/cordova/file/LocalFilesystem;->filesystemPathForFullPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileForLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .locals 6
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
    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "create":Z
    const/4 v1, 0x0

    .line 116
    .local v1, "exclusive":Z
    if-eqz p3, :cond_0

    .line 117
    const-string v4, "create"

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 118
    if-eqz v0, :cond_0

    .line 119
    const-string v4, "exclusive"

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 124
    :cond_0
    const-string v4, ":"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 125
    new-instance v4, Lorg/apache/cordova/file/EncodingException;

    const-string v5, "This path has an invalid \":\" in it."

    invoke-direct {v4, v5}, Lorg/apache/cordova/file/EncodingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 131
    :cond_1
    if-eqz p4, :cond_2

    const-string v4, "/"

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 134
    :cond_2
    const-string v4, "/"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 135
    invoke-static {p2}, Lorg/apache/cordova/file/LocalFilesystem;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/cordova/file/LocalFilesystem;->localUrlforFullPath(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v3

    .line 140
    .local v3, "requestedURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0, v3}, Lorg/apache/cordova/file/LocalFilesystem;->filesystemPathForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v2, "fp":Ljava/io/File;
    if-eqz v0, :cond_6

    .line 143
    if-eqz v1, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 144
    new-instance v4, Lorg/apache/cordova/file/FileExistsException;

    const-string v5, "create/exclusive fails"

    invoke-direct {v4, v5}, Lorg/apache/cordova/file/FileExistsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 137
    .end local v2    # "fp":Ljava/io/File;
    .end local v3    # "requestedURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lorg/apache/cordova/file/LocalFilesystemURL;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/cordova/file/LocalFilesystem;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/cordova/file/LocalFilesystem;->localUrlforFullPath(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v3

    .restart local v3    # "requestedURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    goto :goto_0

    .line 146
    .restart local v2    # "fp":Ljava/io/File;
    :cond_4
    if-eqz p4, :cond_5

    .line 147
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 151
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_9

    .line 152
    new-instance v4, Lorg/apache/cordova/file/FileExistsException;

    const-string v5, "create fails"

    invoke-direct {v4, v5}, Lorg/apache/cordova/file/FileExistsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 149
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    goto :goto_1

    .line 156
    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_7

    .line 157
    new-instance v4, Ljava/io/FileNotFoundException;

    const-string v5, "path does not exist"

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 159
    :cond_7
    if-eqz p4, :cond_8

    .line 160
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 161
    new-instance v4, Lorg/apache/cordova/file/TypeMismatchException;

    const-string v5, "path doesn\'t exist or is file"

    invoke-direct {v4, v5}, Lorg/apache/cordova/file/TypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 164
    :cond_8
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 165
    new-instance v4, Lorg/apache/cordova/file/TypeMismatchException;

    const-string v5, "path doesn\'t exist or is directory"

    invoke-direct {v4, v5}, Lorg/apache/cordova/file/TypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 171
    :cond_9
    invoke-virtual {p0, v3}, Lorg/apache/cordova/file/LocalFilesystem;->makeEntryForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/json/JSONObject;

    move-result-object v4

    return-object v4
.end method

.method public getFileMetadataForLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "inputURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 242
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lorg/apache/cordova/file/LocalFilesystem;->filesystemPathForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 245
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lorg/apache/cordova/file/LocalFilesystemURL;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not exist."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 248
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 251
    .local v2, "metadata":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "size"

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    const-wide/16 v4, 0x0

    :goto_0
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 252
    const-string v3, "type"

    iget-object v4, p0, Lorg/apache/cordova/file/LocalFilesystem;->resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/cordova/CordovaResourceApi;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string v3, "name"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    const-string v3, "fullPath"

    iget-object v4, p1, Lorg/apache/cordova/file/LocalFilesystemURL;->path:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    const-string v3, "lastModifiedDate"

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 259
    .end local v2    # "metadata":Lorg/json/JSONObject;
    :goto_1
    return-object v2

    .line 251
    .restart local v2    # "metadata":Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->length()J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Lorg/json/JSONException;
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getFreeSpaceInBytes()J
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lorg/apache/cordova/file/LocalFilesystem;->rootUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/cordova/file/DirectoryManager;->getFreeSpaceInBytes(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public listChildren(Lorg/apache/cordova/file/LocalFilesystemURL;)[Lorg/apache/cordova/file/LocalFilesystemURL;
    .locals 5
    .param p1, "inputURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 220
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0, p1}, Lorg/apache/cordova/file/LocalFilesystem;->filesystemPathForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    .local v2, "fp":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 224
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4}, Ljava/io/FileNotFoundException;-><init>()V

    throw v4

    .line 227
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 228
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_2

    .line 230
    const/4 v0, 0x0

    .line 237
    :cond_1
    return-object v0

    .line 232
    :cond_2
    array-length v4, v1

    new-array v0, v4, [Lorg/apache/cordova/file/LocalFilesystemURL;

    .line 233
    .local v0, "entries":[Lorg/apache/cordova/file/LocalFilesystemURL;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 234
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/cordova/file/LocalFilesystem;->URLforFilesystemPath(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v4

    aput-object v4, v0, v3

    .line 233
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public recursiveRemoveFileAtLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Z
    .locals 2
    .param p1, "inputURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/FileExistsException;
        }
    .end annotation

    .prologue
    .line 200
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lorg/apache/cordova/file/LocalFilesystem;->filesystemPathForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {p0, v0}, Lorg/apache/cordova/file/LocalFilesystem;->removeDirRecursively(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method protected removeDirRecursively(Ljava/io/File;)Z
    .locals 4
    .param p1, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/FileExistsException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 207
    .local v0, "file":Ljava/io/File;
    invoke-virtual {p0, v0}, Lorg/apache/cordova/file/LocalFilesystem;->removeDirRecursively(Ljava/io/File;)Z

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 212
    new-instance v1, Lorg/apache/cordova/file/FileExistsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not delete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/cordova/file/FileExistsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public removeFileAtLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Z
    .locals 3
    .param p1, "inputURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/InvalidModificationException;
        }
    .end annotation

    .prologue
    .line 177
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lorg/apache/cordova/file/LocalFilesystem;->filesystemPathForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, "fp":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 181
    new-instance v1, Lorg/apache/cordova/file/InvalidModificationException;

    const-string v2, "You can\'t delete a directory that is not empty."

    invoke-direct {v1, v2}, Lorg/apache/cordova/file/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method public toLocalUri(Landroid/net/Uri;)Lorg/apache/cordova/file/LocalFilesystemURL;
    .locals 8
    .param p1, "inputURL"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    .line 75
    const-string v6, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-object v5

    .line 78
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 81
    .local v2, "resolvedUri":Landroid/net/Uri;
    iget-object v6, p0, Lorg/apache/cordova/file/LocalFilesystem;->rootUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "rootUriNoTrailingSlash":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 86
    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "subPath":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 89
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 91
    :cond_2
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    const-string v6, "cdvfile"

    .line 92
    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "localhost"

    .line 93
    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/cordova/file/LocalFilesystem;->name:Ljava/lang/String;

    .line 94
    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 95
    .local v0, "b":Landroid/net/Uri$Builder;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 96
    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 98
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 100
    const-string v5, ""

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 102
    :cond_4
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
    .line 70
    iget-object v0, p1, Lorg/apache/cordova/file/LocalFilesystemURL;->path:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/cordova/file/LocalFilesystem;->nativeUriForFullPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public truncateFileAtURL(Lorg/apache/cordova/file/LocalFilesystemURL;J)J
    .locals 6
    .param p1, "inputURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;
    .param p2, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lorg/apache/cordova/file/LocalFilesystem;->filesystemPathForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 447
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 448
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lorg/apache/cordova/file/LocalFilesystemURL;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not exist."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 451
    :cond_0
    new-instance v2, Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p1}, Lorg/apache/cordova/file/LocalFilesystem;->filesystemPathForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    .local v2, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    cmp-long v3, v4, p2

    if-ltz v3, :cond_1

    .line 454
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 455
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v0, p2, p3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 459
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local p2    # "size":J
    :goto_0
    return-wide p2

    .restart local p2    # "size":J
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide p2

    .line 461
    .end local p2    # "size":J
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    .restart local p2    # "size":J
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    throw v3
.end method

.method public writeToFileAtURL(Lorg/apache/cordova/file/LocalFilesystemURL;Ljava/lang/String;IZ)J
    .locals 11
    .param p1, "inputURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "isBinary"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/NoModificationAllowedException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 379
    const/4 v1, 0x0

    .line 380
    .local v1, "append":Z
    if-lez p3, :cond_0

    .line 381
    int-to-long v8, p3

    invoke-virtual {p0, p1, v8, v9}, Lorg/apache/cordova/file/LocalFilesystem;->truncateFileAtURL(Lorg/apache/cordova/file/LocalFilesystemURL;J)J

    .line 382
    const/4 v1, 0x1

    .line 386
    :cond_0
    if-eqz p4, :cond_2

    .line 387
    invoke-static {p2, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    .line 391
    .local v6, "rawData":[B
    :goto_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 394
    .local v4, "in":Ljava/io/ByteArrayInputStream;
    :try_start_0
    array-length v8, v6

    new-array v2, v8, [B

    .line 395
    .local v2, "buff":[B
    invoke-virtual {p0, p1}, Lorg/apache/cordova/file/LocalFilesystem;->filesystemPathForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "absolutePath":Ljava/lang/String;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .local v5, "out":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    :try_start_1
    array-length v9, v2

    invoke-virtual {v4, v2, v8, v9}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 399
    const/4 v8, 0x0

    array-length v9, v6

    invoke-virtual {v5, v2, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 400
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 405
    invoke-direct {p0, v0}, Lorg/apache/cordova/file/LocalFilesystem;->isPublicDirectory(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 406
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/apache/cordova/file/LocalFilesystem;->broadcastNewFile(Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 417
    :cond_1
    array-length v8, v6

    int-to-long v8, v8

    return-wide v8

    .line 389
    .end local v0    # "absolutePath":Ljava/lang/String;
    .end local v2    # "buff":[B
    .end local v4    # "in":Ljava/io/ByteArrayInputStream;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "rawData":[B
    :cond_2
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    .restart local v6    # "rawData":[B
    goto :goto_0

    .line 403
    .restart local v0    # "absolutePath":Ljava/lang/String;
    .restart local v2    # "buff":[B
    .restart local v4    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v8

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    throw v8
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    .line 409
    .end local v0    # "absolutePath":Ljava/lang/String;
    .end local v2    # "buff":[B
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 412
    .local v3, "e":Ljava/lang/NullPointerException;
    new-instance v7, Lorg/apache/cordova/file/NoModificationAllowedException;

    invoke-virtual {p1}, Lorg/apache/cordova/file/LocalFilesystemURL;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/cordova/file/NoModificationAllowedException;-><init>(Ljava/lang/String;)V

    .line 413
    .local v7, "realException":Lorg/apache/cordova/file/NoModificationAllowedException;
    invoke-virtual {v7, v3}, Lorg/apache/cordova/file/NoModificationAllowedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 414
    throw v7
.end method
