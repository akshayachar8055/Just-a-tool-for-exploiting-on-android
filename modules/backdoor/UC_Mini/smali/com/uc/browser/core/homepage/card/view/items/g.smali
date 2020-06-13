.class public final enum Lcom/uc/browser/core/homepage/card/view/items/g;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/uc/browser/core/homepage/card/view/items/g;

.field private static enum b:Lcom/uc/browser/core/homepage/card/view/items/g;

.field private static enum c:Lcom/uc/browser/core/homepage/card/view/items/g;

.field private static enum d:Lcom/uc/browser/core/homepage/card/view/items/g;

.field private static final synthetic e:[Lcom/uc/browser/core/homepage/card/view/items/g;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/uc/browser/core/homepage/card/view/items/g;

    const-string v1, "LIVE"

    invoke-direct {v0, v1, v2}, Lcom/uc/browser/core/homepage/card/view/items/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/browser/core/homepage/card/view/items/g;->b:Lcom/uc/browser/core/homepage/card/view/items/g;

    new-instance v0, Lcom/uc/browser/core/homepage/card/view/items/g;

    const-string v1, "PRE"

    invoke-direct {v0, v1, v3}, Lcom/uc/browser/core/homepage/card/view/items/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/browser/core/homepage/card/view/items/g;->a:Lcom/uc/browser/core/homepage/card/view/items/g;

    new-instance v0, Lcom/uc/browser/core/homepage/card/view/items/g;

    const-string v1, "RSLT"

    invoke-direct {v0, v1, v4}, Lcom/uc/browser/core/homepage/card/view/items/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/browser/core/homepage/card/view/items/g;->c:Lcom/uc/browser/core/homepage/card/view/items/g;

    new-instance v0, Lcom/uc/browser/core/homepage/card/view/items/g;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/uc/browser/core/homepage/card/view/items/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/uc/browser/core/homepage/card/view/items/g;->d:Lcom/uc/browser/core/homepage/card/view/items/g;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/uc/browser/core/homepage/card/view/items/g;

    sget-object v1, Lcom/uc/browser/core/homepage/card/view/items/g;->b:Lcom/uc/browser/core/homepage/card/view/items/g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/uc/browser/core/homepage/card/view/items/g;->a:Lcom/uc/browser/core/homepage/card/view/items/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/uc/browser/core/homepage/card/view/items/g;->c:Lcom/uc/browser/core/homepage/card/view/items/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/uc/browser/core/homepage/card/view/items/g;->d:Lcom/uc/browser/core/homepage/card/view/items/g;

    aput-object v1, v0, v5

    sput-object v0, Lcom/uc/browser/core/homepage/card/view/items/g;->e:[Lcom/uc/browser/core/homepage/card/view/items/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uc/browser/core/homepage/card/view/items/g;
    .locals 1

    const-class v0, Lcom/uc/browser/core/homepage/card/view/items/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/uc/browser/core/homepage/card/view/items/g;

    return-object v0
.end method

.method public static values()[Lcom/uc/browser/core/homepage/card/view/items/g;
    .locals 1

    sget-object v0, Lcom/uc/browser/core/homepage/card/view/items/g;->e:[Lcom/uc/browser/core/homepage/card/view/items/g;

    invoke-virtual {v0}, [Lcom/uc/browser/core/homepage/card/view/items/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uc/browser/core/homepage/card/view/items/g;

    return-object v0
.end method
