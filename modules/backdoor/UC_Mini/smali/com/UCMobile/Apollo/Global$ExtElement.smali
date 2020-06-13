.class public Lcom/UCMobile/Apollo/Global$ExtElement;
.super Ljava/lang/Object;


# instance fields
.field public mDefalutValue:Ljava/lang/String;

.field public mKey:Ljava/lang/String;

.field public mType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/UCMobile/Apollo/Global$ExtElement;->mType:I

    iput-object p2, p0, Lcom/UCMobile/Apollo/Global$ExtElement;->mKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/UCMobile/Apollo/Global$ExtElement;->mDefalutValue:Ljava/lang/String;

    return-void
.end method
