.class public Lorg/apache/cordova/file/LocalFilesystemURL;
.super Ljava/lang/Object;
.source "LocalFilesystemURL.java"


# static fields
.field public static final FILESYSTEM_PROTOCOL:Ljava/lang/String; = "cdvfile"


# instance fields
.field public final fsName:Ljava/lang/String;

.field public final isDirectory:Z

.field public final path:Ljava/lang/String;

.field public final uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "fsName"    # Ljava/lang/String;
    .param p3, "fsPath"    # Ljava/lang/String;
    .param p4, "isDirectory"    # Z

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/apache/cordova/file/LocalFilesystemURL;->uri:Landroid/net/Uri;

    .line 34
    iput-object p2, p0, Lorg/apache/cordova/file/LocalFilesystemURL;->fsName:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lorg/apache/cordova/file/LocalFilesystemURL;->path:Ljava/lang/String;

    .line 36
    iput-boolean p4, p0, Lorg/apache/cordova/file/LocalFilesystemURL;->isDirectory:Z

    .line 37
    return-void
.end method

.method public static parse(Landroid/net/Uri;)Lorg/apache/cordova/file/LocalFilesystemURL;
    .locals 8
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/16 v7, 0x2f

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 40
    const-string v5, "cdvfile"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-object v4

    .line 43
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v2, :cond_0

    .line 47
    invoke-virtual {v3, v7, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 48
    .local v0, "firstSlashIdx":I
    if-ltz v0, :cond_0

    .line 51
    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "fsName":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_2

    .line 54
    .local v2, "isDirectory":Z
    :goto_1
    new-instance v4, Lorg/apache/cordova/file/LocalFilesystemURL;

    invoke-direct {v4, p0, v1, v3, v2}, Lorg/apache/cordova/file/LocalFilesystemURL;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 53
    .end local v2    # "isDirectory":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/cordova/file/LocalFilesystemURL;
    .locals 1
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/cordova/file/LocalFilesystemURL;->parse(Landroid/net/Uri;)Lorg/apache/cordova/file/LocalFilesystemURL;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/cordova/file/LocalFilesystemURL;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
