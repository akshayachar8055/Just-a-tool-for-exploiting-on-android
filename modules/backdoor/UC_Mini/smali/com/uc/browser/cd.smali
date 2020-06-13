.class public final Lcom/uc/browser/cd;
.super Ljava/lang/Object;


# instance fields
.field private synthetic a:Lcom/uc/browser/p;


# direct methods
.method constructor <init>(Lcom/uc/browser/p;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/cd;->a:Lcom/uc/browser/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/cd;->a:Lcom/uc/browser/p;

    invoke-static {v0}, Lcom/uc/browser/p;->h(Lcom/uc/browser/p;)Lcom/uc/browser/DriftEditTextForRelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uc/browser/DriftEditTextForRelativeLayout;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
