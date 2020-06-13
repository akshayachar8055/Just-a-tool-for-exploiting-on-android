.class public Lcom/tencent/bugly/beta/global/ResBean;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/tencent/bugly/beta/global/ResBean;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/bugly/beta/global/ResBean;",
            ">;"
        }
    .end annotation
.end field

.field public static a:Lcom/tencent/bugly/beta/global/ResBean;

.field public static final b:[Ljava/lang/String;


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field private e:Ljava/util/Map;
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
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "IMG_title"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "VAL_style"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/bugly/beta/global/ResBean;->b:[Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/tencent/bugly/beta/global/ResBean;

    invoke-direct {v0}, Lcom/tencent/bugly/beta/global/ResBean;-><init>()V

    sput-object v0, Lcom/tencent/bugly/beta/global/ResBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/beta/global/ResBean;->e:Ljava/util/Map;

    .line 34
    const-string v0, "#273238"

    iput-object v0, p0, Lcom/tencent/bugly/beta/global/ResBean;->c:Ljava/lang/String;

    .line 35
    const-string v0, "#757575"

    iput-object v0, p0, Lcom/tencent/bugly/beta/global/ResBean;->d:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/beta/global/ResBean;->e:Ljava/util/Map;

    .line 34
    const-string v0, "#273238"

    iput-object v0, p0, Lcom/tencent/bugly/beta/global/ResBean;->c:Ljava/lang/String;

    .line 35
    const-string v0, "#757575"

    iput-object v0, p0, Lcom/tencent/bugly/beta/global/ResBean;->d:Ljava/lang/String;

    .line 48
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/beta/global/ResBean;->b:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 50
    iget-object v5, p0, Lcom/tencent/bugly/beta/global/ResBean;->e:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/tencent/bugly/beta/global/ResBean;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/tencent/bugly/beta/global/ResBean;

    invoke-direct {v0, p1}, Lcom/tencent/bugly/beta/global/ResBean;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tencent/bugly/beta/global/ResBean;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 67
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/tencent/bugly/beta/global/ResBean;->e:Ljava/util/Map;

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    return-void
.end method

.method public a(I)[Lcom/tencent/bugly/beta/global/ResBean;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/tencent/bugly/beta/global/ResBean;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/tencent/bugly/beta/global/ResBean;->a(Landroid/os/Parcel;)Lcom/tencent/bugly/beta/global/ResBean;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/tencent/bugly/beta/global/ResBean;->a(I)[Lcom/tencent/bugly/beta/global/ResBean;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 79
    sget-object v2, Lcom/tencent/bugly/beta/global/ResBean;->b:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 80
    iget-object v4, p0, Lcom/tencent/bugly/beta/global/ResBean;->e:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method
