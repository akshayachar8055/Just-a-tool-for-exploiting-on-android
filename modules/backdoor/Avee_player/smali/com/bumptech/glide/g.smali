.class public final enum Lcom/bumptech/glide/g;
.super Ljava/lang/Enum;
.source "Priority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bumptech/glide/g;

.field public static final enum b:Lcom/bumptech/glide/g;

.field public static final enum c:Lcom/bumptech/glide/g;

.field public static final enum d:Lcom/bumptech/glide/g;

.field public static final enum e:Lcom/bumptech/glide/g;

.field private static final synthetic f:[Lcom/bumptech/glide/g;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 9
    new-instance v0, Lcom/bumptech/glide/g;

    const-string v1, "IMMEDIATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/g;->a:Lcom/bumptech/glide/g;

    .line 10
    new-instance v0, Lcom/bumptech/glide/g;

    const-string v1, "HIGH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/bumptech/glide/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/g;->b:Lcom/bumptech/glide/g;

    .line 11
    new-instance v0, Lcom/bumptech/glide/g;

    const-string v1, "NORMAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/bumptech/glide/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/g;

    .line 12
    new-instance v0, Lcom/bumptech/glide/g;

    const-string v1, "LOW"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/bumptech/glide/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/g;

    new-instance v0, Lcom/bumptech/glide/g;

    const-string v1, "priority"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/bumptech/glide/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/g;->e:Lcom/bumptech/glide/g;

    const/4 v0, 0x5

    .line 8
    new-array v0, v0, [Lcom/bumptech/glide/g;

    sget-object v1, Lcom/bumptech/glide/g;->a:Lcom/bumptech/glide/g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/g;->b:Lcom/bumptech/glide/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/g;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bumptech/glide/g;->e:Lcom/bumptech/glide/g;

    aput-object v1, v0, v6

    sput-object v0, Lcom/bumptech/glide/g;->f:[Lcom/bumptech/glide/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/g;
    .locals 1

    .line 8
    const-class v0, Lcom/bumptech/glide/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/g;

    return-object p0
.end method

.method public static values()[Lcom/bumptech/glide/g;
    .locals 1

    .line 8
    sget-object v0, Lcom/bumptech/glide/g;->f:[Lcom/bumptech/glide/g;

    invoke-virtual {v0}, [Lcom/bumptech/glide/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/g;

    return-object v0
.end method
