.class public final Lcom/google/android/gms/internal/ads/gm;
.super Lcom/google/android/gms/internal/ads/gi;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/gi;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gm;->a:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gm;->a:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gm;->a:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoAdLoaded()V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gm;->a:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gm;->a:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoAdFailedToLoad(I)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gm;->a:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/fw;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gm;->a:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gm;->a:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    new-instance v1, Lcom/google/android/gms/internal/ads/gk;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/gk;-><init>(Lcom/google/android/gms/internal/ads/fw;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewarded(Lcom/google/android/gms/ads/reward/RewardItem;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gm;->a:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gm;->a:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoAdOpened()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gm;->a:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gm;->a:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoStarted()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gm;->a:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gm;->a:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoAdClosed()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gm;->a:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gm;->a:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoAdLeftApplication()V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gm;->a:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gm;->a:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoCompleted()V

    :cond_0
    return-void
.end method

.method public final g()Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gm;->a:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    return-object v0
.end method
