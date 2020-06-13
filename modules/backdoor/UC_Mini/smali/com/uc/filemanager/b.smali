.class final Lcom/uc/filemanager/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field private synthetic a:Lcom/uc/filemanager/a;


# direct methods
.method constructor <init>(Lcom/uc/filemanager/a;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/filemanager/b;->a:Lcom/uc/filemanager/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/uc/filemanager/b;->a:Lcom/uc/filemanager/a;

    iget-object v1, v1, Lcom/uc/filemanager/a;->a:[Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "-1"

    iget-object v3, p0, Lcom/uc/filemanager/b;->a:Lcom/uc/filemanager/a;

    iget-object v3, v3, Lcom/uc/filemanager/a;->a:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/uc/filemanager/b;->a:Lcom/uc/filemanager/a;

    iget-object v1, v1, Lcom/uc/filemanager/a;->a:[Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v1, v0

    :goto_1
    if-nez v1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/uc/filemanager/b;->a:Lcom/uc/filemanager/a;

    iget-object v4, v4, Lcom/uc/filemanager/a;->a:[Ljava/lang/String;

    array-length v5, v4

    :goto_2
    if-ge v2, v5, :cond_4

    aget-object v6, v4, v2

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method
