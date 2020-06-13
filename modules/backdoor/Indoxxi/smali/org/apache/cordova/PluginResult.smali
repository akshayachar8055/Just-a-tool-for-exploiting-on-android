.class public Lorg/apache/cordova/PluginResult;
.super Ljava/lang/Object;
.source "PluginResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/PluginResult$Status;
    }
.end annotation


# static fields
.field public static final MESSAGE_TYPE_ARRAYBUFFER:I = 0x6

.field public static final MESSAGE_TYPE_BINARYSTRING:I = 0x7

.field public static final MESSAGE_TYPE_BOOLEAN:I = 0x4

.field public static final MESSAGE_TYPE_JSON:I = 0x2

.field public static final MESSAGE_TYPE_MULTIPART:I = 0x8

.field public static final MESSAGE_TYPE_NULL:I = 0x5

.field public static final MESSAGE_TYPE_NUMBER:I = 0x3

.field public static final MESSAGE_TYPE_STRING:I = 0x1

.field public static StatusMessages:[Ljava/lang/String;


# instance fields
.field private encodedMessage:Ljava/lang/String;

.field private keepCallback:Z

.field private final messageType:I

.field private multipartMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/cordova/PluginResult;",
            ">;"
        }
    .end annotation
.end field

.field private final status:I

.field private strMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 173
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "No result"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "OK"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Class not found"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Illegal access"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Instantiation error"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Malformed url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "IO error"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Invalid action"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "JSON error"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Error"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/cordova/PluginResult;->StatusMessages:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/PluginResult$Status;)V
    .locals 2
    .param p1, "status"    # Lorg/apache/cordova/PluginResult$Status;

    .prologue
    .line 37
    sget-object v0, Lorg/apache/cordova/PluginResult;->StatusMessages:[Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/cordova/PluginResult$Status;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/PluginResult$Status;F)V
    .locals 2
    .param p1, "status"    # Lorg/apache/cordova/PluginResult$Status;
    .param p2, "f"    # F

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/cordova/PluginResult;->keepCallback:Z

    .line 65
    invoke-virtual {p1}, Lorg/apache/cordova/PluginResult$Status;->ordinal()I

    move-result v0

    iput v0, p0, Lorg/apache/cordova/PluginResult;->status:I

    .line 66
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/cordova/PluginResult;->messageType:I

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/PluginResult;->encodedMessage:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/PluginResult$Status;I)V
    .locals 2
    .param p1, "status"    # Lorg/apache/cordova/PluginResult$Status;
    .param p2, "i"    # I

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/cordova/PluginResult;->keepCallback:Z

    .line 59
    invoke-virtual {p1}, Lorg/apache/cordova/PluginResult$Status;->ordinal()I

    move-result v0

    iput v0, p0, Lorg/apache/cordova/PluginResult;->status:I

    .line 60
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/cordova/PluginResult;->messageType:I

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/PluginResult;->encodedMessage:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Lorg/apache/cordova/PluginResult$Status;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/cordova/PluginResult;->keepCallback:Z

    .line 41
    invoke-virtual {p1}, Lorg/apache/cordova/PluginResult$Status;->ordinal()I

    move-result v0

    iput v0, p0, Lorg/apache/cordova/PluginResult;->status:I

    .line 42
    if-nez p2, :cond_0

    const/4 v0, 0x5

    :goto_0
    iput v0, p0, Lorg/apache/cordova/PluginResult;->messageType:I

    .line 43
    iput-object p2, p0, Lorg/apache/cordova/PluginResult;->strMessage:Ljava/lang/String;

    .line 44
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/cordova/PluginResult$Status;Ljava/util/List;)V
    .locals 1
    .param p1, "status"    # Lorg/apache/cordova/PluginResult$Status;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/cordova/PluginResult$Status;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/cordova/PluginResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p2, "multipartMessages":Ljava/util/List;, "Ljava/util/List<Lorg/apache/cordova/PluginResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/cordova/PluginResult;->keepCallback:Z

    .line 88
    invoke-virtual {p1}, Lorg/apache/cordova/PluginResult$Status;->ordinal()I

    move-result v0

    iput v0, p0, Lorg/apache/cordova/PluginResult;->status:I

    .line 89
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/cordova/PluginResult;->messageType:I

    .line 90
    iput-object p2, p0, Lorg/apache/cordova/PluginResult;->multipartMessages:Ljava/util/List;

    .line 91
    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "status"    # Lorg/apache/cordova/PluginResult$Status;
    .param p2, "message"    # Lorg/json/JSONArray;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/cordova/PluginResult;->keepCallback:Z

    .line 47
    invoke-virtual {p1}, Lorg/apache/cordova/PluginResult$Status;->ordinal()I

    move-result v0

    iput v0, p0, Lorg/apache/cordova/PluginResult;->status:I

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/cordova/PluginResult;->messageType:I

    .line 49
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/PluginResult;->encodedMessage:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "status"    # Lorg/apache/cordova/PluginResult$Status;
    .param p2, "message"    # Lorg/json/JSONObject;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/cordova/PluginResult;->keepCallback:Z

    .line 53
    invoke-virtual {p1}, Lorg/apache/cordova/PluginResult$Status;->ordinal()I

    move-result v0

    iput v0, p0, Lorg/apache/cordova/PluginResult;->status:I

    .line 54
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/cordova/PluginResult;->messageType:I

    .line 55
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/PluginResult;->encodedMessage:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/PluginResult$Status;Z)V
    .locals 1
    .param p1, "status"    # Lorg/apache/cordova/PluginResult$Status;
    .param p2, "b"    # Z

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/cordova/PluginResult;->keepCallback:Z

    .line 71
    invoke-virtual {p1}, Lorg/apache/cordova/PluginResult$Status;->ordinal()I

    move-result v0

    iput v0, p0, Lorg/apache/cordova/PluginResult;->status:I

    .line 72
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/cordova/PluginResult;->messageType:I

    .line 73
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/PluginResult;->encodedMessage:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/PluginResult$Status;[B)V
    .locals 1
    .param p1, "status"    # Lorg/apache/cordova/PluginResult$Status;
    .param p2, "data"    # [B

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;[BZ)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/PluginResult$Status;[BZ)V
    .locals 1
    .param p1, "status"    # Lorg/apache/cordova/PluginResult$Status;
    .param p2, "data"    # [B
    .param p3, "binaryString"    # Z

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/cordova/PluginResult;->keepCallback:Z

    .line 81
    invoke-virtual {p1}, Lorg/apache/cordova/PluginResult$Status;->ordinal()I

    move-result v0

    iput v0, p0, Lorg/apache/cordova/PluginResult;->status:I

    .line 82
    if-eqz p3, :cond_0

    const/4 v0, 0x7

    :goto_0
    iput v0, p0, Lorg/apache/cordova/PluginResult;->messageType:I

    .line 83
    const/4 v0, 0x2

    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/PluginResult;->encodedMessage:Ljava/lang/String;

    .line 84
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method


# virtual methods
.method public getJSONString()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"status\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/cordova/PluginResult;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"message\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/cordova/PluginResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"keepCallback\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/cordova/PluginResult;->keepCallback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeepCallback()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lorg/apache/cordova/PluginResult;->keepCallback:Z

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/cordova/PluginResult;->encodedMessage:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lorg/apache/cordova/PluginResult;->strMessage:Ljava/lang/String;

    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/PluginResult;->encodedMessage:Ljava/lang/String;

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/PluginResult;->encodedMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lorg/apache/cordova/PluginResult;->messageType:I

    return v0
.end method

.method public getMultipartMessage(I)Lorg/apache/cordova/PluginResult;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lorg/apache/cordova/PluginResult;->multipartMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/PluginResult;

    return-object v0
.end method

.method public getMultipartMessagesSize()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/cordova/PluginResult;->multipartMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lorg/apache/cordova/PluginResult;->status:I

    return v0
.end method

.method public getStrMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/cordova/PluginResult;->strMessage:Ljava/lang/String;

    return-object v0
.end method

.method public setKeepCallback(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lorg/apache/cordova/PluginResult;->keepCallback:Z

    .line 95
    return-void
.end method

.method public toCallbackString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "callbackId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 140
    iget v0, p0, Lorg/apache/cordova/PluginResult;->status:I

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual {v1}, Lorg/apache/cordova/PluginResult$Status;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/apache/cordova/PluginResult;->keepCallback:Z

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x0

    .line 149
    :goto_0
    return-object v0

    .line 145
    :cond_0
    iget v0, p0, Lorg/apache/cordova/PluginResult;->status:I

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual {v1}, Lorg/apache/cordova/PluginResult$Status;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lorg/apache/cordova/PluginResult;->status:I

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual {v1}, Lorg/apache/cordova/PluginResult$Status;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 146
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/cordova/PluginResult;->toSuccessCallbackString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/cordova/PluginResult;->toErrorCallbackString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toErrorCallbackString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "callbackId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cordova.callbackError(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/cordova/PluginResult;->getJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toSuccessCallbackString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "callbackId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cordova.callbackSuccess(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/cordova/PluginResult;->getJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
