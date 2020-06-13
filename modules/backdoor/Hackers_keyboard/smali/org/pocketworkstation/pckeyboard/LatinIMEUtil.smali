.class public Lorg/pocketworkstation/pckeyboard/LatinIMEUtil;
.super Ljava/lang/Object;
.source "LatinIMEUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$RingCharBuffer;,
        Lorg/pocketworkstation/pckeyboard/LatinIMEUtil$GCUtils;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelTask(Landroid/os/AsyncTask;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask<",
            "***>;Z)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 36
    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 37
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method
