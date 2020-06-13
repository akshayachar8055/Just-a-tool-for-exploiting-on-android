.class Lcom/uc/pa/impl/PrinterEx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/util/Printer;


# static fields
.field private static final FINISH_TAG:Ljava/lang/String; = "<"

.field private static final START_TAG:Ljava/lang/String; = ">"


# instance fields
.field private mHasStartLog:Z

.field private mInterval:J

.field private mPAListeners:Ljava/util/Vector;

.field private mStartCtime:J

.field private mStartLog:Ljava/lang/String;

.field private mStartRtime:J


# direct methods
.method constructor <init>()V
    .locals 3

    const-wide/16 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/pa/impl/PrinterEx;->mHasStartLog:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/pa/impl/PrinterEx;->mStartLog:Ljava/lang/String;

    iput-wide v1, p0, Lcom/uc/pa/impl/PrinterEx;->mStartRtime:J

    iput-wide v1, p0, Lcom/uc/pa/impl/PrinterEx;->mStartCtime:J

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/uc/pa/impl/PrinterEx;->mPAListeners:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .locals 11

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uc/pa/impl/PrinterEx;->mStartRtime:J

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uc/pa/impl/PrinterEx;->mStartCtime:J

    iput-object p1, p0, Lcom/uc/pa/impl/PrinterEx;->mStartLog:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uc/pa/impl/PrinterEx;->mHasStartLog:Z

    iget-object v0, p0, Lcom/uc/pa/impl/PrinterEx;->mPAListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/pa/impl/PAListener;

    iget-object v1, p0, Lcom/uc/pa/impl/PrinterEx;->mStartLog:Ljava/lang/String;

    iget-wide v2, p0, Lcom/uc/pa/impl/PrinterEx;->mStartRtime:J

    iget-wide v4, p0, Lcom/uc/pa/impl/PrinterEx;->mStartCtime:J

    invoke-interface/range {v0 .. v5}, Lcom/uc/pa/impl/PAListener;->start(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/uc/pa/impl/PrinterEx;->mHasStartLog:Z

    if-eqz v0, :cond_0

    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/pa/impl/PrinterEx;->mHasStartLog:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/uc/pa/impl/PrinterEx;->mStartRtime:J

    sub-long v6, v0, v2

    iget-wide v0, p0, Lcom/uc/pa/impl/PrinterEx;->mInterval:J

    cmp-long v0, v6, v0

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/uc/pa/impl/PrinterEx;->mStartCtime:J

    sub-long v8, v0, v2

    iget-object v0, p0, Lcom/uc/pa/impl/PrinterEx;->mPAListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/pa/impl/PAListener;

    iget-object v1, p0, Lcom/uc/pa/impl/PrinterEx;->mStartLog:Ljava/lang/String;

    iget-wide v2, p0, Lcom/uc/pa/impl/PrinterEx;->mStartRtime:J

    iget-wide v4, p0, Lcom/uc/pa/impl/PrinterEx;->mStartCtime:J

    invoke-interface/range {v0 .. v9}, Lcom/uc/pa/impl/PAListener;->end(Ljava/lang/String;JJJJ)V

    goto :goto_1
.end method

.method public registerMsgStartedListener(Lcom/uc/pa/impl/PAListener;)V
    .locals 1

    iget-object v0, p0, Lcom/uc/pa/impl/PrinterEx;->mPAListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/uc/pa/impl/PrinterEx;->mInterval:J

    return-void
.end method

.method public unregisterMsgStartedListener(Lcom/uc/pa/impl/PAListener;)V
    .locals 1

    iget-object v0, p0, Lcom/uc/pa/impl/PrinterEx;->mPAListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    return-void
.end method
