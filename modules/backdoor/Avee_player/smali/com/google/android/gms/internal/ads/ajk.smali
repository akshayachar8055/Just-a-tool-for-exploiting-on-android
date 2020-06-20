.class final Lcom/google/android/gms/internal/ads/ajk;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ajj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ajj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ajk;->a:Lcom/google/android/gms/internal/ads/ajj;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ajk;->a:Lcom/google/android/gms/internal/ads/ajj;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/ajj;->a(I)V

    return-void
.end method
