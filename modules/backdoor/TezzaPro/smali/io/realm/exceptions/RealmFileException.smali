.class public Lio/realm/exceptions/RealmFileException;
.super Ljava/lang/RuntimeException;
.source "RealmFileException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/exceptions/RealmFileException$Kind;
    }
.end annotation

.annotation build Lio/realm/internal/Keep;
.end annotation


# instance fields
.field public final kind:Lio/realm/exceptions/RealmFileException$Kind;


# direct methods
.method public constructor <init>(BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lio/realm/exceptions/RealmFileException$Kind;->getKind(B)Lio/realm/exceptions/RealmFileException$Kind;

    move-result-object p1

    iput-object p1, p0, Lio/realm/exceptions/RealmFileException;->kind:Lio/realm/exceptions/RealmFileException$Kind;

    return-void
.end method

.method public constructor <init>(Lio/realm/exceptions/RealmFileException$Kind;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lio/realm/exceptions/RealmFileException;->kind:Lio/realm/exceptions/RealmFileException$Kind;

    return-void
.end method

.method public constructor <init>(Lio/realm/exceptions/RealmFileException$Kind;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 7
    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    iput-object p1, p0, Lio/realm/exceptions/RealmFileException;->kind:Lio/realm/exceptions/RealmFileException$Kind;

    return-void
.end method

.method public constructor <init>(Lio/realm/exceptions/RealmFileException$Kind;Ljava/lang/Throwable;)V
    .locals 0

    .line 5
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 6
    iput-object p1, p0, Lio/realm/exceptions/RealmFileException;->kind:Lio/realm/exceptions/RealmFileException$Kind;

    return-void
.end method


# virtual methods
.method public getKind()Lio/realm/exceptions/RealmFileException$Kind;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/exceptions/RealmFileException;->kind:Lio/realm/exceptions/RealmFileException$Kind;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-super {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lio/realm/exceptions/RealmFileException;->kind:Lio/realm/exceptions/RealmFileException$Kind;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%s Kind: %s."

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
