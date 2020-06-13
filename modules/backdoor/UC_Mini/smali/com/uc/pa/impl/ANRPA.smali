.class Lcom/uc/pa/impl/ANRPA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uc/pa/impl/PAListener;


# instance fields
.field private mANRLis:Lcom/uc/pa/PAANRListener;

.field private mAnrHandler:Landroid/os/Handler;

.field private mAnrHandlerThread:Landroid/os/HandlerThread;

.field private mAnrRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMsgFinished:Z

.field private mTimeOutTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/pa/impl/ANRPA;->mMsgFinished:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/uc/pa/impl/ANRPA;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/uc/pa/impl/ANRPA$1;

    invoke-direct {v0, p0}, Lcom/uc/pa/impl/ANRPA$1;-><init>(Lcom/uc/pa/impl/ANRPA;)V

    iput-object v0, p0, Lcom/uc/pa/impl/ANRPA;->mAnrRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/uc/pa/impl/ANRPA;->mContext:Landroid/content/Context;

    iput-wide p2, p0, Lcom/uc/pa/impl/ANRPA;->mTimeOutTime:J

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ANR HANDLER THREAD"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/uc/pa/impl/ANRPA;->mAnrHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/uc/pa/impl/ANRPA;->mAnrHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/uc/pa/impl/ANRPA;->mAnrHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/uc/pa/impl/ANRPA;->mAnrHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/uc/pa/impl/ANRPA;)V
    .locals 0

    invoke-direct {p0}, Lcom/uc/pa/impl/ANRPA;->generateStackTraces()V

    return-void
.end method

.method static synthetic access$1(Lcom/uc/pa/impl/ANRPA;)Lcom/uc/pa/PAANRListener;
    .locals 1

    iget-object v0, p0, Lcom/uc/pa/impl/ANRPA;->mANRLis:Lcom/uc/pa/PAANRListener;

    return-object v0
.end method

.method private generateStackTraces()V
    .locals 13

    const/4 v3, 0x0

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/uc/pa/impl/ANRPA;->mMsgFinished:Z

    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FreeMem:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/uc/pa/impl/ANRPA;->getFreeMemory()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v3, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/uc/pa/impl/ANRPA;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/uc/pa/impl/ANRPA$2;

    invoke-direct {v1, p0, v6}, Lcom/uc/pa/impl/ANRPA$2;-><init>(Lcom/uc/pa/impl/ANRPA;Ljava/lang/StringBuffer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/StackTraceElement;

    array-length v9, v1

    move v4, v3

    move v5, v3

    :goto_1
    if-lt v4, v9, :cond_2

    move v0, v2

    :goto_2
    const-string v1, "\n"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v0

    goto/16 :goto_0

    :cond_2
    aget-object v10, v1, v4

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v10

    if-nez v5, :cond_3

    const-string v11, "main"

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "android.os.MessageQueue.nativePollOnce(Native Method)"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    move v0, v3

    goto :goto_2

    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "\n"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private getFreeMemory()J
    .locals 4

    iget-object v0, p0, Lcom/uc/pa/impl/ANRPA;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iget-object v0, p0, Lcom/uc/pa/impl/ANRPA;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    goto :goto_0
.end method


# virtual methods
.method public end(Ljava/lang/String;JJJJ)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uc/pa/impl/ANRPA;->mMsgFinished:Z

    iget-object v0, p0, Lcom/uc/pa/impl/ANRPA;->mAnrHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/uc/pa/impl/ANRPA;->mAnrRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerPAANRListener(Lcom/uc/pa/PAANRListener;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/pa/impl/ANRPA;->mANRLis:Lcom/uc/pa/PAANRListener;

    return-void
.end method

.method public start(Ljava/lang/String;JJ)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/pa/impl/ANRPA;->mMsgFinished:Z

    iget-object v0, p0, Lcom/uc/pa/impl/ANRPA;->mAnrHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/uc/pa/impl/ANRPA;->mAnrRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/uc/pa/impl/ANRPA;->mAnrHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/uc/pa/impl/ANRPA;->mAnrRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/uc/pa/impl/ANRPA;->mTimeOutTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public unregisterPAANRListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/pa/impl/ANRPA;->mANRLis:Lcom/uc/pa/PAANRListener;

    return-void
.end method
