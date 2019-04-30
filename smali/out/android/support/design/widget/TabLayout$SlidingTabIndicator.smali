.class Landroid/support/design/widget/TabLayout$SlidingTabIndicator;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingTabIndicator"
.end annotation


# instance fields
.field private final defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;

.field private indicatorAnimator:Landroid/animation/ValueAnimator;

.field private indicatorLeft:I

.field private indicatorRight:I

.field private layoutDirection:I

.field private selectedIndicatorHeight:I

.field private final selectedIndicatorPaint:Landroid/graphics/Paint;

.field selectedPosition:I

.field selectionOffset:F

.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .line 2385
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    .line 2386
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2375
    const/4 p1, -0x1

    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 2378
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->layoutDirection:I

    .line 2380
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    .line 2381
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorRight:I

    .line 2387
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->setWillNotDraw(Z)V

    .line 2388
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    .line 2389
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;

    .line 2390
    return-void
.end method

.method private calculateTabViewContentBounds(Landroid/support/design/widget/TabLayout$TabView;Landroid/graphics/RectF;)V
    .registers 10
    .param p1, "tabView"    # Landroid/support/design/widget/TabLayout$TabView;
    .param p2, "contentBounds"    # Landroid/graphics/RectF;

    .line 2632
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$TabView;->access$500(Landroid/support/design/widget/TabLayout$TabView;)I

    move-result v0

    .line 2634
    .local v0, "tabViewContentWidth":I
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 2635
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v0

    .line 2638
    :cond_14
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$TabView;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$TabView;->getRight()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 2639
    .local v1, "tabViewCenter":I
    div-int/lit8 v2, v0, 0x2

    sub-int v2, v1, v2

    .line 2640
    .local v2, "contentLeftBounds":I
    div-int/lit8 v3, v0, 0x2

    add-int/2addr v3, v1

    .line 2642
    .local v3, "contentRightBounds":I
    int-to-float v4, v2

    int-to-float v5, v3

    const/4 v6, 0x0

    invoke-virtual {p2, v4, v6, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2643
    return-void
.end method

.method private updateIndicatorPosition()V
    .registers 12

    .line 2519
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedPosition:I

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2523
    .local v0, "selectedTitle":Landroid/view/View;
    if-eqz v0, :cond_9f

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_9f

    .line 2524
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 2525
    .local v1, "left":I
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    .line 2527
    .local v2, "right":I
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget-boolean v3, v3, Landroid/support/design/widget/TabLayout;->tabIndicatorFullWidth:Z

    if-nez v3, :cond_3e

    instance-of v3, v0, Landroid/support/design/widget/TabLayout$TabView;

    if-eqz v3, :cond_3e

    .line 2528
    move-object v3, v0

    check-cast v3, Landroid/support/design/widget/TabLayout$TabView;

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v4}, Landroid/support/design/widget/TabLayout;->access$400(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->calculateTabViewContentBounds(Landroid/support/design/widget/TabLayout$TabView;Landroid/graphics/RectF;)V

    .line 2529
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v3}, Landroid/support/design/widget/TabLayout;->access$400(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v1, v3

    .line 2530
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v3}, Landroid/support/design/widget/TabLayout;->access$400(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v2, v3

    .line 2533
    :cond_3e
    iget v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectionOffset:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_a1

    iget v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedPosition:I

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_a1

    .line 2535
    iget v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2536
    .local v3, "nextTitle":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 2537
    .local v4, "nextTitleLeft":I
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    .line 2539
    .local v5, "nextTitleRight":I
    iget-object v6, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget-boolean v6, v6, Landroid/support/design/widget/TabLayout;->tabIndicatorFullWidth:Z

    if-nez v6, :cond_87

    instance-of v6, v3, Landroid/support/design/widget/TabLayout$TabView;

    if-eqz v6, :cond_87

    .line 2540
    move-object v6, v3

    check-cast v6, Landroid/support/design/widget/TabLayout$TabView;

    iget-object v7, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v7}, Landroid/support/design/widget/TabLayout;->access$400(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->calculateTabViewContentBounds(Landroid/support/design/widget/TabLayout$TabView;Landroid/graphics/RectF;)V

    .line 2541
    iget-object v6, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v6}, Landroid/support/design/widget/TabLayout;->access$400(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->left:F

    float-to-int v4, v6

    .line 2542
    iget-object v6, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v6}, Landroid/support/design/widget/TabLayout;->access$400(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->right:F

    float-to-int v5, v6

    .line 2545
    :cond_87
    iget v6, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectionOffset:F

    int-to-float v7, v4

    mul-float v7, v7, v6

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v9, v8, v6

    int-to-float v10, v1

    mul-float v9, v9, v10

    add-float/2addr v7, v9

    float-to-int v1, v7

    .line 2546
    int-to-float v7, v5

    mul-float v7, v7, v6

    sub-float/2addr v8, v6

    int-to-float v6, v2

    mul-float v8, v8, v6

    add-float/2addr v7, v8

    float-to-int v2, v7

    .line 2547
    .end local v3    # "nextTitle":Landroid/view/View;
    .end local v4    # "nextTitleLeft":I
    .end local v5    # "nextTitleRight":I
    goto :goto_a1

    .line 2550
    .end local v1    # "left":I
    .end local v2    # "right":I
    :cond_9f
    const/4 v1, -0x1

    move v2, v1

    .line 2553
    .restart local v1    # "left":I
    .restart local v2    # "right":I
    :cond_a1
    :goto_a1
    invoke-virtual {p0, v1, v2}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->setIndicatorPosition(II)V

    .line 2554
    return-void
.end method


# virtual methods
.method animateIndicatorToPosition(II)V
    .registers 20
    .param p1, "position"    # I
    .param p2, "duration"    # I

    .line 2566
    move-object/from16 v6, p0

    iget-object v0, v6, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2567
    iget-object v0, v6, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2570
    :cond_11
    invoke-virtual/range {p0 .. p1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2571
    .local v7, "targetView":Landroid/view/View;
    if-nez v7, :cond_1b

    .line 2573
    invoke-direct/range {p0 .. p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->updateIndicatorPosition()V

    .line 2574
    return-void

    .line 2577
    :cond_1b
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 2578
    .local v0, "targetLeft":I
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v1

    .line 2580
    .local v1, "targetRight":I
    iget-object v2, v6, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget-boolean v2, v2, Landroid/support/design/widget/TabLayout;->tabIndicatorFullWidth:Z

    if-nez v2, :cond_4e

    instance-of v2, v7, Landroid/support/design/widget/TabLayout$TabView;

    if-eqz v2, :cond_4e

    .line 2581
    move-object v2, v7

    check-cast v2, Landroid/support/design/widget/TabLayout$TabView;

    iget-object v3, v6, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v3}, Landroid/support/design/widget/TabLayout;->access$400(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {v6, v2, v3}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->calculateTabViewContentBounds(Landroid/support/design/widget/TabLayout$TabView;Landroid/graphics/RectF;)V

    .line 2582
    iget-object v2, v6, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v2}, Landroid/support/design/widget/TabLayout;->access$400(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v0, v2

    .line 2583
    iget-object v2, v6, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v2}, Landroid/support/design/widget/TabLayout;->access$400(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v1, v2

    move v8, v0

    move v9, v1

    goto :goto_50

    .line 2586
    :cond_4e
    move v8, v0

    move v9, v1

    .end local v0    # "targetLeft":I
    .end local v1    # "targetRight":I
    .local v8, "targetLeft":I
    .local v9, "targetRight":I
    :goto_50
    move v10, v8

    .line 2587
    .local v10, "finalTargetLeft":I
    move v11, v9

    .line 2589
    .local v11, "finalTargetRight":I
    iget v12, v6, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    .line 2590
    .local v12, "startLeft":I
    iget v13, v6, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorRight:I

    .line 2592
    .local v13, "startRight":I
    if-ne v12, v10, :cond_62

    if-eq v13, v11, :cond_5b

    goto :goto_62

    :cond_5b
    move/from16 v1, p1

    move/from16 v15, p2

    move-object/from16 v16, v7

    goto :goto_9d

    .line 2593
    :cond_62
    :goto_62
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, v6, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    move-object v14, v0

    .line 2594
    .local v14, "animator":Landroid/animation/ValueAnimator;
    sget-object v0, Landroid/support/design/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2595
    move/from16 v15, p2

    int-to-long v0, v15

    invoke-virtual {v14, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2596
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_9e

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2597
    new-instance v5, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$1;

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v12

    move v3, v10

    move v4, v13

    move-object/from16 v16, v7

    move-object v7, v5

    .end local v7    # "targetView":Landroid/view/View;
    .local v16, "targetView":Landroid/view/View;
    move v5, v11

    invoke-direct/range {v0 .. v5}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$1;-><init>(Landroid/support/design/widget/TabLayout$SlidingTabIndicator;IIII)V

    invoke-virtual {v14, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2607
    new-instance v0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$2;

    move/from16 v1, p1

    invoke-direct {v0, v6, v1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$2;-><init>(Landroid/support/design/widget/TabLayout$SlidingTabIndicator;I)V

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2615
    invoke-virtual {v14}, Landroid/animation/ValueAnimator;->start()V

    .line 2617
    .end local v14    # "animator":Landroid/animation/ValueAnimator;
    :goto_9d
    return-void

    :array_9e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method childrenNeedLayout()Z
    .registers 5

    .line 2407
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v1

    .local v1, "z":I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 2408
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2409
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gtz v3, :cond_13

    .line 2410
    const/4 v3, 0x1

    return v3

    .line 2407
    .end local v2    # "child":Landroid/view/View;
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2413
    .end local v0    # "i":I
    .end local v1    # "z":I
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2647
    const/4 v0, 0x0

    .line 2648
    .local v0, "indicatorHeight":I
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v1, v1, Landroid/support/design/widget/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_f

    .line 2649
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v1, v1, Landroid/support/design/widget/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 2651
    :cond_f
    iget v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    if-ltz v1, :cond_15

    .line 2652
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    .line 2655
    :cond_15
    const/4 v1, 0x0

    .line 2656
    .local v1, "indicatorTop":I
    const/4 v2, 0x0

    .line 2658
    .local v2, "indicatorBottom":I
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget v3, v3, Landroid/support/design/widget/TabLayout;->tabIndicatorGravity:I

    if-eqz v3, :cond_3f

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v3, v4, :cond_30

    if-eq v3, v5, :cond_2d

    const/4 v4, 0x3

    if-eq v3, v4, :cond_27

    goto :goto_4a

    .line 2672
    :cond_27
    const/4 v1, 0x0

    .line 2673
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v2

    .line 2674
    goto :goto_4a

    .line 2668
    :cond_2d
    const/4 v1, 0x0

    .line 2669
    move v2, v0

    .line 2670
    goto :goto_4a

    .line 2664
    :cond_30
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v1, v3, 0x2

    .line 2665
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    div-int/lit8 v2, v3, 0x2

    .line 2666
    goto :goto_4a

    .line 2660
    :cond_3f
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v3

    sub-int v1, v3, v0

    .line 2661
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v2

    .line 2662
    nop

    .line 2680
    :goto_4a
    iget v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    if-ltz v3, :cond_8c

    iget v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorRight:I

    if-le v4, v3, :cond_8c

    .line 2682
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5d

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    goto :goto_5f

    :cond_5d
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;

    .line 2683
    :goto_5f
    invoke-static {v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2685
    .local v3, "selectedIndicator":Landroid/graphics/drawable/Drawable;
    iget v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    iget v5, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorRight:I

    invoke-virtual {v3, v4, v1, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2686
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    if-eqz v4, :cond_89

    .line 2687
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ne v4, v5, :cond_80

    .line 2689
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    .line 2690
    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 2689
    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_89

    .line 2692
    :cond_80
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    invoke-static {v3, v4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 2695
    :cond_89
    :goto_89
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2699
    .end local v3    # "selectedIndicator":Landroid/graphics/drawable/Drawable;
    :cond_8c
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2700
    return-void
.end method

.method getIndicatorPosition()F
    .registers 3

    .line 2427
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedPosition:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectionOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 11
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 2502
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2504
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2507
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2508
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    .line 2509
    .local v0, "duration":J
    iget v2, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedPosition:I

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    .line 2511
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v4

    sub-float/2addr v3, v4

    long-to-float v4, v0

    mul-float v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 2509
    invoke-virtual {p0, v2, v3}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->animateIndicatorToPosition(II)V

    .line 2512
    .end local v0    # "duration":J
    goto :goto_31

    .line 2514
    :cond_2e
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->updateIndicatorPosition()V

    .line 2516
    :goto_31
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 2446
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2448
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_c

    .line 2451
    return-void

    .line 2454
    :cond_c
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7d

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->tabGravity:I

    if-ne v0, v1, :cond_7d

    .line 2455
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v0

    .line 2458
    .local v0, "count":I
    const/4 v1, 0x0

    .line 2459
    .local v1, "largestTabWidth":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, v0

    .local v3, "z":I
    :goto_20
    if-ge v2, v3, :cond_37

    .line 2460
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2461
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_34

    .line 2462
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2459
    .end local v4    # "child":Landroid/view/View;
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 2466
    .end local v2    # "i":I
    .end local v3    # "z":I
    :cond_37
    if-gtz v1, :cond_3a

    .line 2468
    return-void

    .line 2471
    :cond_3a
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v2

    .line 2472
    .local v2, "gutter":I
    const/4 v3, 0x0

    .line 2474
    .local v3, "remeasure":Z
    mul-int v4, v1, v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getMeasuredWidth()I

    move-result v5

    mul-int/lit8 v6, v2, 0x2

    sub-int/2addr v5, v6

    if-gt v4, v5, :cond_6f

    .line 2477
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4f
    if-ge v4, v0, :cond_6e

    .line 2478
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 2479
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v7, 0x0

    if-ne v6, v1, :cond_66

    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_6b

    .line 2480
    :cond_66
    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2481
    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2482
    const/4 v3, 0x1

    .line 2477
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .end local v4    # "i":I
    :cond_6e
    goto :goto_78

    .line 2488
    :cond_6f
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    const/4 v5, 0x0

    iput v5, v4, Landroid/support/design/widget/TabLayout;->tabGravity:I

    .line 2489
    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout;->updateTabViews(Z)V

    .line 2490
    const/4 v3, 0x1

    .line 2493
    :goto_78
    if-eqz v3, :cond_7d

    .line 2495
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2498
    .end local v0    # "count":I
    .end local v1    # "largestTabWidth":I
    .end local v2    # "gutter":I
    .end local v3    # "remeasure":Z
    :cond_7d
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 4
    .param p1, "layoutDirection"    # I

    .line 2432
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 2436
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_12

    .line 2437
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->layoutDirection:I

    if-eq v0, p1, :cond_12

    .line 2438
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->requestLayout()V

    .line 2439
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->layoutDirection:I

    .line 2442
    :cond_12
    return-void
.end method

.method setIndicatorPosition(II)V
    .registers 4
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 2557
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    if-ne p1, v0, :cond_8

    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorRight:I

    if-eq p2, v0, :cond_f

    .line 2559
    :cond_8
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    .line 2560
    iput p2, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorRight:I

    .line 2561
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2563
    :cond_f
    return-void
.end method

.method setIndicatorPositionFromTabPosition(IF)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .line 2417
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2418
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2421
    :cond_f
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 2422
    iput p2, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectionOffset:F

    .line 2423
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->updateIndicatorPosition()V

    .line 2424
    return-void
.end method

.method setSelectedIndicatorColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 2393
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_10

    .line 2394
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2395
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2397
    :cond_10
    return-void
.end method

.method setSelectedIndicatorHeight(I)V
    .registers 3
    .param p1, "height"    # I

    .line 2400
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    if-eq v0, p1, :cond_9

    .line 2401
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    .line 2402
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2404
    :cond_9
    return-void
.end method
