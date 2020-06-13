.class public final Lcom/uc/browser/upload/n;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field private static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x1

    sput v0, Lcom/uc/browser/upload/n;->a:I

    const/4 v0, 0x2

    sput v0, Lcom/uc/browser/upload/n;->b:I

    sput v1, Lcom/uc/browser/upload/n;->c:I

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/uc/browser/upload/n;->d:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public static a()[I
    .locals 1

    sget-object v0, Lcom/uc/browser/upload/n;->d:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
