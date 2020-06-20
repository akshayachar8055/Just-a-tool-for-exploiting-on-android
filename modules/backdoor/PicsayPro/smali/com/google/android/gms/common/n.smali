.class public Lcom/google/android/gms/common/n;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/android/gms/common/n;


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/n;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/common/n;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/google/android/gms/common/n;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/n;->a:Lcom/google/android/gms/common/n;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/common/l;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/common/n;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/n;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/common/n;->a:Lcom/google/android/gms/common/n;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/common/n;->a:Lcom/google/android/gms/common/n;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method varargs a(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/l$a;)Lcom/google/android/gms/common/l$a;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const-string v0, "GoogleSignatureVerifier"

    const-string v2, "Package has more than one signature."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/gms/common/l$b;

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/l$b;-><init>([B)V

    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_3

    aget-object v3, p2, v0

    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/l$a;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v0, p2, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Landroid/content/pm/PackageInfo;Z)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    sget-object v2, Lcom/google/android/gms/common/l$d;->a:[Lcom/google/android/gms/common/l$a;

    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/common/n;->a(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/l$a;)Lcom/google/android/gms/common/l$a;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    new-array v2, v0, [Lcom/google/android/gms/common/l$a;

    sget-object v3, Lcom/google/android/gms/common/l$d;->a:[Lcom/google/android/gms/common/l$a;

    aget-object v3, v3, v1

    aput-object v3, v2, v1

    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/common/n;->a(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/l$a;)Lcom/google/android/gms/common/l$a;

    move-result-object v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public a(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/common/n;->a(Landroid/content/pm/PackageInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2, v1}, Lcom/google/android/gms/common/n;->a(Landroid/content/pm/PackageInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/common/n;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/common/m;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const-string v1, "GoogleSignatureVerifier"

    const-string v2, "Test-keys aren\'t accepted on this build."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
