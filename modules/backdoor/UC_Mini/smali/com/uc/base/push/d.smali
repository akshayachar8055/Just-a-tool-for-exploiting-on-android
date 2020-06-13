.class final Lcom/uc/base/push/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    sput v2, Lcom/uc/base/push/d;->a:I

    sput v3, Lcom/uc/base/push/d;->b:I

    sput v4, Lcom/uc/base/push/d;->c:I

    new-array v0, v4, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    aput v3, v0, v2

    aput v4, v0, v3

    return-void
.end method
