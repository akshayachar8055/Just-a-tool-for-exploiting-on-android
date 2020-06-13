.class Lcom/uc/pa/impl/TimeCal$TimeInfo;
.super Ljava/lang/Object;


# instance fields
.field private mStartTime:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uc/pa/impl/TimeCal$TimeInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/uc/pa/impl/TimeCal$TimeInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public consumeTime()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/uc/pa/impl/TimeCal$TimeInfo;->mStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public setStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/uc/pa/impl/TimeCal$TimeInfo;->mStartTime:J

    return-void
.end method
