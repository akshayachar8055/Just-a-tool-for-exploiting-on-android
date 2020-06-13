.class public final enum Lcom/google/android/gms/b/it$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/b/it;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/b/it$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/b/it$a;

.field public static final enum b:Lcom/google/android/gms/b/it$a;

.field public static final enum c:Lcom/google/android/gms/b/it$a;

.field public static final enum d:Lcom/google/android/gms/b/it$a;

.field private static final synthetic e:[Lcom/google/android/gms/b/it$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/b/it$a;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/b/it$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/b/it$a;->a:Lcom/google/android/gms/b/it$a;

    new-instance v0, Lcom/google/android/gms/b/it$a;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/b/it$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/b/it$a;->b:Lcom/google/android/gms/b/it$a;

    new-instance v0, Lcom/google/android/gms/b/it$a;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/b/it$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/b/it$a;->c:Lcom/google/android/gms/b/it$a;

    new-instance v0, Lcom/google/android/gms/b/it$a;

    const-string v1, "IMMEDIATE"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/b/it$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/b/it$a;->d:Lcom/google/android/gms/b/it$a;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/gms/b/it$a;

    sget-object v1, Lcom/google/android/gms/b/it$a;->a:Lcom/google/android/gms/b/it$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/b/it$a;->b:Lcom/google/android/gms/b/it$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/b/it$a;->c:Lcom/google/android/gms/b/it$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/b/it$a;->d:Lcom/google/android/gms/b/it$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/b/it$a;->e:[Lcom/google/android/gms/b/it$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/b/it$a;
    .locals 1

    const-class v0, Lcom/google/android/gms/b/it$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/it$a;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/b/it$a;
    .locals 1

    sget-object v0, Lcom/google/android/gms/b/it$a;->e:[Lcom/google/android/gms/b/it$a;

    invoke-virtual {v0}, [Lcom/google/android/gms/b/it$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/b/it$a;

    return-object v0
.end method
