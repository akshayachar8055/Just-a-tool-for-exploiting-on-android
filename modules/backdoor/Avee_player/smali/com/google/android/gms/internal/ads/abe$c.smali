.class public abstract Lcom/google/android/gms/internal/ads/abe$c;
.super Lcom/google/android/gms/internal/ads/abe;

# interfaces
.implements Lcom/google/android/gms/internal/ads/acn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/abe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/abe$c<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/abe<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/ads/acn;"
    }
.end annotation


# instance fields
.field protected zzdtz:Lcom/google/android/gms/internal/ads/aaw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/aaw<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/abe;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/aaw;->a()Lcom/google/android/gms/internal/ads/aaw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/abe$c;->zzdtz:Lcom/google/android/gms/internal/ads/aaw;

    return-void
.end method
