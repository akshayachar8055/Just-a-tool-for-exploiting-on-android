.class public final Lcom/uc/browser/el;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Lcom/uc/widget/q;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/uc/widget/q;Lcom/uc/browser/TabContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/uc/browser/el;->a:I

    iput-object p2, p0, Lcom/uc/browser/el;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/uc/browser/el;->c:Lcom/uc/widget/q;

    invoke-virtual {p3, p4}, Lcom/uc/widget/q;->a(Lcom/uc/widget/t;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/uc/browser/el;->a:I

    return v0
.end method
