.class Lcom/google/android/voiceime/ActivityHelper$3;
.super Ljava/lang/Object;
.source "ActivityHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voiceime/ActivityHelper;->createResultDialog([Ljava/lang/String;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voiceime/ActivityHelper;


# direct methods
.method constructor <init>(Lcom/google/android/voiceime/ActivityHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/voiceime/ActivityHelper$3;->this$0:Lcom/google/android/voiceime/ActivityHelper;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 106
    iget-object p1, p0, Lcom/google/android/voiceime/ActivityHelper$3;->this$0:Lcom/google/android/voiceime/ActivityHelper;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/voiceime/ActivityHelper;->access$0(Lcom/google/android/voiceime/ActivityHelper;Ljava/lang/String;)V

    return-void
.end method
