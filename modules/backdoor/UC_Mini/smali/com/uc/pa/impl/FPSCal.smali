.class Lcom/uc/pa/impl/FPSCal;
.super Ljava/lang/Object;


# static fields
.field private static mEnableLog:Z

.field private static mFPSInfoMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/uc/pa/impl/FPSCal;->mFPSInfoMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/pa/impl/FPSCal;->mEnableLog:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableLog(Z)V
    .locals 0

    sput-boolean p0, Lcom/uc/pa/impl/FPSCal;->mEnableLog:Z

    return-void
.end method

.method public static endCalFPS(Ljava/lang/String;)I
    .locals 3

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    sget-object v0, Lcom/uc/pa/impl/FPSCal;->mFPSInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/pa/impl/FPSCal$FPSInfo;

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/uc/pa/impl/FPSCal$FPSInfo;->removeObserver()V

    sget-object v1, Lcom/uc/pa/impl/FPSCal;->mFPSInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/uc/pa/impl/FPSCal$FPSInfo;->fps()I

    move-result v0

    sget-boolean v1, Lcom/uc/pa/impl/FPSCal;->mEnableLog:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/pa/impl/Utils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startCalFPS(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/uc/pa/impl/FPSCal;->mFPSInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/uc/pa/impl/FPSCal$FPSInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/uc/pa/impl/FPSCal$FPSInfo;-><init>(Lcom/uc/pa/impl/FPSCal$FPSInfo;)V

    invoke-virtual {v0, p1}, Lcom/uc/pa/impl/FPSCal$FPSInfo;->setView(Landroid/view/View;)V

    sget-object v1, Lcom/uc/pa/impl/FPSCal;->mFPSInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
