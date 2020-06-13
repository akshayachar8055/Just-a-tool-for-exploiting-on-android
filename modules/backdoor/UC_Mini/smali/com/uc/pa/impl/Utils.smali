.class Lcom/uc/pa/impl/Utils;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "PerformanceAnalyze"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PerformanceAnalyze"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
