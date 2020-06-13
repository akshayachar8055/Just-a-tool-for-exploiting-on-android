.class public final Lcom/uc/browser/ed;
.super Ljava/lang/Object;


# instance fields
.field public a:B

.field public b:B

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Landroid/graphics/drawable/Drawable;

.field public h:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-byte v0, p0, Lcom/uc/browser/ed;->b:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/gcm/a;->a(II)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 1

    iget-byte v0, p0, Lcom/uc/browser/ed;->b:B

    and-int/lit8 v0, v0, -0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/uc/browser/ed;->b:B

    return-void
.end method
