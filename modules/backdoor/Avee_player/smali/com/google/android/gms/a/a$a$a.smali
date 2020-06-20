.class public Lcom/google/android/gms/a/a$a$a;
.super Lcom/google/android/gms/internal/b/a;

# interfaces
.implements Lcom/google/android/gms/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/a/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.dynamic.IObjectWrapper"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/b/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method
