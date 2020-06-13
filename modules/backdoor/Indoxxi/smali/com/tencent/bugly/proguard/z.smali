.class public final Lcom/tencent/bugly/proguard/z;
.super Lcom/tencent/bugly/proguard/m;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final synthetic f:Z


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:J

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/tencent/bugly/proguard/z;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/bugly/proguard/z;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/m;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/bugly/proguard/z;->a:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/z;->b:Ljava/lang/String;

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/z;->c:J

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/z;->d:Ljava/util/Map;

    .line 71
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JLjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/m;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/bugly/proguard/z;->a:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/z;->b:Ljava/lang/String;

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/z;->c:J

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/z;->d:Ljava/util/Map;

    .line 75
    iput p1, p0, Lcom/tencent/bugly/proguard/z;->a:I

    .line 76
    iput-object p2, p0, Lcom/tencent/bugly/proguard/z;->b:Ljava/lang/String;

    .line 77
    iput-wide p3, p0, Lcom/tencent/bugly/proguard/z;->c:J

    .line 78
    iput-object p5, p0, Lcom/tencent/bugly/proguard/z;->d:Ljava/util/Map;

    .line 79
    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/bugly/proguard/k;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 140
    iget v0, p0, Lcom/tencent/bugly/proguard/z;->a:I

    invoke-virtual {p1, v0, v3, v3}, Lcom/tencent/bugly/proguard/k;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/proguard/z;->a:I

    .line 141
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/z;->b:Ljava/lang/String;

    .line 142
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/z;->c:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/k;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/z;->c:J

    .line 143
    sget-object v0, Lcom/tencent/bugly/proguard/z;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/z;->e:Ljava/util/Map;

    .line 146
    const-string v0, ""

    .line 147
    const-string v1, ""

    .line 148
    sget-object v2, Lcom/tencent/bugly/proguard/z;->e:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/z;->e:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/tencent/bugly/proguard/k;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/z;->d:Ljava/util/Map;

    .line 151
    return-void
.end method

.method public a(Lcom/tencent/bugly/proguard/l;)V
    .locals 3

    .prologue
    .line 124
    iget v0, p0, Lcom/tencent/bugly/proguard/z;->a:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(II)V

    .line 125
    iget-object v0, p0, Lcom/tencent/bugly/proguard/z;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/tencent/bugly/proguard/z;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    .line 129
    :cond_0
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/z;->c:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/l;->a(JI)V

    .line 130
    iget-object v0, p0, Lcom/tencent/bugly/proguard/z;->d:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/tencent/bugly/proguard/z;->d:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/util/Map;I)V

    .line 134
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/StringBuilder;I)V
    .locals 4

    .prologue
    .line 155
    new-instance v0, Lcom/tencent/bugly/proguard/i;

    invoke-direct {v0, p1, p2}, Lcom/tencent/bugly/proguard/i;-><init>(Ljava/lang/StringBuilder;I)V

    .line 156
    iget v1, p0, Lcom/tencent/bugly/proguard/z;->a:I

    const-string v2, "flag"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/proguard/i;->a(ILjava/lang/String;)Lcom/tencent/bugly/proguard/i;

    .line 157
    iget-object v1, p0, Lcom/tencent/bugly/proguard/z;->b:Ljava/lang/String;

    const-string v2, "localStrategyId"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/i;

    .line 158
    iget-wide v2, p0, Lcom/tencent/bugly/proguard/z;->c:J

    const-string v1, "localStrategyTime"

    invoke-virtual {v0, v2, v3, v1}, Lcom/tencent/bugly/proguard/i;->a(JLjava/lang/String;)Lcom/tencent/bugly/proguard/i;

    .line 159
    iget-object v1, p0, Lcom/tencent/bugly/proguard/z;->d:Ljava/util/Map;

    const-string v2, "reserved"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/proguard/i;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/tencent/bugly/proguard/i;

    .line 160
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 113
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 119
    :cond_0
    return-object v0

    .line 115
    :catch_0
    move-exception v1

    .line 117
    sget-boolean v1, Lcom/tencent/bugly/proguard/z;->f:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 83
    if-nez p1, :cond_1

    .line 89
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 88
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/tencent/bugly/proguard/z;

    .line 89
    .end local p1    # "o":Ljava/lang/Object;
    iget v1, p0, Lcom/tencent/bugly/proguard/z;->a:I

    iget v2, p1, Lcom/tencent/bugly/proguard/z;->a:I

    .line 90
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/n;->a(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/z;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/z;->b:Ljava/lang/String;

    .line 91
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/z;->c:J

    iget-wide v4, p1, Lcom/tencent/bugly/proguard/z;->c:J

    .line 92
    invoke-static {v2, v3, v4, v5}, Lcom/tencent/bugly/proguard/n;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/z;->d:Ljava/util/Map;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/z;->d:Ljava/util/Map;

    .line 93
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 100
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    const/4 v0, 0x0

    return v0
.end method
