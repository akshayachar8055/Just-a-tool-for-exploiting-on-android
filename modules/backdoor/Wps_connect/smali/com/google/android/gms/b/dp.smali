.class public final Lcom/google/android/gms/b/dp;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/gb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/b/dp$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/gms/b/dk;

.field public final c:Lcom/google/android/gms/b/dv;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/google/android/gms/b/dn;

.field public final f:Lcom/google/android/gms/b/dy;


# direct methods
.method public constructor <init>(I)V
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move v5, p1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/b/dp;-><init>(Lcom/google/android/gms/b/dk;Lcom/google/android/gms/b/dv;Ljava/lang/String;Lcom/google/android/gms/b/dn;ILcom/google/android/gms/b/dy;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/b/dk;Lcom/google/android/gms/b/dv;Ljava/lang/String;Lcom/google/android/gms/b/dn;ILcom/google/android/gms/b/dy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/b/dp;->b:Lcom/google/android/gms/b/dk;

    iput-object p2, p0, Lcom/google/android/gms/b/dp;->c:Lcom/google/android/gms/b/dv;

    iput-object p3, p0, Lcom/google/android/gms/b/dp;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/b/dp;->e:Lcom/google/android/gms/b/dn;

    iput p5, p0, Lcom/google/android/gms/b/dp;->a:I

    iput-object p6, p0, Lcom/google/android/gms/b/dp;->f:Lcom/google/android/gms/b/dy;

    return-void
.end method
