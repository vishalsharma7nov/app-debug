.class public final Landroid/support/design/widget/CollapsingTextHelper;
.super Ljava/lang/Object;
.source "CollapsingTextHelper.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

.field private static final USE_SCALING_TEXTURE:Z


# instance fields
.field private boundsChanged:Z

.field private final collapsedBounds:Landroid/graphics/Rect;

.field private collapsedDrawX:F

.field private collapsedDrawY:F

.field private collapsedShadowColor:I

.field private collapsedShadowDx:F

.field private collapsedShadowDy:F

.field private collapsedShadowRadius:F

.field private collapsedTextColor:Landroid/content/res/ColorStateList;

.field private collapsedTextGravity:I

.field private collapsedTextSize:F

.field private collapsedTypeface:Landroid/graphics/Typeface;

.field private final currentBounds:Landroid/graphics/RectF;

.field private currentDrawX:F

.field private currentDrawY:F

.field private currentTextSize:F

.field private currentTypeface:Landroid/graphics/Typeface;

.field private drawTitle:Z

.field private final expandedBounds:Landroid/graphics/Rect;

.field private expandedDrawX:F

.field private expandedDrawY:F

.field private expandedFraction:F

.field private expandedShadowColor:I

.field private expandedShadowDx:F

.field private expandedShadowDy:F

.field private expandedShadowRadius:F

.field private expandedTextColor:Landroid/content/res/ColorStateList;

.field private expandedTextGravity:I

.field private expandedTextSize:F

.field private expandedTitleTexture:Landroid/graphics/Bitmap;

.field private expandedTypeface:Landroid/graphics/Typeface;

.field private isRtl:Z

.field private positionInterpolator:Landroid/animation/TimeInterpolator;

.field private scale:F

.field private state:[I

.field private text:Ljava/lang/CharSequence;

.field private final textPaint:Landroid/text/TextPaint;

.field private textSizeInterpolator:Landroid/animation/TimeInterpolator;

.field private textToDraw:Ljava/lang/CharSequence;

.field private textureAscent:F

.field private textureDescent:F

.field private texturePaint:Landroid/graphics/Paint;

.field private final tmpPaint:Landroid/text/TextPaint;

.field private useTexture:Z

.field private final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-ge v0, v2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    sput-boolean v0, Landroid/support/design/widget/CollapsingTextHelper;->USE_SCALING_TEXTURE:Z

    .line 58
    const/4 v0, 0x0

    sput-object v0, Landroid/support/design/widget/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    .line 59
    sget-object v0, Landroid/support/design/widget/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    if-eqz v0, :cond_1e

    .line 60
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    sget-object v0, Landroid/support/design/widget/CollapsingTextHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    :cond_1e
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/16 v0, 0x10

    iput v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextGravity:I

    .line 74
    iput v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextGravity:I

    .line 75
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    .line 76
    iput v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextSize:F

    .line 124
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->view:Landroid/view/View;

    .line 126
    new-instance v0, Landroid/text/TextPaint;

    const/16 v1, 0x81

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    .line 127
    new-instance v0, Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    .line 129
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    .line 130
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    .line 131
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    .line 132
    return-void
.end method

.method private static blendColors(IIF)I
    .registers 12
    .param p0, "color1"    # I
    .param p1, "color2"    # I
    .param p2, "ratio"    # F

    .line 758
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 759
    .local v0, "inverseRatio":F
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    .line 760
    .local v1, "a":F
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    .line 761
    .local v2, "r":F
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p2

    add-float/2addr v3, v4

    .line 762
    .local v3, "g":F
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, p2

    add-float/2addr v4, v5

    .line 763
    .local v4, "b":F
    float-to-int v5, v1

    float-to-int v6, v2

    float-to-int v7, v3

    float-to-int v8, v4

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    return v5
.end method

.method private calculateBaseOffsets()V
    .registers 14

    .line 448
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentTextSize:F

    .line 451
    .local v0, "currentTextSize":F
    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextSize:F

    invoke-direct {p0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->calculateUsingTextSize(F)V

    .line 452
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_18

    iget-object v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    .line 453
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v4, v1, v2, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 454
    .local v1, "width":F
    :goto_19
    iget v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextGravity:I

    iget-boolean v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->isRtl:Z

    .line 455
    invoke-static {v4, v5}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    .line 458
    .local v4, "collapsedAbsGravity":I
    and-int/lit8 v5, v4, 0x70

    const/16 v6, 0x50

    const/16 v7, 0x30

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v5, v7, :cond_56

    if-eq v5, v6, :cond_4e

    .line 467
    iget-object v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    iget-object v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    .line 468
    .local v5, "textHeight":F
    div-float v9, v5, v8

    iget-object v10, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->descent()F

    move-result v10

    sub-float/2addr v9, v10

    .line 469
    .local v9, "textOffset":F
    iget-object v10, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v9

    iput v10, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedDrawY:F

    goto :goto_65

    .line 460
    .end local v5    # "textHeight":F
    .end local v9    # "textOffset":F
    :cond_4e
    iget-object v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iput v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedDrawY:F

    .line 461
    goto :goto_65

    .line 463
    :cond_56
    iget-object v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    iput v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedDrawY:F

    .line 464
    nop

    .line 472
    :goto_65
    const v5, 0x800007

    and-int v9, v4, v5

    const/4 v10, 0x5

    const/4 v11, 0x1

    if-eq v9, v11, :cond_81

    if-eq v9, v10, :cond_78

    .line 481
    iget-object v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iput v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedDrawX:F

    goto :goto_8e

    .line 477
    :cond_78
    iget-object v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    sub-float/2addr v9, v1

    iput v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedDrawX:F

    .line 478
    goto :goto_8e

    .line 474
    :cond_81
    iget-object v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    int-to-float v9, v9

    div-float v12, v1, v8

    sub-float/2addr v9, v12

    iput v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedDrawX:F

    .line 475
    nop

    .line 485
    :goto_8e
    iget v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    invoke-direct {p0, v9}, Landroid/support/design/widget/CollapsingTextHelper;->calculateUsingTextSize(F)V

    .line 486
    iget-object v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    if-eqz v9, :cond_a1

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-virtual {v3, v9, v2, v12}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    :cond_a1
    move v1, v3

    .line 487
    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextGravity:I

    iget-boolean v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->isRtl:Z

    .line 488
    invoke-static {v2, v3}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    .line 491
    .local v2, "expandedAbsGravity":I
    and-int/lit8 v3, v2, 0x70

    if-eq v3, v7, :cond_d9

    if-eq v3, v6, :cond_d1

    .line 500
    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    sub-float/2addr v3, v6

    .line 501
    .local v3, "textHeight":F
    div-float v6, v3, v8

    iget-object v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->descent()F

    move-result v7

    sub-float/2addr v6, v7

    .line 502
    .local v6, "textOffset":F
    iget-object v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v6

    iput v7, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedDrawY:F

    goto :goto_e8

    .line 493
    .end local v3    # "textHeight":F
    .end local v6    # "textOffset":F
    :cond_d1
    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iput v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedDrawY:F

    .line 494
    goto :goto_e8

    .line 496
    :cond_d9
    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    sub-float/2addr v3, v6

    iput v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedDrawY:F

    .line 497
    nop

    .line 505
    :goto_e8
    and-int v3, v2, v5

    if-eq v3, v11, :cond_ff

    if-eq v3, v10, :cond_f6

    .line 514
    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iput v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedDrawX:F

    goto :goto_10c

    .line 510
    :cond_f6
    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    iput v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedDrawX:F

    .line 511
    goto :goto_10c

    .line 507
    :cond_ff
    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    div-float v5, v1, v8

    sub-float/2addr v3, v5

    iput v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedDrawX:F

    .line 508
    nop

    .line 519
    :goto_10c
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->clearTexture()V

    .line 521
    invoke-direct {p0, v0}, Landroid/support/design/widget/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    .line 522
    return-void
.end method

.method private calculateCurrentOffsets()V
    .registers 2

    .line 399
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedFraction:F

    invoke-direct {p0, v0}, Landroid/support/design/widget/CollapsingTextHelper;->calculateOffsets(F)V

    .line 400
    return-void
.end method

.method private calculateIsRtl(Ljava/lang/CharSequence;)Z
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 579
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->view:Landroid/view/View;

    .line 580
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    move v0, v2

    .line 581
    .local v0, "defaultIsRtl":Z
    if-eqz v0, :cond_12

    sget-object v2, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    goto :goto_14

    :cond_12
    sget-object v2, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 584
    :goto_14
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v2, p1, v1, v3}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v1

    .line 581
    return v1
.end method

.method private calculateOffsets(F)V
    .registers 8
    .param p1, "fraction"    # F

    .line 403
    invoke-direct {p0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->interpolateBounds(F)V

    .line 404
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedDrawX:F

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedDrawX:F

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentDrawX:F

    .line 405
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedDrawY:F

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedDrawY:F

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentDrawY:F

    .line 407
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextSize:F

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->textSizeInterpolator:Landroid/animation/TimeInterpolator;

    .line 408
    invoke-static {v0, v1, p1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    .line 407
    invoke-direct {p0, v0}, Landroid/support/design/widget/CollapsingTextHelper;->setInterpolatedTextSize(F)V

    .line 410
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_40

    .line 413
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    .line 414
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->getCurrentExpandedTextColor()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    move-result v2

    invoke-static {v1, v2, p1}, Landroid/support/design/widget/CollapsingTextHelper;->blendColors(IIF)I

    move-result v1

    .line 413
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_49

    .line 416
    :cond_40
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 419
    :goto_49
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedShadowRadius:F

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedShadowRadius:F

    .line 420
    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedShadowDx:F

    iget v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedShadowDx:F

    .line 421
    invoke-static {v2, v4, p1, v3}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v2

    iget v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedShadowDy:F

    iget v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedShadowDy:F

    .line 422
    invoke-static {v4, v5, p1, v3}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iget v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedShadowColor:I

    iget v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedShadowColor:I

    .line 423
    invoke-static {v4, v5, p1}, Landroid/support/design/widget/CollapsingTextHelper;->blendColors(IIF)I

    move-result v4

    .line 419
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 425
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 426
    return-void
.end method

.method private calculateUsingTextSize(F)V
    .registers 12
    .param p1, "textSize"    # F

    .line 603
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    if-nez v0, :cond_5

    .line 604
    return-void

    .line 607
    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 608
    .local v0, "collapsedWidth":F
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 612
    .local v1, "expandedWidth":F
    const/4 v2, 0x0

    .line 614
    .local v2, "updateDrawText":Z
    iget v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextSize:F

    invoke-static {p1, v3}, Landroid/support/design/widget/CollapsingTextHelper;->isClose(FF)Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_2d

    .line 615
    iget v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextSize:F

    .line 616
    .local v3, "newTextSize":F
    iput v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->scale:F

    .line 617
    iget-object v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    if-eq v5, v6, :cond_2b

    .line 618
    iput-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    .line 619
    const/4 v2, 0x1

    .line 621
    :cond_2b
    move v5, v0

    .local v5, "availableWidth":F
    goto :goto_5d

    .line 623
    .end local v3    # "newTextSize":F
    .end local v5    # "availableWidth":F
    :cond_2d
    iget v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    .line 624
    .restart local v3    # "newTextSize":F
    iget-object v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    if-eq v5, v6, :cond_38

    .line 625
    iput-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    .line 626
    const/4 v2, 0x1

    .line 628
    :cond_38
    iget v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    invoke-static {p1, v5}, Landroid/support/design/widget/CollapsingTextHelper;->isClose(FF)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 630
    iput v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->scale:F

    goto :goto_49

    .line 633
    :cond_43
    iget v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    div-float v5, p1, v5

    iput v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->scale:F

    .line 636
    :goto_49
    iget v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextSize:F

    iget v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    div-float/2addr v5, v6

    .line 639
    .local v5, "textSizeRatio":F
    mul-float v6, v1, v5

    .line 641
    .local v6, "scaledDownWidth":F
    cmpl-float v7, v6, v0

    if-lez v7, :cond_5c

    .line 645
    div-float v7, v0, v5

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v7

    move v5, v7

    .local v7, "availableWidth":F
    goto :goto_5d

    .line 648
    .end local v7    # "availableWidth":F
    :cond_5c
    move v5, v1

    .line 652
    .end local v6    # "scaledDownWidth":F
    .local v5, "availableWidth":F
    :goto_5d
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    cmpl-float v6, v5, v6

    if-lez v6, :cond_79

    .line 653
    iget v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentTextSize:F

    cmpl-float v6, v6, v3

    if-nez v6, :cond_73

    iget-boolean v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->boundsChanged:Z

    if-nez v6, :cond_73

    if-eqz v2, :cond_71

    goto :goto_73

    :cond_71
    const/4 v6, 0x0

    goto :goto_74

    :cond_73
    :goto_73
    const/4 v6, 0x1

    :goto_74
    move v2, v6

    .line 654
    iput v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentTextSize:F

    .line 655
    iput-boolean v8, p0, Landroid/support/design/widget/CollapsingTextHelper;->boundsChanged:Z

    .line 658
    :cond_79
    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    if-eqz v6, :cond_7f

    if-eqz v2, :cond_b6

    .line 659
    :cond_7f
    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentTextSize:F

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 660
    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget-object v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 662
    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->scale:F

    cmpl-float v4, v9, v4

    if-eqz v4, :cond_96

    goto :goto_97

    :cond_96
    const/4 v7, 0x0

    :goto_97
    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setLinearText(Z)V

    .line 665
    iget-object v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 666
    invoke-static {v4, v6, v5, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 667
    .local v4, "title":Ljava/lang/CharSequence;
    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b6

    .line 668
    iput-object v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    .line 669
    iget-object v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    invoke-direct {p0, v6}, Landroid/support/design/widget/CollapsingTextHelper;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result v6

    iput-boolean v6, p0, Landroid/support/design/widget/CollapsingTextHelper;->isRtl:Z

    .line 672
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_b6
    return-void
.end method

.method private clearTexture()V
    .registers 2

    .line 729
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    .line 730
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 731
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    .line 733
    :cond_a
    return-void
.end method

.method private ensureExpandedTexture()V
    .registers 11

    .line 675
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7b

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7b

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_7b

    .line 679
    :cond_15
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/widget/CollapsingTextHelper;->calculateOffsets(F)V

    .line 680
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->textureAscent:F

    .line 681
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->textureDescent:F

    .line 683
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 684
    .local v0, "w":I
    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->textureDescent:F

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->textureAscent:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 686
    .local v1, "h":I
    if-lez v0, :cond_7a

    if-gtz v1, :cond_48

    goto :goto_7a

    .line 690
    :cond_48
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    .line 692
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 693
    .local v3, "c":Landroid/graphics/Canvas;
    iget-object v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x0

    int-to-float v2, v1

    iget-object v8, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->descent()F

    move-result v8

    sub-float v8, v2, v8

    iget-object v9, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 695
    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->texturePaint:Landroid/graphics/Paint;

    if-nez v2, :cond_79

    .line 697
    new-instance v2, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->texturePaint:Landroid/graphics/Paint;

    .line 699
    :cond_79
    return-void

    .line 687
    .end local v3    # "c":Landroid/graphics/Canvas;
    :cond_7a
    :goto_7a
    return-void

    .line 676
    .end local v0    # "w":I
    .end local v1    # "h":I
    :cond_7b
    :goto_7b
    return-void
.end method

.method private getCurrentExpandedTextColor()I
    .registers 4
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 430
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->state:[I

    if-eqz v0, :cond_c

    .line 431
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0

    .line 433
    :cond_c
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method private getTextPaintCollapsed(Landroid/text/TextPaint;)V
    .registers 3
    .param p1, "textPaint"    # Landroid/text/TextPaint;

    .line 213
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextSize:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 214
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 215
    return-void
.end method

.method private interpolateBounds(F)V
    .registers 6
    .param p1, "fraction"    # F

    .line 525
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 526
    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 527
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedDrawY:F

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedDrawY:F

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 528
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 529
    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 530
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 531
    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/CollapsingTextHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 532
    return-void
.end method

.method private static isClose(FF)Z
    .registers 4
    .param p0, "value"    # F
    .param p1, "targetValue"    # F

    .line 740
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private static lerp(FFFLandroid/animation/TimeInterpolator;)F
    .registers 5
    .param p0, "startValue"    # F
    .param p1, "endValue"    # F
    .param p2, "fraction"    # F
    .param p3, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 768
    if-eqz p3, :cond_6

    .line 769
    invoke-interface {p3, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    .line 771
    :cond_6
    invoke-static {p0, p1, p2}, Landroid/support/design/animation/AnimationUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method private readFontFamilyTypeface(I)Landroid/graphics/Typeface;
    .registers 6
    .param p1, "resId"    # I

    .line 312
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->view:Landroid/view/View;

    .line 313
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10103ac

    aput v3, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 315
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_13
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "family":Ljava/lang/String;
    if-eqz v1, :cond_21

    .line 317
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_27

    .line 320
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 317
    return-object v2

    .line 320
    .end local v1    # "family":Ljava/lang/String;
    :cond_21
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 321
    nop

    .line 322
    const/4 v1, 0x0

    return-object v1

    .line 320
    :catchall_27
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static rectEquals(Landroid/graphics/Rect;IIII)Z
    .registers 6
    .param p0, "r"    # Landroid/graphics/Rect;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 775
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_12

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-ne v0, p2, :cond_12

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-ne v0, p3, :cond_12

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne v0, p4, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private setInterpolatedTextSize(F)V
    .registers 4
    .param p1, "textSize"    # F

    .line 588
    invoke-direct {p0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->calculateUsingTextSize(F)V

    .line 591
    sget-boolean v0, Landroid/support/design/widget/CollapsingTextHelper;->USE_SCALING_TEXTURE:Z

    if-eqz v0, :cond_11

    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->useTexture:Z

    .line 593
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->useTexture:Z

    if-eqz v0, :cond_1b

    .line 595
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->ensureExpandedTexture()V

    .line 598
    :cond_1b
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 599
    return-void
.end method


# virtual methods
.method public calculateCollapsedTextWidth()F
    .registers 5

    .line 189
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    .line 190
    const/4 v0, 0x0

    return v0

    .line 192
    :cond_6
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Landroid/support/design/widget/CollapsingTextHelper;->getTextPaintCollapsed(Landroid/text/TextPaint;)V

    .line 193
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 535
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 537
    .local v0, "saveCount":I
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    if-eqz v1, :cond_6b

    iget-boolean v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->drawTitle:Z

    if-eqz v1, :cond_6b

    .line 538
    iget v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentDrawX:F

    .line 539
    .local v1, "x":F
    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->currentDrawY:F

    .line 541
    .local v2, "y":F
    iget-boolean v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->useTexture:Z

    if-eqz v3, :cond_1a

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1a

    const/4 v3, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v3, 0x0

    :goto_1b
    move v9, v3

    .line 545
    .local v9, "drawTexture":Z
    if-eqz v9, :cond_2b

    .line 546
    iget v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->textureAscent:F

    iget v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->scale:F

    mul-float v3, v3, v4

    .line 547
    .local v3, "ascent":F
    iget v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->textureDescent:F

    mul-float v5, v5, v4

    move v10, v3

    move v11, v5

    .local v5, "descent":F
    goto :goto_41

    .line 549
    .end local v3    # "ascent":F
    .end local v5    # "descent":F
    :cond_2b
    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    iget v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->scale:F

    mul-float v3, v3, v4

    .line 550
    .restart local v3    # "ascent":F
    iget-object v4, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    move-result v4

    iget v5, p0, Landroid/support/design/widget/CollapsingTextHelper;->scale:F

    mul-float v5, v5, v4

    move v10, v3

    move v11, v5

    .line 559
    .end local v3    # "ascent":F
    .local v10, "ascent":F
    .local v11, "descent":F
    :goto_41
    if-eqz v9, :cond_46

    .line 560
    add-float/2addr v2, v10

    move v12, v2

    goto :goto_47

    .line 559
    :cond_46
    move v12, v2

    .line 563
    .end local v2    # "y":F
    .local v12, "y":F
    :goto_47
    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->scale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_52

    .line 564
    invoke-virtual {p1, v2, v2, v1, v12}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 567
    :cond_52
    if-eqz v9, :cond_5c

    .line 569
    iget-object v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTitleTexture:Landroid/graphics/Bitmap;

    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->texturePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v12, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_6b

    .line 571
    :cond_5c
    iget-object v3, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v8, p0, Landroid/support/design/widget/CollapsingTextHelper;->textPaint:Landroid/text/TextPaint;

    move-object v2, p1

    move v6, v1

    move v7, v12

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 575
    .end local v1    # "x":F
    .end local v9    # "drawTexture":Z
    .end local v10    # "ascent":F
    .end local v11    # "descent":F
    .end local v12    # "y":F
    :cond_6b
    :goto_6b
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 576
    return-void
.end method

.method public getCollapsedTextActualBounds(Landroid/graphics/RectF;)V
    .registers 5
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .line 203
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/support/design/widget/CollapsingTextHelper;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 205
    .local v0, "isRtl":Z
    if-nez v0, :cond_e

    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    goto :goto_18

    :cond_e
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    .line 206
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->calculateCollapsedTextWidth()F

    move-result v2

    sub-float/2addr v1, v2

    :goto_18
    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 207
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 208
    if-nez v0, :cond_2b

    iget v1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->calculateCollapsedTextWidth()F

    move-result v2

    add-float/2addr v1, v2

    goto :goto_30

    :cond_2b
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    :goto_30
    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 209
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextHeight()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 210
    return-void
.end method

.method public getCollapsedTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 748
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCollapsedTextGravity()I
    .registers 2

    .line 244
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextGravity:I

    return v0
.end method

.method public getCollapsedTextHeight()F
    .registers 2

    .line 197
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Landroid/support/design/widget/CollapsingTextHelper;->getTextPaintCollapsed(Landroid/text/TextPaint;)V

    .line 199
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->tmpPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public getCollapsedTextSize()F
    .registers 2

    .line 391
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextSize:F

    return v0
.end method

.method public getCollapsedTypeface()Landroid/graphics/Typeface;
    .registers 2

    .line 347
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_7
    return-object v0
.end method

.method public getCurrentCollapsedTextColor()I
    .registers 4
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 440
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->state:[I

    if-eqz v0, :cond_c

    .line 441
    iget-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0

    .line 443
    :cond_c
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getExpandedTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 744
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getExpandedTextGravity()I
    .registers 2

    .line 233
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextGravity:I

    return v0
.end method

.method public getExpandedTextSize()F
    .registers 2

    .line 395
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    return v0
.end method

.method public getExpandedTypeface()Landroid/graphics/Typeface;
    .registers 2

    .line 351
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_7
    return-object v0
.end method

.method public getExpansionFraction()F
    .registers 2

    .line 387
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedFraction:F

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .line 725
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final isStateful()Z
    .registers 2

    .line 382
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_a
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_16

    .line 383
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 382
    :goto_17
    return v0
.end method

.method onBoundsChanged()V
    .registers 2

    .line 218
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    .line 219
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_22

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    .line 220
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_22

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    .line 221
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_22

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    .line 222
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->drawTitle:Z

    .line 223
    return-void
.end method

.method public recalculate()V
    .registers 2

    .line 702
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_16

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_16

    .line 705
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->calculateBaseOffsets()V

    .line 706
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->calculateCurrentOffsets()V

    .line 708
    :cond_16
    return-void
.end method

.method public setCollapsedBounds(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 181
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/design/widget/CollapsingTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_13

    .line 182
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->boundsChanged:Z

    .line 184
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->onBoundsChanged()V

    .line 186
    :cond_13
    return-void
.end method

.method public setCollapsedTextAppearance(I)V
    .registers 5
    .param p1, "resId"    # I

    .line 248
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->view:Landroid/view/View;

    .line 250
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    .line 249
    invoke-static {v0, p1, v1}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 251
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 252
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 253
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    .line 256
    :cond_1c
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 257
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextSize:F

    float-to-int v2, v2

    .line 258
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextSize:F

    .line 262
    :cond_30
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowColor:I

    const/4 v2, 0x0

    .line 263
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedShadowColor:I

    .line 264
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowDx:I

    .line 265
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedShadowDx:F

    .line 266
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowDy:I

    .line 267
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedShadowDy:F

    .line 268
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowRadius:I

    .line 269
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedShadowRadius:F

    .line 270
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 272
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_61

    .line 273
    invoke-direct {p0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->readFontFamilyTypeface(I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    .line 276
    :cond_61
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 277
    return-void
.end method

.method public setCollapsedTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;

    .line 159
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_9

    .line 160
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextColor:Landroid/content/res/ColorStateList;

    .line 161
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 163
    :cond_9
    return-void
.end method

.method public setCollapsedTextGravity(I)V
    .registers 3
    .param p1, "gravity"    # I

    .line 237
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextGravity:I

    if-eq v0, p1, :cond_9

    .line 238
    iput p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextGravity:I

    .line 239
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 241
    :cond_9
    return-void
.end method

.method public setCollapsedTextSize(F)V
    .registers 3
    .param p1, "textSize"    # F

    .line 152
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 153
    iput p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTextSize:F

    .line 154
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 156
    :cond_b
    return-void
.end method

.method public setCollapsedTypeface(Landroid/graphics/Typeface;)V
    .registers 3
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 327
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_9

    .line 328
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    .line 329
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 331
    :cond_9
    return-void
.end method

.method public setExpandedBounds(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 173
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/design/widget/CollapsingTextHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_13

    .line 174
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->boundsChanged:Z

    .line 176
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->onBoundsChanged()V

    .line 178
    :cond_13
    return-void
.end method

.method public setExpandedTextAppearance(I)V
    .registers 5
    .param p1, "resId"    # I

    .line 280
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->view:Landroid/view/View;

    .line 282
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    .line 281
    invoke-static {v0, p1, v1}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 283
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 284
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 285
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    .line 288
    :cond_1c
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 289
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    iget v2, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    float-to-int v2, v2

    .line 290
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    .line 294
    :cond_30
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowColor:I

    const/4 v2, 0x0

    .line 295
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedShadowColor:I

    .line 296
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowDx:I

    .line 297
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedShadowDx:F

    .line 298
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowDy:I

    .line 299
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedShadowDy:F

    .line 300
    sget v1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_shadowRadius:I

    .line 301
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedShadowRadius:F

    .line 302
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 304
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_61

    .line 305
    invoke-direct {p0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->readFontFamilyTypeface(I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    .line 308
    :cond_61
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 309
    return-void
.end method

.method public setExpandedTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;

    .line 166
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_9

    .line 167
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextColor:Landroid/content/res/ColorStateList;

    .line 168
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 170
    :cond_9
    return-void
.end method

.method public setExpandedTextGravity(I)V
    .registers 3
    .param p1, "gravity"    # I

    .line 226
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextGravity:I

    if-eq v0, p1, :cond_9

    .line 227
    iput p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextGravity:I

    .line 228
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 230
    :cond_9
    return-void
.end method

.method public setExpandedTextSize(F)V
    .registers 3
    .param p1, "textSize"    # F

    .line 145
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 146
    iput p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTextSize:F

    .line 147
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 149
    :cond_b
    return-void
.end method

.method public setExpandedTypeface(Landroid/graphics/Typeface;)V
    .registers 3
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 335
    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_9

    .line 336
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    .line 337
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 339
    :cond_9
    return-void
.end method

.method public setExpansionFraction(F)V
    .registers 4
    .param p1, "fraction"    # F

    .line 362
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroid/support/v4/math/MathUtils;->clamp(FFF)F

    move-result p1

    .line 364
    iget v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedFraction:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_12

    .line 365
    iput p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedFraction:F

    .line 366
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->calculateCurrentOffsets()V

    .line 368
    :cond_12
    return-void
.end method

.method public setPositionInterpolator(Landroid/animation/TimeInterpolator;)V
    .registers 2
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 140
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->positionInterpolator:Landroid/animation/TimeInterpolator;

    .line 141
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 142
    return-void
.end method

.method public final setState([I)Z
    .registers 3
    .param p1, "state"    # [I

    .line 371
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->state:[I

    .line 373
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 374
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 375
    const/4 v0, 0x1

    return v0

    .line 378
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 716
    if-eqz p1, :cond_a

    iget-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 717
    :cond_a
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->text:Ljava/lang/CharSequence;

    .line 718
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/CollapsingTextHelper;->textToDraw:Ljava/lang/CharSequence;

    .line 719
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingTextHelper;->clearTexture()V

    .line 720
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 722
    :cond_15
    return-void
.end method

.method public setTextSizeInterpolator(Landroid/animation/TimeInterpolator;)V
    .registers 2
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 135
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->textSizeInterpolator:Landroid/animation/TimeInterpolator;

    .line 136
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 137
    return-void
.end method

.method public setTypefaces(Landroid/graphics/Typeface;)V
    .registers 2
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 342
    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->expandedTypeface:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroid/support/design/widget/CollapsingTextHelper;->collapsedTypeface:Landroid/graphics/Typeface;

    .line 343
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 344
    return-void
.end method
