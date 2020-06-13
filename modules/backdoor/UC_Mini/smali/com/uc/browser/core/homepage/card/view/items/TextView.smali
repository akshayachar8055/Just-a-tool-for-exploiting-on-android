.class public Lcom/uc/browser/core/homepage/card/view/items/TextView;
.super Landroid/widget/TextView;


# instance fields
.field private a:Landroid/util/SparseArray;

.field private b:F

.field private c:I

.field private d:[Ljava/lang/String;

.field private e:F

.field private f:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->b:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->c:I

    return-void
.end method

.method private c()V
    .locals 18

    invoke-virtual/range {p0 .. p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->d:[Ljava/lang/String;

    :cond_1
    return-void

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-lez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    move v8, v1

    :goto_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uc/browser/core/homepage/card/view/items/aa;

    invoke-virtual {v1}, Lcom/uc/browser/core/homepage/card/view/items/aa;->a()I

    move-result v1

    move v2, v1

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uc/browser/core/homepage/card/view/items/aa;

    invoke-virtual {v1}, Lcom/uc/browser/core/homepage/card/view/items/aa;->a()I

    move-result v1

    move v3, v1

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uc/browser/core/homepage/card/view/items/aa;

    invoke-virtual {v1}, Lcom/uc/browser/core/homepage/card/view/items/aa;->a()I

    move-result v1

    move v4, v1

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uc/browser/core/homepage/card/view/items/aa;

    invoke-virtual {v1}, Lcom/uc/browser/core/homepage/card/view/items/aa;->a()I

    move-result v2

    move v9, v4

    move v10, v3

    move v11, v2

    :goto_2
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->c:I

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v1, v0, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->d:[Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->e:F

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-string v5, "\n"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_13

    const-string v2, "\n"

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_6

    const-string v2, " "

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    move v12, v1

    move-object v15, v6

    move v1, v3

    move v3, v4

    move v4, v5

    :goto_4
    add-int/lit8 v13, v1, 0x1

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v1

    int-to-float v5, v11

    add-float/2addr v1, v5

    int-to-float v5, v10

    add-float/2addr v1, v5

    int-to-float v5, v9

    add-float/2addr v1, v5

    cmpg-float v1, v1, v8

    if-gtz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->d:[Ljava/lang/String;

    add-int/lit8 v3, v13, -0x1

    aput-object v2, v1, v3

    move v3, v4

    :goto_5
    if-lt v3, v4, :cond_11

    move/from16 v0, v17

    if-le v0, v13, :cond_11

    add-int v1, v12, v4

    if-ge v1, v14, :cond_10

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "\n"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_f

    const-string v2, " "

    :cond_5
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v3, 0x0

    move-object v5, v2

    move-object v2, v15

    :goto_7
    if-ge v3, v4, :cond_1

    move/from16 v0, v17

    if-le v0, v13, :cond_1

    move v12, v1

    move-object v15, v2

    move v1, v13

    move-object v2, v5

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    const-string v2, "\n"

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    goto :goto_3

    :cond_7
    const/4 v1, 0x1

    move/from16 v0, v17

    if-ne v0, v1, :cond_8

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v1

    int-to-float v5, v10

    add-float/2addr v1, v5

    int-to-float v5, v11

    add-float/2addr v1, v5

    int-to-float v5, v9

    add-float/2addr v1, v5

    cmpg-float v1, v8, v1

    if-gez v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const-string v5, "..."

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float v1, v8, v1

    int-to-float v5, v10

    sub-float/2addr v1, v5

    int-to-float v5, v9

    sub-float v6, v1, v5

    invoke-virtual/range {p0 .. p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/text/TextPaint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result v1

    add-int/2addr v1, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->d:[Ljava/lang/String;

    add-int/lit8 v6, v13, -0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "..."

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    add-int/2addr v3, v4

    goto/16 :goto_5

    :cond_8
    const/4 v1, 0x1

    move/from16 v0, v17

    if-le v0, v1, :cond_9

    const/4 v1, 0x1

    if-ne v13, v1, :cond_9

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v1

    int-to-float v5, v11

    add-float/2addr v1, v5

    cmpg-float v1, v1, v8

    if-gtz v1, :cond_9

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v1

    int-to-float v5, v11

    add-float/2addr v1, v5

    int-to-float v5, v10

    add-float/2addr v1, v5

    int-to-float v5, v9

    add-float/2addr v1, v5

    cmpl-float v1, v1, v8

    if-lez v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const-string v5, "..."

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float v1, v8, v1

    int-to-float v5, v10

    sub-float/2addr v1, v5

    int-to-float v5, v9

    sub-float v6, v1, v5

    invoke-virtual/range {p0 .. p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/text/TextPaint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result v1

    add-int/2addr v1, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->d:[Ljava/lang/String;

    add-int/lit8 v6, v13, -0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "..."

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    add-int/2addr v3, v4

    goto/16 :goto_5

    :cond_9
    move/from16 v0, v17

    if-ne v13, v0, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const-string v5, "..."

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float v1, v8, v1

    int-to-float v5, v10

    sub-float/2addr v1, v5

    int-to-float v5, v9

    sub-float v6, v1, v5

    invoke-virtual/range {p0 .. p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/text/TextPaint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result v1

    add-int/2addr v1, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->d:[Ljava/lang/String;

    add-int/lit8 v6, v13, -0x1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    if-ge v1, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->d:[Ljava/lang/String;

    add-int/lit8 v3, v13, -0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->d:[Ljava/lang/String;

    add-int/lit8 v7, v13, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    :cond_a
    move v3, v4

    goto/16 :goto_5

    :cond_b
    const/4 v1, 0x1

    if-ne v13, v1, :cond_12

    int-to-float v1, v11

    sub-float v6, v8, v1

    :goto_8
    move/from16 v0, v17

    if-ne v13, v0, :cond_c

    int-to-float v1, v10

    sub-float/2addr v6, v1

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/text/TextPaint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result v1

    add-int v5, v3, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v6, v3, v1

    if-lt v6, v4, :cond_e

    add-int v6, v12, v4

    if-lt v6, v14, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const-string v5, "..."

    invoke-virtual {v1, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float v1, v8, v1

    int-to-float v5, v10

    sub-float/2addr v1, v5

    int-to-float v5, v9

    sub-float v6, v1, v5

    invoke-virtual/range {p0 .. p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/text/TextPaint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result v1

    add-int/2addr v1, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->d:[Ljava/lang/String;

    add-int/lit8 v6, v13, -0x1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    if-ge v1, v4, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->d:[Ljava/lang/String;

    add-int/lit8 v3, v13, -0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->d:[Ljava/lang/String;

    add-int/lit8 v7, v13, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    :cond_d
    move v3, v4

    goto/16 :goto_5

    :cond_e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->d:[Ljava/lang/String;

    add-int/lit8 v7, v13, -0x1

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v7

    add-int/2addr v3, v1

    goto/16 :goto_5

    :cond_f
    const/4 v3, 0x0

    const-string v4, "\n"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :cond_10
    move-object v5, v2

    move-object v2, v15

    goto/16 :goto_7

    :cond_11
    move v1, v12

    move-object v5, v2

    move-object v2, v15

    goto/16 :goto_7

    :cond_12
    move v6, v8

    goto/16 :goto_8

    :cond_13
    move v12, v1

    move-object v15, v2

    move v1, v3

    move-object/from16 v2, v16

    move v3, v4

    move v4, v14

    goto/16 :goto_4

    :cond_14
    move v9, v4

    move v10, v3

    move v11, v2

    goto/16 :goto_2

    :cond_15
    move v2, v1

    goto/16 :goto_1

    :cond_16
    move v9, v4

    move v10, v3

    move v11, v1

    goto/16 :goto_2

    :cond_17
    move v8, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()Lcom/uc/browser/core/homepage/card/view/items/aa;
    .locals 2

    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/browser/core/homepage/card/view/items/aa;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/browser/core/homepage/card/view/items/aa;

    invoke-virtual {v0}, Lcom/uc/browser/core/homepage/card/view/items/aa;->b()V

    :cond_0
    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/browser/core/homepage/card/view/items/aa;

    invoke-virtual {v0}, Lcom/uc/browser/core/homepage/card/view/items/aa;->b()V

    :cond_1
    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/browser/core/homepage/card/view/items/aa;

    invoke-virtual {v0}, Lcom/uc/browser/core/homepage/card/view/items/aa;->b()V

    :cond_2
    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/browser/core/homepage/card/view/items/aa;

    invoke-virtual {v0}, Lcom/uc/browser/core/homepage/card/view/items/aa;->b()V

    :cond_3
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    const/4 v13, 0x3

    const/4 v10, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_1

    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->d:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v5, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->c:I

    iget v0, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->e:F

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getGravity()I

    move-result v6

    and-int/lit8 v2, v6, 0x3

    if-ne v2, v13, :cond_4

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getPaddingLeft()I

    move-result v0

    :goto_1
    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v1

    if-eqz v2, :cond_10

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getCompoundPaddingLeft()I

    move-result v0

    move v2, v0

    :goto_2
    move v4, v1

    move v3, v1

    :goto_3
    if-ge v4, v5, :cond_5

    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->d:[Ljava/lang/String;

    aget-object v0, v0, v4

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->d:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f

    add-int/lit8 v0, v3, 0x1

    :goto_4
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    goto :goto_3

    :cond_4
    and-int/lit8 v2, v6, 0x5

    const/4 v3, 0x5

    if-eq v2, v3, :cond_11

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v2, v0

    div-float/2addr v0, v11

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getPaddingLeft()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    move-result v4

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget v0, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->f:F

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    mul-float/2addr v4, v7

    iget v7, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->b:F

    add-float/2addr v7, v12

    mul-float/2addr v4, v7

    sub-float/2addr v0, v4

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v0, v4

    div-float/2addr v0, v11

    and-int/lit8 v4, v6, 0x30

    const/16 v7, 0x30

    if-ne v4, v7, :cond_6

    iget v4, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->c:I

    if-le v4, v10, :cond_6

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_c

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getPaddingTop()I

    move-result v4

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v4

    int-to-float v0, v0

    :cond_6
    :goto_5
    neg-float v4, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/browser/core/homepage/card/view/items/aa;

    int-to-float v4, v2

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget v9, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->b:F

    mul-float/2addr v8, v9

    div-float/2addr v8, v11

    sub-float v8, v7, v8

    invoke-virtual {p1, v4, v8}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Lcom/uc/browser/core/homepage/card/view/items/aa;->a(Landroid/graphics/Canvas;)V

    neg-int v0, v2

    int-to-float v0, v0

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget v8, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->b:F

    mul-float/2addr v4, v8

    div-float/2addr v4, v11

    sub-float/2addr v4, v7

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_7
    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/browser/core/homepage/card/view/items/aa;

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    iget-object v8, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->d:[Ljava/lang/String;

    add-int/lit8 v9, v3, -0x1

    aget-object v8, v8, v9

    invoke-virtual {v4, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    int-to-float v8, v2

    add-float/2addr v4, v8

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v8

    add-float/2addr v8, v7

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v9

    iget v10, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->b:F

    add-float/2addr v10, v12

    mul-float/2addr v9, v10

    add-int/lit8 v10, v3, -0x1

    int-to-float v10, v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v9

    iget v10, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->b:F

    div-float/2addr v10, v11

    add-float/2addr v10, v12

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {p1, v4, v8}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Lcom/uc/browser/core/homepage/card/view/items/aa;->a(Landroid/graphics/Canvas;)V

    neg-float v0, v4

    neg-float v4, v8

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_8
    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/browser/core/homepage/card/view/items/aa;

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v4, v8

    invoke-virtual {v0}, Lcom/uc/browser/core/homepage/card/view/items/aa;->a()I

    move-result v8

    sub-int/2addr v4, v8

    int-to-float v4, v4

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v8

    add-float/2addr v8, v7

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v9

    iget v10, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->b:F

    add-float/2addr v10, v12

    mul-float/2addr v9, v10

    add-int/lit8 v10, v3, -0x1

    int-to-float v10, v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v9

    iget v10, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->b:F

    div-float/2addr v10, v11

    add-float/2addr v10, v12

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {p1, v4, v8}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Lcom/uc/browser/core/homepage/card/view/items/aa;->a(Landroid/graphics/Canvas;)V

    neg-float v0, v4

    neg-float v4, v8

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_9
    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/browser/core/homepage/card/view/items/aa;

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v0}, Lcom/uc/browser/core/homepage/card/view/items/aa;->a()I

    move-result v8

    sub-int v8, v2, v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v8, v4

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v9

    iget v10, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->b:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    sub-float v9, v7, v9

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Lcom/uc/browser/core/homepage/card/view/items/aa;->a(Landroid/graphics/Canvas;)V

    neg-int v0, v4

    int-to-float v0, v0

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget v8, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->b:F

    mul-float/2addr v4, v8

    div-float/2addr v4, v11

    sub-float v4, v7, v4

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sub-float/2addr v4, v8

    neg-float v4, v4

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_a
    move v4, v1

    :goto_6
    if-ge v4, v3, :cond_e

    int-to-float v0, v2

    and-int/lit8 v8, v6, 0x5

    const/4 v9, 0x5

    if-ne v8, v9, :cond_d

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v0, v8

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    iget-object v9, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->d:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    sub-float/2addr v0, v8

    float-to-int v0, v0

    int-to-float v0, v0

    :cond_b
    :goto_7
    iget-object v8, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->d:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v9

    add-float/2addr v9, v7

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v10

    iget v11, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->b:F

    add-float/2addr v11, v12

    mul-float/2addr v10, v11

    int-to-float v11, v4

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {p1, v8, v0, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_6

    :cond_c
    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    goto/16 :goto_5

    :cond_d
    if-nez v4, :cond_b

    iget-object v8, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_b

    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/browser/core/homepage/card/view/items/aa;

    invoke-virtual {v0}, Lcom/uc/browser/core/homepage/card/view/items/aa;->a()I

    move-result v0

    add-int/2addr v0, v2

    int-to-float v0, v0

    goto :goto_7

    :cond_e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    :cond_f
    move v0, v3

    goto/16 :goto_4

    :cond_10
    move v2, v0

    goto/16 :goto_2

    :cond_11
    move v0, v1

    goto/16 :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    const/4 v3, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    sub-int v2, p5, p3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    sub-int v0, p5, p3

    int-to-float v0, v0

    iput v0, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->f:F

    invoke-direct {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->c()V

    :cond_2
    return-void
.end method

.method public setLabel(Lcom/uc/browser/core/homepage/card/view/items/aa;I)V
    .locals 3

    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->b:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/uc/browser/core/homepage/card/view/items/aa;->a(I)V

    :cond_1
    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->c()V

    return-void
.end method

.method public setLineSpace(F)V
    .locals 0

    iput p1, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->b:F

    invoke-direct {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->c()V

    return-void
.end method

.method public setMaxLines(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    iput p1, p0, Lcom/uc/browser/core/homepage/card/view/items/TextView;->c:I

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<br>"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<br/>"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<br />"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-super {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_2

    invoke-direct {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->c()V

    :cond_2
    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/uc/browser/core/homepage/card/view/items/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    :cond_0
    return-void
.end method
