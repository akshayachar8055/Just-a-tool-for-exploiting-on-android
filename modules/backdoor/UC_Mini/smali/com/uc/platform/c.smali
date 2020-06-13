.class public final Lcom/uc/platform/c;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/uc/platform/c;->a:I

    iput v0, p0, Lcom/uc/platform/c;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/uc/platform/c;->c:F

    return-void
.end method
