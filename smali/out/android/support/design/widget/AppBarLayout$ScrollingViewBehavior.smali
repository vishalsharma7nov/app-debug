.class public Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;
.super Landroid/support/design/widget/HeaderScrollingViewBehavior;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollingViewBehavior"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1558
    invoke-direct {p0}, Landroid/support/design/widget/HeaderScrollingViewBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1561
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/HeaderScrollingViewBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1563
    sget-object v0, Landroid/support/design/R$styleable;->ScrollingViewBehavior_Layout:[I

    .line 1564
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1565
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/design/R$styleable;->ScrollingViewBehavior_Layout_behavior_overlapTop:I

    .line 1566
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 1565
    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->setOverlayTop(I)V

    .line 1567
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1568
    return-void
.end method

.method private static getAppBarLayoutOffset(Landroid/support/design/widget/AppBarLayout;)I
    .registers 3
    .param p0, "abl"    # Landroid/support/design/widget/AppBarLayout;

    .line 1643
    nop

    .line 1644
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1645
    .local v0, "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    instance-of v1, v0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;

    if-eqz v1, :cond_17

    .line 1646
    move-object v1, v0

    check-cast v1, Landroid/support/design/widget/AppBarLayout$BaseBehavior;

    invoke-virtual {v1}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v1

    return v1

    .line 1648
    :cond_17
    const/4 v1, 0x0

    return v1
.end method

.method private offsetChildAsNeeded(Landroid/view/View;Landroid/view/View;)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dependency"    # Landroid/view/View;

    .line 1605
    nop

    .line 1606
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1607
    .local v0, "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    instance-of v1, v0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;

    if-eqz v1, :cond_2e

    .line 1610
    move-object v1, v0

    check-cast v1, Landroid/support/design/widget/AppBarLayout$BaseBehavior;

    .line 1611
    .local v1, "ablBehavior":Landroid/support/design/widget/AppBarLayout$BaseBehavior;
    nop

    .line 1613
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1614
    invoke-static {v1}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->access$000(Landroid/support/design/widget/AppBarLayout$BaseBehavior;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1615
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->getVerticalLayoutGap()I

    move-result v3

    add-int/2addr v2, v3

    .line 1616
    invoke-virtual {p0, p2}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->getOverlapPixelsForOffset(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 1611
    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1618
    .end local v1    # "ablBehavior":Landroid/support/design/widget/AppBarLayout$BaseBehavior;
    :cond_2e
    return-void
.end method

.method private updateLiftedStateIfNeeded(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dependency"    # Landroid/view/View;

    .line 1672
    instance-of v0, p2, Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_19

    .line 1673
    move-object v0, p2

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    .line 1674
    .local v0, "appBarLayout":Landroid/support/design/widget/AppBarLayout;
    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout;->isLiftOnScroll()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1675
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-lez v1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->setLiftedState(Z)Z

    .line 1678
    .end local v0    # "appBarLayout":Landroid/support/design/widget/AppBarLayout;
    :cond_19
    return-void
.end method


# virtual methods
.method findFirstDependency(Ljava/util/List;)Landroid/support/design/widget/AppBarLayout;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/support/design/widget/AppBarLayout;"
        }
    .end annotation

    .line 1653
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "z":I
    :goto_5
    if-ge v0, v1, :cond_18

    .line 1654
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1655
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/support/design/widget/AppBarLayout;

    if-eqz v3, :cond_15

    .line 1656
    move-object v3, v2

    check-cast v3, Landroid/support/design/widget/AppBarLayout;

    return-object v3

    .line 1653
    .end local v2    # "view":Landroid/view/View;
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1659
    .end local v0    # "i":I
    .end local v1    # "z":I
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method bridge synthetic findFirstDependency(Ljava/util/List;)Landroid/view/View;
    .registers 2

    .line 1556
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/support/design/widget/AppBarLayout;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getLeftAndRightOffset()I
    .registers 2

    .line 1556
    invoke-super {p0}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->getLeftAndRightOffset()I

    move-result v0

    return v0
.end method

.method getOverlapRatioForOffset(Landroid/view/View;)F
    .registers 10
    .param p1, "header"    # Landroid/view/View;

    .line 1622
    instance-of v0, p1, Landroid/support/design/widget/AppBarLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 1623
    move-object v0, p1

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    .line 1624
    .local v0, "abl":Landroid/support/design/widget/AppBarLayout;
    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    .line 1625
    .local v2, "totalScrollRange":I
    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v3

    .line 1626
    .local v3, "preScrollDown":I
    invoke-static {v0}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->getAppBarLayoutOffset(Landroid/support/design/widget/AppBarLayout;)I

    move-result v4

    .line 1628
    .local v4, "offset":I
    if-eqz v3, :cond_1b

    add-int v5, v2, v4

    if-gt v5, v3, :cond_1b

    .line 1630
    return v1

    .line 1632
    :cond_1b
    sub-int v5, v2, v3

    .line 1633
    .local v5, "availScrollRange":I
    if-eqz v5, :cond_26

    .line 1635
    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v6, v4

    int-to-float v7, v5

    div-float/2addr v6, v7

    add-float/2addr v6, v1

    return v6

    .line 1639
    .end local v0    # "abl":Landroid/support/design/widget/AppBarLayout;
    .end local v2    # "totalScrollRange":I
    .end local v3    # "preScrollDown":I
    .end local v4    # "offset":I
    .end local v5    # "availScrollRange":I
    :cond_26
    return v1
.end method

.method getScrollRange(Landroid/view/View;)I
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 1664
    instance-of v0, p1, Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_c

    .line 1665
    move-object v0, p1

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    return v0

    .line 1667
    :cond_c
    invoke-super {p0, p1}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->getScrollRange(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTopAndBottomOffset()I
    .registers 2

    .line 1556
    invoke-super {p0}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->getTopAndBottomOffset()I

    move-result v0

    return v0
.end method

.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 5
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "dependency"    # Landroid/view/View;

    .line 1573
    instance-of v0, p3, Landroid/support/design/widget/AppBarLayout;

    return v0
.end method

.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 5
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "dependency"    # Landroid/view/View;

    .line 1578
    invoke-direct {p0, p2, p3}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->offsetChildAsNeeded(Landroid/view/View;Landroid/view/View;)V

    .line 1579
    invoke-direct {p0, p2, p3}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->updateLiftedStateIfNeeded(Landroid/view/View;Landroid/view/View;)V

    .line 1580
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 4

    .line 1556
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .registers 7

    .line 1556
    invoke-super/range {p0 .. p6}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result p1

    return p1
.end method

.method public onRequestChildRectangleOnScreen(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 10
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "rectangle"    # Landroid/graphics/Rect;
    .param p4, "immediate"    # Z

    .line 1586
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/support/design/widget/AppBarLayout;

    move-result-object v0

    .line 1587
    .local v0, "header":Landroid/support/design/widget/AppBarLayout;
    const/4 v1, 0x0

    if-eqz v0, :cond_30

    .line 1589
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p3, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1591
    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->tempRect1:Landroid/graphics/Rect;

    .line 1592
    .local v2, "parentRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1594
    invoke-virtual {v2, p3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 1597
    xor-int/lit8 v3, p4, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZ)V

    .line 1598
    const/4 v1, 0x1

    return v1

    .line 1601
    .end local v2    # "parentRect":Landroid/graphics/Rect;
    :cond_30
    return v1
.end method

.method public bridge synthetic setLeftAndRightOffset(I)Z
    .registers 2

    .line 1556
    invoke-super {p0, p1}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->setLeftAndRightOffset(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setTopAndBottomOffset(I)Z
    .registers 2

    .line 1556
    invoke-super {p0, p1}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->setTopAndBottomOffset(I)Z

    move-result p1

    return p1
.end method
