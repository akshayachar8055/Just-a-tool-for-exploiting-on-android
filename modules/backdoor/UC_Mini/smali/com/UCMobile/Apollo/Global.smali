.class public Lcom/UCMobile/Apollo/Global;
.super Ljava/lang/Object;


# static fields
.field public static final APOLLO_SERIES:Ljava/lang/String; = "2"

.field public static final EXT_KEY_APOLLO_STR:Ljava/lang/String; = "apollo_str"

.field public static final EXT_KEY_MOV_SEGMENT_DURATION:Ljava/lang/String; = "mov_seg_dur"

.field public static final EXT_TYPE_CD:I = 0x1

.field public static final ID_BOOL_VALUE_TYPE:I = 0x1

.field public static final ID_DOUBLE_VALUE_TYPE:I = 0x5

.field public static final ID_FLOAT_VALUE_TYPE:I = 0x4

.field public static final ID_INT_VALUE_TYPE:I = 0x2

.field public static final ID_STRING_VALUE_TYPE:I = 0x3

.field public static final LIBS_PATHS:[Ljava/lang/String;

.field private static a:Ljava/util/List;

.field public static gApolloSoPath:Ljava/lang/String;

.field public static gLoadFromAppLibPath:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v2, 0x0

    const-string v0, ""

    sput-object v0, Lcom/UCMobile/Apollo/Global;->gApolloSoPath:Ljava/lang/String;

    sput-boolean v2, Lcom/UCMobile/Apollo/Global;->gLoadFromAppLibPath:Z

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "apollo1/"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "apollo2/"

    aput-object v2, v0, v1

    sput-object v0, Lcom/UCMobile/Apollo/Global;->LIBS_PATHS:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/UCMobile/Apollo/Global;->a:Ljava/util/List;

    new-instance v1, Lcom/UCMobile/Apollo/Global$ExtElement;

    const-string v2, "mov_seg_dur"

    const-string v3, "0"

    invoke-direct {v1, v4, v2, v3}, Lcom/UCMobile/Apollo/Global$ExtElement;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/UCMobile/Apollo/Global;->a:Ljava/util/List;

    new-instance v1, Lcom/UCMobile/Apollo/Global$ExtElement;

    const/4 v2, 0x3

    const-string v3, "apollo_str"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/UCMobile/Apollo/Global$ExtElement;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCDKeys()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/UCMobile/Apollo/Global;->a:Ljava/util/List;

    return-object v0
.end method
