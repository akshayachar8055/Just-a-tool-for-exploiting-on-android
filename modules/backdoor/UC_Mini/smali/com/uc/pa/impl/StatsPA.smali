.class Lcom/uc/pa/impl/StatsPA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uc/pa/impl/PAListener;


# instance fields
.field private mBos:Ljava/io/BufferedOutputStream;

.field private mEnableLog:Z

.field private mLogFilePath:Ljava/lang/String;

.field private mMsgLis:Lcom/uc/pa/PAMsgListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCallBack(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private static getMsgID(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static getPAInfo(Ljava/lang/String;JJ)Lcom/uc/pa/PAInfo;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/uc/pa/PAInfo;

    invoke-direct {v1}, Lcom/uc/pa/PAInfo;-><init>()V

    :try_start_0
    invoke-static {p0}, Lcom/uc/pa/impl/StatsPA;->getMsgID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uc/pa/PAInfo;->setMsgID(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/uc/pa/impl/StatsPA;->getTarget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uc/pa/PAInfo;->setTarget(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/uc/pa/impl/StatsPA;->getCallBack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uc/pa/PAInfo;->setCallback(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1, p1, p2}, Lcom/uc/pa/PAInfo;->setConsumeRealTime(J)V

    invoke-virtual {v1, p3, p4}, Lcom/uc/pa/PAInfo;->setConsumeCPUTime(J)V

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getTarget(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v2, -0x1

    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v2, :cond_1

    if-eq v1, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x1

    if-le v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "{"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "{"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v2, :cond_1

    if-eq v1, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    add-int/lit8 v2, v0, 0x1

    if-le v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public enableDumpToFile(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/uc/pa/impl/StatsPA;->mLogFilePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/uc/pa/impl/StatsPA;->mBos:Ljava/io/BufferedOutputStream;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/uc/pa/impl/StatsPA;->mBos:Ljava/io/BufferedOutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public enableLog(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uc/pa/impl/StatsPA;->mEnableLog:Z

    return-void
.end method

.method public end(Ljava/lang/String;JJJJ)V
    .locals 4

    invoke-static {p1, p6, p7, p8, p9}, Lcom/uc/pa/impl/StatsPA;->getPAInfo(Ljava/lang/String;JJ)Lcom/uc/pa/PAInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/uc/pa/impl/StatsPA;->mEnableLog:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/uc/pa/PAInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/pa/impl/Utils;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/uc/pa/impl/StatsPA;->mLogFilePath:Ljava/lang/String;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/uc/pa/impl/StatsPA;->mBos:Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/uc/pa/PAInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/uc/pa/impl/StatsPA;->mMsgLis:Lcom/uc/pa/PAMsgListener;

    invoke-interface {v1, v0}, Lcom/uc/pa/PAMsgListener;->msg(Lcom/uc/pa/PAInfo;)V

    :cond_2
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public registerPAMsgListener(Lcom/uc/pa/PAMsgListener;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/pa/impl/StatsPA;->mMsgLis:Lcom/uc/pa/PAMsgListener;

    return-void
.end method

.method public start(Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method public unRegisterPAMsgListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/pa/impl/StatsPA;->mMsgLis:Lcom/uc/pa/PAMsgListener;

    return-void
.end method
