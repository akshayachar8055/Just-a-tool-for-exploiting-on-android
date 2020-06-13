.class Lcom/uc/pa/impl/FPSCal$FPSInfo;
.super Ljava/lang/Object;


# instance fields
.field private mLis:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mStartTime:J

.field private mTotalFrame:J

.field private mView:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uc/pa/impl/FPSCal$FPSInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/uc/pa/impl/FPSCal$FPSInfo;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/uc/pa/impl/FPSCal$FPSInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/uc/pa/impl/FPSCal$FPSInfo;->mTotalFrame:J

    return-wide v0
.end method

.method static synthetic access$1(Lcom/uc/pa/impl/FPSCal$FPSInfo;J)V
    .locals 0

    iput-wide p1, p0, Lcom/uc/pa/impl/FPSCal$FPSInfo;->mTotalFrame:J

    return-void
.end method


# virtual methods
.method public fps()I
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/uc/pa/impl/FPSCal$FPSInfo;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iget-wide v1, p0, Lcom/uc/pa/impl/FPSCal$FPSInfo;->mTotalFrame:J

    long-to-float v1, v1

    div-float v0, v1, v0

    float-to-int v0, v0

    if-lez v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeObserver()V
    .locals 2

    iget-object v0, p0, Lcom/uc/pa/impl/FPSCal$FPSInfo;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/pa/impl/FPSCal$FPSInfo;->mLis:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/pa/impl/FPSCal$FPSInfo;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/pa/impl/FPSCal$FPSInfo;->mLis:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/uc/pa/impl/FPSCal$FPSInfo;->mView:Landroid/view/View;

    new-instance v0, Lcom/uc/pa/impl/FPSCal$FPSInfo$1;

    invoke-direct {v0, p0}, Lcom/uc/pa/impl/FPSCal$FPSInfo$1;-><init>(Lcom/uc/pa/impl/FPSCal$FPSInfo;)V

    iput-object v0, p0, Lcom/uc/pa/impl/FPSCal$FPSInfo;->mLis:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iget-object v1, p0, Lcom/uc/pa/impl/FPSCal$FPSInfo;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uc/pa/impl/FPSCal$FPSInfo;->mStartTime:J

    goto :goto_0
.end method
