.class Landroid/support/v4/f/d$b;
.super Landroid/support/v4/f/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/f/d$a;-><init>(Landroid/support/v4/f/d$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/f/d$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/f/d$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Locale;)I
    .locals 1

    invoke-static {p1}, Landroid/support/v4/f/e;->a(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method
