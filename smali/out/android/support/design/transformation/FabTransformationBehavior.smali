.class public abstract Landroid/support/design/transformation/FabTransformationBehavior;
.super Landroid/support/design/transformation/ExpandableTransformationBehavior;
.source "FabTransformationBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    }
.end annotation


# instance fields
.field private final tmpArray:[I

.field private final tmpRect:Landroid/graphics/Rect;

.field private final tmpRectF1:Landroid/graphics/RectF;

.field private final tmpRectF2:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 79
    invoke-direct {p0}, Landroid/support/design/transformation/ExpandableTransformationBehavior;-><init>()V

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 75
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpArray:[I

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/support/design/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 75
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpArray:[I

    .line 83
    return-void
.end method

.method private calculateChildContentContainer(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 633
    sget v0, Landroid/support/design/R$id;->mtrl_child_content_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 634
    .local v0, "childContentContainer":Landroid/view/View;
    if-eqz v0, :cond_d

    .line 635
    invoke-direct {p0, v0}, Landroid/support/design/transformation/FabTransformationBehavior;->toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    return-object v1

    .line 639
    :cond_d
    instance-of v1, p1, Landroid/support/design/transformation/TransformationChildLayout;

    if-nez v1, :cond_1b

    instance-of v1, p1, Landroid/support/design/transformation/TransformationChildCard;

    if-eqz v1, :cond_16

    goto :goto_1b

    .line 645
    :cond_16
    invoke-direct {p0, p1}, Landroid/support/design/transformation/FabTransformationBehavior;->toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    return-object v1

    .line 640
    :cond_1b
    :goto_1b
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 641
    invoke-direct {p0, v0}, Landroid/support/design/transformation/FabTransformationBehavior;->toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    return-object v1
.end method

.method private calculateChildVisibleBoundsAtEndOfExpansion(Landroid/view/View;Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Landroid/support/design/animation/MotionTiming;Landroid/support/design/animation/MotionTiming;FFFFLandroid/graphics/RectF;)V
    .registers 15
    .param p1, "child"    # Landroid/view/View;
    .param p2, "spec"    # Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    .param p3, "translationXTiming"    # Landroid/support/design/animation/MotionTiming;
    .param p4, "translationYTiming"    # Landroid/support/design/animation/MotionTiming;
    .param p5, "fromX"    # F
    .param p6, "fromY"    # F
    .param p7, "toX"    # F
    .param p8, "toY"    # F
    .param p9, "childBounds"    # Landroid/graphics/RectF;

    .line 591
    nop

    .line 592
    invoke-direct {p0, p2, p3, p5, p7}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateValueOfAnimationAtEndOfExpansion(Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Landroid/support/design/animation/MotionTiming;FF)F

    move-result v0

    .line 593
    .local v0, "translationX":F
    nop

    .line 594
    invoke-direct {p0, p2, p4, p6, p8}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateValueOfAnimationAtEndOfExpansion(Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Landroid/support/design/animation/MotionTiming;FF)F

    move-result v1

    .line 597
    .local v1, "translationY":F
    iget-object v2, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 598
    .local v2, "window":Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 599
    iget-object v3, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 600
    .local v3, "windowF":Landroid/graphics/RectF;
    invoke-virtual {v3, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 603
    iget-object v4, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 604
    .local v4, "childVisibleBounds":Landroid/graphics/RectF;
    invoke-direct {p0, p1, v4}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 605
    invoke-virtual {v4, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 606
    invoke-virtual {v4, v3}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 608
    invoke-virtual {p9, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 609
    return-void
.end method

.method private calculateRevealCenterX(Landroid/view/View;Landroid/view/View;Landroid/support/design/animation/Positioning;)F
    .registers 9
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "positioning"    # Landroid/support/design/animation/Positioning;

    .line 556
    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 557
    .local v0, "dependencyBounds":Landroid/graphics/RectF;
    iget-object v1, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 559
    .local v1, "childBounds":Landroid/graphics/RectF;
    invoke-direct {p0, p1, v0}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 560
    invoke-direct {p0, p2, v1}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 562
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateTranslationX(Landroid/view/View;Landroid/view/View;Landroid/support/design/animation/Positioning;)F

    move-result v2

    .line 563
    .local v2, "translationX":F
    neg-float v3, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 565
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v4, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    return v3
.end method

.method private calculateRevealCenterY(Landroid/view/View;Landroid/view/View;Landroid/support/design/animation/Positioning;)F
    .registers 9
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "positioning"    # Landroid/support/design/animation/Positioning;

    .line 569
    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 570
    .local v0, "dependencyBounds":Landroid/graphics/RectF;
    iget-object v1, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 572
    .local v1, "childBounds":Landroid/graphics/RectF;
    invoke-direct {p0, p1, v0}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 573
    invoke-direct {p0, p2, v1}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 575
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateTranslationY(Landroid/view/View;Landroid/view/View;Landroid/support/design/animation/Positioning;)F

    move-result v2

    .line 576
    .local v2, "translationY":F
    neg-float v3, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 578
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget v4, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    return v3
.end method

.method private calculateTranslationX(Landroid/view/View;Landroid/view/View;Landroid/support/design/animation/Positioning;)F
    .registers 9
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "positioning"    # Landroid/support/design/animation/Positioning;

    .line 492
    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 493
    .local v0, "dependencyBounds":Landroid/graphics/RectF;
    iget-object v1, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 495
    .local v1, "childBounds":Landroid/graphics/RectF;
    invoke-direct {p0, p1, v0}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 496
    invoke-direct {p0, p2, v1}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 498
    const/4 v2, 0x0

    .line 499
    .local v2, "translationX":F
    iget v3, p3, Landroid/support/design/animation/Positioning;->gravity:I

    and-int/lit8 v3, v3, 0x7

    const/4 v4, 0x1

    if-eq v3, v4, :cond_27

    const/4 v4, 0x3

    if-eq v3, v4, :cond_20

    const/4 v4, 0x5

    if-eq v3, v4, :cond_19

    goto :goto_32

    .line 507
    :cond_19
    iget v3, v1, Landroid/graphics/RectF;->right:F

    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float v2, v3, v4

    .line 508
    goto :goto_32

    .line 501
    :cond_20
    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float v2, v3, v4

    .line 502
    goto :goto_32

    .line 504
    :cond_27
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    sub-float v2, v3, v4

    .line 505
    nop

    .line 512
    :goto_32
    iget v3, p3, Landroid/support/design/animation/Positioning;->xAdjustment:F

    add-float/2addr v2, v3

    .line 513
    return v2
.end method

.method private calculateTranslationY(Landroid/view/View;Landroid/view/View;Landroid/support/design/animation/Positioning;)F
    .registers 9
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "positioning"    # Landroid/support/design/animation/Positioning;

    .line 517
    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 518
    .local v0, "dependencyBounds":Landroid/graphics/RectF;
    iget-object v1, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 520
    .local v1, "childBounds":Landroid/graphics/RectF;
    invoke-direct {p0, p1, v0}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 521
    invoke-direct {p0, p2, v1}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 523
    const/4 v2, 0x0

    .line 524
    .local v2, "translationY":F
    iget v3, p3, Landroid/support/design/animation/Positioning;->gravity:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x10

    if-eq v3, v4, :cond_2a

    const/16 v4, 0x30

    if-eq v3, v4, :cond_23

    const/16 v4, 0x50

    if-eq v3, v4, :cond_1c

    goto :goto_35

    .line 532
    :cond_1c
    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v3, v4

    .line 533
    goto :goto_35

    .line 526
    :cond_23
    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    sub-float v2, v3, v4

    .line 527
    goto :goto_35

    .line 529
    :cond_2a
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sub-float v2, v3, v4

    .line 530
    nop

    .line 537
    :goto_35
    iget v3, p3, Landroid/support/design/animation/Positioning;->yAdjustment:F

    add-float/2addr v2, v3

    .line 538
    return v2
.end method

.method private calculateValueOfAnimationAtEndOfExpansion(Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Landroid/support/design/animation/MotionTiming;FF)F
    .registers 14
    .param p1, "spec"    # Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    .param p2, "timing"    # Landroid/support/design/animation/MotionTiming;
    .param p3, "from"    # F
    .param p4, "to"    # F

    .line 613
    invoke-virtual {p2}, Landroid/support/design/animation/MotionTiming;->getDelay()J

    move-result-wide v0

    .line 614
    .local v0, "delay":J
    invoke-virtual {p2}, Landroid/support/design/animation/MotionTiming;->getDuration()J

    move-result-wide v2

    .line 617
    .local v2, "duration":J
    iget-object v4, p1, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string v5, "expansion"

    invoke-virtual {v4, v5}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v4

    .line 618
    .local v4, "expansionTiming":Landroid/support/design/animation/MotionTiming;
    invoke-virtual {v4}, Landroid/support/design/animation/MotionTiming;->getDelay()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/support/design/animation/MotionTiming;->getDuration()J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 621
    .local v5, "expansionEnd":J
    const-wide/16 v7, 0x11

    add-long/2addr v5, v7

    .line 622
    sub-long v7, v5, v0

    long-to-float v7, v7

    long-to-float v8, v2

    div-float/2addr v7, v8

    .line 625
    .local v7, "fraction":F
    invoke-virtual {p2}, Landroid/support/design/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v8

    invoke-interface {v8, v7}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v7

    .line 626
    invoke-static {p3, p4, v7}, Landroid/support/design/animation/AnimationUtils;->lerp(FFF)F

    move-result v8

    return v8
.end method

.method private calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/RectF;

    .line 542
    move-object v0, p2

    .line 543
    .local v0, "windowBounds":Landroid/graphics/RectF;
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 545
    iget-object v1, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpArray:[I

    .line 546
    .local v1, "windowLocation":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 548
    const/4 v2, 0x0

    aget v2, v1, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 552
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    neg-float v2, v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    neg-float v3, v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 553
    return-void
.end method

.method private createChildrenFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .registers 13
    .param p1, "unusedDependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "currentlyAnimating"    # Z
    .param p5, "spec"    # Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 459
    .local p6, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .local p7, "unusedListeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    .line 460
    return-void

    .line 462
    :cond_5
    instance-of v0, p2, Landroid/support/design/circularreveal/CircularRevealWidget;

    if-eqz v0, :cond_e

    sget v0, Landroid/support/design/circularreveal/CircularRevealHelper;->STRATEGY:I

    if-nez v0, :cond_e

    .line 465
    return-void

    .line 468
    :cond_e
    invoke-direct {p0, p2}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateChildContentContainer(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 469
    .local v0, "childContentContainer":Landroid/view/ViewGroup;
    if-nez v0, :cond_15

    .line 470
    return-void

    .line 475
    :cond_15
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p3, :cond_32

    .line 476
    if-nez p4, :cond_25

    .line 477
    sget-object v4, Landroid/support/design/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Landroid/util/Property;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 479
    :cond_25
    sget-object v1, Landroid/support/design/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v2

    .line 480
    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .local v1, "animator":Landroid/animation/Animator;
    goto :goto_3c

    .line 482
    .end local v1    # "animator":Landroid/animation/Animator;
    :cond_32
    sget-object v4, Landroid/support/design/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    aput v1, v3, v2

    .line 483
    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 486
    .restart local v1    # "animator":Landroid/animation/Animator;
    :goto_3c
    iget-object v2, p5, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string v3, "contentFade"

    invoke-virtual {v2, v3}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v2

    .line 487
    .local v2, "timing":Landroid/support/design/animation/MotionTiming;
    invoke-virtual {v2, v1}, Landroid/support/design/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 488
    invoke-interface {p6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    return-void
.end method

.method private createColorAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .registers 14
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "currentlyAnimating"    # Z
    .param p5, "spec"    # Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 419
    .local p6, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .local p7, "unusedListeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    instance-of v0, p2, Landroid/support/design/circularreveal/CircularRevealWidget;

    if-nez v0, :cond_5

    .line 420
    return-void

    .line 422
    :cond_5
    move-object v0, p2

    check-cast v0, Landroid/support/design/circularreveal/CircularRevealWidget;

    .line 424
    .local v0, "circularRevealChild":Landroid/support/design/circularreveal/CircularRevealWidget;
    invoke-direct {p0, p1}, Landroid/support/design/transformation/FabTransformationBehavior;->getBackgroundTint(Landroid/view/View;)I

    move-result v1

    .line 425
    .local v1, "tint":I
    const v2, 0xffffff

    and-int/2addr v2, v1

    .line 428
    .local v2, "transparent":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p3, :cond_24

    .line 429
    if-nez p4, :cond_19

    .line 430
    invoke-interface {v0, v1}, Landroid/support/design/circularreveal/CircularRevealWidget;->setCircularRevealScrimColor(I)V

    .line 432
    :cond_19
    sget-object v5, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->CIRCULAR_REVEAL_SCRIM_COLOR:Landroid/util/Property;

    new-array v4, v4, [I

    aput v2, v4, v3

    .line 433
    invoke-static {v0, v5, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .local v3, "animator":Landroid/animation/ObjectAnimator;
    goto :goto_2e

    .line 438
    .end local v3    # "animator":Landroid/animation/ObjectAnimator;
    :cond_24
    sget-object v5, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->CIRCULAR_REVEAL_SCRIM_COLOR:Landroid/util/Property;

    new-array v4, v4, [I

    aput v1, v4, v3

    .line 439
    invoke-static {v0, v5, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 445
    .restart local v3    # "animator":Landroid/animation/ObjectAnimator;
    :goto_2e
    invoke-static {}, Landroid/support/design/animation/ArgbEvaluatorCompat;->getInstance()Landroid/support/design/animation/ArgbEvaluatorCompat;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 446
    iget-object v4, p5, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string v5, "color"

    invoke-virtual {v4, v5}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v4

    .line 447
    .local v4, "timing":Landroid/support/design/animation/MotionTiming;
    invoke-virtual {v4, v3}, Landroid/support/design/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 448
    invoke-interface {p6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    return-void
.end method

.method private createElevationAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .registers 13
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "currentlyAnimating"    # Z
    .param p5, "spec"    # Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 187
    .local p6, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .local p7, "unusedListeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v0

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v1

    sub-float/2addr v0, v1

    .line 190
    .local v0, "translationZ":F
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_1f

    .line 191
    if-nez p4, :cond_13

    .line 192
    neg-float v3, v0

    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationZ(F)V

    .line 194
    :cond_13
    sget-object v3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v2, v2, [F

    const/4 v4, 0x0

    aput v4, v2, v1

    invoke-static {p2, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .local v1, "animator":Landroid/animation/Animator;
    goto :goto_2a

    .line 196
    .end local v1    # "animator":Landroid/animation/Animator;
    :cond_1f
    sget-object v3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v2, v2, [F

    neg-float v4, v0

    aput v4, v2, v1

    invoke-static {p2, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 199
    .restart local v1    # "animator":Landroid/animation/Animator;
    :goto_2a
    iget-object v2, p5, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string v3, "elevation"

    invoke-virtual {v2, v3}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v2

    .line 200
    .local v2, "timing":Landroid/support/design/animation/MotionTiming;
    invoke-virtual {v2, v1}, Landroid/support/design/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 201
    invoke-interface {p6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    return-void
.end method

.method private createExpansionAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;FFLjava/util/List;Ljava/util/List;)V
    .registers 34
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "currentlyAnimating"    # Z
    .param p5, "spec"    # Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    .param p6, "childWidth"    # F
    .param p7, "childHeight"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "FF",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 334
    .local p8, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .local p9, "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p5

    instance-of v0, v14, Landroid/support/design/circularreveal/CircularRevealWidget;

    if-nez v0, :cond_d

    .line 335
    return-void

    .line 337
    :cond_d
    move-object v11, v14

    check-cast v11, Landroid/support/design/circularreveal/CircularRevealWidget;

    .line 339
    .local v11, "circularRevealChild":Landroid/support/design/circularreveal/CircularRevealWidget;
    iget-object v0, v15, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Landroid/support/design/animation/Positioning;

    invoke-direct {v12, v13, v14, v0}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateRevealCenterX(Landroid/view/View;Landroid/view/View;Landroid/support/design/animation/Positioning;)F

    move-result v10

    .line 340
    .local v10, "revealCenterX":F
    iget-object v0, v15, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Landroid/support/design/animation/Positioning;

    invoke-direct {v12, v13, v14, v0}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateRevealCenterY(Landroid/view/View;Landroid/view/View;Landroid/support/design/animation/Positioning;)F

    move-result v9

    .line 341
    .local v9, "revealCenterY":F
    move-object v0, v13

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iget-object v1, v12, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->getContentRect(Landroid/graphics/Rect;)Z

    .line 342
    iget-object v0, v12, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v8, v0, v1

    .line 345
    .local v8, "dependencyRadius":F
    iget-object v0, v15, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string v1, "expansion"

    invoke-virtual {v0, v1}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v7

    .line 347
    .local v7, "timing":Landroid/support/design/animation/MotionTiming;
    if-eqz p3, :cond_94

    .line 348
    if-nez p4, :cond_43

    .line 349
    new-instance v0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v0, v10, v9, v8}, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    invoke-interface {v11, v0}, Landroid/support/design/circularreveal/CircularRevealWidget;->setRevealInfo(Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 352
    :cond_43
    if-eqz p4, :cond_4d

    .line 353
    invoke-interface {v11}, Landroid/support/design/circularreveal/CircularRevealWidget;->getRevealInfo()Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v0

    iget v0, v0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    move v6, v0

    goto :goto_4e

    :cond_4d
    move v6, v8

    .line 354
    .local v6, "fromRadius":F
    :goto_4e
    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 355
    move/from16 v16, v10

    move/from16 v17, v9

    move/from16 v20, p6

    move/from16 v21, p7

    invoke-static/range {v16 .. v21}, Landroid/support/design/widget/MathUtils;->distanceToFurthestCorner(FFFFFF)F

    move-result v5

    .line 358
    .local v5, "toRadius":F
    nop

    .line 359
    invoke-static {v11, v10, v9, v5}, Landroid/support/design/circularreveal/CircularRevealCompat;->createCircularReveal(Landroid/support/design/circularreveal/CircularRevealWidget;FFF)Landroid/animation/Animator;

    move-result-object v4

    .line 361
    .local v4, "animator":Landroid/animation/Animator;
    new-instance v0, Landroid/support/design/transformation/FabTransformationBehavior$4;

    invoke-direct {v0, v12, v11}, Landroid/support/design/transformation/FabTransformationBehavior$4;-><init>(Landroid/support/design/transformation/FabTransformationBehavior;Landroid/support/design/circularreveal/CircularRevealWidget;)V

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 373
    nop

    .line 375
    invoke-virtual {v7}, Landroid/support/design/animation/MotionTiming;->getDelay()J

    move-result-wide v2

    float-to-int v1, v10

    float-to-int v0, v9

    .line 373
    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v17, v1

    move-object/from16 v1, p2

    move-object/from16 v18, v4

    .end local v4    # "animator":Landroid/animation/Animator;
    .local v18, "animator":Landroid/animation/Animator;
    move/from16 v4, v17

    move/from16 v17, v5

    .end local v5    # "toRadius":F
    .local v17, "toRadius":F
    move/from16 v5, v16

    move-object/from16 v16, v7

    .end local v7    # "timing":Landroid/support/design/animation/MotionTiming;
    .local v16, "timing":Landroid/support/design/animation/MotionTiming;
    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Landroid/support/design/transformation/FabTransformationBehavior;->createPreFillRadialExpansion(Landroid/view/View;JIIFLjava/util/List;)V

    .line 381
    .end local v6    # "fromRadius":F
    .end local v17    # "toRadius":F
    move/from16 v22, v8

    move/from16 v21, v9

    move/from16 v20, v10

    move-object/from16 v23, v11

    move-object/from16 v0, v18

    goto :goto_e5

    .line 382
    .end local v16    # "timing":Landroid/support/design/animation/MotionTiming;
    .end local v18    # "animator":Landroid/animation/Animator;
    .restart local v7    # "timing":Landroid/support/design/animation/MotionTiming;
    :cond_94
    move-object/from16 v16, v7

    .end local v7    # "timing":Landroid/support/design/animation/MotionTiming;
    .restart local v16    # "timing":Landroid/support/design/animation/MotionTiming;
    invoke-interface {v11}, Landroid/support/design/circularreveal/CircularRevealWidget;->getRevealInfo()Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v0

    iget v7, v0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 383
    .local v7, "fromRadius":F
    move v6, v8

    .line 384
    .local v6, "toRadius":F
    nop

    .line 385
    invoke-static {v11, v10, v9, v6}, Landroid/support/design/circularreveal/CircularRevealCompat;->createCircularReveal(Landroid/support/design/circularreveal/CircularRevealWidget;FFF)Landroid/animation/Animator;

    move-result-object v17

    .line 388
    .local v17, "animator":Landroid/animation/Animator;
    nop

    .line 390
    invoke-virtual/range {v16 .. v16}, Landroid/support/design/animation/MotionTiming;->getDelay()J

    move-result-wide v2

    float-to-int v4, v10

    float-to-int v5, v9

    .line 388
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v18, v6

    .end local v6    # "toRadius":F
    .local v18, "toRadius":F
    move v6, v7

    move/from16 v19, v7

    .end local v7    # "fromRadius":F
    .local v19, "fromRadius":F
    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Landroid/support/design/transformation/FabTransformationBehavior;->createPreFillRadialExpansion(Landroid/view/View;JIIFLjava/util/List;)V

    .line 395
    nop

    .line 397
    invoke-virtual/range {v16 .. v16}, Landroid/support/design/animation/MotionTiming;->getDelay()J

    move-result-wide v2

    .line 398
    invoke-virtual/range {v16 .. v16}, Landroid/support/design/animation/MotionTiming;->getDuration()J

    move-result-wide v4

    iget-object v0, v15, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    .line 399
    invoke-virtual {v0}, Landroid/support/design/animation/MotionSpec;->getTotalDuration()J

    move-result-wide v6

    float-to-int v1, v10

    float-to-int v0, v9

    .line 395
    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v21, v1

    move-object/from16 v1, p2

    move/from16 v22, v8

    .end local v8    # "dependencyRadius":F
    .local v22, "dependencyRadius":F
    move/from16 v8, v21

    move/from16 v21, v9

    .end local v9    # "revealCenterY":F
    .local v21, "revealCenterY":F
    move/from16 v9, v20

    move/from16 v20, v10

    .end local v10    # "revealCenterX":F
    .local v20, "revealCenterX":F
    move/from16 v10, v18

    move-object/from16 v23, v11

    .end local v11    # "circularRevealChild":Landroid/support/design/circularreveal/CircularRevealWidget;
    .local v23, "circularRevealChild":Landroid/support/design/circularreveal/CircularRevealWidget;
    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Landroid/support/design/transformation/FabTransformationBehavior;->createPostFillRadialExpansion(Landroid/view/View;JJJIIFLjava/util/List;)V

    move-object/from16 v0, v17

    .line 406
    .end local v17    # "animator":Landroid/animation/Animator;
    .end local v18    # "toRadius":F
    .end local v19    # "fromRadius":F
    .local v0, "animator":Landroid/animation/Animator;
    :goto_e5
    move-object/from16 v1, v16

    .end local v16    # "timing":Landroid/support/design/animation/MotionTiming;
    .local v1, "timing":Landroid/support/design/animation/MotionTiming;
    invoke-virtual {v1, v0}, Landroid/support/design/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 407
    move-object/from16 v2, p8

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    invoke-static/range {v23 .. v23}, Landroid/support/design/circularreveal/CircularRevealCompat;->createCircularRevealListener(Landroid/support/design/circularreveal/CircularRevealWidget;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v3

    move-object/from16 v4, p9

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    return-void
.end method

.method private createIconFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .registers 15
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "currentlyAnimating"    # Z
    .param p5, "spec"    # Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 272
    .local p6, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .local p7, "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    instance-of v0, p2, Landroid/support/design/circularreveal/CircularRevealWidget;

    if-eqz v0, :cond_58

    instance-of v0, p1, Landroid/widget/ImageView;

    if-nez v0, :cond_9

    goto :goto_58

    .line 276
    :cond_9
    move-object v0, p2

    check-cast v0, Landroid/support/design/circularreveal/CircularRevealWidget;

    .line 277
    .local v0, "circularRevealChild":Landroid/support/design/circularreveal/CircularRevealWidget;
    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    .line 278
    .local v1, "dependencyImageView":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 280
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_16

    .line 281
    return-void

    .line 283
    :cond_16
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 287
    const/16 v3, 0xff

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p3, :cond_2f

    .line 288
    if-nez p4, :cond_24

    .line 289
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 291
    :cond_24
    sget-object v3, Landroid/support/design/animation/DrawableAlphaProperty;->DRAWABLE_ALPHA_COMPAT:Landroid/util/Property;

    new-array v4, v4, [I

    aput v5, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .local v3, "animator":Landroid/animation/ObjectAnimator;
    goto :goto_39

    .line 293
    .end local v3    # "animator":Landroid/animation/ObjectAnimator;
    :cond_2f
    sget-object v6, Landroid/support/design/animation/DrawableAlphaProperty;->DRAWABLE_ALPHA_COMPAT:Landroid/util/Property;

    new-array v4, v4, [I

    aput v3, v4, v5

    invoke-static {v2, v6, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 296
    .restart local v3    # "animator":Landroid/animation/ObjectAnimator;
    :goto_39
    new-instance v4, Landroid/support/design/transformation/FabTransformationBehavior$2;

    invoke-direct {v4, p0, p2}, Landroid/support/design/transformation/FabTransformationBehavior$2;-><init>(Landroid/support/design/transformation/FabTransformationBehavior;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 306
    iget-object v4, p5, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string v5, "iconFade"

    invoke-virtual {v4, v5}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v4

    .line 307
    .local v4, "timing":Landroid/support/design/animation/MotionTiming;
    invoke-virtual {v4, v3}, Landroid/support/design/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 308
    invoke-interface {p6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    new-instance v5, Landroid/support/design/transformation/FabTransformationBehavior$3;

    invoke-direct {v5, p0, v0, v2}, Landroid/support/design/transformation/FabTransformationBehavior$3;-><init>(Landroid/support/design/transformation/FabTransformationBehavior;Landroid/support/design/circularreveal/CircularRevealWidget;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {p7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    return-void

    .line 273
    .end local v0    # "circularRevealChild":Landroid/support/design/circularreveal/CircularRevealWidget;
    .end local v1    # "dependencyImageView":Landroid/widget/ImageView;
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "animator":Landroid/animation/ObjectAnimator;
    .end local v4    # "timing":Landroid/support/design/animation/MotionTiming;
    :cond_58
    :goto_58
    return-void
.end method

.method private createPostFillRadialExpansion(Landroid/view/View;JJJIIFLjava/util/List;)V
    .registers 15
    .param p1, "child"    # Landroid/view/View;
    .param p2, "delay"    # J
    .param p4, "duration"    # J
    .param p6, "totalDuration"    # J
    .param p8, "revealCenterX"    # I
    .param p9, "revealCenterY"    # I
    .param p10, "toRadius"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "JJJIIF",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 695
    .local p11, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_20

    .line 697
    add-long v0, p2, p4

    cmp-long v2, v0, p6

    if-gez v2, :cond_20

    .line 698
    nop

    .line 699
    invoke-static {p1, p8, p9, p10, p10}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 701
    .local v0, "animator":Landroid/animation/Animator;
    add-long v1, p2, p4

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 702
    add-long v1, p2, p4

    sub-long v1, p6, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 703
    invoke-interface {p11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_20
    return-void
.end method

.method private createPreFillRadialExpansion(Landroid/view/View;JIIFLjava/util/List;)V
    .registers 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "delay"    # J
    .param p4, "revealCenterX"    # I
    .param p5, "revealCenterY"    # I
    .param p6, "fromRadius"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "JIIF",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 673
    .local p7, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1a

    .line 675
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1a

    .line 676
    nop

    .line 677
    invoke-static {p1, p4, p5, p6, p6}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v2

    .line 679
    .local v2, "animator":Landroid/animation/Animator;
    invoke-virtual {v2, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 680
    invoke-virtual {v2, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 681
    invoke-interface {p7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    .end local v2    # "animator":Landroid/animation/Animator;
    :cond_1a
    return-void
.end method

.method private createTranslationAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;Landroid/graphics/RectF;)V
    .registers 30
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "currentlyAnimating"    # Z
    .param p5, "spec"    # Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    .param p8, "childBounds"    # Landroid/graphics/RectF;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;",
            "Landroid/graphics/RectF;",
            ")V"
        }
    .end annotation

    .line 213
    .local p6, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .local p7, "unusedListeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    iget-object v0, v13, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Landroid/support/design/animation/Positioning;

    invoke-direct {v10, v11, v12, v0}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateTranslationX(Landroid/view/View;Landroid/view/View;Landroid/support/design/animation/Positioning;)F

    move-result v15

    .line 214
    .local v15, "translationX":F
    iget-object v0, v13, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Landroid/support/design/animation/Positioning;

    invoke-direct {v10, v11, v12, v0}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateTranslationY(Landroid/view/View;Landroid/view/View;Landroid/support/design/animation/Positioning;)F

    move-result v9

    .line 221
    .local v9, "translationY":F
    const/4 v0, 0x0

    cmpl-float v1, v15, v0

    if-eqz v1, :cond_52

    cmpl-float v1, v9, v0

    if-nez v1, :cond_20

    goto :goto_52

    .line 225
    :cond_20
    if-eqz p3, :cond_26

    cmpg-float v1, v9, v0

    if-ltz v1, :cond_2c

    :cond_26
    if-nez p3, :cond_3f

    cmpl-float v1, v9, v0

    if-lez v1, :cond_3f

    .line 227
    :cond_2c
    iget-object v1, v13, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string v2, "translationXCurveUpwards"

    invoke-virtual {v1, v2}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v1

    .line 228
    .local v1, "translationXTiming":Landroid/support/design/animation/MotionTiming;
    iget-object v2, v13, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string v3, "translationYCurveUpwards"

    invoke-virtual {v2, v3}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v2

    move-object v8, v1

    move-object v7, v2

    .local v2, "translationYTiming":Landroid/support/design/animation/MotionTiming;
    goto :goto_64

    .line 231
    .end local v1    # "translationXTiming":Landroid/support/design/animation/MotionTiming;
    .end local v2    # "translationYTiming":Landroid/support/design/animation/MotionTiming;
    :cond_3f
    iget-object v1, v13, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string v2, "translationXCurveDownwards"

    invoke-virtual {v1, v2}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v1

    .line 232
    .restart local v1    # "translationXTiming":Landroid/support/design/animation/MotionTiming;
    iget-object v2, v13, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string v3, "translationYCurveDownwards"

    invoke-virtual {v2, v3}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v2

    move-object v8, v1

    move-object v7, v2

    .restart local v2    # "translationYTiming":Landroid/support/design/animation/MotionTiming;
    goto :goto_64

    .line 223
    .end local v1    # "translationXTiming":Landroid/support/design/animation/MotionTiming;
    .end local v2    # "translationYTiming":Landroid/support/design/animation/MotionTiming;
    :cond_52
    :goto_52
    iget-object v1, v13, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string v2, "translationXLinear"

    invoke-virtual {v1, v2}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v1

    .line 224
    .restart local v1    # "translationXTiming":Landroid/support/design/animation/MotionTiming;
    iget-object v2, v13, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string v3, "translationYLinear"

    invoke-virtual {v2, v3}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v2

    move-object v8, v1

    move-object v7, v2

    .line 235
    .end local v1    # "translationXTiming":Landroid/support/design/animation/MotionTiming;
    .local v7, "translationYTiming":Landroid/support/design/animation/MotionTiming;
    .local v8, "translationXTiming":Landroid/support/design/animation/MotionTiming;
    :goto_64
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_a6

    .line 236
    if-nez p4, :cond_72

    .line 237
    neg-float v3, v15

    invoke-virtual {v12, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 238
    neg-float v3, v9

    invoke-virtual {v12, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 240
    :cond_72
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v2, [F

    aput v0, v4, v1

    invoke-static {v12, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 241
    .local v16, "translationXAnimator":Landroid/animation/ValueAnimator;
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v2, [F

    aput v0, v2, v1

    invoke-static {v12, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    .line 243
    .local v17, "translationYAnimator":Landroid/animation/ValueAnimator;
    neg-float v5, v15

    neg-float v6, v9

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    move-object v3, v8

    move-object v4, v7

    move-object v10, v7

    .end local v7    # "translationYTiming":Landroid/support/design/animation/MotionTiming;
    .local v10, "translationYTiming":Landroid/support/design/animation/MotionTiming;
    move/from16 v7, v18

    move-object/from16 v20, v8

    .end local v8    # "translationXTiming":Landroid/support/design/animation/MotionTiming;
    .local v20, "translationXTiming":Landroid/support/design/animation/MotionTiming;
    move/from16 v8, v19

    move v11, v9

    .end local v9    # "translationY":F
    .local v11, "translationY":F
    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateChildVisibleBoundsAtEndOfExpansion(Landroid/view/View;Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Landroid/support/design/animation/MotionTiming;Landroid/support/design/animation/MotionTiming;FFFFLandroid/graphics/RectF;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    goto :goto_c4

    .line 254
    .end local v10    # "translationYTiming":Landroid/support/design/animation/MotionTiming;
    .end local v11    # "translationY":F
    .end local v16    # "translationXAnimator":Landroid/animation/ValueAnimator;
    .end local v17    # "translationYAnimator":Landroid/animation/ValueAnimator;
    .end local v20    # "translationXTiming":Landroid/support/design/animation/MotionTiming;
    .restart local v7    # "translationYTiming":Landroid/support/design/animation/MotionTiming;
    .restart local v8    # "translationXTiming":Landroid/support/design/animation/MotionTiming;
    .restart local v9    # "translationY":F
    :cond_a6
    move-object v10, v7

    move-object/from16 v20, v8

    move v11, v9

    .end local v7    # "translationYTiming":Landroid/support/design/animation/MotionTiming;
    .end local v8    # "translationXTiming":Landroid/support/design/animation/MotionTiming;
    .end local v9    # "translationY":F
    .restart local v10    # "translationYTiming":Landroid/support/design/animation/MotionTiming;
    .restart local v11    # "translationY":F
    .restart local v20    # "translationXTiming":Landroid/support/design/animation/MotionTiming;
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v3, v2, [F

    neg-float v4, v15

    aput v4, v3, v1

    invoke-static {v12, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 255
    .restart local v16    # "translationXAnimator":Landroid/animation/ValueAnimator;
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v2, [F

    neg-float v3, v11

    aput v3, v2, v1

    invoke-static {v12, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    .line 258
    .end local v16    # "translationXAnimator":Landroid/animation/ValueAnimator;
    .local v0, "translationXAnimator":Landroid/animation/ValueAnimator;
    .local v1, "translationYAnimator":Landroid/animation/ValueAnimator;
    :goto_c4
    move-object/from16 v2, v20

    .end local v20    # "translationXTiming":Landroid/support/design/animation/MotionTiming;
    .local v2, "translationXTiming":Landroid/support/design/animation/MotionTiming;
    invoke-virtual {v2, v0}, Landroid/support/design/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 259
    invoke-virtual {v10, v1}, Landroid/support/design/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 260
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    return-void
.end method

.method private getBackgroundTint(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 658
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 659
    .local v0, "tintList":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_13

    .line 660
    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    return v1

    .line 662
    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method private toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 650
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 651
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    .line 653
    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 7
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "dependency"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 88
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1f

    .line 93
    instance-of v0, p3, Landroid/support/design/widget/FloatingActionButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 94
    move-object v0, p3

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    .line 95
    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getExpandedComponentIdHint()I

    move-result v0

    .line 96
    .local v0, "expandedComponentIdHint":I
    if-eqz v0, :cond_1c

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v0, v2, :cond_1d

    :cond_1c
    const/4 v1, 0x1

    :cond_1d
    return v1

    .line 98
    .end local v0    # "expandedComponentIdHint":I
    :cond_1e
    return v1

    .line 89
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAttachedToLayoutParams(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)V
    .registers 3
    .param p1, "lp"    # Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 104
    iget v0, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    if-nez v0, :cond_8

    .line 107
    const/16 v0, 0x50

    iput v0, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 109
    :cond_8
    return-void
.end method

.method protected onCreateExpandedStateChangeAnimation(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .registers 23
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "isAnimating"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 115
    move-object/from16 v10, p0

    move/from16 v11, p3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v10, v0, v11}, Landroid/support/design/transformation/FabTransformationBehavior;->onCreateMotionSpec(Landroid/content/Context;Z)Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;

    move-result-object v12

    .line 117
    .local v12, "spec":Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 118
    .local v13, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 120
    .local v14, "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2e

    .line 121
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Landroid/support/design/transformation/FabTransformationBehavior;->createElevationAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    .line 125
    :cond_2e
    iget-object v15, v10, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 126
    .local v15, "childBounds":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    invoke-direct/range {v0 .. v8}, Landroid/support/design/transformation/FabTransformationBehavior;->createTranslationAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;Landroid/graphics/RectF;)V

    .line 128
    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v16

    .line 129
    .local v16, "childWidth":F
    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v17

    .line 131
    .local v17, "childHeight":F
    invoke-direct/range {v0 .. v7}, Landroid/support/design/transformation/FabTransformationBehavior;->createIconFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    .line 132
    move/from16 v6, v16

    move/from16 v7, v17

    move-object v8, v13

    move-object v9, v14

    invoke-direct/range {v0 .. v9}, Landroid/support/design/transformation/FabTransformationBehavior;->createExpansionAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;FFLjava/util/List;Ljava/util/List;)V

    .line 142
    move-object v6, v13

    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Landroid/support/design/transformation/FabTransformationBehavior;->createColorAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    .line 143
    invoke-direct/range {v0 .. v7}, Landroid/support/design/transformation/FabTransformationBehavior;->createChildrenFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    .line 146
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 147
    .local v0, "set":Landroid/animation/AnimatorSet;
    invoke-static {v0, v13}, Landroid/support/design/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 148
    new-instance v1, Landroid/support/design/transformation/FabTransformationBehavior$1;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v1, v10, v11, v3, v2}, Landroid/support/design/transformation/FabTransformationBehavior$1;-><init>(Landroid/support/design/transformation/FabTransformationBehavior;ZLandroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 170
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "count":I
    :goto_76
    if-ge v1, v4, :cond_84

    .line 171
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_76

    .line 173
    .end local v1    # "i":I
    .end local v4    # "count":I
    :cond_84
    return-object v0
.end method

.method protected abstract onCreateMotionSpec(Landroid/content/Context;Z)Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
.end method
