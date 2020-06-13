.class public final Lcom/tencent/bugly/proguard/v;
.super Lcom/tencent/bugly/proguard/m;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic l:Z


# instance fields
.field public a:Ljava/lang/String;

.field public b:B

.field public c:I

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:J

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/tencent/bugly/proguard/v;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/bugly/proguard/v;->l:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/m;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/v;->a:Ljava/lang/String;

    .line 23
    iput-byte v1, p0, Lcom/tencent/bugly/proguard/v;->b:B

    .line 25
    iput v1, p0, Lcom/tencent/bugly/proguard/v;->c:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/v;->d:Ljava/lang/String;

    .line 29
    iput v1, p0, Lcom/tencent/bugly/proguard/v;->e:I

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/v;->f:Ljava/lang/String;

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/v;->g:J

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/v;->h:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/v;->i:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/v;->j:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/v;->k:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;BILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/m;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/v;->a:Ljava/lang/String;

    .line 23
    iput-byte v1, p0, Lcom/tencent/bugly/proguard/v;->b:B

    .line 25
    iput v1, p0, Lcom/tencent/bugly/proguard/v;->c:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/v;->d:Ljava/lang/String;

    .line 29
    iput v1, p0, Lcom/tencent/bugly/proguard/v;->e:I

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/v;->f:Ljava/lang/String;

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/v;->g:J

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/v;->h:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/v;->i:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/v;->j:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/v;->k:Ljava/lang/String;

    .line 160
    iput-object p1, p0, Lcom/tencent/bugly/proguard/v;->a:Ljava/lang/String;

    .line 161
    iput-byte p2, p0, Lcom/tencent/bugly/proguard/v;->b:B

    .line 162
    iput p3, p0, Lcom/tencent/bugly/proguard/v;->c:I

    .line 163
    iput-object p4, p0, Lcom/tencent/bugly/proguard/v;->d:Ljava/lang/String;

    .line 164
    iput p5, p0, Lcom/tencent/bugly/proguard/v;->e:I

    .line 165
    iput-object p6, p0, Lcom/tencent/bugly/proguard/v;->f:Ljava/lang/String;

    .line 166
    iput-wide p7, p0, Lcom/tencent/bugly/proguard/v;->g:J

    .line 167
    iput-object p9, p0, Lcom/tencent/bugly/proguard/v;->h:Ljava/lang/String;

    .line 168
    iput-object p10, p0, Lcom/tencent/bugly/proguard/v;->i:Ljava/lang/String;

    .line 169
    iput-object p11, p0, Lcom/tencent/bugly/proguard/v;->j:Ljava/lang/String;

    .line 170
    iput-object p12, p0, Lcom/tencent/bugly/proguard/v;->k:Ljava/lang/String;

    .line 171
    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/bugly/proguard/k;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 257
    invoke-virtual {p1, v3, v2}, Lcom/tencent/bugly/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/v;->a:Ljava/lang/String;

    .line 258
    iget-byte v0, p0, Lcom/tencent/bugly/proguard/v;->b:B

    invoke-virtual {p1, v0, v2, v2}, Lcom/tencent/bugly/proguard/k;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/bugly/proguard/v;->b:B

    .line 259
    iget v0, p0, Lcom/tencent/bugly/proguard/v;->c:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/k;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/proguard/v;->c:I

    .line 260
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/v;->d:Ljava/lang/String;

    .line 261
    iget v0, p0, Lcom/tencent/bugly/proguard/v;->e:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v3}, Lcom/tencent/bugly/proguard/k;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/proguard/v;->e:I

    .line 262
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/v;->f:Ljava/lang/String;

    .line 263
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/v;->g:J

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/k;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/v;->g:J

    .line 264
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/v;->h:Ljava/lang/String;

    .line 265
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/v;->i:Ljava/lang/String;

    .line 266
    const/16 v0, 0x9

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/v;->j:Ljava/lang/String;

    .line 267
    const/16 v0, 0xa

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/proguard/k;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/v;->k:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public a(Lcom/tencent/bugly/proguard/l;)V
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    .line 224
    iget-byte v0, p0, Lcom/tencent/bugly/proguard/v;->b:B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->b(BI)V

    .line 225
    iget v0, p0, Lcom/tencent/bugly/proguard/v;->c:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(II)V

    .line 226
    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    .line 230
    :cond_0
    iget v0, p0, Lcom/tencent/bugly/proguard/v;->e:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(II)V

    .line 231
    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->f:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    .line 235
    :cond_1
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/v;->g:J

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/l;->a(JI)V

    .line 236
    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->h:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->h:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->i:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 242
    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->i:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    .line 244
    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->j:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 246
    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->j:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    .line 248
    :cond_4
    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->k:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 250
    iget-object v0, p0, Lcom/tencent/bugly/proguard/v;->k:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/l;->a(Ljava/lang/String;I)V

    .line 252
    :cond_5
    return-void
.end method

.method public a(Ljava/lang/StringBuilder;I)V
    .locals 4

    .prologue
    .line 272
    new-instance v0, Lcom/tencent/bugly/proguard/i;

    invoke-direct {v0, p1, p2}, Lcom/tencent/bugly/proguard/i;-><init>(Ljava/lang/StringBuilder;I)V

    .line 273
    iget-object v1, p0, Lcom/tencent/bugly/proguard/v;->a:Ljava/lang/String;

    const-string v2, "appId"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/i;

    .line 274
    iget-byte v1, p0, Lcom/tencent/bugly/proguard/v;->b:B

    const-string v2, "platformId"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/proguard/i;->a(BLjava/lang/String;)Lcom/tencent/bugly/proguard/i;

    .line 275
    iget v1, p0, Lcom/tencent/bugly/proguard/v;->c:I

    const-string v2, "versionCode"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/proguard/i;->a(ILjava/lang/String;)Lcom/tencent/bugly/proguard/i;

    .line 276
    iget-object v1, p0, Lcom/tencent/bugly/proguard/v;->d:Ljava/lang/String;

    const-string v2, "versionName"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/i;

    .line 277
    iget v1, p0, Lcom/tencent/bugly/proguard/v;->e:I

    const-string v2, "buildNo"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/proguard/i;->a(ILjava/lang/String;)Lcom/tencent/bugly/proguard/i;

    .line 278
    iget-object v1, p0, Lcom/tencent/bugly/proguard/v;->f:Ljava/lang/String;

    const-string v2, "iconUrl"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/i;

    .line 279
    iget-wide v2, p0, Lcom/tencent/bugly/proguard/v;->g:J

    const-string v1, "apkId"

    invoke-virtual {v0, v2, v3, v1}, Lcom/tencent/bugly/proguard/i;->a(JLjava/lang/String;)Lcom/tencent/bugly/proguard/i;

    .line 280
    iget-object v1, p0, Lcom/tencent/bugly/proguard/v;->h:Ljava/lang/String;

    const-string v2, "channelId"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/i;

    .line 281
    iget-object v1, p0, Lcom/tencent/bugly/proguard/v;->i:Ljava/lang/String;

    const-string v2, "md5"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/i;

    .line 282
    iget-object v1, p0, Lcom/tencent/bugly/proguard/v;->j:Ljava/lang/String;

    const-string v2, "sdkVer"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/i;

    .line 283
    iget-object v1, p0, Lcom/tencent/bugly/proguard/v;->k:Ljava/lang/String;

    const-string v2, "bundleId"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/proguard/i;

    .line 284
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 212
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 218
    :cond_0
    return-object v0

    .line 214
    :catch_0
    move-exception v1

    .line 216
    sget-boolean v1, Lcom/tencent/bugly/proguard/v;->l:Z

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

    .line 175
    if-nez p1, :cond_1

    .line 181
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 180
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/tencent/bugly/proguard/v;

    .line 181
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p0, Lcom/tencent/bugly/proguard/v;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/v;->a:Ljava/lang/String;

    .line 182
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-byte v1, p0, Lcom/tencent/bugly/proguard/v;->b:B

    iget-byte v2, p1, Lcom/tencent/bugly/proguard/v;->b:B

    .line 183
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/n;->a(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/bugly/proguard/v;->c:I

    iget v2, p1, Lcom/tencent/bugly/proguard/v;->c:I

    .line 184
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/n;->a(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/v;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/v;->d:Ljava/lang/String;

    .line 185
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/bugly/proguard/v;->e:I

    iget v2, p1, Lcom/tencent/bugly/proguard/v;->e:I

    .line 186
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/n;->a(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/v;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/v;->f:Ljava/lang/String;

    .line 187
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/v;->g:J

    iget-wide v4, p1, Lcom/tencent/bugly/proguard/v;->g:J

    .line 188
    invoke-static {v2, v3, v4, v5}, Lcom/tencent/bugly/proguard/n;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/v;->h:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/v;->h:Ljava/lang/String;

    .line 189
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/v;->i:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/v;->i:Ljava/lang/String;

    .line 190
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/v;->j:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/v;->j:Ljava/lang/String;

    .line 191
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/v;->k:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/v;->k:Ljava/lang/String;

    .line 192
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 199
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :catch_0
    move-exception v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 205
    const/4 v0, 0x0

    return v0
.end method
