.class public Landroid/support/design/internal/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private itemSpacing:I

.field private lineSpacing:I

.field private singleLine:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/internal/FlowLayout;->singleLine:Z

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/support/design/internal/FlowLayout;->loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/internal/FlowLayout;->singleLine:Z

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/support/design/internal/FlowLayout;->loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method private static getMeasuredDimension(III)I
    .registers 4
    .param p0, "size"    # I
    .param p1, "mode"    # I
    .param p2, "childrenEdge"    # I

    .line 159
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_a

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p1, v0, :cond_9

    .line 165
    return p2

    .line 161
    :cond_9
    return p0

    .line 163
    :cond_a
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private loadFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 68
    nop

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Landroid/support/design/R$styleable;->FlowLayout:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    .local v0, "array":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/design/R$styleable;->FlowLayout_lineSpacing:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/FlowLayout;->lineSpacing:I

    .line 71
    sget v1, Landroid/support/design/R$styleable;->FlowLayout_itemSpacing:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/FlowLayout;->itemSpacing:I

    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    return-void
.end method


# virtual methods
.method protected getItemSpacing()I
    .registers 2

    .line 84
    iget v0, p0, Landroid/support/design/internal/FlowLayout;->itemSpacing:I

    return v0
.end method

.method protected getLineSpacing()I
    .registers 2

    .line 76
    iget v0, p0, Landroid/support/design/internal/FlowLayout;->lineSpacing:I

    return v0
.end method

.method protected isSingleLine()Z
    .registers 2

    .line 92
    iget-boolean v0, p0, Landroid/support/design/internal/FlowLayout;->singleLine:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 22
    .param p1, "sizeChanged"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 171
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/FlowLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_9

    .line 173
    return-void

    .line 176
    :cond_9
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    move v1, v2

    .line 177
    .local v1, "isRtl":Z
    if-eqz v1, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/FlowLayout;->getPaddingRight()I

    move-result v2

    goto :goto_1e

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/FlowLayout;->getPaddingLeft()I

    move-result v2

    .line 178
    .local v2, "paddingStart":I
    :goto_1e
    if-eqz v1, :cond_25

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/FlowLayout;->getPaddingLeft()I

    move-result v3

    goto :goto_29

    :cond_25
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/FlowLayout;->getPaddingRight()I

    move-result v3

    .line 179
    .local v3, "paddingEnd":I
    :goto_29
    move v4, v2

    .line 180
    .local v4, "childStart":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/FlowLayout;->getPaddingTop()I

    move-result v5

    .line 181
    .local v5, "childTop":I
    move v6, v5

    .line 184
    .local v6, "childBottom":I
    sub-int v7, p4, p2

    sub-int/2addr v7, v3

    .line 186
    .local v7, "maxChildEnd":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_33
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/FlowLayout;->getChildCount()I

    move-result v9

    if-ge v8, v9, :cond_98

    .line 187
    invoke-virtual {v0, v8}, Landroid/support/design/internal/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 189
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_46

    .line 190
    goto :goto_95

    .line 193
    :cond_46
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 194
    .local v10, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v11, 0x0

    .line 195
    .local v11, "startMargin":I
    const/4 v12, 0x0

    .line 196
    .local v12, "endMargin":I
    instance-of v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v13, :cond_5b

    .line 197
    move-object v13, v10

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 198
    .local v13, "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {v13}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v11

    .line 199
    invoke-static {v13}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v12

    .line 202
    .end local v13    # "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_5b
    add-int v13, v4, v11

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v13, v14

    .line 204
    .local v13, "childEnd":I
    iget-boolean v14, v0, Landroid/support/design/internal/FlowLayout;->singleLine:Z

    if-nez v14, :cond_6d

    if-le v13, v7, :cond_6d

    .line 205
    move v4, v2

    .line 206
    iget v14, v0, Landroid/support/design/internal/FlowLayout;->lineSpacing:I

    add-int v5, v6, v14

    .line 209
    :cond_6d
    add-int v14, v4, v11

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v14, v15

    .line 210
    .end local v13    # "childEnd":I
    .local v14, "childEnd":I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v5

    .line 212
    .end local v6    # "childBottom":I
    .local v13, "childBottom":I
    if-eqz v1, :cond_84

    .line 213
    sub-int v6, v7, v14

    sub-int v15, v7, v4

    sub-int/2addr v15, v11

    invoke-virtual {v9, v6, v5, v15, v13}, Landroid/view/View;->layout(IIII)V

    goto :goto_89

    .line 216
    :cond_84
    add-int v6, v4, v11

    invoke-virtual {v9, v6, v5, v14, v13}, Landroid/view/View;->layout(IIII)V

    .line 219
    :goto_89
    add-int v6, v11, v12

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v6, v15

    iget v15, v0, Landroid/support/design/internal/FlowLayout;->itemSpacing:I

    add-int/2addr v6, v15

    add-int/2addr v4, v6

    move v6, v13

    .line 186
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v11    # "startMargin":I
    .end local v12    # "endMargin":I
    .end local v13    # "childBottom":I
    .end local v14    # "childEnd":I
    .restart local v6    # "childBottom":I
    :goto_95
    add-int/lit8 v8, v8, 0x1

    goto :goto_33

    .line 221
    .end local v8    # "i":I
    :cond_98
    return-void
.end method

.method protected onMeasure(II)V
    .registers 24
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 102
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 103
    .local v1, "width":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 105
    .local v2, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 106
    .local v3, "height":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 108
    .local v4, "heightMode":I
    const/high16 v5, -0x80000000

    if-eq v2, v5, :cond_1f

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_1b

    goto :goto_1f

    :cond_1b
    const v5, 0x7fffffff

    goto :goto_20

    :cond_1f
    :goto_1f
    move v5, v1

    .line 113
    .local v5, "maxWidth":I
    :goto_20
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/FlowLayout;->getPaddingLeft()I

    move-result v6

    .line 114
    .local v6, "childLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/FlowLayout;->getPaddingTop()I

    move-result v7

    .line 115
    .local v7, "childTop":I
    move v8, v7

    .line 116
    .local v8, "childBottom":I
    move v9, v6

    .line 117
    .local v9, "childRight":I
    const/4 v10, 0x0

    .line 118
    .local v10, "maxChildRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/FlowLayout;->getPaddingRight()I

    move-result v11

    sub-int v11, v5, v11

    .line 119
    .local v11, "maxRight":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_32
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/FlowLayout;->getChildCount()I

    move-result v13

    if-ge v12, v13, :cond_ae

    .line 120
    invoke-virtual {v0, v12}, Landroid/support/design/internal/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 122
    .local v13, "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_4b

    .line 123
    move/from16 v14, p1

    move/from16 v15, p2

    move/from16 v16, v5

    goto :goto_a9

    .line 125
    :cond_4b
    move/from16 v14, p1

    move/from16 v15, p2

    invoke-virtual {v0, v13, v14, v15}, Landroid/support/design/internal/FlowLayout;->measureChild(Landroid/view/View;II)V

    .line 127
    move/from16 v16, v5

    .end local v5    # "maxWidth":I
    .local v16, "maxWidth":I
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 128
    .local v5, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/16 v17, 0x0

    .line 129
    .local v17, "leftMargin":I
    const/16 v18, 0x0

    .line 130
    .local v18, "rightMargin":I
    move/from16 v19, v7

    .end local v7    # "childTop":I
    .local v19, "childTop":I
    instance-of v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_70

    .line 131
    move-object v7, v5

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 132
    .local v7, "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v20, v5

    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .local v20, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v5, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v17, v17, v5

    .line 133
    iget v5, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v18, v18, v5

    goto :goto_72

    .line 130
    .end local v7    # "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v20    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_70
    move-object/from16 v20, v5

    .line 136
    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v20    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_72
    add-int v5, v6, v17

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    .line 138
    .end local v9    # "childRight":I
    .local v5, "childRight":I
    if-le v5, v11, :cond_8a

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/FlowLayout;->isSingleLine()Z

    move-result v7

    if-nez v7, :cond_8a

    .line 139
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/FlowLayout;->getPaddingLeft()I

    move-result v6

    .line 140
    iget v7, v0, Landroid/support/design/internal/FlowLayout;->lineSpacing:I

    add-int/2addr v7, v8

    move/from16 v19, v7

    .line 143
    :cond_8a
    add-int v7, v6, v17

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v7, v9

    .line 144
    .end local v5    # "childRight":I
    .local v7, "childRight":I
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int v5, v19, v5

    .line 146
    .end local v8    # "childBottom":I
    .local v5, "childBottom":I
    if-le v7, v10, :cond_9a

    .line 147
    move v10, v7

    .line 150
    :cond_9a
    add-int v8, v17, v18

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, v0, Landroid/support/design/internal/FlowLayout;->itemSpacing:I

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    move v8, v5

    move v9, v7

    move/from16 v7, v19

    .line 119
    .end local v5    # "childBottom":I
    .end local v13    # "child":Landroid/view/View;
    .end local v17    # "leftMargin":I
    .end local v18    # "rightMargin":I
    .end local v19    # "childTop":I
    .end local v20    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .local v7, "childTop":I
    .restart local v8    # "childBottom":I
    .restart local v9    # "childRight":I
    :goto_a9
    add-int/lit8 v12, v12, 0x1

    move/from16 v5, v16

    goto :goto_32

    .end local v16    # "maxWidth":I
    .local v5, "maxWidth":I
    :cond_ae
    move/from16 v14, p1

    move/from16 v15, p2

    move/from16 v16, v5

    move/from16 v19, v7

    .line 153
    .end local v5    # "maxWidth":I
    .end local v7    # "childTop":I
    .end local v12    # "i":I
    .restart local v16    # "maxWidth":I
    .restart local v19    # "childTop":I
    invoke-static {v1, v2, v10}, Landroid/support/design/internal/FlowLayout;->getMeasuredDimension(III)I

    move-result v5

    .line 154
    .local v5, "finalWidth":I
    invoke-static {v3, v4, v8}, Landroid/support/design/internal/FlowLayout;->getMeasuredDimension(III)I

    move-result v7

    .line 155
    .local v7, "finalHeight":I
    invoke-virtual {v0, v5, v7}, Landroid/support/design/internal/FlowLayout;->setMeasuredDimension(II)V

    .line 156
    return-void
.end method

.method protected setItemSpacing(I)V
    .registers 2
    .param p1, "itemSpacing"    # I

    .line 88
    iput p1, p0, Landroid/support/design/internal/FlowLayout;->itemSpacing:I

    .line 89
    return-void
.end method

.method protected setLineSpacing(I)V
    .registers 2
    .param p1, "lineSpacing"    # I

    .line 80
    iput p1, p0, Landroid/support/design/internal/FlowLayout;->lineSpacing:I

    .line 81
    return-void
.end method

.method public setSingleLine(Z)V
    .registers 2
    .param p1, "singleLine"    # Z

    .line 97
    iput-boolean p1, p0, Landroid/support/design/internal/FlowLayout;->singleLine:Z

    .line 98
    return-void
.end method
