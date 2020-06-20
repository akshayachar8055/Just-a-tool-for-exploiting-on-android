.class public Lcom/google/android/gms/common/internal/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/g;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/common/internal/g;->d:Z

    iput p4, p0, Lcom/google/android/gms/common/internal/g;->c:I

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/internal/g;->c:I

    return v0
.end method
