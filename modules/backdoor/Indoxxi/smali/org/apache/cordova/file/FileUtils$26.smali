.class Lorg/apache/cordova/file/FileUtils$26;
.super Ljava/lang/Object;
.source "FileUtils.java"

# interfaces
.implements Lorg/apache/cordova/file/Filesystem$ReadFileCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/file/FileUtils;->readFileAs(Ljava/lang/String;IILorg/apache/cordova/CallbackContext;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/file/FileUtils;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$encoding:Ljava/lang/String;

.field final synthetic val$resultType:I


# direct methods
.method constructor <init>(Lorg/apache/cordova/file/FileUtils;ILjava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/cordova/file/FileUtils;

    .prologue
    .line 1067
    iput-object p1, p0, Lorg/apache/cordova/file/FileUtils$26;->this$0:Lorg/apache/cordova/file/FileUtils;

    iput p2, p0, Lorg/apache/cordova/file/FileUtils$26;->val$resultType:I

    iput-object p3, p0, Lorg/apache/cordova/file/FileUtils$26;->val$encoding:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/cordova/file/FileUtils$26;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleData(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 12
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "contentType"    # Ljava/lang/String;

    .prologue
    .line 1070
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1071
    .local v5, "os":Ljava/io/ByteArrayOutputStream;
    const/16 v0, 0x2000

    .line 1072
    .local v0, "BUFFER_SIZE":I
    const/16 v8, 0x2000

    new-array v2, v8, [B

    .line 1075
    .local v2, "buffer":[B
    :goto_0
    const/4 v8, 0x0

    const/16 v9, 0x2000

    invoke-virtual {p1, v2, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 1077
    .local v3, "bytesRead":I
    if-gtz v3, :cond_0

    .line 1084
    iget v8, p0, Lorg/apache/cordova/file/FileUtils$26;->val$resultType:I

    sparse-switch v8, :sswitch_data_0

    .line 1095
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    .line 1096
    .local v1, "base64":[B
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";base64,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    const-string v10, "US-ASCII"

    invoke-direct {v9, v1, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1097
    .local v7, "s":Ljava/lang/String;
    new-instance v6, Lorg/apache/cordova/PluginResult;

    sget-object v8, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v6, v8, v7}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    .line 1100
    .end local v1    # "base64":[B
    .end local v7    # "s":Ljava/lang/String;
    .local v6, "result":Lorg/apache/cordova/PluginResult;
    :goto_1
    iget-object v8, p0, Lorg/apache/cordova/file/FileUtils$26;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v8, v6}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 1105
    .end local v0    # "BUFFER_SIZE":I
    .end local v2    # "buffer":[B
    .end local v3    # "bytesRead":I
    .end local v5    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "result":Lorg/apache/cordova/PluginResult;
    :goto_2
    return-void

    .line 1080
    .restart local v0    # "BUFFER_SIZE":I
    .restart local v2    # "buffer":[B
    .restart local v3    # "bytesRead":I
    .restart local v5    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v5, v2, v8, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1101
    .end local v0    # "BUFFER_SIZE":I
    .end local v2    # "buffer":[B
    .end local v3    # "bytesRead":I
    .end local v5    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v4

    .line 1102
    .local v4, "e":Ljava/io/IOException;
    const-string v8, "FileUtils"

    invoke-virtual {v4}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    iget-object v8, p0, Lorg/apache/cordova/file/FileUtils$26;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v9, Lorg/apache/cordova/PluginResult;

    sget-object v10, Lorg/apache/cordova/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    sget v11, Lorg/apache/cordova/file/FileUtils;->NOT_READABLE_ERR:I

    invoke-direct {v9, v10, v11}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;I)V

    invoke-virtual {v8, v9}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_2

    .line 1086
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "BUFFER_SIZE":I
    .restart local v2    # "buffer":[B
    .restart local v3    # "bytesRead":I
    .restart local v5    # "os":Ljava/io/ByteArrayOutputStream;
    :sswitch_0
    :try_start_1
    new-instance v6, Lorg/apache/cordova/PluginResult;

    sget-object v8, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    iget-object v9, p0, Lorg/apache/cordova/file/FileUtils$26;->val$encoding:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    .line 1087
    .restart local v6    # "result":Lorg/apache/cordova/PluginResult;
    goto :goto_1

    .line 1089
    .end local v6    # "result":Lorg/apache/cordova/PluginResult;
    :sswitch_1
    new-instance v6, Lorg/apache/cordova/PluginResult;

    sget-object v8, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;[B)V

    .line 1090
    .restart local v6    # "result":Lorg/apache/cordova/PluginResult;
    goto :goto_1

    .line 1092
    .end local v6    # "result":Lorg/apache/cordova/PluginResult;
    :sswitch_2
    new-instance v6, Lorg/apache/cordova/PluginResult;

    sget-object v8, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {v6, v8, v9, v10}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;[BZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1093
    .restart local v6    # "result":Lorg/apache/cordova/PluginResult;
    goto :goto_1

    .line 1084
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method
