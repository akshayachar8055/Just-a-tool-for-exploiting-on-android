.class public interface abstract Lcom/facebook/ads/internal/ssp/ANAdRenderer$Listener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/ssp/ANAdRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onAdClick()V
.end method

.method public abstract onAdClose()V
.end method

.method public abstract onAdError(Ljava/lang/Throwable;)V
.end method

.method public abstract onAdImpression()V
.end method
