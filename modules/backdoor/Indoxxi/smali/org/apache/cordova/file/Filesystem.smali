.class public abstract Lorg/apache/cordova/file/Filesystem;
.super Ljava/lang/Object;
.source "Filesystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/file/Filesystem$LimitedInputStream;,
        Lorg/apache/cordova/file/Filesystem$ReadFileCallback;
    }
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field protected final resourceApi:Lorg/apache/cordova/CordovaResourceApi;

.field private rootEntry:Lorg/json/JSONObject;

.field protected final rootUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lorg/apache/cordova/CordovaResourceApi;)V
    .locals 0
    .param p1, "rootUri"    # Landroid/net/Uri;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "resourceApi"    # Lorg/apache/cordova/CordovaResourceApi;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/cordova/file/Filesystem;->rootUri:Landroid/net/Uri;

    .line 46
    iput-object p2, p0, Lorg/apache/cordova/file/Filesystem;->name:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lorg/apache/cordova/file/Filesystem;->resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    .line 48
    return-void
.end method

.method public static makeEntryForURL(Lorg/apache/cordova/file/LocalFilesystemURL;Landroid/net/Uri;)Lorg/json/JSONObject;
    .locals 12
    .param p0, "inputURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;
    .param p1, "nativeURL"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 56
    :try_start_0
    iget-object v6, p0, Lorg/apache/cordova/file/LocalFilesystemURL;->path:Ljava/lang/String;

    .line 57
    .local v6, "path":Ljava/lang/String;
    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v1, v8

    .line 58
    .local v1, "end":I
    :goto_0
    const/4 v9, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v1

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "/+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, "parts":[Ljava/lang/String;
    array-length v9, v5

    add-int/lit8 v9, v9, -0x1

    aget-object v3, v5, v9

    .line 61
    .local v3, "fileName":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 62
    .local v2, "entry":Lorg/json/JSONObject;
    const-string v10, "isFile"

    iget-boolean v9, p0, Lorg/apache/cordova/file/LocalFilesystemURL;->isDirectory:Z

    if-nez v9, :cond_2

    move v9, v8

    :goto_1
    invoke-virtual {v2, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 63
    const-string v9, "isDirectory"

    iget-boolean v10, p0, Lorg/apache/cordova/file/LocalFilesystemURL;->isDirectory:Z

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 64
    const-string v9, "name"

    invoke-virtual {v2, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v9, "fullPath"

    invoke-virtual {v2, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v9, "filesystemName"

    iget-object v10, p0, Lorg/apache/cordova/file/LocalFilesystemURL;->fsName:Ljava/lang/String;

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v9, "filesystem"

    const-string v10, "temporary"

    iget-object v11, p0, Lorg/apache/cordova/file/LocalFilesystemURL;->fsName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    :goto_2
    invoke-virtual {v2, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 72
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, "nativeUrlStr":Ljava/lang/String;
    iget-boolean v7, p0, Lorg/apache/cordova/file/LocalFilesystemURL;->isDirectory:Z

    if-eqz v7, :cond_0

    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 74
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 76
    :cond_0
    const-string v7, "nativeURL"

    invoke-virtual {v2, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    return-object v2

    .end local v1    # "end":I
    .end local v2    # "entry":Lorg/json/JSONObject;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "nativeUrlStr":Ljava/lang/String;
    .end local v5    # "parts":[Ljava/lang/String;
    :cond_1
    move v1, v7

    .line 57
    goto :goto_0

    .restart local v1    # "end":I
    .restart local v2    # "entry":Lorg/json/JSONObject;
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v5    # "parts":[Ljava/lang/String;
    :cond_2
    move v9, v7

    .line 62
    goto :goto_1

    :cond_3
    move v7, v8

    .line 70
    goto :goto_2

    .line 78
    .end local v1    # "end":I
    .end local v2    # "entry":Lorg/json/JSONObject;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v5    # "parts":[Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 80
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method protected static normalizePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "rawPath"    # Ljava/lang/String;

    .prologue
    .line 162
    const-string v5, "/"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 163
    .local v3, "isAbsolutePath":Z
    if-eqz v3, :cond_0

    .line 164
    const-string v5, "/+"

    const-string v6, ""

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 166
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const-string v5, "/+"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 167
    .local v1, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 168
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, ".."

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 169
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 170
    if-lez v2, :cond_1

    .line 171
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 172
    add-int/lit8 v2, v2, -0x1

    .line 167
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v4, "normalizedPath":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    .local v0, "component":Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 181
    .end local v0    # "component":Ljava/lang/String;
    :cond_3
    if-eqz v3, :cond_4

    .line 182
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 184
    :goto_2
    return-object v5

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method


# virtual methods
.method abstract URLforFilesystemPath(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;
.end method

.method abstract canRemoveFileAtLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Z
.end method

.method public copyFileToURL(Lorg/apache/cordova/file/LocalFilesystemURL;Ljava/lang/String;Lorg/apache/cordova/file/Filesystem;Lorg/apache/cordova/file/LocalFilesystemURL;Z)Lorg/json/JSONObject;
    .locals 7
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
    .line 241
    if-eqz p5, :cond_0

    invoke-virtual {p3, p4}, Lorg/apache/cordova/file/Filesystem;->canRemoveFileAtLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 242
    new-instance v5, Lorg/apache/cordova/file/NoModificationAllowedException;

    const-string v6, "Cannot move file at source URL"

    invoke-direct {v5, v6}, Lorg/apache/cordova/file/NoModificationAllowedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 244
    :cond_0
    iget-boolean v5, p4, Lorg/apache/cordova/file/LocalFilesystemURL;->isDirectory:Z

    invoke-virtual {p0, p2, p4, p1, v5}, Lorg/apache/cordova/file/Filesystem;->makeDestinationURL(Ljava/lang/String;Lorg/apache/cordova/file/LocalFilesystemURL;Lorg/apache/cordova/file/LocalFilesystemURL;Z)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v0

    .line 246
    .local v0, "destination":Lorg/apache/cordova/file/LocalFilesystemURL;
    invoke-virtual {p3, p4}, Lorg/apache/cordova/file/Filesystem;->toNativeUri(Lorg/apache/cordova/file/LocalFilesystemURL;)Landroid/net/Uri;

    move-result-object v4

    .line 248
    .local v4, "srcNativeUri":Landroid/net/Uri;
    iget-object v5, p0, Lorg/apache/cordova/file/Filesystem;->resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    invoke-virtual {v5, v4}, Lorg/apache/cordova/CordovaResourceApi;->openForRead(Landroid/net/Uri;)Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;

    move-result-object v2

    .line 249
    .local v2, "ofrr":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    const/4 v3, 0x0

    .line 251
    .local v3, "os":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/cordova/file/Filesystem;->getOutputStreamForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 257
    iget-object v5, p0, Lorg/apache/cordova/file/Filesystem;->resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    invoke-virtual {v5, v2, v3}, Lorg/apache/cordova/CordovaResourceApi;->copyResource(Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;Ljava/io/OutputStream;)V

    .line 259
    if-eqz p5, :cond_1

    .line 260
    invoke-virtual {p3, p4}, Lorg/apache/cordova/file/Filesystem;->removeFileAtLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Z

    .line 262
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/cordova/file/Filesystem;->getEntryForLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/json/JSONObject;

    move-result-object v5

    return-object v5

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Ljava/io/IOException;
    iget-object v5, v2, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 254
    throw v1
.end method

.method public exists(Lorg/apache/cordova/file/LocalFilesystemURL;)Z
    .locals 2
    .param p1, "inputURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;

    .prologue
    .line 130
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/cordova/file/Filesystem;->getFileMetadataForLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method abstract filesystemPathForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Ljava/lang/String;
.end method

.method public getEntryForLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/json/JSONObject;
    .locals 1
    .param p1, "inputURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lorg/apache/cordova/file/Filesystem;->makeEntryForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method abstract getFileForLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/FileExistsException;,
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/TypeMismatchException;,
            Lorg/apache/cordova/file/EncodingException;,
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method abstract getFileMetadataForLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public getFreeSpaceInBytes()J
    .locals 2

    .prologue
    .line 193
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOutputStreamForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Ljava/io/OutputStream;
    .locals 2
    .param p1, "inputURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lorg/apache/cordova/file/Filesystem;->resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    invoke-virtual {p0, p1}, Lorg/apache/cordova/file/Filesystem;->toNativeUri(Lorg/apache/cordova/file/LocalFilesystemURL;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaResourceApi;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getParentForLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "inputURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v1, p1, Lorg/apache/cordova/file/LocalFilesystemURL;->uri:Landroid/net/Uri;

    .line 208
    .local v1, "parentUri":Landroid/net/Uri;
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lorg/apache/cordova/file/LocalFilesystemURL;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "parentPath":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    iget-object v2, p1, Lorg/apache/cordova/file/LocalFilesystemURL;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 212
    :cond_0
    invoke-static {v1}, Lorg/apache/cordova/file/LocalFilesystemURL;->parse(Landroid/net/Uri;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/cordova/file/Filesystem;->getEntryForLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/json/JSONObject;

    move-result-object v2

    return-object v2
.end method

.method public getRootEntry()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/apache/cordova/file/Filesystem;->rootEntry:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lorg/apache/cordova/file/Filesystem;->rootUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lorg/apache/cordova/file/Filesystem;->makeEntryForNativeUri(Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/file/Filesystem;->rootEntry:Lorg/json/JSONObject;

    .line 203
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/file/Filesystem;->rootEntry:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getRootUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/cordova/file/Filesystem;->rootUri:Landroid/net/Uri;

    return-object v0
.end method

.method abstract listChildren(Lorg/apache/cordova/file/LocalFilesystemURL;)[Lorg/apache/cordova/file/LocalFilesystemURL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public localUrlforFullPath(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;
    .locals 2
    .param p1, "fullPath"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lorg/apache/cordova/file/Filesystem;->nativeUriForFullPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 151
    .local v0, "nativeUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0, v0}, Lorg/apache/cordova/file/Filesystem;->toLocalUri(Landroid/net/Uri;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v1

    .line 154
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected makeDestinationURL(Ljava/lang/String;Lorg/apache/cordova/file/LocalFilesystemURL;Lorg/apache/cordova/file/LocalFilesystemURL;Z)Lorg/apache/cordova/file/LocalFilesystemURL;
    .locals 3
    .param p1, "newName"    # Ljava/lang/String;
    .param p2, "srcURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;
    .param p3, "destURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;
    .param p4, "isDirectory"    # Z

    .prologue
    .line 217
    const-string v1, "null"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    :cond_0
    iget-object v1, p2, Lorg/apache/cordova/file/LocalFilesystemURL;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 221
    :cond_1
    iget-object v1, p3, Lorg/apache/cordova/file/LocalFilesystemURL;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "newDest":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    :goto_0
    if-eqz p4, :cond_2

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    :cond_2
    invoke-static {v0}, Lorg/apache/cordova/file/LocalFilesystemURL;->parse(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v1

    return-object v1

    .line 225
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public makeEntryForFile(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 99
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/cordova/file/Filesystem;->makeEntryForNativeUri(Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public makeEntryForNativeUri(Landroid/net/Uri;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "nativeUri"    # Landroid/net/Uri;

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lorg/apache/cordova/file/Filesystem;->toLocalUri(Landroid/net/Uri;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v0

    .line 91
    .local v0, "inputUrl":Lorg/apache/cordova/file/LocalFilesystemURL;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0, p1}, Lorg/apache/cordova/file/Filesystem;->makeEntryForURL(Lorg/apache/cordova/file/LocalFilesystemURL;Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0
.end method

.method public makeEntryForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "inputURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lorg/apache/cordova/file/Filesystem;->toNativeUri(Lorg/apache/cordova/file/LocalFilesystemURL;)Landroid/net/Uri;

    move-result-object v0

    .line 86
    .local v0, "nativeUri":Landroid/net/Uri;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1, v0}, Lorg/apache/cordova/file/Filesystem;->makeEntryForURL(Lorg/apache/cordova/file/LocalFilesystemURL;Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0
.end method

.method public nativeUriForFullPath(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p1, "fullPath"    # Ljava/lang/String;

    .prologue
    .line 138
    const/4 v1, 0x0

    .line 139
    .local v1, "ret":Landroid/net/Uri;
    if-eqz p1, :cond_1

    .line 140
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "encodedPath":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    :cond_0
    iget-object v2, p0, Lorg/apache/cordova/file/Filesystem;->rootUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 146
    .end local v0    # "encodedPath":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public final readEntriesAtLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/json/JSONArray;
    .locals 6
    .param p1, "inputURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lorg/apache/cordova/file/Filesystem;->listChildren(Lorg/apache/cordova/file/LocalFilesystemURL;)[Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v0

    .line 113
    .local v0, "children":[Lorg/apache/cordova/file/LocalFilesystemURL;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 114
    .local v1, "entries":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 115
    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 116
    .local v2, "url":Lorg/apache/cordova/file/LocalFilesystemURL;
    invoke-virtual {p0, v2}, Lorg/apache/cordova/file/Filesystem;->makeEntryForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 115
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    .end local v2    # "url":Lorg/apache/cordova/file/LocalFilesystemURL;
    :cond_0
    return-object v1
.end method

.method public readFileAtURL(Lorg/apache/cordova/file/LocalFilesystemURL;JJLorg/apache/cordova/file/Filesystem$ReadFileCallback;)V
    .locals 8
    .param p1, "inputURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "readFileCallback"    # Lorg/apache/cordova/file/Filesystem$ReadFileCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    iget-object v5, p0, Lorg/apache/cordova/file/Filesystem;->resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    invoke-virtual {p0, p1}, Lorg/apache/cordova/file/Filesystem;->toNativeUri(Lorg/apache/cordova/file/LocalFilesystemURL;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/cordova/CordovaResourceApi;->openForRead(Landroid/net/Uri;)Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;

    move-result-object v4

    .line 272
    .local v4, "ofrr":Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;
    const-wide/16 v6, 0x0

    cmp-long v5, p4, v6

    if-gez v5, :cond_0

    .line 273
    iget-wide p4, v4, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->length:J

    .line 275
    :cond_0
    sub-long v2, p4, p2

    .line 277
    .local v2, "numBytesToRead":J
    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-lez v5, :cond_1

    .line 278
    :try_start_0
    iget-object v5, v4, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v5, p2, p3}, Ljava/io/InputStream;->skip(J)J

    .line 280
    :cond_1
    iget-object v0, v4, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    .line 281
    .local v0, "inputStream":Ljava/io/InputStream;
    iget-wide v6, v4, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->length:J

    cmp-long v5, p4, v6

    if-gez v5, :cond_2

    .line 282
    new-instance v1, Lorg/apache/cordova/file/Filesystem$LimitedInputStream;

    invoke-direct {v1, p0, v0, v2, v3}, Lorg/apache/cordova/file/Filesystem$LimitedInputStream;-><init>(Lorg/apache/cordova/file/Filesystem;Ljava/io/InputStream;J)V

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .local v1, "inputStream":Ljava/io/InputStream;
    move-object v0, v1

    .line 284
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    :cond_2
    iget-object v5, v4, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->mimeType:Ljava/lang/String;

    invoke-interface {p6, v0, v5}, Lorg/apache/cordova/file/Filesystem$ReadFileCallback;->handleData(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    iget-object v5, v4, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 288
    return-void

    .line 286
    .end local v0    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v5

    iget-object v6, v4, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    throw v5
.end method

.method abstract recursiveRemoveFileAtLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/FileExistsException;,
            Lorg/apache/cordova/file/NoModificationAllowedException;
        }
    .end annotation
.end method

.method abstract removeFileAtLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/InvalidModificationException;,
            Lorg/apache/cordova/file/NoModificationAllowedException;
        }
    .end annotation
.end method

.method public abstract toLocalUri(Landroid/net/Uri;)Lorg/apache/cordova/file/LocalFilesystemURL;
.end method

.method public abstract toNativeUri(Lorg/apache/cordova/file/LocalFilesystemURL;)Landroid/net/Uri;
.end method

.method abstract truncateFileAtURL(Lorg/apache/cordova/file/LocalFilesystemURL;J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/NoModificationAllowedException;
        }
    .end annotation
.end method

.method abstract writeToFileAtURL(Lorg/apache/cordova/file/LocalFilesystemURL;Ljava/lang/String;IZ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/NoModificationAllowedException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
