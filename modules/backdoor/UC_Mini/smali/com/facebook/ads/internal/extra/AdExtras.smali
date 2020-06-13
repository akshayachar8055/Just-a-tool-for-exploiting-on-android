.class public Lcom/facebook/ads/internal/extra/AdExtras;
.super Ljava/lang/Object;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsOrganic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/extra/AdExtras;->a:Z

    return v0
.end method

.method public setIsOrganic(Z)Lcom/facebook/ads/internal/extra/AdExtras;
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/extra/AdExtras;->a:Z

    return-object p0
.end method
