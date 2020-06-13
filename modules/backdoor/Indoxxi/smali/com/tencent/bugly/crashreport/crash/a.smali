.class public Lcom/tencent/bugly/crashreport/crash/a;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/tencent/bugly/crashreport/crash/a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide v2, p0, Lcom/tencent/bugly/crashreport/crash/a;->a:J

    .line 15
    iput-wide v2, p0, Lcom/tencent/bugly/crashreport/crash/a;->b:J

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/a;->c:Ljava/lang/String;

    .line 17
    iput-boolean v1, p0, Lcom/tencent/bugly/crashreport/crash/a;->d:Z

    .line 18
    iput-boolean v1, p0, Lcom/tencent/bugly/crashreport/crash/a;->e:Z

    .line 19
    iput v1, p0, Lcom/tencent/bugly/crashreport/crash/a;->f:I

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/bugly/crashreport/crash/a;)I
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    iget-wide v2, p0, Lcom/tencent/bugly/crashreport/crash/a;->b:J

    iget-wide v4, p1, Lcom/tencent/bugly/crashreport/crash/a;->b:J

    sub-long/2addr v2, v4

    .line 29
    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v0

    .line 31
    :cond_1
    cmp-long v0, v2, v6

    if-gez v0, :cond_2

    .line 32
    const/4 v0, -0x1

    goto :goto_0

    .line 34
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 13
    check-cast p1, Lcom/tencent/bugly/crashreport/crash/a;

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/crashreport/crash/a;->a(Lcom/tencent/bugly/crashreport/crash/a;)I

    move-result v0

    return v0
.end method
