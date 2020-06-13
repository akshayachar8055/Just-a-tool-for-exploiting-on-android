.class public Lorg/apache/cordova/file/FileUtils;
.super Lorg/apache/cordova/CordovaPlugin;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/file/FileUtils$FileOp;
    }
.end annotation


# static fields
.field public static ABORT_ERR:I = 0x0

.field public static final ACTION_GET_DIRECTORY:I = 0x2

.field public static final ACTION_GET_FILE:I = 0x0

.field public static final ACTION_WRITE:I = 0x1

.field public static ENCODING_ERR:I = 0x0

.field public static INVALID_MODIFICATION_ERR:I = 0x0

.field public static INVALID_STATE_ERR:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "FileUtils"

.field public static NOT_FOUND_ERR:I = 0x0

.field public static NOT_READABLE_ERR:I = 0x0

.field public static NO_MODIFICATION_ALLOWED_ERR:I = 0x0

.field public static PATH_EXISTS_ERR:I = 0x0

.field public static QUOTA_EXCEEDED_ERR:I = 0x0

.field public static final READ:I = 0x4

.field public static SECURITY_ERR:I = 0x0

.field public static SYNTAX_ERR:I = 0x0

.field public static TYPE_MISMATCH_ERR:I = 0x0

.field public static UNKNOWN_ERR:I = 0x0

.field public static final WRITE:I = 0x3

.field private static filePlugin:Lorg/apache/cordova/file/FileUtils;


# instance fields
.field private configured:Z

.field private filesystems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/cordova/file/Filesystem;",
            ">;"
        }
    .end annotation
.end field

.field private pendingRequests:Lorg/apache/cordova/file/PendingRequests;

.field private permissions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    sput v0, Lorg/apache/cordova/file/FileUtils;->NOT_FOUND_ERR:I

    .line 60
    const/4 v0, 0x2

    sput v0, Lorg/apache/cordova/file/FileUtils;->SECURITY_ERR:I

    .line 61
    const/4 v0, 0x3

    sput v0, Lorg/apache/cordova/file/FileUtils;->ABORT_ERR:I

    .line 63
    const/4 v0, 0x4

    sput v0, Lorg/apache/cordova/file/FileUtils;->NOT_READABLE_ERR:I

    .line 64
    const/4 v0, 0x5

    sput v0, Lorg/apache/cordova/file/FileUtils;->ENCODING_ERR:I

    .line 65
    const/4 v0, 0x6

    sput v0, Lorg/apache/cordova/file/FileUtils;->NO_MODIFICATION_ALLOWED_ERR:I

    .line 66
    const/4 v0, 0x7

    sput v0, Lorg/apache/cordova/file/FileUtils;->INVALID_STATE_ERR:I

    .line 67
    const/16 v0, 0x8

    sput v0, Lorg/apache/cordova/file/FileUtils;->SYNTAX_ERR:I

    .line 68
    const/16 v0, 0x9

    sput v0, Lorg/apache/cordova/file/FileUtils;->INVALID_MODIFICATION_ERR:I

    .line 69
    const/16 v0, 0xa

    sput v0, Lorg/apache/cordova/file/FileUtils;->QUOTA_EXCEEDED_ERR:I

    .line 70
    const/16 v0, 0xb

    sput v0, Lorg/apache/cordova/file/FileUtils;->TYPE_MISMATCH_ERR:I

    .line 71
    const/16 v0, 0xc

    sput v0, Lorg/apache/cordova/file/FileUtils;->PATH_EXISTS_ERR:I

    .line 84
    const/16 v0, 0x3e8

    sput v0, Lorg/apache/cordova/file/FileUtils;->UNKNOWN_ERR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 86
    iput-boolean v2, p0, Lorg/apache/cordova/file/FileUtils;->configured:Z

    .line 96
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/apache/cordova/file/FileUtils;->permissions:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/file/FileUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/apache/cordova/file/FileUtils;->resolveLocalFileSystemURI(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/file/FileUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/file/FileUtils;->needPermission(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/file/FileUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lorg/json/JSONObject;
    .param p4, "x4"    # Z
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
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/cordova/file/FileUtils;->getFile(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/file/FileUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/NoModificationAllowedException;,
            Lorg/apache/cordova/file/InvalidModificationException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/apache/cordova/file/FileUtils;->remove(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/file/FileUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/FileExistsException;,
            Lorg/apache/cordova/file/NoModificationAllowedException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/apache/cordova/file/FileUtils;->removeRecursively(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/file/FileUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lorg/apache/cordova/file/NoModificationAllowedException;,
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/InvalidModificationException;,
            Lorg/apache/cordova/file/EncodingException;,
            Lorg/apache/cordova/file/FileExistsException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/cordova/file/FileUtils;->transferTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/file/FileUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/json/JSONException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/apache/cordova/file/FileUtils;->readEntries(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;ILorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/file/FileUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->getWritePermission(Ljava/lang/String;ILorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;J)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/cordova/file/FileUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/NoModificationAllowedException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->truncateFile(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lorg/apache/cordova/file/FileUtils;)Lorg/json/JSONArray;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/file/FileUtils;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/apache/cordova/file/FileUtils;->requestAllFileSystems()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/cordova/file/FileUtils;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/file/FileUtils;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/apache/cordova/file/FileUtils;->requestAllPaths()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/cordova/file/FileUtils;IJLorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/file/FileUtils;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/cordova/file/FileUtils;->requestFileSystem(IJLorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$700(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/file/FileUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/json/JSONException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/apache/cordova/file/FileUtils;->getFileMetadata(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/file/FileUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/apache/cordova/file/FileUtils;->getParent(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;ILorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/file/FileUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->getReadPermission(Ljava/lang/String;ILorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method private filesystemForName(Ljava/lang/String;)Lorg/apache/cordova/file/Filesystem;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v1, p0, Lorg/apache/cordova/file/FileUtils;->filesystems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/file/Filesystem;

    .line 117
    .local v0, "fs":Lorg/apache/cordova/file/Filesystem;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lorg/apache/cordova/file/Filesystem;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/apache/cordova/file/Filesystem;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    .end local v0    # "fs":Lorg/apache/cordova/file/Filesystem;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private filesystemForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/apache/cordova/file/Filesystem;
    .locals 1
    .param p1, "localURL"    # Lorg/apache/cordova/file/LocalFilesystemURL;

    .prologue
    .line 242
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 243
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lorg/apache/cordova/file/LocalFilesystemURL;->fsName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/cordova/file/FileUtils;->filesystemForName(Ljava/lang/String;)Lorg/apache/cordova/file/Filesystem;

    move-result-object v0

    goto :goto_0
.end method

.method public static getEntry(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1042
    invoke-static {}, Lorg/apache/cordova/file/FileUtils;->getFilePlugin()Lorg/apache/cordova/file/FileUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1043
    invoke-static {}, Lorg/apache/cordova/file/FileUtils;->getFilePlugin()Lorg/apache/cordova/file/FileUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/cordova/file/FileUtils;->getEntryForFile(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1045
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFile(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .locals 6
    .param p1, "baseURLstr"    # Ljava/lang/String;
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
    .line 880
    :try_start_0
    invoke-static {p1}, Lorg/apache/cordova/file/LocalFilesystemURL;->parse(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v2

    .line 881
    .local v2, "inputURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    invoke-direct {p0, v2}, Lorg/apache/cordova/file/FileUtils;->filesystemForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/apache/cordova/file/Filesystem;

    move-result-object v1

    .line 882
    .local v1, "fs":Lorg/apache/cordova/file/Filesystem;
    if-nez v1, :cond_0

    .line 883
    new-instance v4, Ljava/net/MalformedURLException;

    const-string v5, "No installed handlers for this URL"

    invoke-direct {v4, v5}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    .end local v1    # "fs":Lorg/apache/cordova/file/Filesystem;
    .end local v2    # "inputURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    :catch_0
    move-exception v0

    .line 888
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/net/MalformedURLException;

    const-string v4, "Unrecognized filesystem URL"

    invoke-direct {v3, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    .line 889
    .local v3, "mue":Ljava/net/MalformedURLException;
    invoke-virtual {v3, v0}, Ljava/net/MalformedURLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 890
    throw v3

    .line 885
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "mue":Ljava/net/MalformedURLException;
    .restart local v1    # "fs":Lorg/apache/cordova/file/Filesystem;
    .restart local v2    # "inputURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    :cond_0
    :try_start_1
    invoke-virtual {v1, v2, p2, p3, p4}, Lorg/apache/cordova/file/Filesystem;->getFileForLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    return-object v4
.end method

.method private getFileMetadata(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "baseURLstr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/json/JSONException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 922
    :try_start_0
    invoke-static {p1}, Lorg/apache/cordova/file/LocalFilesystemURL;->parse(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v2

    .line 923
    .local v2, "inputURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    invoke-direct {p0, v2}, Lorg/apache/cordova/file/FileUtils;->filesystemForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/apache/cordova/file/Filesystem;

    move-result-object v1

    .line 924
    .local v1, "fs":Lorg/apache/cordova/file/Filesystem;
    if-nez v1, :cond_0

    .line 925
    new-instance v4, Ljava/net/MalformedURLException;

    const-string v5, "No installed handlers for this URL"

    invoke-direct {v4, v5}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 929
    .end local v1    # "fs":Lorg/apache/cordova/file/Filesystem;
    .end local v2    # "inputURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    :catch_0
    move-exception v0

    .line 930
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/net/MalformedURLException;

    const-string v4, "Unrecognized filesystem URL"

    invoke-direct {v3, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    .line 931
    .local v3, "mue":Ljava/net/MalformedURLException;
    invoke-virtual {v3, v0}, Ljava/net/MalformedURLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 932
    throw v3

    .line 927
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "mue":Ljava/net/MalformedURLException;
    .restart local v1    # "fs":Lorg/apache/cordova/file/Filesystem;
    .restart local v2    # "inputURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    :cond_0
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/apache/cordova/file/Filesystem;->getFileMetadataForLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    return-object v4
.end method

.method public static getFilePlugin()Lorg/apache/cordova/file/FileUtils;
    .locals 1

    .prologue
    .line 238
    sget-object v0, Lorg/apache/cordova/file/FileUtils;->filePlugin:Lorg/apache/cordova/file/FileUtils;

    return-object v0
.end method

.method private getParent(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "baseURLstr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 901
    :try_start_0
    invoke-static {p1}, Lorg/apache/cordova/file/LocalFilesystemURL;->parse(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v2

    .line 902
    .local v2, "inputURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    invoke-direct {p0, v2}, Lorg/apache/cordova/file/FileUtils;->filesystemForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/apache/cordova/file/Filesystem;

    move-result-object v1

    .line 903
    .local v1, "fs":Lorg/apache/cordova/file/Filesystem;
    if-nez v1, :cond_0

    .line 904
    new-instance v4, Ljava/net/MalformedURLException;

    const-string v5, "No installed handlers for this URL"

    invoke-direct {v4, v5}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    .end local v1    # "fs":Lorg/apache/cordova/file/Filesystem;
    .end local v2    # "inputURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    :catch_0
    move-exception v0

    .line 909
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/net/MalformedURLException;

    const-string v4, "Unrecognized filesystem URL"

    invoke-direct {v3, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    .line 910
    .local v3, "mue":Ljava/net/MalformedURLException;
    invoke-virtual {v3, v0}, Ljava/net/MalformedURLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 911
    throw v3

    .line 906
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "mue":Ljava/net/MalformedURLException;
    .restart local v1    # "fs":Lorg/apache/cordova/file/Filesystem;
    .restart local v2    # "inputURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    :cond_0
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/apache/cordova/file/Filesystem;->getParentForLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    return-object v4
.end method

.method private getReadPermission(Ljava/lang/String;ILorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "rawArgs"    # Ljava/lang/String;
    .param p2, "action"    # I
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 553
    iget-object v1, p0, Lorg/apache/cordova/file/FileUtils;->pendingRequests:Lorg/apache/cordova/file/PendingRequests;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/cordova/file/PendingRequests;->createRequest(Ljava/lang/String;ILorg/apache/cordova/CallbackContext;)I

    move-result v0

    .line 554
    .local v0, "requestCode":I
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0, v1}, Lorg/apache/cordova/PermissionHelper;->requestPermission(Lorg/apache/cordova/CordovaPlugin;ILjava/lang/String;)V

    .line 555
    return-void
.end method

.method private getWritePermission(Ljava/lang/String;ILorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "rawArgs"    # Ljava/lang/String;
    .param p2, "action"    # I
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 558
    iget-object v1, p0, Lorg/apache/cordova/file/FileUtils;->pendingRequests:Lorg/apache/cordova/file/PendingRequests;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/cordova/file/PendingRequests;->createRequest(Ljava/lang/String;ILorg/apache/cordova/CallbackContext;)I

    move-result v0

    .line 559
    .local v0, "requestCode":I
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0, v1}, Lorg/apache/cordova/PermissionHelper;->requestPermission(Lorg/apache/cordova/CordovaPlugin;ILjava/lang/String;)V

    .line 560
    return-void
.end method

.method private hasReadPermission()Z
    .locals 1

    .prologue
    .line 563
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lorg/apache/cordova/PermissionHelper;->hasPermission(Lorg/apache/cordova/CordovaPlugin;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hasWritePermission()Z
    .locals 1

    .prologue
    .line 567
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lorg/apache/cordova/PermissionHelper;->hasPermission(Lorg/apache/cordova/CordovaPlugin;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private needPermission(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "nativeURL"    # Ljava/lang/String;
    .param p2, "permissionType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 571
    invoke-direct {p0}, Lorg/apache/cordova/file/FileUtils;->requestAllPaths()Lorg/json/JSONObject;

    move-result-object v2

    .line 572
    .local v2, "j":Lorg/json/JSONObject;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 573
    .local v0, "allowedStorageDirectories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "applicationDirectory"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    const-string v4, "applicationStorageDirectory"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    const-string v4, "externalApplicationStorageDirectory"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 576
    const-string v4, "externalApplicationStorageDirectory"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    :cond_0
    const/4 v4, 0x4

    if-ne p2, v4, :cond_2

    invoke-direct {p0}, Lorg/apache/cordova/file/FileUtils;->hasReadPermission()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 592
    :cond_1
    :goto_0
    return v3

    .line 582
    :cond_2
    const/4 v4, 0x3

    if-ne p2, v4, :cond_3

    invoke-direct {p0}, Lorg/apache/cordova/file/FileUtils;->hasWritePermission()Z

    move-result v4

    if-nez v4, :cond_1

    .line 587
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 588
    .local v1, "directory":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    .line 592
    .end local v1    # "directory":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private readEntries(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 6
    .param p1, "baseURLstr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/json/JSONException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 753
    :try_start_0
    invoke-static {p1}, Lorg/apache/cordova/file/LocalFilesystemURL;->parse(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v2

    .line 754
    .local v2, "inputURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    invoke-direct {p0, v2}, Lorg/apache/cordova/file/FileUtils;->filesystemForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/apache/cordova/file/Filesystem;

    move-result-object v1

    .line 755
    .local v1, "fs":Lorg/apache/cordova/file/Filesystem;
    if-nez v1, :cond_0

    .line 756
    new-instance v4, Ljava/net/MalformedURLException;

    const-string v5, "No installed handlers for this URL"

    invoke-direct {v4, v5}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    .end local v1    # "fs":Lorg/apache/cordova/file/Filesystem;
    .end local v2    # "inputURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    :catch_0
    move-exception v0

    .line 761
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/net/MalformedURLException;

    const-string v4, "Unrecognized filesystem URL"

    invoke-direct {v3, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    .line 762
    .local v3, "mue":Ljava/net/MalformedURLException;
    invoke-virtual {v3, v0}, Ljava/net/MalformedURLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 763
    throw v3

    .line 758
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "mue":Ljava/net/MalformedURLException;
    .restart local v1    # "fs":Lorg/apache/cordova/file/Filesystem;
    .restart local v2    # "inputURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    :cond_0
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/apache/cordova/file/Filesystem;->readEntriesAtLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    return-object v4
.end method

.method private remove(Ljava/lang/String;)Z
    .locals 6
    .param p1, "baseURLstr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/NoModificationAllowedException;,
            Lorg/apache/cordova/file/InvalidModificationException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 844
    :try_start_0
    invoke-static {p1}, Lorg/apache/cordova/file/LocalFilesystemURL;->parse(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v2

    .line 846
    .local v2, "inputURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    const-string v4, ""

    iget-object v5, v2, Lorg/apache/cordova/file/LocalFilesystemURL;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "/"

    iget-object v5, v2, Lorg/apache/cordova/file/LocalFilesystemURL;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 848
    :cond_0
    new-instance v4, Lorg/apache/cordova/file/NoModificationAllowedException;

    const-string v5, "You can\'t delete the root directory"

    invoke-direct {v4, v5}, Lorg/apache/cordova/file/NoModificationAllowedException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    .end local v2    # "inputURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    :catch_0
    move-exception v0

    .line 858
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/net/MalformedURLException;

    const-string v4, "Unrecognized filesystem URL"

    invoke-direct {v3, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    .line 859
    .local v3, "mue":Ljava/net/MalformedURLException;
    invoke-virtual {v3, v0}, Ljava/net/MalformedURLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 860
    throw v3

    .line 851
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "mue":Ljava/net/MalformedURLException;
    .restart local v2    # "inputURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    :cond_1
    :try_start_1
    invoke-direct {p0, v2}, Lorg/apache/cordova/file/FileUtils;->filesystemForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/apache/cordova/file/Filesystem;

    move-result-object v1

    .line 852
    .local v1, "fs":Lorg/apache/cordova/file/Filesystem;
    if-nez v1, :cond_2

    .line 853
    new-instance v4, Ljava/net/MalformedURLException;

    const-string v5, "No installed handlers for this URL"

    invoke-direct {v4, v5}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 855
    :cond_2
    invoke-virtual {v1, v2}, Lorg/apache/cordova/file/Filesystem;->removeFileAtLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    return v4
.end method

.method private removeRecursively(Ljava/lang/String;)Z
    .locals 6
    .param p1, "baseURLstr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/cordova/file/FileExistsException;,
            Lorg/apache/cordova/file/NoModificationAllowedException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 813
    :try_start_0
    invoke-static {p1}, Lorg/apache/cordova/file/LocalFilesystemURL;->parse(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v2

    .line 815
    .local v2, "inputURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    const-string v4, ""

    iget-object v5, v2, Lorg/apache/cordova/file/LocalFilesystemURL;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "/"

    iget-object v5, v2, Lorg/apache/cordova/file/LocalFilesystemURL;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 816
    :cond_0
    new-instance v4, Lorg/apache/cordova/file/NoModificationAllowedException;

    const-string v5, "You can\'t delete the root directory"

    invoke-direct {v4, v5}, Lorg/apache/cordova/file/NoModificationAllowedException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 825
    .end local v2    # "inputURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    :catch_0
    move-exception v0

    .line 826
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/net/MalformedURLException;

    const-string v4, "Unrecognized filesystem URL"

    invoke-direct {v3, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    .line 827
    .local v3, "mue":Ljava/net/MalformedURLException;
    invoke-virtual {v3, v0}, Ljava/net/MalformedURLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 828
    throw v3

    .line 819
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "mue":Ljava/net/MalformedURLException;
    .restart local v2    # "inputURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    :cond_1
    :try_start_1
    invoke-direct {p0, v2}, Lorg/apache/cordova/file/FileUtils;->filesystemForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/apache/cordova/file/Filesystem;

    move-result-object v1

    .line 820
    .local v1, "fs":Lorg/apache/cordova/file/Filesystem;
    if-nez v1, :cond_2

    .line 821
    new-instance v4, Ljava/net/MalformedURLException;

    const-string v5, "No installed handlers for this URL"

    invoke-direct {v4, v5}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 823
    :cond_2
    invoke-virtual {v1, v2}, Lorg/apache/cordova/file/Filesystem;->recursiveRemoveFileAtLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    return v4
.end method

.method private requestAllFileSystems()Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 977
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 978
    .local v1, "ret":Lorg/json/JSONArray;
    iget-object v2, p0, Lorg/apache/cordova/file/FileUtils;->filesystems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/file/Filesystem;

    .line 979
    .local v0, "fs":Lorg/apache/cordova/file/Filesystem;
    invoke-virtual {v0}, Lorg/apache/cordova/file/Filesystem;->getRootEntry()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 981
    .end local v0    # "fs":Lorg/apache/cordova/file/Filesystem;
    :cond_0
    return-object v1
.end method

.method private requestAllPaths()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 989
    iget-object v3, p0, Lorg/apache/cordova/file/FileUtils;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 990
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 991
    .local v2, "ret":Lorg/json/JSONObject;
    const-string v3, "applicationDirectory"

    const-string v4, "file:///android_asset/"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 992
    const-string v3, "applicationStorageDirectory"

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/cordova/file/FileUtils;->toDirUrl(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 993
    const-string v3, "dataDirectory"

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/cordova/file/FileUtils;->toDirUrl(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 994
    const-string v3, "cacheDirectory"

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/cordova/file/FileUtils;->toDirUrl(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 995
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 997
    :try_start_0
    const-string v3, "externalApplicationStorageDirectory"

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/cordova/file/FileUtils;->toDirUrl(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 998
    const-string v3, "externalDataDirectory"

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/cordova/file/FileUtils;->toDirUrl(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 999
    const-string v3, "externalCacheDirectory"

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/cordova/file/FileUtils;->toDirUrl(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1000
    const-string v3, "externalRootDirectory"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/cordova/file/FileUtils;->toDirUrl(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    :cond_0
    :goto_0
    return-object v2

    .line 1002
    :catch_0
    move-exception v1

    .line 1004
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v3, "FileUtils"

    const-string v4, "Unable to access these paths, most liklely due to USB storage"

    invoke-static {v3, v4}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestFileSystem(IJLorg/apache/cordova/CallbackContext;)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "requiredSize"    # J
    .param p4, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 945
    const/4 v5, 0x0

    .line 947
    .local v5, "rootFs":Lorg/apache/cordova/file/Filesystem;
    :try_start_0
    iget-object v6, p0, Lorg/apache/cordova/file/FileUtils;->filesystems:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lorg/apache/cordova/file/Filesystem;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    :goto_0
    if-nez v5, :cond_0

    .line 952
    new-instance v6, Lorg/apache/cordova/PluginResult;

    sget-object v7, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    sget v8, Lorg/apache/cordova/file/FileUtils;->NOT_FOUND_ERR:I

    invoke-direct {v6, v7, v8}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;I)V

    invoke-virtual {p4, v6}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 969
    :goto_1
    return-void

    .line 955
    :cond_0
    const-wide/16 v2, 0x0

    .line 956
    .local v2, "availableSize":J
    const-wide/16 v6, 0x0

    cmp-long v6, p2, v6

    if-lez v6, :cond_1

    .line 957
    invoke-virtual {v5}, Lorg/apache/cordova/file/Filesystem;->getFreeSpaceInBytes()J

    move-result-wide v2

    .line 960
    :cond_1
    cmp-long v6, v2, p2

    if-gez v6, :cond_2

    .line 961
    new-instance v6, Lorg/apache/cordova/PluginResult;

    sget-object v7, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    sget v8, Lorg/apache/cordova/file/FileUtils;->QUOTA_EXCEEDED_ERR:I

    invoke-direct {v6, v7, v8}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;I)V

    invoke-virtual {p4, v6}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_1

    .line 963
    :cond_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 964
    .local v4, "fs":Lorg/json/JSONObject;
    const-string v6, "name"

    iget-object v7, v5, Lorg/apache/cordova/file/Filesystem;->name:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 965
    const-string v6, "root"

    invoke-virtual {v5}, Lorg/apache/cordova/file/Filesystem;->getRootEntry()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 966
    invoke-virtual {p4, v4}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 948
    .end local v2    # "availableSize":J
    .end local v4    # "fs":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private resolveLocalFileSystemURI(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8
    .param p1, "uriString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 708
    if-nez p1, :cond_0

    .line 709
    new-instance v6, Ljava/net/MalformedURLException;

    const-string v7, "Unrecognized filesystem URL"

    invoke-direct {v6, v7}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 711
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 712
    .local v5, "uri":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 714
    .local v3, "isNativeUri":Z
    invoke-static {v5}, Lorg/apache/cordova/file/LocalFilesystemURL;->parse(Landroid/net/Uri;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v2

    .line 715
    .local v2, "inputURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    if-nez v2, :cond_1

    .line 717
    invoke-virtual {p0, v5}, Lorg/apache/cordova/file/FileUtils;->resolveNativeUri(Landroid/net/Uri;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v2

    .line 718
    const/4 v3, 0x1

    .line 722
    :cond_1
    :try_start_0
    invoke-direct {p0, v2}, Lorg/apache/cordova/file/FileUtils;->filesystemForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/apache/cordova/file/Filesystem;

    move-result-object v1

    .line 723
    .local v1, "fs":Lorg/apache/cordova/file/Filesystem;
    if-nez v1, :cond_2

    .line 724
    new-instance v6, Ljava/net/MalformedURLException;

    const-string v7, "No installed handlers for this URL"

    invoke-direct {v6, v7}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    .end local v1    # "fs":Lorg/apache/cordova/file/Filesystem;
    :catch_0
    move-exception v0

    .line 736
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/net/MalformedURLException;

    const-string v6, "Unrecognized filesystem URL"

    invoke-direct {v4, v6}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    .line 737
    .local v4, "mue":Ljava/net/MalformedURLException;
    invoke-virtual {v4, v0}, Ljava/net/MalformedURLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 738
    throw v4

    .line 726
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "mue":Ljava/net/MalformedURLException;
    .restart local v1    # "fs":Lorg/apache/cordova/file/Filesystem;
    :cond_2
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/apache/cordova/file/Filesystem;->exists(Lorg/apache/cordova/file/LocalFilesystemURL;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 727
    if-nez v3, :cond_3

    .line 730
    invoke-virtual {v1, v2}, Lorg/apache/cordova/file/Filesystem;->toNativeUri(Lorg/apache/cordova/file/LocalFilesystemURL;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/apache/cordova/file/Filesystem;->toLocalUri(Landroid/net/Uri;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v2

    .line 733
    :cond_3
    invoke-virtual {v1, v2}, Lorg/apache/cordova/file/Filesystem;->getEntryForLocalURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    return-object v6

    .line 740
    :cond_4
    new-instance v6, Ljava/io/FileNotFoundException;

    invoke-direct {v6}, Ljava/io/FileNotFoundException;-><init>()V

    throw v6
.end method

.method private threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "f"    # Lorg/apache/cordova/file/FileUtils$FileOp;
    .param p2, "rawArgs"    # Ljava/lang/String;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 660
    iget-object v0, p0, Lorg/apache/cordova/file/FileUtils;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/file/FileUtils$25;

    invoke-direct {v1, p0, p2, p1, p3}, Lorg/apache/cordova/file/FileUtils$25;-><init>(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;Lorg/apache/cordova/file/FileUtils$FileOp;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 695
    return-void
.end method

.method private static toDirUrl(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private transferTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 6
    .param p1, "srcURLstr"    # Ljava/lang/String;
    .param p2, "destURLstr"    # Ljava/lang/String;
    .param p3, "newName"    # Ljava/lang/String;
    .param p4, "move"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lorg/apache/cordova/file/NoModificationAllowedException;,
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/InvalidModificationException;,
            Lorg/apache/cordova/file/EncodingException;,
            Lorg/apache/cordova/file/FileExistsException;
        }
    .end annotation

    .prologue
    .line 781
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 783
    :cond_0
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2}, Ljava/io/FileNotFoundException;-><init>()V

    throw v2

    .line 786
    :cond_1
    invoke-static {p1}, Lorg/apache/cordova/file/LocalFilesystemURL;->parse(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v4

    .line 787
    .local v4, "srcURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    invoke-static {p2}, Lorg/apache/cordova/file/LocalFilesystemURL;->parse(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v1

    .line 789
    .local v1, "destURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    invoke-direct {p0, v4}, Lorg/apache/cordova/file/FileUtils;->filesystemForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/apache/cordova/file/Filesystem;

    move-result-object v3

    .line 790
    .local v3, "srcFs":Lorg/apache/cordova/file/Filesystem;
    invoke-direct {p0, v1}, Lorg/apache/cordova/file/FileUtils;->filesystemForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/apache/cordova/file/Filesystem;

    move-result-object v0

    .line 793
    .local v0, "destFs":Lorg/apache/cordova/file/Filesystem;
    if-eqz p3, :cond_2

    const-string v2, ":"

    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 794
    new-instance v2, Lorg/apache/cordova/file/EncodingException;

    const-string v5, "Bad file name"

    invoke-direct {v2, v5}, Lorg/apache/cordova/file/EncodingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object v2, p3

    move v5, p4

    .line 797
    invoke-virtual/range {v0 .. v5}, Lorg/apache/cordova/file/Filesystem;->copyFileToURL(Lorg/apache/cordova/file/LocalFilesystemURL;Ljava/lang/String;Lorg/apache/cordova/file/Filesystem;Lorg/apache/cordova/file/LocalFilesystemURL;Z)Lorg/json/JSONObject;

    move-result-object v2

    return-object v2
.end method

.method private truncateFile(Ljava/lang/String;J)J
    .locals 6
    .param p1, "srcURLstr"    # Ljava/lang/String;
    .param p2, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/NoModificationAllowedException;
        }
    .end annotation

    .prologue
    .line 1152
    :try_start_0
    invoke-static {p1}, Lorg/apache/cordova/file/LocalFilesystemURL;->parse(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v2

    .line 1153
    .local v2, "inputURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    invoke-direct {p0, v2}, Lorg/apache/cordova/file/FileUtils;->filesystemForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/apache/cordova/file/Filesystem;

    move-result-object v1

    .line 1154
    .local v1, "fs":Lorg/apache/cordova/file/Filesystem;
    if-nez v1, :cond_0

    .line 1155
    new-instance v4, Ljava/net/MalformedURLException;

    const-string v5, "No installed handlers for this URL"

    invoke-direct {v4, v5}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1159
    .end local v1    # "fs":Lorg/apache/cordova/file/Filesystem;
    .end local v2    # "inputURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    :catch_0
    move-exception v0

    .line 1160
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/net/MalformedURLException;

    const-string v4, "Unrecognized filesystem URL"

    invoke-direct {v3, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    .line 1161
    .local v3, "mue":Ljava/net/MalformedURLException;
    invoke-virtual {v3, v0}, Ljava/net/MalformedURLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1162
    throw v3

    .line 1158
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "mue":Ljava/net/MalformedURLException;
    .restart local v1    # "fs":Lorg/apache/cordova/file/Filesystem;
    .restart local v2    # "inputURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    :cond_0
    :try_start_1
    invoke-virtual {v1, v2, p2, p3}, Lorg/apache/cordova/file/Filesystem;->truncateFileAtURL(Lorg/apache/cordova/file/LocalFilesystemURL;J)J
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    return-wide v4
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "rawArgs"    # Ljava/lang/String;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    const/4 v0, 0x1

    .line 269
    iget-boolean v1, p0, Lorg/apache/cordova/file/FileUtils;->configured:Z

    if-nez v1, :cond_0

    .line 270
    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    const-string v3, "File plugin is not configured. Please see the README.md file for details on how to update config.xml"

    invoke-direct {v1, v2, v3}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 549
    :goto_0
    return v0

    .line 273
    :cond_0
    const-string v1, "testSaveLocationExists"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    new-instance v1, Lorg/apache/cordova/file/FileUtils$1;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$1;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 281
    :cond_1
    const-string v1, "getFreeDiskSpace"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 282
    new-instance v1, Lorg/apache/cordova/file/FileUtils$2;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$2;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 292
    :cond_2
    const-string v1, "testFileExists"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 293
    new-instance v1, Lorg/apache/cordova/file/FileUtils$3;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$3;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 301
    :cond_3
    const-string v1, "testDirectoryExists"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 302
    new-instance v1, Lorg/apache/cordova/file/FileUtils$4;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$4;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 310
    :cond_4
    const-string v1, "readAsText"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 311
    new-instance v1, Lorg/apache/cordova/file/FileUtils$5;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$5;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 321
    :cond_5
    const-string v1, "readAsDataURL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 322
    new-instance v1, Lorg/apache/cordova/file/FileUtils$6;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$6;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 331
    :cond_6
    const-string v1, "readAsArrayBuffer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 332
    new-instance v1, Lorg/apache/cordova/file/FileUtils$7;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$7;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 341
    :cond_7
    const-string v1, "readAsBinaryString"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 342
    new-instance v1, Lorg/apache/cordova/file/FileUtils$8;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$8;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 351
    :cond_8
    const-string v1, "write"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 352
    new-instance v1, Lorg/apache/cordova/file/FileUtils$9;

    invoke-direct {v1, p0, p2, p3}, Lorg/apache/cordova/file/FileUtils$9;-><init>(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 371
    :cond_9
    const-string v1, "truncate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 372
    new-instance v1, Lorg/apache/cordova/file/FileUtils$10;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$10;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 381
    :cond_a
    const-string v1, "requestAllFileSystems"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 382
    new-instance v1, Lorg/apache/cordova/file/FileUtils$11;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$11;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 387
    :cond_b
    const-string v1, "requestAllPaths"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 388
    iget-object v1, p0, Lorg/apache/cordova/file/FileUtils;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lorg/apache/cordova/file/FileUtils$12;

    invoke-direct {v2, p0, p3}, Lorg/apache/cordova/file/FileUtils$12;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 400
    :cond_c
    const-string v1, "requestFileSystem"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 401
    new-instance v1, Lorg/apache/cordova/file/FileUtils$13;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$13;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 409
    :cond_d
    const-string v1, "resolveLocalFileSystemURI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 410
    new-instance v1, Lorg/apache/cordova/file/FileUtils$14;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$14;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 418
    :cond_e
    const-string v1, "getFileMetadata"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 419
    new-instance v1, Lorg/apache/cordova/file/FileUtils$15;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$15;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 427
    :cond_f
    const-string v1, "getParent"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 428
    new-instance v1, Lorg/apache/cordova/file/FileUtils$16;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$16;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 436
    :cond_10
    const-string v1, "getDirectory"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 437
    new-instance v1, Lorg/apache/cordova/file/FileUtils$17;

    invoke-direct {v1, p0, p2, p3}, Lorg/apache/cordova/file/FileUtils$17;-><init>(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 457
    :cond_11
    const-string v1, "getFile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 458
    new-instance v1, Lorg/apache/cordova/file/FileUtils$18;

    invoke-direct {v1, p0, p2, p3}, Lorg/apache/cordova/file/FileUtils$18;-><init>(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 478
    :cond_12
    const-string v1, "remove"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 479
    new-instance v1, Lorg/apache/cordova/file/FileUtils$19;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$19;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 491
    :cond_13
    const-string v1, "removeRecursively"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 492
    new-instance v1, Lorg/apache/cordova/file/FileUtils$20;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$20;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 504
    :cond_14
    const-string v1, "moveTo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 505
    new-instance v1, Lorg/apache/cordova/file/FileUtils$21;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$21;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 515
    :cond_15
    const-string v1, "copyTo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 516
    new-instance v1, Lorg/apache/cordova/file/FileUtils$22;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$22;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 526
    :cond_16
    const-string v1, "readEntries"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 527
    new-instance v1, Lorg/apache/cordova/file/FileUtils$23;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$23;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 535
    :cond_17
    const-string v1, "_getLocalFilesystemPath"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 538
    new-instance v1, Lorg/apache/cordova/file/FileUtils$24;

    invoke-direct {v1, p0, p3}, Lorg/apache/cordova/file/FileUtils$24;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 547
    :cond_18
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public filesystemPathForURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "localURLstr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 622
    :try_start_0
    invoke-static {p1}, Lorg/apache/cordova/file/LocalFilesystemURL;->parse(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v2

    .line 623
    .local v2, "inputURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    invoke-direct {p0, v2}, Lorg/apache/cordova/file/FileUtils;->filesystemForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/apache/cordova/file/Filesystem;

    move-result-object v1

    .line 624
    .local v1, "fs":Lorg/apache/cordova/file/Filesystem;
    if-nez v1, :cond_0

    .line 625
    new-instance v4, Ljava/net/MalformedURLException;

    const-string v5, "No installed handlers for this URL"

    invoke-direct {v4, v5}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    .end local v1    # "fs":Lorg/apache/cordova/file/Filesystem;
    .end local v2    # "inputURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    :catch_0
    move-exception v0

    .line 629
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/net/MalformedURLException;

    const-string v4, "Unrecognized filesystem URL"

    invoke-direct {v3, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    .line 630
    .local v3, "mue":Ljava/net/MalformedURLException;
    invoke-virtual {v3, v0}, Ljava/net/MalformedURLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 631
    throw v3

    .line 627
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "mue":Ljava/net/MalformedURLException;
    .restart local v1    # "fs":Lorg/apache/cordova/file/Filesystem;
    .restart local v2    # "inputURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    :cond_0
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/apache/cordova/file/Filesystem;->filesystemPathForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    return-object v4
.end method

.method public filesystemURLforLocalPath(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;
    .locals 6
    .param p1, "localPath"    # Ljava/lang/String;

    .prologue
    .line 636
    const/4 v1, 0x0

    .line 637
    .local v1, "localURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    const/4 v2, 0x0

    .line 641
    .local v2, "shortestFullPath":I
    iget-object v4, p0, Lorg/apache/cordova/file/FileUtils;->filesystems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/file/Filesystem;

    .line 642
    .local v0, "fs":Lorg/apache/cordova/file/Filesystem;
    invoke-virtual {v0, p1}, Lorg/apache/cordova/file/Filesystem;->URLforFilesystemPath(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v3

    .line 643
    .local v3, "url":Lorg/apache/cordova/file/LocalFilesystemURL;
    if-eqz v3, :cond_0

    .line 646
    if-eqz v1, :cond_1

    iget-object v5, v3, Lorg/apache/cordova/file/LocalFilesystemURL;->path:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v2, :cond_0

    .line 647
    :cond_1
    move-object v1, v3

    .line 648
    iget-object v5, v3, Lorg/apache/cordova/file/LocalFilesystemURL;->path:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    .line 652
    .end local v0    # "fs":Lorg/apache/cordova/file/Filesystem;
    .end local v3    # "url":Lorg/apache/cordova/file/LocalFilesystemURL;
    :cond_2
    return-object v1
.end method

.method protected getAvailableFileSystems(Landroid/app/Activity;)Ljava/util/HashMap;
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 153
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 155
    .local v0, "availableFileSystems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "files"

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v3, "documents"

    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "Documents"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v3, "cache"

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v3, "root"

    const-string v4, "/"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    :try_start_0
    const-string v3, "files-external"

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v3, "sdcard"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v3, "cache-external"

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :cond_0
    :goto_0
    return-object v0

    .line 165
    :catch_0
    move-exception v2

    .line 166
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v3, "FileUtils"

    const-string v4, "External storage unavailable, check to see if USB Mass Storage Mode is on"

    invoke-static {v3, v4}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getEntryForFile(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1021
    iget-object v2, p0, Lorg/apache/cordova/file/FileUtils;->filesystems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/cordova/file/Filesystem;

    .line 1022
    .local v1, "fs":Lorg/apache/cordova/file/Filesystem;
    invoke-virtual {v1, p1}, Lorg/apache/cordova/file/Filesystem;->makeEntryForFile(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1023
    .local v0, "entry":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 1027
    .end local v0    # "entry":Lorg/json/JSONObject;
    .end local v1    # "fs":Lorg/apache/cordova/file/Filesystem;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getExtraFileSystemsPreference(Landroid/app/Activity;)[Ljava/lang/String;
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 125
    iget-object v1, p0, Lorg/apache/cordova/file/FileUtils;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v2, "androidextrafilesystems"

    const-string v3, "files,files-external,documents,sdcard,cache,cache-external,assets,root"

    invoke-virtual {v1, v2, v3}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "fileSystemsStr":Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .locals 11
    .param p1, "cordova"    # Lorg/apache/cordova/CordovaInterface;
    .param p2, "webView"    # Lorg/apache/cordova/CordovaWebView;

    .prologue
    const/4 v10, 0x1

    .line 175
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/CordovaPlugin;->initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 176
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lorg/apache/cordova/file/FileUtils;->filesystems:Ljava/util/ArrayList;

    .line 177
    new-instance v7, Lorg/apache/cordova/file/PendingRequests;

    invoke-direct {v7}, Lorg/apache/cordova/file/PendingRequests;-><init>()V

    iput-object v7, p0, Lorg/apache/cordova/file/FileUtils;->pendingRequests:Lorg/apache/cordova/file/PendingRequests;

    .line 179
    const/4 v5, 0x0

    .line 180
    .local v5, "tempRoot":Ljava/lang/String;
    const/4 v3, 0x0

    .line 182
    .local v3, "persistentRoot":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 183
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lorg/apache/cordova/file/FileUtils;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v8, "androidpersistentfilelocation"

    const-string v9, "internal"

    invoke-virtual {v7, v8, v9}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "location":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 188
    const-string v7, "internal"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 189
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/files/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 190
    iput-boolean v10, p0, Lorg/apache/cordova/file/FileUtils;->configured:Z

    .line 209
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lorg/apache/cordova/file/FileUtils;->configured:Z

    if-eqz v7, :cond_4

    .line 211
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    .local v6, "tmpRootFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v4, "persistentRootFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 214
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 220
    new-instance v7, Lorg/apache/cordova/file/LocalFilesystem;

    const-string v8, "temporary"

    invoke-interface {p2}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-interface {p2}, Lorg/apache/cordova/CordovaWebView;->getResourceApi()Lorg/apache/cordova/CordovaResourceApi;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10, v6}, Lorg/apache/cordova/file/LocalFilesystem;-><init>(Ljava/lang/String;Landroid/content/Context;Lorg/apache/cordova/CordovaResourceApi;Ljava/io/File;)V

    invoke-virtual {p0, v7}, Lorg/apache/cordova/file/FileUtils;->registerFilesystem(Lorg/apache/cordova/file/Filesystem;)V

    .line 221
    new-instance v7, Lorg/apache/cordova/file/LocalFilesystem;

    const-string v8, "persistent"

    invoke-interface {p2}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-interface {p2}, Lorg/apache/cordova/CordovaWebView;->getResourceApi()Lorg/apache/cordova/CordovaResourceApi;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10, v4}, Lorg/apache/cordova/file/LocalFilesystem;-><init>(Ljava/lang/String;Landroid/content/Context;Lorg/apache/cordova/CordovaResourceApi;Ljava/io/File;)V

    invoke-virtual {p0, v7}, Lorg/apache/cordova/file/FileUtils;->registerFilesystem(Lorg/apache/cordova/file/Filesystem;)V

    .line 222
    new-instance v7, Lorg/apache/cordova/file/ContentFilesystem;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-interface {p2}, Lorg/apache/cordova/CordovaWebView;->getResourceApi()Lorg/apache/cordova/CordovaResourceApi;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/cordova/file/ContentFilesystem;-><init>(Landroid/content/Context;Lorg/apache/cordova/CordovaResourceApi;)V

    invoke-virtual {p0, v7}, Lorg/apache/cordova/file/FileUtils;->registerFilesystem(Lorg/apache/cordova/file/Filesystem;)V

    .line 223
    new-instance v7, Lorg/apache/cordova/file/AssetFilesystem;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-interface {p2}, Lorg/apache/cordova/CordovaWebView;->getResourceApi()Lorg/apache/cordova/CordovaResourceApi;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/cordova/file/AssetFilesystem;-><init>(Landroid/content/res/AssetManager;Lorg/apache/cordova/CordovaResourceApi;)V

    invoke-virtual {p0, v7}, Lorg/apache/cordova/file/FileUtils;->registerFilesystem(Lorg/apache/cordova/file/Filesystem;)V

    .line 225
    invoke-virtual {p0, v0}, Lorg/apache/cordova/file/FileUtils;->getExtraFileSystemsPreference(Landroid/app/Activity;)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v0}, Lorg/apache/cordova/file/FileUtils;->getAvailableFileSystems(Landroid/app/Activity;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lorg/apache/cordova/file/FileUtils;->registerExtraFileSystems([Ljava/lang/String;Ljava/util/HashMap;)V

    .line 228
    sget-object v7, Lorg/apache/cordova/file/FileUtils;->filePlugin:Lorg/apache/cordova/file/FileUtils;

    if-nez v7, :cond_1

    .line 229
    sput-object p0, Lorg/apache/cordova/file/FileUtils;->filePlugin:Lorg/apache/cordova/file/FileUtils;

    .line 235
    .end local v4    # "persistentRootFile":Ljava/io/File;
    .end local v6    # "tmpRootFile":Ljava/io/File;
    :cond_1
    :goto_1
    return-void

    .line 191
    :cond_2
    const-string v7, "compatibility"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 199
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 200
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 201
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/Android/data/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/cache/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 206
    :goto_2
    iput-boolean v10, p0, Lorg/apache/cordova/file/FileUtils;->configured:Z

    goto/16 :goto_0

    .line 204
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/data/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 232
    :cond_4
    const-string v7, "FileUtils"

    const-string v8, "File plugin configuration error: Please set AndroidPersistentFileLocation in config.xml to one of \"internal\" (for new applications) or \"compatibility\" (for compatibility with previous versions)"

    invoke-static {v7, v8}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method public onRequestPermissionResult(I[Ljava/lang/String;[I)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1174
    iget-object v2, p0, Lorg/apache/cordova/file/FileUtils;->pendingRequests:Lorg/apache/cordova/file/PendingRequests;

    invoke-virtual {v2, p1}, Lorg/apache/cordova/file/PendingRequests;->getAndRemove(I)Lorg/apache/cordova/file/PendingRequests$Request;

    move-result-object v1

    .line 1175
    .local v1, "req":Lorg/apache/cordova/file/PendingRequests$Request;
    if-eqz v1, :cond_2

    .line 1176
    array-length v3, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v0, p3, v2

    .line 1178
    .local v0, "r":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 1180
    invoke-virtual {v1}, Lorg/apache/cordova/file/PendingRequests$Request;->getCallbackContext()Lorg/apache/cordova/CallbackContext;

    move-result-object v2

    new-instance v3, Lorg/apache/cordova/PluginResult;

    sget-object v4, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    sget v5, Lorg/apache/cordova/file/FileUtils;->SECURITY_ERR:I

    invoke-direct {v3, v4, v5}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;I)V

    invoke-virtual {v2, v3}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 1224
    .end local v0    # "r":I
    :goto_1
    return-void

    .line 1176
    .restart local v0    # "r":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1184
    .end local v0    # "r":I
    :cond_1
    invoke-virtual {v1}, Lorg/apache/cordova/file/PendingRequests$Request;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 1187
    :pswitch_0
    new-instance v2, Lorg/apache/cordova/file/FileUtils$27;

    invoke-direct {v2, p0, v1}, Lorg/apache/cordova/file/FileUtils$27;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/file/PendingRequests$Request;)V

    .line 1195
    invoke-virtual {v1}, Lorg/apache/cordova/file/PendingRequests$Request;->getRawArgs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/cordova/file/PendingRequests$Request;->getCallbackContext()Lorg/apache/cordova/CallbackContext;

    move-result-object v4

    .line 1187
    invoke-direct {p0, v2, v3, v4}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_1

    .line 1198
    :pswitch_1
    new-instance v2, Lorg/apache/cordova/file/FileUtils$28;

    invoke-direct {v2, p0, v1}, Lorg/apache/cordova/file/FileUtils$28;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/file/PendingRequests$Request;)V

    .line 1206
    invoke-virtual {v1}, Lorg/apache/cordova/file/PendingRequests$Request;->getRawArgs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/cordova/file/PendingRequests$Request;->getCallbackContext()Lorg/apache/cordova/CallbackContext;

    move-result-object v4

    .line 1198
    invoke-direct {p0, v2, v3, v4}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_1

    .line 1209
    :pswitch_2
    new-instance v2, Lorg/apache/cordova/file/FileUtils$29;

    invoke-direct {v2, p0, v1}, Lorg/apache/cordova/file/FileUtils$29;-><init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/file/PendingRequests$Request;)V

    .line 1218
    invoke-virtual {v1}, Lorg/apache/cordova/file/PendingRequests$Request;->getRawArgs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/cordova/file/PendingRequests$Request;->getCallbackContext()Lorg/apache/cordova/CallbackContext;

    move-result-object v4

    .line 1209
    invoke-direct {p0, v2, v3, v4}, Lorg/apache/cordova/file/FileUtils;->threadhelper(Lorg/apache/cordova/file/FileUtils$FileOp;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_1

    .line 1222
    :cond_2
    const-string v2, "FileUtils"

    const-string v3, "Received permission callback for unknown request code"

    invoke-static {v2, v3}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1184
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public readFileAs(Ljava/lang/String;IILorg/apache/cordova/CallbackContext;Ljava/lang/String;I)V
    .locals 9
    .param p1, "srcURLstr"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .param p5, "encoding"    # Ljava/lang/String;
    .param p6, "resultType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 1061
    :try_start_0
    invoke-static {p1}, Lorg/apache/cordova/file/LocalFilesystemURL;->parse(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v1

    .line 1062
    .local v1, "inputURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    invoke-direct {p0, v1}, Lorg/apache/cordova/file/FileUtils;->filesystemForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/apache/cordova/file/Filesystem;

    move-result-object v0

    .line 1063
    .local v0, "fs":Lorg/apache/cordova/file/Filesystem;
    if-nez v0, :cond_0

    .line 1064
    new-instance v2, Ljava/net/MalformedURLException;

    const-string v3, "No installed handlers for this URL"

    invoke-direct {v2, v3}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1109
    .end local v0    # "fs":Lorg/apache/cordova/file/Filesystem;
    .end local v1    # "inputURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    :catch_0
    move-exception v7

    .line 1110
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    new-instance v8, Ljava/net/MalformedURLException;

    const-string v2, "Unrecognized filesystem URL"

    invoke-direct {v8, v2}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    .line 1111
    .local v8, "mue":Ljava/net/MalformedURLException;
    invoke-virtual {v8, v7}, Ljava/net/MalformedURLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1112
    throw v8

    .line 1067
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .end local v8    # "mue":Ljava/net/MalformedURLException;
    .restart local v0    # "fs":Lorg/apache/cordova/file/Filesystem;
    .restart local v1    # "inputURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    :cond_0
    int-to-long v2, p2

    int-to-long v4, p3

    :try_start_1
    new-instance v6, Lorg/apache/cordova/file/FileUtils$26;

    invoke-direct {v6, p0, p6, p5, p4}, Lorg/apache/cordova/file/FileUtils$26;-><init>(Lorg/apache/cordova/file/FileUtils;ILjava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual/range {v0 .. v6}, Lorg/apache/cordova/file/Filesystem;->readFileAtURL(Lorg/apache/cordova/file/LocalFilesystemURL;JJLorg/apache/cordova/file/Filesystem$ReadFileCallback;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1119
    .end local v0    # "fs":Lorg/apache/cordova/file/Filesystem;
    .end local v1    # "inputURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    :goto_0
    return-void

    .line 1113
    :catch_1
    move-exception v7

    .line 1114
    .local v7, "e":Ljava/io/FileNotFoundException;
    new-instance v2, Lorg/apache/cordova/PluginResult;

    sget-object v3, Lorg/apache/cordova/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    sget v4, Lorg/apache/cordova/file/FileUtils;->NOT_FOUND_ERR:I

    invoke-direct {v2, v3, v4}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;I)V

    invoke-virtual {p4, v2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_0

    .line 1115
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v7

    .line 1116
    .local v7, "e":Ljava/io/IOException;
    const-string v2, "FileUtils"

    invoke-virtual {v7}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    new-instance v2, Lorg/apache/cordova/PluginResult;

    sget-object v3, Lorg/apache/cordova/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    sget v4, Lorg/apache/cordova/file/FileUtils;->NOT_READABLE_ERR:I

    invoke-direct {v2, v3, v4}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;I)V

    invoke-virtual {p4, v2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_0
.end method

.method protected registerExtraFileSystems([Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 9
    .param p1, "filesystems"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p2, "availableFileSystems":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 133
    .local v2, "installedFileSystems":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    array-length v5, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_4

    aget-object v0, p1, v4

    .line 134
    .local v0, "fsName":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 135
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 136
    .local v1, "fsRoot":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 137
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v3, "newRoot":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 139
    :cond_0
    new-instance v6, Lorg/apache/cordova/file/LocalFilesystem;

    iget-object v7, p0, Lorg/apache/cordova/file/FileUtils;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v7}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/cordova/file/FileUtils;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v8}, Lorg/apache/cordova/CordovaWebView;->getResourceApi()Lorg/apache/cordova/CordovaResourceApi;

    move-result-object v8

    invoke-direct {v6, v0, v7, v8, v3}, Lorg/apache/cordova/file/LocalFilesystem;-><init>(Ljava/lang/String;Landroid/content/Context;Lorg/apache/cordova/CordovaResourceApi;Ljava/io/File;)V

    invoke-virtual {p0, v6}, Lorg/apache/cordova/file/FileUtils;->registerFilesystem(Lorg/apache/cordova/file/Filesystem;)V

    .line 140
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v1    # "fsRoot":Ljava/lang/String;
    .end local v3    # "newRoot":Ljava/io/File;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 142
    .restart local v1    # "fsRoot":Ljava/lang/String;
    .restart local v3    # "newRoot":Ljava/io/File;
    :cond_2
    const-string v6, "FileUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to create root dir for filesystem \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\", skipping"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 145
    .end local v3    # "newRoot":Ljava/io/File;
    :cond_3
    const-string v6, "FileUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized extra filesystem identifier: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 149
    .end local v0    # "fsName":Ljava/lang/String;
    .end local v1    # "fsRoot":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public registerFilesystem(Lorg/apache/cordova/file/Filesystem;)V
    .locals 1
    .param p1, "fs"    # Lorg/apache/cordova/file/Filesystem;

    .prologue
    .line 110
    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/apache/cordova/file/Filesystem;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/cordova/file/FileUtils;->filesystemForName(Ljava/lang/String;)Lorg/apache/cordova/file/Filesystem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/apache/cordova/file/FileUtils;->filesystems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_0
    return-void
.end method

.method public remapUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 249
    const-string v5, "cdvfile"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-object v4

    .line 253
    :cond_1
    :try_start_0
    invoke-static {p1}, Lorg/apache/cordova/file/LocalFilesystemURL;->parse(Landroid/net/Uri;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v2

    .line 254
    .local v2, "inputURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    invoke-direct {p0, v2}, Lorg/apache/cordova/file/FileUtils;->filesystemForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/apache/cordova/file/Filesystem;

    move-result-object v1

    .line 255
    .local v1, "fs":Lorg/apache/cordova/file/Filesystem;
    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {v1, v2}, Lorg/apache/cordova/file/Filesystem;->filesystemPathForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "path":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 260
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v2}, Lorg/apache/cordova/file/Filesystem;->filesystemPathForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 263
    .end local v1    # "fs":Lorg/apache/cordova/file/Filesystem;
    .end local v2    # "inputURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    .end local v3    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public resolveNativeUri(Landroid/net/Uri;)Lorg/apache/cordova/file/LocalFilesystemURL;
    .locals 6
    .param p1, "nativeUri"    # Landroid/net/Uri;

    .prologue
    .line 597
    const/4 v1, 0x0

    .line 601
    .local v1, "localURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    iget-object v3, p0, Lorg/apache/cordova/file/FileUtils;->filesystems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/file/Filesystem;

    .line 602
    .local v0, "fs":Lorg/apache/cordova/file/Filesystem;
    invoke-virtual {v0, p1}, Lorg/apache/cordova/file/Filesystem;->toLocalUri(Landroid/net/Uri;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v2

    .line 603
    .local v2, "url":Lorg/apache/cordova/file/LocalFilesystemURL;
    if-eqz v2, :cond_0

    .line 606
    if-eqz v1, :cond_1

    iget-object v4, v2, Lorg/apache/cordova/file/LocalFilesystemURL;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Lorg/apache/cordova/file/LocalFilesystemURL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 607
    :cond_1
    move-object v1, v2

    goto :goto_0

    .line 611
    .end local v0    # "fs":Lorg/apache/cordova/file/Filesystem;
    .end local v2    # "url":Lorg/apache/cordova/file/LocalFilesystemURL;
    :cond_2
    return-object v1
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;IZ)J
    .locals 9
    .param p1, "srcURLstr"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "isBinary"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/NoModificationAllowedException;
        }
    .end annotation

    .prologue
    .line 1132
    :try_start_0
    invoke-static {p1}, Lorg/apache/cordova/file/LocalFilesystemURL;->parse(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v2

    .line 1133
    .local v2, "inputURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    invoke-direct {p0, v2}, Lorg/apache/cordova/file/FileUtils;->filesystemForURL(Lorg/apache/cordova/file/LocalFilesystemURL;)Lorg/apache/cordova/file/Filesystem;

    move-result-object v1

    .line 1134
    .local v1, "fs":Lorg/apache/cordova/file/Filesystem;
    if-nez v1, :cond_0

    .line 1135
    new-instance v6, Ljava/net/MalformedURLException;

    const-string v7, "No installed handlers for this URL"

    invoke-direct {v6, v7}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1139
    .end local v1    # "fs":Lorg/apache/cordova/file/Filesystem;
    .end local v2    # "inputURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    :catch_0
    move-exception v0

    .line 1140
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/net/MalformedURLException;

    const-string v6, "Unrecognized filesystem URL"

    invoke-direct {v3, v6}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    .line 1141
    .local v3, "mue":Ljava/net/MalformedURLException;
    invoke-virtual {v3, v0}, Ljava/net/MalformedURLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1142
    throw v3

    .line 1138
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "mue":Ljava/net/MalformedURLException;
    .restart local v1    # "fs":Lorg/apache/cordova/file/Filesystem;
    .restart local v2    # "inputURL":Lorg/apache/cordova/file/LocalFilesystemURL;
    :cond_0
    :try_start_1
    invoke-virtual {v1, v2, p2, p3, p4}, Lorg/apache/cordova/file/Filesystem;->writeToFileAtURL(Lorg/apache/cordova/file/LocalFilesystemURL;Ljava/lang/String;IZ)J

    move-result-wide v4

    .local v4, "x":J
    const-string v6, "TEST"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    return-wide v4
.end method
