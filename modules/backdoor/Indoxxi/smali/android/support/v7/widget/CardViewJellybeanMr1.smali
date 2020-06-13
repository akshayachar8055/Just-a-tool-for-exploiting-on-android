.class Landroid/support/v7/widget/CardViewJellybeanMr1;
.super Landroid/support/v7/widget/CardViewGingerbread;
.source "CardViewJellybeanMr1.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x11
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v7/widget/CardViewGingerbread;-><init>()V

    return-void
.end method


# virtual methods
.method public initStatic()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Landroid/support/v7/widget/CardViewJellybeanMr1$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/CardViewJellybeanMr1$1;-><init>(Landroid/support/v7/widget/CardViewJellybeanMr1;)V

    sput-object v0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->sRoundRectHelper:Landroid/support/v7/widget/RoundRectDrawableWithShadow$RoundRectHelper;

    .line 38
    return-void
.end method
