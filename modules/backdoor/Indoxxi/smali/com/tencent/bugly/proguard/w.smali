.class public final Lcom/tencent/bugly/proguard/w;
.super Lcom/tencent/bugly/proguard/m;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static i:Lcom/tencent/bugly/proguard/v;

.field static j:Ljava/util/Map;
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

.field static final synthetic k:Z


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:B

.field public d:J

.field public e:Lcom/tencent/bugly/proguard/v;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Ljava/util/Map;
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
    const-class v0, Lcom/tencent/bugly/proguard/w;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/bugly/proguard/w;->k:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/m;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/w;->a:Ljava/lang/String;

    .line 23
    iput-wide v4, p0, Lcom/tencent/bugly/proguard/w;->b:J

    .line 25
    iput-byte v1, p0, Lcom/tencent/bugly/proguard/w;->c:B

    .line 27
    iput-wide v4, p0, Lcom/tencent/bugly/proguard/w;->d:J

    .line 29
    iput-object v2, p0, Lcom/tencent/bugly/proguard/w;->e:Lcom/tencent/bugly/proguard/v;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/w;->f:Ljava/lang/String;

    .line 33
    iput v1, p0, Lcom/tencent/bugly/proguard/w;->g:I

    .line 35
    iput-object v2, p0, Lcom/tencent/bugly/proguard/w;->h:Ljava/util/Map;

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JBJLcom/tencent/bugly/proguard/v;Ljava/lang/String;ILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JBJ",
            "Lcom/tencent/bugly/proguard/v;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/m;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/w;->a:Ljava/lang/String;

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/w;->b:J

    .line 25
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/tencent/bugly/proguard/w;->c:B

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/w;->d:J

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/w;->e:Lcom/tencent/bugly/proguard/v;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/w;->f:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/bugly/proguard/w;->g:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/w;->h:Ljava/util/Map;

    .line 123
    iput-object p1, p0, Lcom/tencent/bugly/proguard/w;->a:Ljava/lang/String;

    .line 124
    iput-wide p2, p0, Lcom/tencent/bugly/proguard/w;->b:J

    .line 125
    iput-byte p4, p0, Lcom/tencent/bugly/proguard/w;->c:B

    .line 126
    iput-wide p5, p0, Lcom/tencent/bugly/proguard/w;->d:J

    .line 127
    iput-object p7, p0, Lcom/tencent/bugly/proguard/w;->e:Lcom/tencent/bugly/proguard/v;

    .line 128
    iput-object p8, p0, Lcom/tencent/bugly/proguard/w;->f:Ljava/lang/String;

    .line 129
    iput p9, p0, Lcom/tencent/bugly/proguard/w;->g:I

    .line 130
    iput-object p10, p0, Lcom/tencent/bugly/proguard/w;->h:Ljava/util/Map;

    .line 131
    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/bugly/proguard/k;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 204
    invoke-virtual {p1, v3, v2}, Lcom/tencent/bugly/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/w;->a:Ljava/lang/String;

    .line 205
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/w;->b:J

    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/tencent/bugly/proguard/k;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/w;->b:J

    .line 206
    iget-byte v0, p0, Lcom/tencent/bugly/proguard/w;->c:B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/k;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/bugly/proguard/w;->c:B

    .line 207
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/w;->d:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/k;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/w;->d:J

    .line 208
    sget-object v0, Lcom/tencent/bugly/proguard/w;->i:Lcom/tencent/bugly/proguard/v;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lcom/tencent/bugly/proguard/v;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/v;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/w;->i:Lcom/tencent/bugly/proguard/v;

    .line 212
    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/w;->i:Lcom/tencent/bugly/proguard/v;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v3}, Lcom/tencent/bugly/proguard/k;->a(Lcom/tencent/bugly/proguard/m;IZ)Lcom/tencent/bugly/proguard/m;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/v;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/w;->e:Lcom/tencent/bugly/proguard/v;

    .line 213
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/w;->f:Ljava/lang/String;

    .line 214
    iget v0, p0, Lcom/tencent/bugly/proguard/w;->g:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v3}, Lcom/tencent/bugly/proguard/k;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/proguard/w;->g:I

    .line 215
    sget-object v0, Lcom/tencent/bugly/proguard/w;->j:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/w;->j:Ljava/util/Map;

    .line 218
    const-string v0, ""

    .line 219
    const-string v1, ""

    .line 220
    sget-object v2, Lcom/tencent/bugly/proguard/w;->j:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_1
    sget-object v0, Lcom/tencent/bugly/proguard/w;->j:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Lcom/tencent/bugly/proguard/k;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/w;->h:Ljava/util/Map;

    .line 223
    return-void
.end method

.method public a(Lcom/tencent/bugly/proguard/l;)V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/tencent/bugly/proguard/w;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    .line 181
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/w;->b:J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/l;->a(JI)V

    .line 182
    iget-byte v0, p0, Lcom/tencent/bugly/proguard/w;->c:B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->b(BI)V

    .line 183
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/w;->d:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/l;->a(JI)V

    .line 184
    iget-object v0, p0, Lcom/tencent/bugly/proguard/w;->e:Lcom/tencent/bugly/proguard/v;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/tencent/bugly/proguard/w;->e:Lcom/tencent/bugly/proguard/v;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Lcom/tencent/bugly/proguard/m;I)V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/w;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/tencent/bugly/proguard/w;->f:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    .line 192
    :cond_1
    iget v0, p0, Lcom/tencent/bugly/proguard/w;->g:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(II)V

    .line 193
    iget-object v0, p0, Lcom/tencent/bugly/proguard/w;->h:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/tencent/bugly/proguard/w;->h:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/util/Map;I)V

    .line 197
    :cond_2
    return-void
.end method

.method public a(Ljava/lang/StringBuilder;I)V
    .locals 4

    .prologue
    .line 227
    new-instance v0, Lcom/tencent/bugly/proguard/i;

    invoke-direct {v0, p1, p2}, Lcom/tencent/bugly/proguard/i;-><init>(Ljava/lang/StringBuilder;I)V

    .line 228
    iget-object v1, p0, Lcom/tencent/bugly/proguard/w;->a:Ljava/lang/String;

    const-string v2, "eventType"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/i;

    .line 229
    iget-wide v2, p0, Lcom/tencent/bugly/proguard/w;->b:J

    const-string v1, "eventTime"

    invoke-virtual {v0, v2, v3, v1}, Lcom/tencent/bugly/proguard/i;->a(JLjava/lang/String;)Lcom/tencent/bugly/proguard/i;

    .line 230
    iget-byte v1, p0, Lcom/tencent/bugly/proguard/w;->c:B

    const-string v2, "eventResult"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/proguard/i;->a(BLjava/lang/String;)Lcom/tencent/bugly/proguard/i;

    .line 231
    iget-wide v2, p0, Lcom/tencent/bugly/proguard/w;->d:J

    const-string v1, "eventElapse"

    invoke-virtual {v0, v2, v3, v1}, Lcom/tencent/bugly/proguard/i;->a(JLjava/lang/String;)Lcom/tencent/bugly/proguard/i;

    .line 232
    iget-object v1, p0, Lcom/tencent/bugly/proguard/w;->e:Lcom/tencent/bugly/proguard/v;

    const-string v2, "destAppInfo"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/m;Ljava/lang/String;)Lcom/tencent/bugly/proguard/i;

    .line 233
    iget-object v1, p0, Lcom/tencent/bugly/proguard/w;->f:Ljava/lang/String;

    const-string v2, "strategyId"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/i;

    .line 234
    iget v1, p0, Lcom/tencent/bugly/proguard/w;->g:I

    const-string v2, "updateType"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/proguard/i;->a(ILjava/lang/String;)Lcom/tencent/bugly/proguard/i;

    .line 235
    iget-object v1, p0, Lcom/tencent/bugly/proguard/w;->h:Ljava/util/Map;

    const-string v2, "reserved"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/proguard/i;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/tencent/bugly/proguard/i;

    .line 236
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 169
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 175
    :cond_0
    return-object v0

    .line 171
    :catch_0
    move-exception v1

    .line 173
    sget-boolean v1, Lcom/tencent/bugly/proguard/w;->k:Z

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

    .line 135
    if-nez p1, :cond_1

    .line 141
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 140
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/tencent/bugly/proguard/w;

    .line 141
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p0, Lcom/tencent/bugly/proguard/w;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/w;->a:Ljava/lang/String;

    .line 142
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/w;->b:J

    iget-wide v4, p1, Lcom/tencent/bugly/proguard/w;->b:J

    .line 143
    invoke-static {v2, v3, v4, v5}, Lcom/tencent/bugly/proguard/n;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-byte v1, p0, Lcom/tencent/bugly/proguard/w;->c:B

    iget-byte v2, p1, Lcom/tencent/bugly/proguard/w;->c:B

    .line 144
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/n;->a(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/w;->d:J

    iget-wide v4, p1, Lcom/tencent/bugly/proguard/w;->d:J

    .line 145
    invoke-static {v2, v3, v4, v5}, Lcom/tencent/bugly/proguard/n;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/w;->e:Lcom/tencent/bugly/proguard/v;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/w;->e:Lcom/tencent/bugly/proguard/v;

    .line 146
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/w;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/w;->f:Ljava/lang/String;

    .line 147
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/bugly/proguard/w;->g:I

    iget v2, p1, Lcom/tencent/bugly/proguard/w;->g:I

    .line 148
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/n;->a(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/w;->h:Ljava/util/Map;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/w;->h:Ljava/util/Map;

    .line 149
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 156
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    const/4 v0, 0x0

    return v0
.end method
