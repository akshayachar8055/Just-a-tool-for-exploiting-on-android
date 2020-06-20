.class final Lcom/google/android/gms/internal/ads/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/bew;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bew;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/c;->a:Lcom/google/android/gms/internal/ads/bew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/c;->a:Lcom/google/android/gms/internal/ads/bew;

    const-string p2, "Operation denied by user."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/n;->a(Ljava/lang/String;)V

    return-void
.end method
