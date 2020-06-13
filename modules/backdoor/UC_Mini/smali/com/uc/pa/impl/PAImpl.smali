.class public final Lcom/uc/pa/impl/PAImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uc/pa/PA;


# instance fields
.field private mANRPA:Lcom/uc/pa/impl/ANRPA;

.field private mEnableLog:Z

.field private mLooper:Landroid/os/Looper;

.field private mPrinter:Lcom/uc/pa/impl/PrinterEx;

.field private mStatsPA:Lcom/uc/pa/impl/StatsPA;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/pa/impl/PAImpl;->mLooper:Landroid/os/Looper;

    new-instance v0, Lcom/uc/pa/impl/PrinterEx;

    invoke-direct {v0}, Lcom/uc/pa/impl/PrinterEx;-><init>()V

    iput-object v0, p0, Lcom/uc/pa/impl/PAImpl;->mPrinter:Lcom/uc/pa/impl/PrinterEx;

    return-void
.end method


# virtual methods
.method public final enableDumpToFile(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uc/pa/impl/PAImpl;->mStatsPA:Lcom/uc/pa/impl/StatsPA;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/pa/impl/PAImpl;->mStatsPA:Lcom/uc/pa/impl/StatsPA;

    invoke-virtual {v0, p1}, Lcom/uc/pa/impl/StatsPA;->enableDumpToFile(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final enableLog(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/uc/pa/impl/PAImpl;->mEnableLog:Z

    invoke-static {p1}, Lcom/uc/pa/impl/FPSCal;->enableLog(Z)V

    invoke-static {p1}, Lcom/uc/pa/impl/TimeCal;->enableLog(Z)V

    iget-object v0, p0, Lcom/uc/pa/impl/PAImpl;->mStatsPA:Lcom/uc/pa/impl/StatsPA;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/pa/impl/PAImpl;->mStatsPA:Lcom/uc/pa/impl/StatsPA;

    invoke-virtual {v0, p1}, Lcom/uc/pa/impl/StatsPA;->enableLog(Z)V

    :cond_0
    return-void
.end method

.method public final endCalFPS(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Lcom/uc/pa/impl/FPSCal;->endCalFPS(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final endCalTime(Ljava/lang/String;)J
    .locals 2

    invoke-static {p1}, Lcom/uc/pa/impl/TimeCal;->endCalTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final registerPAANRListener(Landroid/content/Context;Lcom/uc/pa/PAANRListener;)V
    .locals 2

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/uc/pa/impl/PAImpl;->registerPAANRListener(Landroid/content/Context;Lcom/uc/pa/PAANRListener;J)V

    return-void
.end method

.method public final registerPAANRListener(Landroid/content/Context;Lcom/uc/pa/PAANRListener;J)V
    .locals 2

    iget-object v0, p0, Lcom/uc/pa/impl/PAImpl;->mANRPA:Lcom/uc/pa/impl/ANRPA;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uc/pa/impl/ANRPA;

    invoke-direct {v0, p1, p3, p4}, Lcom/uc/pa/impl/ANRPA;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/uc/pa/impl/PAImpl;->mANRPA:Lcom/uc/pa/impl/ANRPA;

    :cond_0
    iget-object v0, p0, Lcom/uc/pa/impl/PAImpl;->mANRPA:Lcom/uc/pa/impl/ANRPA;

    invoke-virtual {v0, p2}, Lcom/uc/pa/impl/ANRPA;->registerPAANRListener(Lcom/uc/pa/PAANRListener;)V

    iget-object v0, p0, Lcom/uc/pa/impl/PAImpl;->mPrinter:Lcom/uc/pa/impl/PrinterEx;

    iget-object v1, p0, Lcom/uc/pa/impl/PAImpl;->mANRPA:Lcom/uc/pa/impl/ANRPA;

    invoke-virtual {v0, v1}, Lcom/uc/pa/impl/PrinterEx;->registerMsgStartedListener(Lcom/uc/pa/impl/PAListener;)V

    return-void
.end method

.method public final registerPAMsgListener(Lcom/uc/pa/PAMsgListener;)V
    .locals 2

    iget-object v0, p0, Lcom/uc/pa/impl/PAImpl;->mStatsPA:Lcom/uc/pa/impl/StatsPA;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uc/pa/impl/StatsPA;

    invoke-direct {v0}, Lcom/uc/pa/impl/StatsPA;-><init>()V

    iput-object v0, p0, Lcom/uc/pa/impl/PAImpl;->mStatsPA:Lcom/uc/pa/impl/StatsPA;

    :cond_0
    iget-object v0, p0, Lcom/uc/pa/impl/PAImpl;->mStatsPA:Lcom/uc/pa/impl/StatsPA;

    iget-boolean v1, p0, Lcom/uc/pa/impl/PAImpl;->mEnableLog:Z

    invoke-virtual {v0, v1}, Lcom/uc/pa/impl/StatsPA;->enableLog(Z)V

    iget-object v0, p0, Lcom/uc/pa/impl/PAImpl;->mStatsPA:Lcom/uc/pa/impl/StatsPA;

    invoke-virtual {v0, p1}, Lcom/uc/pa/impl/StatsPA;->registerPAMsgListener(Lcom/uc/pa/PAMsgListener;)V

    iget-object v0, p0, Lcom/uc/pa/impl/PAImpl;->mPrinter:Lcom/uc/pa/impl/PrinterEx;

    iget-object v1, p0, Lcom/uc/pa/impl/PAImpl;->mStatsPA:Lcom/uc/pa/impl/StatsPA;

    invoke-virtual {v0, v1}, Lcom/uc/pa/impl/PrinterEx;->registerMsgStartedListener(Lcom/uc/pa/impl/PAListener;)V

    return-void
.end method

.method public final start()V
    .locals 2

    iget-object v0, p0, Lcom/uc/pa/impl/PAImpl;->mLooper:Landroid/os/Looper;

    iget-object v1, p0, Lcom/uc/pa/impl/PAImpl;->mPrinter:Lcom/uc/pa/impl/PrinterEx;

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    return-void
.end method

.method public final startCalFPS(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/uc/pa/impl/FPSCal;->startCalFPS(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public final startCalTime(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/uc/pa/impl/TimeCal;->startCalTime(Ljava/lang/String;)V

    return-void
.end method

.method public final stop()V
    .locals 2

    iget-object v0, p0, Lcom/uc/pa/impl/PAImpl;->mLooper:Landroid/os/Looper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    return-void
.end method

.method public final unRegisterPAMsgListener()V
    .locals 2

    iget-object v0, p0, Lcom/uc/pa/impl/PAImpl;->mStatsPA:Lcom/uc/pa/impl/StatsPA;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/pa/impl/PAImpl;->mStatsPA:Lcom/uc/pa/impl/StatsPA;

    invoke-virtual {v0}, Lcom/uc/pa/impl/StatsPA;->unRegisterPAMsgListener()V

    iget-object v0, p0, Lcom/uc/pa/impl/PAImpl;->mPrinter:Lcom/uc/pa/impl/PrinterEx;

    iget-object v1, p0, Lcom/uc/pa/impl/PAImpl;->mStatsPA:Lcom/uc/pa/impl/StatsPA;

    invoke-virtual {v0, v1}, Lcom/uc/pa/impl/PrinterEx;->unregisterMsgStartedListener(Lcom/uc/pa/impl/PAListener;)V

    :cond_0
    return-void
.end method

.method public final unregisterPAANRListener()V
    .locals 2

    iget-object v0, p0, Lcom/uc/pa/impl/PAImpl;->mANRPA:Lcom/uc/pa/impl/ANRPA;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/pa/impl/PAImpl;->mANRPA:Lcom/uc/pa/impl/ANRPA;

    invoke-virtual {v0}, Lcom/uc/pa/impl/ANRPA;->unregisterPAANRListener()V

    iget-object v0, p0, Lcom/uc/pa/impl/PAImpl;->mPrinter:Lcom/uc/pa/impl/PrinterEx;

    iget-object v1, p0, Lcom/uc/pa/impl/PAImpl;->mANRPA:Lcom/uc/pa/impl/ANRPA;

    invoke-virtual {v0, v1}, Lcom/uc/pa/impl/PrinterEx;->unregisterMsgStartedListener(Lcom/uc/pa/impl/PAListener;)V

    :cond_0
    return-void
.end method
