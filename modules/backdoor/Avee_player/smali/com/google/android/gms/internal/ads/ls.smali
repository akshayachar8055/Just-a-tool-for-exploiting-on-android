.class public final Lcom/google/android/gms/internal/ads/ls;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# static fields
.field private static b:Lcom/google/android/gms/internal/ads/ls;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/ls;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/ls;->b:Lcom/google/android/gms/internal/ads/ls;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/ls;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ls;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ls;->b:Lcom/google/android/gms/internal/ads/ls;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/ls;->b:Lcom/google/android/gms/internal/ads/ls;

    return-object v0
.end method
