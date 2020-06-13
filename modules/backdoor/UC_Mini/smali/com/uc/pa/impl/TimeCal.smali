.class Lcom/uc/pa/impl/TimeCal;
.super Ljava/lang/Object;


# static fields
.field private static mEnableLog:Z

.field private static mTimeInfoMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/uc/pa/impl/TimeCal;->mTimeInfoMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/pa/impl/TimeCal;->mEnableLog:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableLog(Z)V
    .locals 0

    sput-boolean p0, Lcom/uc/pa/impl/TimeCal;->mEnableLog:Z

    return-void
.end method

.method public static endCalTime(Ljava/lang/String;)J
    .locals 4

    const-wide/16 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-wide v0, v1

    :cond_1
    :goto_0
    return-wide v0

    :cond_2
    sget-object v0, Lcom/uc/pa/impl/TimeCal;->mTimeInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/pa/impl/TimeCal$TimeInfo;

    if-nez v0, :cond_3

    move-wide v0, v1

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/uc/pa/impl/TimeCal;->mTimeInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/uc/pa/impl/TimeCal$TimeInfo;->consumeTime()J

    move-result-wide v0

    sget-boolean v2, Lcom/uc/pa/impl/TimeCal;->mEnableLog:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",consumeTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uc/pa/impl/Utils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startCalTime(Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/uc/pa/impl/TimeCal;->mTimeInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/uc/pa/impl/TimeCal$TimeInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/uc/pa/impl/TimeCal$TimeInfo;-><init>(Lcom/uc/pa/impl/TimeCal$TimeInfo;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/uc/pa/impl/TimeCal$TimeInfo;->setStartTime(J)V

    sget-object v1, Lcom/uc/pa/impl/TimeCal;->mTimeInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
