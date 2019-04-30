.class public Landroid/support/design/widget/AppBarLayout$BaseBehavior;
.super Landroid/support/design/widget/HeaderBehavior;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BaseBehavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;,
        Landroid/support/design/widget/AppBarLayout$BaseBehavior$BaseDragCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/support/design/widget/AppBarLayout;",
        ">",
        "Landroid/support/design/widget/HeaderBehavior<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final INVALID_POSITION:I = -0x1

.field private static final MAX_OFFSET_ANIMATION_DURATION:I = 0x258


# instance fields
.field private lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private lastStartedType:I

.field private offsetAnimator:Landroid/animation/ValueAnimator;

.field private offsetDelta:I

.field private offsetToChildIndexOnLayout:I

.field private offsetToChildIndexOnLayoutIsMinHeight:Z

.field private offsetToChildIndexOnLayoutPerc:F

.field private onDragCallback:Landroid/support/design/widget/AppBarLayout$BaseBehavior$BaseDragCallback;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 900
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    invoke-direct {p0}, Landroid/support/design/widget/HeaderBehavior;-><init>()V

    .line 893
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    .line 900
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 903
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/HeaderBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 893
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    .line 904
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/AppBarLayout$BaseBehavior;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/AppBarLayout$BaseBehavior;

    .line 869
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->offsetDelta:I

    return v0
.end method

.method private animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V
    .registers 9
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "offset"    # I
    .param p4, "velocity"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;IF)V"
        }
    .end annotation

    .line 1029
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "child":Landroid/support/design/widget/AppBarLayout;, "TT;"
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1032
    .local v0, "distance":I
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    .line 1033
    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-lez v1, :cond_1f

    .line 1034
    const/high16 v1, 0x447a0000    # 1000.0f

    int-to-float v2, v0

    div-float/2addr v2, p4

    mul-float v2, v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .local v1, "duration":I
    goto :goto_2e

    .line 1036
    .end local v1    # "duration":I
    :cond_1f
    int-to-float v1, v0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1037
    .local v1, "distanceRatio":F
    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v1

    const/high16 v3, 0x43160000    # 150.0f

    mul-float v2, v2, v3

    float-to-int v1, v2

    .line 1040
    .local v1, "duration":I
    :goto_2e
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->animateOffsetWithDuration(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;II)V

    .line 1041
    return-void
.end method

.method private animateOffsetWithDuration(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;II)V
    .registers 9
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "offset"    # I
    .param p4, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;II)V"
        }
    .end annotation

    .line 1048
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "child":Landroid/support/design/widget/AppBarLayout;, "TT;"
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    .line 1049
    .local v0, "currentOffset":I
    if-ne v0, p3, :cond_16

    .line 1050
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1051
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1053
    :cond_15
    return-void

    .line 1056
    :cond_16
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_33

    .line 1057
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    .line 1058
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Landroid/support/design/animation/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1059
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/support/design/widget/AppBarLayout$BaseBehavior$1;

    invoke-direct {v2, p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$BaseBehavior$1;-><init>(Landroid/support/design/widget/AppBarLayout$BaseBehavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_36

    .line 1068
    :cond_33
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1071
    :goto_36
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    const/16 v2, 0x258

    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1072
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput p3, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1073
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 1074
    return-void
.end method

.method private canScrollChildren(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;)Z
    .registers 6
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "directTargetChild"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .line 936
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "child":Landroid/support/design/widget/AppBarLayout;, "TT;"
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->hasScrollableChildren()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 937
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 936
    :goto_18
    return v0
.end method

.method private static checkFlag(II)Z
    .registers 3
    .param p0, "flags"    # I
    .param p1, "check"    # I

    .line 1143
    and-int v0, p0, p1

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private findFirstScrollingChild(Landroid/support/design/widget/CoordinatorLayout;)Landroid/view/View;
    .registers 6
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1455
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .local v1, "z":I
    :goto_5
    if-ge v0, v1, :cond_13

    .line 1456
    invoke-virtual {p1, v0}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1457
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v3, :cond_10

    .line 1458
    return-object v2

    .line 1455
    .end local v2    # "child":Landroid/view/View;
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1461
    .end local v0    # "i":I
    .end local v1    # "z":I
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getAppBarChildOnOffset(Landroid/support/design/widget/AppBarLayout;I)Landroid/view/View;
    .registers 7
    .param p0, "layout"    # Landroid/support/design/widget/AppBarLayout;
    .param p1, "offset"    # I

    .line 1443
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1444
    .local v0, "absOffset":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v2

    .local v2, "z":I
    :goto_9
    if-ge v1, v2, :cond_1f

    .line 1445
    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1446
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v0, v4, :cond_1c

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    if-gt v0, v4, :cond_1c

    .line 1447
    return-object v3

    .line 1444
    .end local v3    # "child":Landroid/view/View;
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1450
    .end local v1    # "i":I
    .end local v2    # "z":I
    :cond_1f
    const/4 v1, 0x0

    return-object v1
.end method

.method private getChildIndexOnOffset(Landroid/support/design/widget/AppBarLayout;I)I
    .registers 11
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .line 1077
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    .local p1, "abl":Landroid/support/design/widget/AppBarLayout;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_5
    if-ge v0, v1, :cond_35

    .line 1078
    invoke-virtual {p1, v0}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1079
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1080
    .local v3, "top":I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1082
    .local v4, "bottom":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 1083
    .local v5, "lp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v6

    const/16 v7, 0x20

    invoke-static {v6, v7}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->checkFlag(II)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 1085
    iget v6, v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    sub-int/2addr v3, v6

    .line 1086
    iget v6, v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v6

    .line 1089
    :cond_2b
    neg-int v6, p2

    if-gt v3, v6, :cond_32

    neg-int v6, p2

    if-lt v4, v6, :cond_32

    .line 1090
    return v0

    .line 1077
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "top":I
    .end local v4    # "bottom":I
    .end local v5    # "lp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1093
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_35
    const/4 v0, -0x1

    return v0
.end method

.method private interpolateOffset(Landroid/support/design/widget/AppBarLayout;I)I
    .registers 15
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .line 1328
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    .local p1, "layout":Landroid/support/design/widget/AppBarLayout;, "TT;"
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1330
    .local v0, "absOffset":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v2

    .local v2, "z":I
    :goto_9
    if-ge v1, v2, :cond_75

    .line 1331
    invoke-virtual {p1, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1332
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 1333
    .local v4, "childLp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v5

    .line 1335
    .local v5, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    if-lt v0, v6, :cond_72

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v6

    if-gt v0, v6, :cond_72

    .line 1336
    if-eqz v5, :cond_75

    .line 1337
    const/4 v6, 0x0

    .line 1338
    .local v6, "childScrollableHeight":I
    invoke-virtual {v4}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v7

    .line 1339
    .local v7, "flags":I
    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_44

    .line 1341
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v9, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    .line 1343
    and-int/lit8 v8, v7, 0x2

    if-eqz v8, :cond_44

    .line 1346
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v6, v8

    .line 1350
    :cond_44
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 1351
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v8

    sub-int/2addr v6, v8

    .line 1354
    :cond_4f
    if-lez v6, :cond_71

    .line 1355
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v8, v0, v8

    .line 1356
    .local v8, "offsetForView":I
    int-to-float v9, v6

    int-to-float v10, v8

    int-to-float v11, v6

    div-float/2addr v10, v11

    .line 1359
    invoke-interface {v5, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    mul-float v9, v9, v10

    .line 1357
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 1362
    .local v9, "interpolatedDiff":I
    invoke-static {p2}, Ljava/lang/Integer;->signum(I)I

    move-result v10

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v11

    add-int/2addr v11, v9

    mul-int v10, v10, v11

    return v10

    .line 1364
    .end local v6    # "childScrollableHeight":I
    .end local v7    # "flags":I
    .end local v8    # "offsetForView":I
    .end local v9    # "interpolatedDiff":I
    :cond_71
    goto :goto_75

    .line 1330
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childLp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .end local v5    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_72
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1372
    .end local v1    # "i":I
    .end local v2    # "z":I
    :cond_75
    :goto_75
    return p2
.end method

.method private shouldJumpElevationState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Z
    .registers 11
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;)Z"
        }
    .end annotation

    .line 1428
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "layout":Landroid/support/design/widget/AppBarLayout;, "TT;"
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->getDependents(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 1429
    .local v0, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_9
    const/4 v3, 0x0

    if-ge v1, v2, :cond_2f

    .line 1430
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1431
    .local v4, "dependency":Landroid/view/View;
    nop

    .line 1432
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1433
    .local v5, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v6

    .line 1435
    .local v6, "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    instance-of v7, v6, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;

    if-eqz v7, :cond_2c

    .line 1436
    move-object v7, v6

    check-cast v7, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;

    invoke-virtual {v7}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->getOverlayTop()I

    move-result v7

    if-eqz v7, :cond_2b

    const/4 v3, 0x1

    :cond_2b
    return v3

    .line 1429
    .end local v4    # "dependency":Landroid/view/View;
    .end local v5    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v6    # "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1439
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_2f
    return v3
.end method

.method private snapToChildIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V
    .registers 13
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;)V"
        }
    .end annotation

    .line 1097
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "abl":Landroid/support/design/widget/AppBarLayout;, "TT;"
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    .line 1098
    .local v0, "offset":I
    invoke-direct {p0, p2, v0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->getChildIndexOnOffset(Landroid/support/design/widget/AppBarLayout;I)I

    move-result v1

    .line 1099
    .local v1, "offsetChildIndex":I
    if-ltz v1, :cond_78

    .line 1100
    invoke-virtual {p2, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1101
    .local v2, "offsetChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 1102
    .local v3, "lp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v4

    .line 1104
    .local v4, "flags":I
    and-int/lit8 v5, v4, 0x11

    const/16 v6, 0x11

    if-ne v5, v6, :cond_78

    .line 1106
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    neg-int v5, v5

    .line 1107
    .local v5, "snapTop":I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    neg-int v6, v6

    .line 1109
    .local v6, "snapBottom":I
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v1, v7, :cond_35

    .line 1111
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v7

    add-int/2addr v6, v7

    .line 1114
    :cond_35
    const/4 v7, 0x2

    invoke-static {v4, v7}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->checkFlag(II)Z

    move-result v8

    if-eqz v8, :cond_42

    .line 1116
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v8

    add-int/2addr v6, v8

    goto :goto_53

    .line 1117
    :cond_42
    const/4 v8, 0x5

    invoke-static {v4, v8}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->checkFlag(II)Z

    move-result v8

    if-eqz v8, :cond_53

    .line 1121
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v8

    add-int/2addr v8, v6

    .line 1122
    .local v8, "seam":I
    if-ge v0, v8, :cond_52

    .line 1123
    move v5, v8

    goto :goto_53

    .line 1125
    :cond_52
    move v6, v8

    .line 1129
    .end local v8    # "seam":I
    :cond_53
    :goto_53
    const/16 v8, 0x20

    invoke-static {v4, v8}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->checkFlag(II)Z

    move-result v8

    if-eqz v8, :cond_61

    .line 1131
    iget v8, v3, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v8

    .line 1132
    iget v8, v3, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v8

    .line 1135
    :cond_61
    add-int v8, v6, v5

    div-int/2addr v8, v7

    if-ge v0, v8, :cond_68

    move v7, v6

    goto :goto_69

    :cond_68
    move v7, v5

    .line 1136
    .local v7, "newOffset":I
    :goto_69
    nop

    .line 1137
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v8

    neg-int v8, v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/support/v4/math/MathUtils;->clamp(III)I

    move-result v8

    const/4 v9, 0x0

    .line 1136
    invoke-direct {p0, p1, p2, v8, v9}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    .line 1140
    .end local v2    # "offsetChild":Landroid/view/View;
    .end local v3    # "lp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .end local v4    # "flags":I
    .end local v5    # "snapTop":I
    .end local v6    # "snapBottom":I
    .end local v7    # "newOffset":I
    :cond_78
    return-void
.end method

.method private stopNestedScrollIfNeeded(ILandroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V
    .registers 8
    .param p1, "dy"    # I
    .param p3, "target"    # Landroid/view/View;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 990
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "child":Landroid/support/design/widget/AppBarLayout;, "TT;"
    const/4 v0, 0x1

    if-ne p4, v0, :cond_17

    .line 991
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v1

    .line 992
    .local v1, "curOffset":I
    if-gez p1, :cond_b

    if-eqz v1, :cond_14

    :cond_b
    if-lez p1, :cond_17

    .line 993
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result v2

    neg-int v2, v2

    if-ne v1, v2, :cond_17

    .line 994
    :cond_14
    invoke-static {p3, v0}, Landroid/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;I)V

    .line 997
    .end local v1    # "curOffset":I
    :cond_17
    return-void
.end method

.method private updateAppBarLayoutDrawableState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIZ)V
    .registers 16
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "offset"    # I
    .param p4, "direction"    # I
    .param p5, "forceJump"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;IIZ)V"
        }
    .end annotation

    .line 1381
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "layout":Landroid/support/design/widget/AppBarLayout;, "TT;"
    invoke-static {p2, p3}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->getAppBarChildOnOffset(Landroid/support/design/widget/AppBarLayout;I)Landroid/view/View;

    move-result-object v0

    .line 1382
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_73

    .line 1383
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 1384
    .local v1, "childLp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v2

    .line 1385
    .local v2, "flags":I
    const/4 v3, 0x0

    .line 1387
    .local v3, "lifted":Z
    and-int/lit8 v4, v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_48

    .line 1388
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v4

    .line 1390
    .local v4, "minHeight":I
    if-lez p4, :cond_33

    and-int/lit8 v7, v2, 0xc

    if-eqz v7, :cond_33

    .line 1397
    neg-int v7, p3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v9

    sub-int/2addr v8, v9

    if-lt v7, v8, :cond_30

    const/4 v7, 0x1

    goto :goto_31

    :cond_30
    const/4 v7, 0x0

    :goto_31
    move v3, v7

    goto :goto_48

    .line 1398
    :cond_33
    and-int/lit8 v7, v2, 0x2

    if-eqz v7, :cond_48

    .line 1401
    neg-int v7, p3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v9

    sub-int/2addr v8, v9

    if-lt v7, v8, :cond_46

    const/4 v7, 0x1

    goto :goto_47

    :cond_46
    const/4 v7, 0x0

    :goto_47
    move v3, v7

    .line 1405
    .end local v4    # "minHeight":I
    :cond_48
    :goto_48
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->isLiftOnScroll()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 1408
    invoke-direct {p0, p1}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->findFirstScrollingChild(Landroid/support/design/widget/CoordinatorLayout;)Landroid/view/View;

    move-result-object v4

    .line 1409
    .local v4, "scrollingChild":Landroid/view/View;
    if-eqz v4, :cond_5c

    .line 1410
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v7

    if-lez v7, :cond_5b

    const/4 v5, 0x1

    :cond_5b
    move v3, v5

    .line 1414
    .end local v4    # "scrollingChild":Landroid/view/View;
    :cond_5c
    invoke-virtual {p2, v3}, Landroid/support/design/widget/AppBarLayout;->setLiftedState(Z)Z

    move-result v4

    .line 1416
    .local v4, "changed":Z
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_73

    if-nez p5, :cond_70

    if-eqz v4, :cond_73

    .line 1417
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->shouldJumpElevationState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 1420
    :cond_70
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->jumpDrawablesToCurrentState()V

    .line 1423
    .end local v1    # "childLp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .end local v2    # "flags":I
    .end local v3    # "lifted":Z
    .end local v4    # "changed":Z
    :cond_73
    return-void
.end method


# virtual methods
.method canDragView(Landroid/support/design/widget/AppBarLayout;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1234
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    .local p1, "view":Landroid/support/design/widget/AppBarLayout;, "TT;"
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->onDragCallback:Landroid/support/design/widget/AppBarLayout$BaseBehavior$BaseDragCallback;

    if-eqz v0, :cond_9

    .line 1236
    invoke-virtual {v0, p1}, Landroid/support/design/widget/AppBarLayout$BaseBehavior$BaseDragCallback;->canDrag(Landroid/support/design/widget/AppBarLayout;)Z

    move-result v0

    return v0

    .line 1240
    :cond_9
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x1

    if-eqz v0, :cond_26

    .line 1242
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1243
    .local v0, "scrollingView":Landroid/view/View;
    if-eqz v0, :cond_24

    .line 1244
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v2, -0x1

    .line 1245
    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    .line 1243
    :goto_25
    return v1

    .line 1248
    .end local v0    # "scrollingView":Landroid/view/View;
    :cond_26
    return v1
.end method

.method bridge synthetic canDragView(Landroid/view/View;)Z
    .registers 2

    .line 869
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->canDragView(Landroid/support/design/widget/AppBarLayout;)Z

    move-result p1

    return p1
.end method

.method getMaxDragOffset(Landroid/support/design/widget/AppBarLayout;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1260
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    .local p1, "view":Landroid/support/design/widget/AppBarLayout;, "TT;"
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method bridge synthetic getMaxDragOffset(Landroid/view/View;)I
    .registers 2

    .line 869
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->getMaxDragOffset(Landroid/support/design/widget/AppBarLayout;)I

    move-result p1

    return p1
.end method

.method getScrollRangeForDragFling(Landroid/support/design/widget/AppBarLayout;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1265
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    .local p1, "view":Landroid/support/design/widget/AppBarLayout;, "TT;"
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    return v0
.end method

.method bridge synthetic getScrollRangeForDragFling(Landroid/view/View;)I
    .registers 2

    .line 869
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->getScrollRangeForDragFling(Landroid/support/design/widget/AppBarLayout;)I

    move-result p1

    return p1
.end method

.method getTopBottomOffsetForScrollingSibling()I
    .registers 3

    .line 1466
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->offsetDelta:I

    add-int/2addr v0, v1

    return v0
.end method

.method isOffsetAnimatorRunning()Z
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 1324
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V
    .registers 3
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;)V"
        }
    .end annotation

    .line 1255
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "layout":Landroid/support/design/widget/AppBarLayout;, "TT;"
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->snapToChildIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    .line 1256
    return-void
.end method

.method bridge synthetic onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .registers 3

    .line 869
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    return-void
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)Z
    .registers 13
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;I)Z"
        }
    .end annotation

    .line 1177
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "abl":Landroid/support/design/widget/AppBarLayout;, "TT;"
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/HeaderBehavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v0

    .line 1183
    .local v0, "handled":Z
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getPendingAction()I

    move-result v1

    .line 1184
    .local v1, "pendingAction":I
    iget v2, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    const/4 v3, 0x0

    if-ltz v2, :cond_3b

    and-int/lit8 v4, v1, 0x8

    if-nez v4, :cond_3b

    .line 1185
    invoke-virtual {p2, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1186
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    neg-int v4, v4

    .line 1187
    .local v4, "offset":I
    iget-boolean v5, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayoutIsMinHeight:Z

    if-eqz v5, :cond_29

    .line 1188
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    goto :goto_37

    .line 1190
    :cond_29
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayoutPerc:F

    mul-float v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    .line 1192
    :goto_37
    invoke-virtual {p0, p1, p2, v4}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "offset":I
    goto :goto_67

    .line 1193
    :cond_3b
    if-eqz v1, :cond_67

    .line 1194
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_43

    const/4 v2, 0x1

    goto :goto_44

    :cond_43
    const/4 v2, 0x0

    .line 1195
    .local v2, "animate":Z
    :goto_44
    and-int/lit8 v4, v1, 0x2

    const/4 v5, 0x0

    if-eqz v4, :cond_58

    .line 1196
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v4

    neg-int v4, v4

    .line 1197
    .restart local v4    # "offset":I
    if-eqz v2, :cond_54

    .line 1198
    invoke-direct {p0, p1, p2, v4, v5}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    goto :goto_66

    .line 1200
    :cond_54
    invoke-virtual {p0, p1, p2, v4}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_66

    .line 1202
    .end local v4    # "offset":I
    :cond_58
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_66

    .line 1203
    if-eqz v2, :cond_62

    .line 1204
    invoke-direct {p0, p1, p2, v3, v5}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    goto :goto_68

    .line 1206
    :cond_62
    invoke-virtual {p0, p1, p2, v3}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_68

    .line 1202
    :cond_66
    :goto_66
    goto :goto_68

    .line 1193
    .end local v2    # "animate":Z
    :cond_67
    :goto_67
    nop

    .line 1212
    :goto_68
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->resetPendingAction()V

    .line 1213
    const/4 v2, -0x1

    iput v2, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    .line 1217
    nop

    .line 1218
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    move-result v2

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v4

    neg-int v4, v4

    invoke-static {v2, v4, v3}, Landroid/support/v4/math/MathUtils;->clamp(III)I

    move-result v2

    .line 1217
    invoke-virtual {p0, v2}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->setTopAndBottomOffset(I)Z

    .line 1223
    nop

    .line 1224
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1223
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->updateAppBarLayoutDrawableState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIZ)V

    .line 1227
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/support/design/widget/AppBarLayout;->dispatchOffsetUpdates(I)V

    .line 1229
    return v0
.end method

.method public bridge synthetic onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 4

    .line 869
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)Z

    move-result p1

    return p1
.end method

.method public onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIII)Z
    .registers 15
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "parentWidthMeasureSpec"    # I
    .param p4, "widthUsed"    # I
    .param p5, "parentHeightMeasureSpec"    # I
    .param p6, "heightUsed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;IIII)Z"
        }
    .end annotation

    .line 1154
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "child":Landroid/support/design/widget/AppBarLayout;, "TT;"
    nop

    .line 1155
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1156
    .local v0, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->height:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1c

    .line 1161
    nop

    .line 1165
    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1161
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Landroid/support/design/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 1167
    const/4 v1, 0x1

    return v1

    .line 1171
    :cond_1c
    invoke-super/range {p0 .. p6}, Landroid/support/design/widget/HeaderBehavior;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v1

    return v1
.end method

.method public bridge synthetic onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .registers 14

    .line 869
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIII)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;II[II)V
    .registers 18
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "consumed"    # [I
    .param p7, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    .line 949
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "child":Landroid/support/design/widget/AppBarLayout;, "TT;"
    move v6, p5

    if-eqz v6, :cond_38

    .line 952
    if-gez v6, :cond_12

    .line 954
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v0, v0

    .line 955
    .local v0, "min":I
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v1

    add-int/2addr v1, v0

    move v7, v0

    move v8, v1

    .local v1, "max":I
    goto :goto_1a

    .line 958
    .end local v0    # "min":I
    .end local v1    # "max":I
    :cond_12
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v0

    neg-int v0, v0

    .line 959
    .restart local v0    # "min":I
    const/4 v1, 0x0

    move v7, v0

    move v8, v1

    .line 961
    .end local v0    # "min":I
    .local v7, "min":I
    .local v8, "max":I
    :goto_1a
    if-eq v7, v8, :cond_32

    .line 962
    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move v4, v7

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    aput v0, p6, v9

    .line 963
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move/from16 v3, p7

    invoke-direct {p0, p5, p2, p3, v3}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->stopNestedScrollIfNeeded(ILandroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V

    goto :goto_3d

    .line 961
    :cond_32
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move/from16 v3, p7

    goto :goto_3d

    .line 949
    .end local v7    # "min":I
    .end local v8    # "max":I
    :cond_38
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move/from16 v3, p7

    .line 966
    :goto_3d
    return-void
.end method

.method public bridge synthetic onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .registers 16

    .line 869
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;IIIII)V
    .registers 16
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dxConsumed"    # I
    .param p5, "dyConsumed"    # I
    .param p6, "dxUnconsumed"    # I
    .param p7, "dyUnconsumed"    # I
    .param p8, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "IIIII)V"
        }
    .end annotation

    .line 978
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "child":Landroid/support/design/widget/AppBarLayout;, "TT;"
    if-gez p7, :cond_12

    .line 981
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result v0

    neg-int v5, v0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p7

    invoke-virtual/range {v1 .. v6}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    .line 982
    invoke-direct {p0, p7, p2, p3, p8}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->stopNestedScrollIfNeeded(ILandroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V

    .line 984
    :cond_12
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->isLiftOnScroll()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 985
    invoke-virtual {p3}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    invoke-virtual {p2, v0}, Landroid/support/design/widget/AppBarLayout;->setLiftedState(Z)Z

    .line 987
    :cond_24
    return-void
.end method

.method public bridge synthetic onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V
    .registers 18

    .line 869
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;IIIII)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/os/Parcelable;)V
    .registers 6
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "state"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .line 1495
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "appBarLayout":Landroid/support/design/widget/AppBarLayout;, "TT;"
    instance-of v0, p3, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;

    if-eqz v0, :cond_1b

    .line 1496
    move-object v0, p3

    check-cast v0, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;

    .line 1497
    .local v0, "ss":Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;
    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, p1, p2, v1}, Landroid/support/design/widget/HeaderBehavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 1498
    iget v1, v0, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildIndex:I

    iput v1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    .line 1499
    iget v1, v0, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildPercentageShown:F

    iput v1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayoutPerc:F

    .line 1500
    iget-boolean v1, v0, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    iput-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayoutIsMinHeight:Z

    .line 1501
    .end local v0    # "ss":Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;
    goto :goto_21

    .line 1502
    :cond_1b
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/HeaderBehavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 1503
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->offsetToChildIndexOnLayout:I

    .line 1505
    :goto_21
    return-void
.end method

.method public bridge synthetic onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .registers 4

    .line 869
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Landroid/os/Parcelable;
    .registers 12
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .line 1471
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "abl":Landroid/support/design/widget/AppBarLayout;, "TT;"
    invoke-super {p0, p1, p2}, Landroid/support/design/widget/HeaderBehavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1472
    .local v0, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    move-result v1

    .line 1475
    .local v1, "offset":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v3

    .local v3, "count":I
    :goto_d
    if-ge v2, v3, :cond_46

    .line 1476
    invoke-virtual {p2, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1477
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v1

    .line 1479
    .local v5, "visBottom":I
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v6, v1

    if-gtz v6, :cond_43

    if-ltz v5, :cond_43

    .line 1480
    new-instance v6, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;

    invoke-direct {v6, v0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1481
    .local v6, "ss":Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;
    iput v2, v6, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildIndex:I

    .line 1482
    nop

    .line 1483
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v7

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v8

    add-int/2addr v7, v8

    if-ne v5, v7, :cond_36

    const/4 v7, 0x1

    goto :goto_37

    :cond_36
    const/4 v7, 0x0

    :goto_37
    iput-boolean v7, v6, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    .line 1484
    int-to-float v7, v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, v6, Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildPercentageShown:F

    .line 1485
    return-object v6

    .line 1475
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "visBottom":I
    .end local v6    # "ss":Landroid/support/design/widget/AppBarLayout$BaseBehavior$SavedState;
    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1490
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_46
    return-object v0
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .registers 3

    .line 869
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .registers 9
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "directTargetChild"    # Landroid/view/View;
    .param p4, "target"    # Landroid/view/View;
    .param p5, "nestedScrollAxes"    # I
    .param p6, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    .line 916
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "child":Landroid/support/design/widget/AppBarLayout;, "TT;"
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_12

    .line 918
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->isLiftOnScroll()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->canScrollChildren(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 920
    .local v0, "started":Z
    :goto_13
    if-eqz v0, :cond_1c

    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1c

    .line 922
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 926
    :cond_1c
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 929
    iput p6, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->lastStartedType:I

    .line 931
    return v0
.end method

.method public bridge synthetic onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .registers 14

    .line 869
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V
    .registers 6
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 1006
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "abl":Landroid/support/design/widget/AppBarLayout;, "TT;"
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->lastStartedType:I

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    if-ne p4, v0, :cond_a

    .line 1008
    :cond_7
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->snapToChildIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    .line 1012
    :cond_a
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 1013
    return-void
.end method

.method public bridge synthetic onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    .line 869
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public setDragCallback(Landroid/support/design/widget/AppBarLayout$BaseBehavior$BaseDragCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/support/design/widget/AppBarLayout$BaseBehavior$BaseDragCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1021
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    iput-object p1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->onDragCallback:Landroid/support/design/widget/AppBarLayout$BaseBehavior$BaseDragCallback;

    .line 1022
    return-void
.end method

.method setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;III)I
    .registers 16
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "newOffset"    # I
    .param p4, "minOffset"    # I
    .param p5, "maxOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;III)I"
        }
    .end annotation

    .line 1275
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    .local p2, "appBarLayout":Landroid/support/design/widget/AppBarLayout;, "TT;"
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    .line 1276
    .local v0, "curOffset":I
    const/4 v1, 0x0

    .line 1278
    .local v1, "consumed":I
    if-eqz p4, :cond_4b

    if-lt v0, p4, :cond_4b

    if-gt v0, p5, :cond_4b

    .line 1281
    invoke-static {p3, p4, p5}, Landroid/support/v4/math/MathUtils;->clamp(III)I

    move-result p3

    .line 1282
    if-eq v0, p3, :cond_4e

    .line 1283
    nop

    .line 1284
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->hasChildWithInterpolator()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1285
    invoke-direct {p0, p2, p3}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->interpolateOffset(Landroid/support/design/widget/AppBarLayout;I)I

    move-result v2

    goto :goto_1e

    :cond_1d
    move v2, p3

    :goto_1e
    move v8, v2

    .line 1288
    .local v8, "interpolatedOffset":I
    invoke-virtual {p0, v8}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->setTopAndBottomOffset(I)Z

    move-result v9

    .line 1291
    .local v9, "offsetChanged":Z
    sub-int v1, v0, p3

    .line 1293
    sub-int v2, p3, v8

    iput v2, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->offsetDelta:I

    .line 1295
    if-nez v9, :cond_34

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->hasChildWithInterpolator()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1300
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    .line 1304
    :cond_34
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->getTopAndBottomOffset()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/support/design/widget/AppBarLayout;->dispatchOffsetUpdates(I)V

    .line 1307
    if-ge p3, v0, :cond_40

    const/4 v2, -0x1

    const/4 v6, -0x1

    goto :goto_42

    :cond_40
    const/4 v2, 0x1

    const/4 v6, 0x1

    :goto_42
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v2 .. v7}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->updateAppBarLayoutDrawableState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIZ)V

    .line 1313
    .end local v8    # "interpolatedOffset":I
    .end local v9    # "offsetChanged":Z
    goto :goto_4e

    .line 1316
    :cond_4b
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->offsetDelta:I

    .line 1319
    :cond_4e
    :goto_4e
    return v1
.end method

.method bridge synthetic setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .registers 12

    .line 869
    .local p0, "this":Landroid/support/design/widget/AppBarLayout$BaseBehavior;, "Landroid/support/design/widget/AppBarLayout$BaseBehavior<TT;>;"
    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;III)I

    move-result p1

    return p1
.end method
