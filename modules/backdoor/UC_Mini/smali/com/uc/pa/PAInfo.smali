.class public Lcom/uc/pa/PAInfo;
.super Ljava/lang/Object;


# instance fields
.field private mCallback:Ljava/lang/String;

.field private mConsumeCPUTime:J

.field private mConsumeRealTime:J

.field private mMsgID:Ljava/lang/String;

.field private mTarget:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallback()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uc/pa/PAInfo;->mCallback:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumeCPUTime()J
    .locals 2

    iget-wide v0, p0, Lcom/uc/pa/PAInfo;->mConsumeCPUTime:J

    return-wide v0
.end method

.method public getConsumeRealTime()J
    .locals 2

    iget-wide v0, p0, Lcom/uc/pa/PAInfo;->mConsumeRealTime:J

    return-wide v0
.end method

.method public getMsgID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uc/pa/PAInfo;->mMsgID:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uc/pa/PAInfo;->mTarget:Ljava/lang/String;

    return-object v0
.end method

.method public setCallback(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/pa/PAInfo;->mCallback:Ljava/lang/String;

    return-void
.end method

.method public setConsumeCPUTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/uc/pa/PAInfo;->mConsumeCPUTime:J

    return-void
.end method

.method public setConsumeRealTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/uc/pa/PAInfo;->mConsumeRealTime:J

    return-void
.end method

.method public setMsgID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/pa/PAInfo;->mMsgID:Ljava/lang/String;

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/pa/PAInfo;->mTarget:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MsgID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uc/pa/PAInfo;->mMsgID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/pa/PAInfo;->mTarget:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/pa/PAInfo;->mCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ConsumeRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/uc/pa/PAInfo;->mConsumeRealTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ConsumeCPUTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/uc/pa/PAInfo;->mConsumeCPUTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
