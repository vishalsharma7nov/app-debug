.class public Landroid/support/design/widget/BottomSheetBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/BottomSheetBehavior$SavedState;,
        Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;,
        Landroid/support/design/widget/BottomSheetBehavior$State;,
        Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final HIDE_FRICTION:F = 0.1f

.field private static final HIDE_THRESHOLD:F = 0.5f

.field public static final PEEK_HEIGHT_AUTO:I = -0x1

.field public static final STATE_COLLAPSED:I = 0x4

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_EXPANDED:I = 0x3

.field public static final STATE_HALF_EXPANDED:I = 0x6

.field public static final STATE_HIDDEN:I = 0x5

.field public static final STATE_SETTLING:I = 0x2


# instance fields
.field activePointerId:I

.field private callback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

.field collapsedOffset:I

.field private final dragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

.field private fitToContents:Z

.field fitToContentsOffset:I

.field halfExpandedOffset:I

.field hideable:Z

.field private ignoreEvents:Z

.field private importantForAccessibilityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private initialY:I

.field private lastNestedScrollDy:I

.field private lastPeekHeight:I

.field private maximumVelocity:F

.field private nestedScrolled:Z

.field nestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field parentHeight:I

.field private peekHeight:I

.field private peekHeightAuto:Z

.field private peekHeightMin:I

.field private skipCollapsed:Z

.field state:I

.field touchingScrollingChild:Z

.field private velocityTracker:Landroid/view/VelocityTracker;

.field viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 179
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContents:Z

    .line 150
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    .line 765
    new-instance v0, Landroid/support/design/widget/BottomSheetBehavior$2;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BottomSheetBehavior$2;-><init>(Landroid/support/design/widget/BottomSheetBehavior;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->dragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 188
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContents:Z

    .line 150
    const/4 v1, 0x4

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    .line 765
    new-instance v1, Landroid/support/design/widget/BottomSheetBehavior$2;

    invoke-direct {v1, p0}, Landroid/support/design/widget/BottomSheetBehavior$2;-><init>(Landroid/support/design/widget/BottomSheetBehavior;)V

    iput-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->dragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 189
    sget-object v1, Landroid/support/design/R$styleable;->BottomSheetBehavior_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 190
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Landroid/support/design/R$styleable;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 191
    .local v2, "value":Landroid/util/TypedValue;
    const/4 v3, -0x1

    if-eqz v2, :cond_29

    iget v4, v2, Landroid/util/TypedValue;->data:I

    if-ne v4, v3, :cond_29

    .line 192
    iget v3, v2, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setPeekHeight(I)V

    goto :goto_32

    .line 194
    :cond_29
    sget v4, Landroid/support/design/R$styleable;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    .line 195
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 194
    invoke-virtual {p0, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setPeekHeight(I)V

    .line 198
    :goto_32
    sget v3, Landroid/support/design/R$styleable;->BottomSheetBehavior_Layout_behavior_hideable:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setHideable(Z)V

    .line 199
    sget v3, Landroid/support/design/R$styleable;->BottomSheetBehavior_Layout_behavior_fitToContents:I

    .line 200
    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 199
    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setFitToContents(Z)V

    .line 201
    sget v0, Landroid/support/design/R$styleable;->BottomSheetBehavior_Layout_behavior_skipCollapsed:I

    .line 202
    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 201
    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setSkipCollapsed(Z)V

    .line 203
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 204
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 205
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->maximumVelocity:F

    .line 206
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/BottomSheetBehavior;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/BottomSheetBehavior;

    .line 55
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContents:Z

    return v0
.end method

.method static synthetic access$100(Landroid/support/design/widget/BottomSheetBehavior;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/BottomSheetBehavior;

    .line 55
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->getExpandedOffset()I

    move-result v0

    return v0
.end method

.method private calculateCollapsedOffset()V
    .registers 3

    .line 683
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContents:Z

    if-eqz v0, :cond_12

    .line 684
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->lastPeekHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContentsOffset:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    goto :goto_19

    .line 686
    :cond_12
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->lastPeekHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    .line 688
    :goto_19
    return-void
.end method

.method public static from(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)",
            "Landroid/support/design/widget/BottomSheetBehavior<",
            "TV;>;"
        }
    .end annotation

    .line 981
    .local p0, "view":Landroid/view/View;, "TV;"
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 982
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v1, :cond_1f

    .line 985
    move-object v1, v0

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    .line 986
    .local v1, "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    instance-of v2, v1, Landroid/support/design/widget/BottomSheetBehavior;

    if-eqz v2, :cond_17

    .line 989
    move-object v2, v1

    check-cast v2, Landroid/support/design/widget/BottomSheetBehavior;

    return-object v2

    .line 987
    :cond_17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The view is not associated with BottomSheetBehavior"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 983
    .end local v1    # "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :cond_1f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The view is not a child of CoordinatorLayout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getExpandedOffset()I
    .registers 2

    .line 736
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContents:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContentsOffset:I

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private getYVelocity()F
    .registers 4

    .line 728
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    .line 729
    const/4 v0, 0x0

    return v0

    .line 731
    :cond_6
    const/16 v1, 0x3e8

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->maximumVelocity:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 732
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->activePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    return v0
.end method

.method private reset()V
    .registers 2

    .line 691
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->activePointerId:I

    .line 692
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_d

    .line 693
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 694
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 696
    :cond_d
    return-void
.end method

.method private updateImportantForAccessibility(Z)V
    .registers 10
    .param p1, "expanded"    # Z

    .line 993
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    .line 994
    return-void

    .line 997
    :cond_5
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 998
    .local v0, "viewParent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/support/design/widget/CoordinatorLayout;

    if-nez v1, :cond_14

    .line 999
    return-void

    .line 1002
    :cond_14
    move-object v1, v0

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout;

    .line 1003
    .local v1, "parent":Landroid/support/design/widget/CoordinatorLayout;
    invoke-virtual {v1}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v2

    .line 1004
    .local v2, "childCount":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_30

    if-eqz p1, :cond_30

    .line 1005
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    if-nez v3, :cond_2f

    .line 1006
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    goto :goto_30

    .line 1009
    :cond_2f
    return-void

    .line 1013
    :cond_30
    :goto_30
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_31
    if-ge v3, v2, :cond_74

    .line 1014
    invoke-virtual {v1, v3}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1015
    .local v5, "child":Landroid/view/View;
    iget-object v6, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_40

    .line 1016
    goto :goto_71

    .line 1019
    :cond_40
    if-nez p1, :cond_5c

    .line 1020
    iget-object v6, p0, Landroid/support/design/widget/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    if-eqz v6, :cond_71

    .line 1021
    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 1023
    iget-object v6, p0, Landroid/support/design/widget/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_71

    .line 1027
    :cond_5c
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v4, :cond_6d

    .line 1028
    iget-object v6, p0, Landroid/support/design/widget/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    invoke-virtual {v5}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    :cond_6d
    const/4 v6, 0x4

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1013
    .end local v5    # "child":Landroid/view/View;
    :cond_71
    :goto_71
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 1036
    .end local v3    # "i":I
    :cond_74
    if-nez p1, :cond_79

    .line 1037
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->importantForAccessibilityMap:Ljava/util/Map;

    .line 1039
    :cond_79
    return-void
.end method


# virtual methods
.method dispatchOnSlide(I)V
    .registers 7
    .param p1, "top"    # I

    .line 892
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 893
    .local v0, "bottomSheet":Landroid/view/View;
    if-eqz v0, :cond_2b

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->callback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    if-eqz v1, :cond_2b

    .line 894
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    if-le p1, v2, :cond_1e

    .line 895
    sub-int v3, v2, p1

    int-to-float v3, v3

    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    sub-int/2addr v4, v2

    int-to-float v2, v4

    div-float/2addr v3, v2

    invoke-virtual {v1, v0, v3}, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;->onSlide(Landroid/view/View;F)V

    goto :goto_2b

    .line 898
    :cond_1e
    sub-int v3, v2, p1

    int-to-float v3, v3

    .line 899
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->getExpandedOffset()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 898
    invoke-virtual {v1, v0, v3}, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;->onSlide(Landroid/view/View;F)V

    .line 902
    :cond_2b
    :goto_2b
    return-void
.end method

.method findScrollingChild(Landroid/view/View;)Landroid/view/View;
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 712
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 713
    return-object p1

    .line 715
    :cond_7
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_23

    .line 716
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 717
    .local v0, "group":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .local v2, "count":I
    :goto_13
    if-ge v1, v2, :cond_23

    .line 718
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/design/widget/BottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 719
    .local v3, "scrollingChild":Landroid/view/View;
    if-eqz v3, :cond_20

    .line 720
    return-object v3

    .line 717
    .end local v3    # "scrollingChild":Landroid/view/View;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 724
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_23
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPeekHeight()I
    .registers 2

    .line 559
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeightAuto:Z

    if-eqz v0, :cond_6

    const/4 v0, -0x1

    goto :goto_8

    :cond_6
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeight:I

    :goto_8
    return v0
.end method

.method getPeekHeightMin()I
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 906
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeightMin:I

    return v0
.end method

.method public getSkipCollapsed()Z
    .registers 2

    .line 601
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->skipCollapsed:Z

    return v0
.end method

.method public final getState()I
    .registers 2

    .line 662
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    return v0
.end method

.method public isFitToContents()Z
    .registers 2

    .line 498
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContents:Z

    return v0
.end method

.method public isHideable()Z
    .registers 2

    .line 579
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->hideable:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 271
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_b

    .line 272
    iput-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->ignoreEvents:Z

    .line 273
    return v1

    .line 275
    :cond_b
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 277
    .local v0, "action":I
    if-nez v0, :cond_14

    .line 278
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->reset()V

    .line 280
    :cond_14
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_1e

    .line 281
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 283
    :cond_1e
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 284
    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v0, :cond_38

    if-eq v0, v2, :cond_2d

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2d

    goto :goto_78

    .line 287
    :cond_2d
    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->touchingScrollingChild:Z

    .line 288
    iput v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->activePointerId:I

    .line 290
    iget-boolean v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->ignoreEvents:Z

    if-eqz v4, :cond_78

    .line 291
    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->ignoreEvents:Z

    .line 292
    return v1

    .line 296
    :cond_38
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    .line 297
    .local v5, "initialX":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Landroid/support/design/widget/BottomSheetBehavior;->initialY:I

    .line 298
    iget-object v6, p0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_4f

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    goto :goto_50

    :cond_4f
    move-object v6, v3

    .line 299
    .local v6, "scroll":Landroid/view/View;
    :goto_50
    if-eqz v6, :cond_66

    iget v7, p0, Landroid/support/design/widget/BottomSheetBehavior;->initialY:I

    invoke-virtual {p1, v6, v5, v7}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_66

    .line 300
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    invoke-virtual {p3, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Landroid/support/design/widget/BottomSheetBehavior;->activePointerId:I

    .line 301
    iput-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->touchingScrollingChild:Z

    .line 303
    :cond_66
    iget v7, p0, Landroid/support/design/widget/BottomSheetBehavior;->activePointerId:I

    if-ne v7, v4, :cond_74

    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->initialY:I

    .line 305
    invoke-virtual {p1, p2, v5, v4}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v4

    if-nez v4, :cond_74

    const/4 v4, 0x1

    goto :goto_75

    :cond_74
    const/4 v4, 0x0

    :goto_75
    iput-boolean v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->ignoreEvents:Z

    .line 306
    nop

    .line 309
    .end local v5    # "initialX":I
    .end local v6    # "scroll":Landroid/view/View;
    :cond_78
    :goto_78
    iget-boolean v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->ignoreEvents:Z

    if-nez v4, :cond_87

    iget-object v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz v4, :cond_87

    .line 311
    invoke-virtual {v4, p3}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 312
    return v2

    .line 317
    :cond_87
    iget-object v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_91

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 318
    .local v3, "scroll":Landroid/view/View;
    :cond_91
    const/4 v4, 0x2

    if-ne v0, v4, :cond_cb

    if-eqz v3, :cond_cb

    iget-boolean v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->ignoreEvents:Z

    if-nez v4, :cond_cb

    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    if-eq v4, v2, :cond_cb

    .line 322
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v4

    if-nez v4, :cond_cb

    iget-object v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz v4, :cond_cb

    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->initialY:I

    int-to-float v4, v4

    .line 324
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v5}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_cb

    const/4 v1, 0x1

    goto :goto_cc

    :cond_cb
    nop

    .line 318
    :goto_cc
    return v1
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 9
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 227
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 228
    invoke-virtual {p2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 230
    :cond_10
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 232
    .local v0, "savedTop":I
    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 234
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    .line 235
    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeightAuto:Z

    if-eqz v2, :cond_46

    .line 236
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeightMin:I

    if-nez v2, :cond_32

    .line 237
    nop

    .line 239
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/design/R$dimen;->design_bottom_sheet_peek_height_min:I

    .line 240
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeightMin:I

    .line 242
    :cond_32
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeightMin:I

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x9

    div-int/lit8 v4, v4, 0x10

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->lastPeekHeight:I

    goto :goto_4a

    .line 244
    :cond_46
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeight:I

    iput v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->lastPeekHeight:I

    .line 246
    :goto_4a
    const/4 v2, 0x0

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContentsOffset:I

    .line 247
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    const/4 v3, 0x2

    div-int/2addr v2, v3

    iput v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->halfExpandedOffset:I

    .line 248
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->calculateCollapsedOffset()V

    .line 250
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_6e

    .line 251
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->getExpandedOffset()I

    move-result v2

    invoke-static {p2, v2}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_9c

    .line 252
    :cond_6e
    const/4 v4, 0x6

    if-ne v2, v4, :cond_77

    .line 253
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->halfExpandedOffset:I

    invoke-static {p2, v2}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_9c

    .line 254
    :cond_77
    iget-boolean v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->hideable:Z

    if-eqz v4, :cond_84

    const/4 v4, 0x5

    if-ne v2, v4, :cond_84

    .line 255
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    invoke-static {p2, v2}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_9c

    .line 256
    :cond_84
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_8f

    .line 257
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    invoke-static {p2, v2}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_9c

    .line 258
    :cond_8f
    if-eq v2, v1, :cond_93

    if-ne v2, v3, :cond_9c

    .line 259
    :cond_93
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {p2, v2}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 261
    :cond_9c
    :goto_9c
    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-nez v2, :cond_a8

    .line 262
    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->dragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-static {p1, v2}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 264
    :cond_a8
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 265
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p2}, Landroid/support/design/widget/BottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 266
    return v1
.end method

.method public onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .registers 8
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "target"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    .line 487
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_15

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_13

    .line 489
    invoke-super/range {p0 .. p5}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_13
    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 487
    :goto_16
    return v0
.end method

.method public onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .registers 14
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "target"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "consumed"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    .line 379
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x1

    if-ne p7, v0, :cond_4

    .line 381
    return-void

    .line 383
    :cond_4
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 384
    .local v1, "scrollingChild":Landroid/view/View;
    if-eq p3, v1, :cond_f

    .line 385
    return-void

    .line 387
    :cond_f
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 388
    .local v2, "currentTop":I
    sub-int v3, v2, p5

    .line 389
    .local v3, "newTop":I
    if-lez p5, :cond_3a

    .line 390
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->getExpandedOffset()I

    move-result v4

    if-ge v3, v4, :cond_30

    .line 391
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->getExpandedOffset()I

    move-result v4

    sub-int v4, v2, v4

    aput v4, p6, v0

    .line 392
    aget v4, p6, v0

    neg-int v4, v4

    invoke-static {p2, v4}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 393
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_64

    .line 395
    :cond_30
    aput p5, p6, v0

    .line 396
    neg-int v4, p5

    invoke-static {p2, v4}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 397
    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_64

    .line 399
    :cond_3a
    if-gez p5, :cond_64

    .line 400
    const/4 v4, -0x1

    invoke-virtual {p3, v4}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v4

    if-nez v4, :cond_64

    .line 401
    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    if-le v3, v4, :cond_5b

    iget-boolean v5, p0, Landroid/support/design/widget/BottomSheetBehavior;->hideable:Z

    if-eqz v5, :cond_4c

    goto :goto_5b

    .line 406
    :cond_4c
    sub-int v4, v2, v4

    aput v4, p6, v0

    .line 407
    aget v4, p6, v0

    neg-int v4, v4

    invoke-static {p2, v4}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 408
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_64

    .line 402
    :cond_5b
    :goto_5b
    aput p5, p6, v0

    .line 403
    neg-int v4, p5

    invoke-static {p2, v4}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 404
    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 412
    :cond_64
    :goto_64
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/support/design/widget/BottomSheetBehavior;->dispatchOnSlide(I)V

    .line 413
    iput p5, p0, Landroid/support/design/widget/BottomSheetBehavior;->lastNestedScrollDy:I

    .line 414
    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrolled:Z

    .line 415
    return-void
.end method

.method public onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .registers 7
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "state"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .line 215
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    move-object v0, p3

    check-cast v0, Landroid/support/design/widget/BottomSheetBehavior$SavedState;

    .line 216
    .local v0, "ss":Landroid/support/design/widget/BottomSheetBehavior$SavedState;
    invoke-virtual {v0}, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, p1, p2, v1}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 218
    iget v1, v0, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->state:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1a

    iget v1, v0, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_15

    goto :goto_1a

    .line 221
    :cond_15
    iget v1, v0, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->state:I

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    goto :goto_1d

    .line 219
    :cond_1a
    :goto_1a
    const/4 v1, 0x4

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    .line 223
    :goto_1d
    return-void
.end method

.method public onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .registers 6
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .line 210
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    new-instance v0, Landroid/support/design/widget/BottomSheetBehavior$SavedState;

    invoke-super {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v1

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    invoke-direct {v0, v1, v2}, Landroid/support/design/widget/BottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v0
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .registers 9
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "directTargetChild"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "target"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "axes"    # I
    .param p6, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    .line 365
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->lastNestedScrollDy:I

    .line 366
    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrolled:Z

    .line 367
    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .registers 10
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "target"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 423
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->getExpandedOffset()I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 424
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 425
    return-void

    .line 427
    :cond_f
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_be

    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrolled:Z

    if-nez v0, :cond_1d

    goto/16 :goto_be

    .line 432
    :cond_1d
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->lastNestedScrollDy:I

    if-lez v0, :cond_28

    .line 433
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->getExpandedOffset()I

    move-result v0

    .line 434
    .local v0, "top":I
    const/4 v1, 0x3

    .local v1, "targetState":I
    goto/16 :goto_9e

    .line 435
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_28
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->hideable:Z

    if-eqz v0, :cond_3b

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->getYVelocity()F

    move-result v0

    invoke-virtual {p0, p2, v0}, Landroid/support/design/widget/BottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 436
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    .line 437
    .restart local v0    # "top":I
    const/4 v1, 0x5

    .restart local v1    # "targetState":I
    goto/16 :goto_9e

    .line 438
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_3b
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->lastNestedScrollDy:I

    if-nez v0, :cond_9b

    .line 439
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 440
    .local v0, "currentTop":I
    iget-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContents:Z

    if-eqz v1, :cond_65

    .line 441
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContentsOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_5f

    .line 442
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContentsOffset:I

    .line 443
    .local v1, "top":I
    const/4 v2, 0x3

    move v0, v1

    move v1, v2

    .local v2, "targetState":I
    goto :goto_9a

    .line 445
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_5f
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    .line 446
    .restart local v1    # "top":I
    const/4 v2, 0x4

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_9a

    .line 449
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_65
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->halfExpandedOffset:I

    if-ge v0, v1, :cond_7e

    .line 450
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_78

    .line 451
    const/4 v1, 0x0

    .line 452
    .restart local v1    # "top":I
    const/4 v2, 0x3

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_9a

    .line 454
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_78
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->halfExpandedOffset:I

    .line 455
    .restart local v1    # "top":I
    const/4 v2, 0x6

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_9a

    .line 458
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_7e
    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_94

    .line 459
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->halfExpandedOffset:I

    .line 460
    .restart local v1    # "top":I
    const/4 v2, 0x6

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_9a

    .line 462
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_94
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    .line 463
    .restart local v1    # "top":I
    const/4 v0, 0x4

    move v4, v1

    move v1, v0

    move v0, v4

    .line 467
    .local v0, "top":I
    .local v1, "targetState":I
    :goto_9a
    goto :goto_9e

    .line 468
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_9b
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    .line 469
    .restart local v0    # "top":I
    const/4 v1, 0x4

    .line 471
    .restart local v1    # "targetState":I
    :goto_9e
    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2, p2, v3, v0}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_b7

    .line 472
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 473
    new-instance v2, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;

    invoke-direct {v2, p0, p2, v1}, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;-><init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {p2, v2}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_ba

    .line 475
    :cond_b7
    invoke-virtual {p0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 477
    :goto_ba
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->nestedScrolled:Z

    .line 478
    return-void

    .line 428
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_be
    :goto_be
    return-void
.end method

.method public onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 329
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_8

    .line 330
    const/4 v0, 0x0

    return v0

    .line 332
    :cond_8
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 333
    .local v0, "action":I
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    if-nez v0, :cond_14

    .line 334
    return v2

    .line 336
    :cond_14
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz v1, :cond_1b

    .line 337
    invoke-virtual {v1, p3}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 340
    :cond_1b
    if-nez v0, :cond_20

    .line 341
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->reset()V

    .line 343
    :cond_20
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_2a

    .line 344
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 346
    :cond_2a
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 349
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5a

    iget-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->ignoreEvents:Z

    if-nez v1, :cond_5a

    .line 350
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->initialY:I

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_5a

    .line 351
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {v1, p2, v3}, Landroid/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 354
    :cond_5a
    iget-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->ignoreEvents:Z

    xor-int/2addr v1, v2

    return v1
.end method

.method public setBottomSheetCallback(Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    .line 610
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iput-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->callback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    .line 611
    return-void
.end method

.method public setFitToContents(Z)V
    .registers 4
    .param p1, "fitToContents"    # Z

    .line 509
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContents:Z

    if-ne v0, p1, :cond_5

    .line 510
    return-void

    .line 512
    :cond_5
    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContents:Z

    .line 516
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_e

    .line 517
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->calculateCollapsedOffset()V

    .line 520
    :cond_e
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContents:Z

    if-eqz v0, :cond_19

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_19

    const/4 v0, 0x3

    goto :goto_1b

    :cond_19
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    :goto_1b
    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 521
    return-void
.end method

.method public setHideable(Z)V
    .registers 2
    .param p1, "hideable"    # Z

    .line 569
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->hideable:Z

    .line 570
    return-void
.end method

.method public final setPeekHeight(I)V
    .registers 5
    .param p1, "peekHeight"    # I

    .line 531
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    const/4 v0, 0x0

    .line 532
    .local v0, "layout":Z
    const/4 v1, -0x1

    if-ne p1, v1, :cond_d

    .line 533
    iget-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeightAuto:Z

    if-nez v1, :cond_24

    .line 534
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeightAuto:Z

    .line 535
    const/4 v0, 0x1

    goto :goto_24

    .line 537
    :cond_d
    iget-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeightAuto:Z

    if-nez v1, :cond_15

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeight:I

    if-eq v1, p1, :cond_24

    .line 538
    :cond_15
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeightAuto:Z

    .line 539
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeight:I

    .line 540
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    sub-int/2addr v1, p1

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    .line 541
    const/4 v0, 0x1

    .line 543
    :cond_24
    :goto_24
    if-eqz v0, :cond_3a

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3a

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3a

    .line 544
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 545
    .local v1, "view":Landroid/view/View;, "TV;"
    if-eqz v1, :cond_3a

    .line 546
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 549
    .end local v1    # "view":Landroid/view/View;, "TV;"
    :cond_3a
    return-void
.end method

.method public setSkipCollapsed(Z)V
    .registers 2
    .param p1, "skipCollapsed"    # Z

    .line 590
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->skipCollapsed:Z

    .line 591
    return-void
.end method

.method public final setState(I)V
    .registers 6
    .param p1, "state"    # I

    .line 621
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    if-ne p1, v0, :cond_5

    .line 622
    return-void

    .line 624
    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1c

    .line 626
    const/4 v0, 0x4

    if-eq p1, v0, :cond_19

    const/4 v0, 0x3

    if-eq p1, v0, :cond_19

    const/4 v0, 0x6

    if-eq p1, v0, :cond_19

    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->hideable:Z

    if-eqz v0, :cond_1b

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1b

    .line 630
    :cond_19
    iput p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    .line 632
    :cond_1b
    return-void

    .line 634
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 635
    .local v0, "child":Landroid/view/View;, "TV;"
    if-nez v0, :cond_25

    .line 636
    return-void

    .line 639
    :cond_25
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 640
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_41

    invoke-interface {v1}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 641
    move v2, p1

    .line 642
    .local v2, "finalState":I
    new-instance v3, Landroid/support/design/widget/BottomSheetBehavior$1;

    invoke-direct {v3, p0, v0, v2}, Landroid/support/design/widget/BottomSheetBehavior$1;-><init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 649
    .end local v2    # "finalState":I
    goto :goto_44

    .line 650
    :cond_41
    invoke-virtual {p0, v0, p1}, Landroid/support/design/widget/BottomSheetBehavior;->startSettlingAnimation(Landroid/view/View;I)V

    .line 652
    :goto_44
    return-void
.end method

.method setStateInternal(I)V
    .registers 4
    .param p1, "state"    # I

    .line 666
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    if-ne v0, p1, :cond_5

    .line 667
    return-void

    .line 669
    :cond_5
    iput p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->state:I

    .line 670
    const/4 v0, 0x6

    if-eq p1, v0, :cond_19

    const/4 v0, 0x3

    if-ne p1, v0, :cond_e

    goto :goto_19

    .line 672
    :cond_e
    const/4 v0, 0x5

    if-eq p1, v0, :cond_14

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1d

    .line 673
    :cond_14
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->updateImportantForAccessibility(Z)V

    goto :goto_1d

    .line 671
    :cond_19
    :goto_19
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->updateImportantForAccessibility(Z)V

    .line 676
    :cond_1d
    :goto_1d
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 677
    .local v0, "bottomSheet":Landroid/view/View;
    if-eqz v0, :cond_2e

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->callback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    if-eqz v1, :cond_2e

    .line 678
    invoke-virtual {v1, v0, p1}, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;->onStateChanged(Landroid/view/View;I)V

    .line 680
    :cond_2e
    return-void
.end method

.method shouldHide(Landroid/view/View;F)Z
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "yvel"    # F

    .line 699
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->skipCollapsed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 700
    return v1

    .line 702
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_10

    .line 704
    return v3

    .line 706
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3dcccccd    # 0.1f

    mul-float v2, v2, p2

    add-float/2addr v0, v2

    .line 707
    .local v0, "newTop":F
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->peekHeight:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    return v1
.end method

.method startSettlingAnimation(Landroid/view/View;I)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "state"    # I

    .line 741
    .local p0, "this":Landroid/support/design/widget/BottomSheetBehavior;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>;"
    const/4 v0, 0x4

    if-ne p2, v0, :cond_6

    .line 742
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->collapsedOffset:I

    .local v0, "top":I
    goto :goto_28

    .line 743
    .end local v0    # "top":I
    :cond_6
    const/4 v0, 0x6

    if-ne p2, v0, :cond_17

    .line 744
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->halfExpandedOffset:I

    .line 745
    .restart local v0    # "top":I
    iget-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContents:Z

    if-eqz v1, :cond_28

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContentsOffset:I

    if-gt v0, v1, :cond_28

    .line 747
    const/4 p2, 0x3

    .line 748
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->fitToContentsOffset:I

    goto :goto_28

    .line 750
    .end local v0    # "top":I
    :cond_17
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1f

    .line 751
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->getExpandedOffset()I

    move-result v0

    .restart local v0    # "top":I
    goto :goto_28

    .line 752
    .end local v0    # "top":I
    :cond_1f
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->hideable:Z

    if-eqz v0, :cond_45

    const/4 v0, 0x5

    if-ne p2, v0, :cond_45

    .line 753
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->parentHeight:I

    .line 757
    .restart local v0    # "top":I
    :cond_28
    :goto_28
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1, p1, v2, v0}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 758
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 759
    new-instance v1, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;-><init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_44

    .line 761
    :cond_41
    invoke-virtual {p0, p2}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 763
    :goto_44
    return-void

    .line 755
    .end local v0    # "top":I
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
