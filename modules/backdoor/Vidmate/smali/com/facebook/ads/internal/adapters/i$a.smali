.class public final enum Lcom/facebook/ads/internal/adapters/i$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/adapters/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/adapters/i$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/adapters/i$a;

.field public static final enum b:Lcom/facebook/ads/internal/adapters/i$a;

.field private static final synthetic c:[Lcom/facebook/ads/internal/adapters/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/ads/internal/adapters/i$a;

    const-string v1, "VERTICAL"

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/adapters/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/adapters/i$a;->a:Lcom/facebook/ads/internal/adapters/i$a;

    new-instance v0, Lcom/facebook/ads/internal/adapters/i$a;

    const-string v1, "HORIZONTAL"

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/internal/adapters/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/adapters/i$a;->b:Lcom/facebook/ads/internal/adapters/i$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/ads/internal/adapters/i$a;

    sget-object v1, Lcom/facebook/ads/internal/adapters/i$a;->a:Lcom/facebook/ads/internal/adapters/i$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/internal/adapters/i$a;->b:Lcom/facebook/ads/internal/adapters/i$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/ads/internal/adapters/i$a;->c:[Lcom/facebook/ads/internal/adapters/i$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lcom/facebook/ads/internal/adapters/i$a;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/facebook/ads/internal/adapters/i$a;->b:Lcom/facebook/ads/internal/adapters/i$a;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/facebook/ads/internal/adapters/i$a;->a:Lcom/facebook/ads/internal/adapters/i$a;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/adapters/i$a;
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/adapters/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/adapters/i$a;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/adapters/i$a;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/adapters/i$a;->c:[Lcom/facebook/ads/internal/adapters/i$a;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/adapters/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/adapters/i$a;

    return-object v0
.end method
