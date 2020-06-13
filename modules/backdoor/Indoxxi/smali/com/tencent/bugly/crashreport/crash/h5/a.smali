.class public Lcom/tencent/bugly/crashreport/crash/h5/a;
.super Ljava/lang/Object;
.source "BUGLY"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:J

.field public k:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/h5/a;->a:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/h5/a;->b:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/h5/a;->c:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/h5/a;->d:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/h5/a;->e:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/h5/a;->f:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/h5/a;->g:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/h5/a;->h:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/h5/a;->i:Ljava/lang/String;

    .line 25
    iput-wide v2, p0, Lcom/tencent/bugly/crashreport/crash/h5/a;->j:J

    .line 26
    iput-wide v2, p0, Lcom/tencent/bugly/crashreport/crash/h5/a;->k:J

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 47
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/h5/a;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 48
    const-string v1, "[JS] projectRoot"

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/h5/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/h5/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 51
    const-string v1, "[JS] context"

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/h5/a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/h5/a;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 54
    const-string v1, "[JS] url"

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/h5/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_2
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/h5/a;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 57
    const-string v1, "[JS] userAgent"

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/h5/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_3
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/h5/a;->i:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 63
    const-string v1, "[JS] file"

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/h5/a;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_4
    iget-wide v2, p0, Lcom/tencent/bugly/crashreport/crash/h5/a;->j:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    .line 66
    const-string v1, "[JS] lineNumber"

    iget-wide v2, p0, Lcom/tencent/bugly/crashreport/crash/h5/a;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_5
    return-object v0
.end method
