.class Landroid/support/v7/widget/FastScroller;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "FastScroller.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/FastScroller$AnimatorUpdater;,
        Landroid/support/v7/widget/FastScroller$AnimatorListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_STATE_FADING_IN:I = 0x1

.field private static final ANIMATION_STATE_FADING_OUT:I = 0x3

.field private static final ANIMATION_STATE_IN:I = 0x2

.field private static final ANIMATION_STATE_OUT:I = 0x0

.field private static final DRAG_NONE:I = 0x0

.field private static final DRAG_X:I = 0x1

.field private static final DRAG_Y:I = 0x2

.field private static final EMPTY_STATE_SET:[I

.field private static final HIDE_DELAY_AFTER_DRAGGING_MS:I = 0x4b0

.field private static final HIDE_DELAY_AFTER_VISIBLE_MS:I = 0x5dc

.field private static final HIDE_DURATION_MS:I = 0x1f4

.field private static final PRESSED_STATE_SET:[I

.field private static final SCROLLBAR_FULL_OPAQUE:I = 0xff

.field private static final SHOW_DURATION_MS:I = 0x1f4

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_HIDDEN:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1


# instance fields
.field mAnimationState:I

.field private mDragState:I

.field private final mHideRunnable:Ljava/lang/Runnable;

.field mHorizontalDragX:F
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mHorizontalRange:[I

.field mHorizontalThumbCenterX:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private final mHorizontalThumbHeight:I

.field mHorizontalThumbWidth:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mHorizontalTrackHeight:I

.field private final mMargin:I

.field private mNeedHorizontalScrollbar:Z

.field private mNeedVerticalScrollbar:Z

.field private final mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mRecyclerViewHeight:I

.field private mRecyclerViewWidth:I

.field private final mScrollbarMinimumRange:I

.field final mShowHideAnimator:Landroid/animation/ValueAnimator;

.field private mState:I

.field mVerticalDragY:F
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mVerticalRange:[I

.field mVerticalThumbCenterY:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field final mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field mVerticalThumbHeight:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mVerticalThumbWidth:I

.field final mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mVerticalTrackWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/FastScroller;->PRESSED_STATE_SET:[I

    .line 75
    new-array v0, v1, [I

    sput-object v0, Landroid/support/v7/widget/FastScroller;->EMPTY_STATE_SET:[I

    return-void
.end method

.method constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .registers 12
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "verticalThumbDrawable"    # Landroid/graphics/drawable/StateListDrawable;
    .param p3, "verticalTrackDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "horizontalThumbDrawable"    # Landroid/graphics/drawable/StateListDrawable;
    .param p5, "horizontalTrackDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p6, "defaultWidth"    # I
    .param p7, "scrollbarMinimumRange"    # I
    .param p8, "margin"    # I

    .line 141
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    .line 105
    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    .line 112
    iput-boolean v0, p0, Landroid/support/v7/widget/FastScroller;->mNeedVerticalScrollbar:Z

    .line 113
    iput-boolean v0, p0, Landroid/support/v7/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 114
    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    .line 115
    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mDragState:I

    .line 117
    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Landroid/support/v7/widget/FastScroller;->mVerticalRange:[I

    .line 118
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalRange:[I

    .line 119
    new-array v1, v1, [F

    fill-array-data v1, :array_8e

    .line 120
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    .line 121
    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mAnimationState:I

    .line 123
    new-instance v0, Landroid/support/v7/widget/FastScroller$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/FastScroller$1;-><init>(Landroid/support/v7/widget/FastScroller;)V

    iput-object v0, p0, Landroid/support/v7/widget/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    .line 129
    new-instance v0, Landroid/support/v7/widget/FastScroller$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/FastScroller$2;-><init>(Landroid/support/v7/widget/FastScroller;)V

    iput-object v0, p0, Landroid/support/v7/widget/FastScroller;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 142
    iput-object p2, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 143
    iput-object p3, p0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 144
    iput-object p4, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 145
    iput-object p5, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 146
    invoke-virtual {p2}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbWidth:I

    .line 147
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackWidth:I

    .line 148
    nop

    .line 149
    invoke-virtual {p4}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbHeight:I

    .line 150
    nop

    .line 151
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalTrackHeight:I

    .line 152
    iput p7, p0, Landroid/support/v7/widget/FastScroller;->mScrollbarMinimumRange:I

    .line 153
    iput p8, p0, Landroid/support/v7/widget/FastScroller;->mMargin:I

    .line 154
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 155
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 157
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/v7/widget/FastScroller$AnimatorListener;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/FastScroller$AnimatorListener;-><init>(Landroid/support/v7/widget/FastScroller;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 158
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/v7/widget/FastScroller$AnimatorUpdater;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/FastScroller$AnimatorUpdater;-><init>(Landroid/support/v7/widget/FastScroller;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 160
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/FastScroller;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 161
    return-void

    :array_8e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private cancelHide()V
    .registers 3

    .line 267
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 268
    return-void
.end method

.method private destroyCallbacks()V
    .registers 3

    .line 183
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 184
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 185
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 186
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->cancelHide()V

    .line 187
    return-void
.end method

.method private drawHorizontalScrollbar(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 325
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    .line 327
    .local v0, "viewHeight":I
    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbHeight:I

    sub-int v2, v0, v1

    .line 328
    .local v2, "top":I
    iget v3, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbCenterX:I

    iget v4, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbWidth:I

    div-int/lit8 v5, v4, 0x2

    sub-int/2addr v3, v5

    .line 329
    .local v3, "left":I
    iget-object v5, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 330
    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    iget v5, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalTrackHeight:I

    .line 331
    invoke-virtual {v1, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 333
    int-to-float v1, v2

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 334
    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 335
    int-to-float v1, v3

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 336
    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 337
    neg-int v1, v3

    int-to-float v1, v1

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 338
    return-void
.end method

.method private drawVerticalScrollbar(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 300
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    .line 302
    .local v0, "viewWidth":I
    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbWidth:I

    sub-int v2, v0, v1

    .line 303
    .local v2, "left":I
    iget v3, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbCenterY:I

    iget v4, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbHeight:I

    div-int/lit8 v5, v4, 0x2

    sub-int/2addr v3, v5

    .line 304
    .local v3, "top":I
    iget-object v5, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6, v1, v4}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 305
    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackWidth:I

    iget v5, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    .line 306
    invoke-virtual {v1, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 308
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 309
    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 310
    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbWidth:I

    int-to-float v1, v1

    int-to-float v4, v3

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 311
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 312
    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 313
    invoke-virtual {p1, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 314
    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    neg-int v4, v3

    int-to-float v4, v4

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_61

    .line 316
    :cond_47
    int-to-float v1, v2

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 317
    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 318
    int-to-float v1, v3

    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 319
    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 320
    neg-int v1, v2

    int-to-float v1, v1

    neg-int v4, v3

    int-to-float v4, v4

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 322
    :goto_61
    return-void
.end method

.method private getHorizontalRange()[I
    .registers 4

    .line 551
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalRange:[I

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mMargin:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 552
    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    sub-int/2addr v2, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 553
    return-object v0
.end method

.method private getVerticalRange()[I
    .registers 4

    .line 542
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalRange:[I

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mMargin:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 543
    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    sub-int/2addr v2, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 544
    return-object v0
.end method

.method private horizontalScrollTo(F)V
    .registers 11
    .param p1, "x"    # F

    .line 470
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->getHorizontalRange()[I

    move-result-object v7

    .line 471
    .local v7, "scrollbarRange":[I
    const/4 v8, 0x0

    aget v0, v7, v8

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v7, v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 472
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbCenterX:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_23

    .line 473
    return-void

    .line 476
    :cond_23
    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalDragX:F

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 477
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v4

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 478
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v5

    iget v6, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    .line 476
    move-object v0, p0

    move v2, p1

    move-object v3, v7

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/FastScroller;->scrollTo(FF[IIII)I

    move-result v0

    .line 479
    .local v0, "scrollingBy":I
    if-eqz v0, :cond_41

    .line 480
    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0, v8}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 483
    :cond_41
    iput p1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalDragX:F

    .line 484
    return-void
.end method

.method private isLayoutRTL()Z
    .registers 3

    .line 216
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method private resetHideDelay(I)V
    .registers 6
    .param p1, "delay"    # I

    .line 271
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->cancelHide()V

    .line 272
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 273
    return-void
.end method

.method private scrollTo(FF[IIII)I
    .registers 13
    .param p1, "oldDragPos"    # F
    .param p2, "newDragPos"    # F
    .param p3, "scrollbarRange"    # [I
    .param p4, "scrollRange"    # I
    .param p5, "scrollOffset"    # I
    .param p6, "viewLength"    # I

    .line 488
    const/4 v0, 0x1

    aget v0, p3, v0

    const/4 v1, 0x0

    aget v2, p3, v1

    sub-int/2addr v0, v2

    .line 489
    .local v0, "scrollbarLength":I
    if-nez v0, :cond_a

    .line 490
    return v1

    .line 492
    :cond_a
    sub-float v2, p2, p1

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 493
    .local v2, "percentage":F
    sub-int v3, p4, p6

    .line 494
    .local v3, "totalPossibleOffset":I
    int-to-float v4, v3

    mul-float v4, v4, v2

    float-to-int v4, v4

    .line 495
    .local v4, "scrollingBy":I
    add-int v5, p5, v4

    .line 496
    .local v5, "absoluteOffset":I
    if-ge v5, v3, :cond_1b

    if-ltz v5, :cond_1b

    .line 497
    return v4

    .line 499
    :cond_1b
    return v1
.end method

.method private setupCallbacks()V
    .registers 3

    .line 177
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 178
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 179
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 180
    return-void
.end method

.method private verticalScrollTo(F)V
    .registers 11
    .param p1, "y"    # F

    .line 455
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->getVerticalRange()[I

    move-result-object v7

    .line 456
    .local v7, "scrollbarRange":[I
    const/4 v8, 0x0

    aget v0, v7, v8

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v7, v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 457
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbCenterY:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_23

    .line 458
    return-void

    .line 460
    :cond_23
    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalDragY:F

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 461
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v4

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 462
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v5

    iget v6, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    .line 460
    move-object v0, p0

    move v2, p1

    move-object v3, v7

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/FastScroller;->scrollTo(FF[IIII)I

    move-result v0

    .line 463
    .local v0, "scrollingBy":I
    if-eqz v0, :cond_41

    .line 464
    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v8, v0}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 466
    :cond_41
    iput p1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalDragY:F

    .line 467
    return-void
.end method


# virtual methods
.method public attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .registers 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 164
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-ne v0, p1, :cond_5

    .line 165
    return-void

    .line 167
    :cond_5
    if-eqz v0, :cond_a

    .line 168
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->destroyCallbacks()V

    .line 170
    :cond_a
    iput-object p1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 171
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_13

    .line 172
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->setupCallbacks()V

    .line 174
    :cond_13
    return-void
.end method

.method getHorizontalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 525
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method getHorizontalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 520
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getVerticalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 535
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method getVerticalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 530
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public hide()V
    .registers 2

    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/FastScroller;->hide(I)V

    .line 249
    return-void
.end method

.method hide(I)V
    .registers 7
    .param p1, "duration"    # I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 253
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mAnimationState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9

    if-eq v0, v1, :cond_e

    goto :goto_33

    .line 255
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 258
    :cond_e
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mAnimationState:I

    .line 259
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v1, v3

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 260
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 261
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 264
    :goto_33
    return-void
.end method

.method public isDragging()Z
    .registers 3

    .line 220
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method isHidden()Z
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 228
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isPointInsideHorizontalThumb(FF)Z
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 513
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_21

    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbCenterX:I

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbWidth:I

    div-int/lit8 v2, v1, 0x2

    sub-int v2, v0, v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_21

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    return v0
.end method

.method isPointInsideVerticalThumb(FF)Z
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 505
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_31

    goto :goto_1a

    :cond_10
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_31

    :goto_1a
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbCenterY:I

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbHeight:I

    div-int/lit8 v2, v1, 0x2

    sub-int v2, v0, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_31

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_31

    const/4 v0, 0x1

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    return v0
.end method

.method isVisible()Z
    .registers 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 224
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .line 277
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_28

    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 278
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_15

    goto :goto_28

    .line 289
    :cond_15
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mAnimationState:I

    if-eqz v0, :cond_27

    .line 290
    iget-boolean v0, p0, Landroid/support/v7/widget/FastScroller;->mNeedVerticalScrollbar:Z

    if-eqz v0, :cond_20

    .line 291
    invoke-direct {p0, p1}, Landroid/support/v7/widget/FastScroller;->drawVerticalScrollbar(Landroid/graphics/Canvas;)V

    .line 293
    :cond_20
    iget-boolean v0, p0, Landroid/support/v7/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz v0, :cond_27

    .line 294
    invoke-direct {p0, p1}, Landroid/support/v7/widget/FastScroller;->drawHorizontalScrollbar(Landroid/graphics/Canvas;)V

    .line 297
    :cond_27
    return-void

    .line 279
    :cond_28
    :goto_28
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    .line 280
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    .line 285
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/FastScroller;->setState(I)V

    .line 286
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ev"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 390
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v1, :cond_48

    .line 391
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroid/support/v7/widget/FastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result v0

    .line 392
    .local v0, "insideVerticalThumb":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/support/v7/widget/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v3

    .line 393
    .local v3, "insideHorizontalThumb":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_46

    if-nez v0, :cond_28

    if-eqz v3, :cond_46

    .line 395
    :cond_28
    if-eqz v3, :cond_35

    .line 396
    iput v1, p0, Landroid/support/v7/widget/FastScroller;->mDragState:I

    .line 397
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalDragX:F

    goto :goto_41

    .line 398
    :cond_35
    if-eqz v0, :cond_41

    .line 399
    iput v2, p0, Landroid/support/v7/widget/FastScroller;->mDragState:I

    .line 400
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalDragY:F

    .line 403
    :cond_41
    :goto_41
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/FastScroller;->setState(I)V

    .line 404
    const/4 v1, 0x1

    .local v1, "handled":Z
    goto :goto_47

    .line 406
    .end local v1    # "handled":Z
    :cond_46
    const/4 v1, 0x0

    .line 408
    .end local v0    # "insideVerticalThumb":Z
    .end local v3    # "insideHorizontalThumb":Z
    .restart local v1    # "handled":Z
    :goto_47
    goto :goto_4d

    .end local v1    # "handled":Z
    :cond_48
    if-ne v0, v2, :cond_4c

    .line 409
    const/4 v1, 0x1

    .restart local v1    # "handled":Z
    goto :goto_4d

    .line 411
    .end local v1    # "handled":Z
    :cond_4c
    const/4 v1, 0x0

    .line 413
    .restart local v1    # "handled":Z
    :goto_4d
    return v1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .param p1, "disallowIntercept"    # Z

    .line 452
    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "me"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 418
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-nez v0, :cond_5

    .line 419
    return-void

    .line 422
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez v0, :cond_46

    .line 423
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroid/support/v7/widget/FastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result v0

    .line 424
    .local v0, "insideVerticalThumb":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/support/v7/widget/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v3

    .line 425
    .local v3, "insideHorizontalThumb":Z
    if-nez v0, :cond_29

    if-eqz v3, :cond_45

    .line 426
    :cond_29
    if-eqz v3, :cond_36

    .line 427
    iput v1, p0, Landroid/support/v7/widget/FastScroller;->mDragState:I

    .line 428
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalDragX:F

    goto :goto_42

    .line 429
    :cond_36
    if-eqz v0, :cond_42

    .line 430
    iput v2, p0, Landroid/support/v7/widget/FastScroller;->mDragState:I

    .line 431
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalDragY:F

    .line 433
    :cond_42
    :goto_42
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/FastScroller;->setState(I)V

    .line 435
    .end local v0    # "insideVerticalThumb":Z
    .end local v3    # "insideHorizontalThumb":Z
    :cond_45
    goto :goto_7f

    :cond_46
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_5c

    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-ne v0, v2, :cond_5c

    .line 436
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalDragY:F

    .line 437
    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalDragX:F

    .line 438
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/FastScroller;->setState(I)V

    .line 439
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mDragState:I

    goto :goto_7f

    .line 440
    :cond_5c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_7f

    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-ne v0, v2, :cond_7f

    .line 441
    invoke-virtual {p0}, Landroid/support/v7/widget/FastScroller;->show()V

    .line 442
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mDragState:I

    if-ne v0, v1, :cond_74

    .line 443
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/FastScroller;->horizontalScrollTo(F)V

    .line 445
    :cond_74
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mDragState:I

    if-ne v0, v2, :cond_7f

    .line 446
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/FastScroller;->verticalScrollTo(F)V

    .line 449
    :cond_7f
    :goto_7f
    return-void
.end method

.method requestRedraw()V
    .registers 2

    .line 191
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 192
    return-void
.end method

.method setState(I)V
    .registers 5
    .param p1, "state"    # I

    .line 195
    const/4 v0, 0x2

    if-ne p1, v0, :cond_11

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-eq v1, v0, :cond_11

    .line 196
    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Landroid/support/v7/widget/FastScroller;->PRESSED_STATE_SET:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 197
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->cancelHide()V

    .line 200
    :cond_11
    if-nez p1, :cond_17

    .line 201
    invoke-virtual {p0}, Landroid/support/v7/widget/FastScroller;->requestRedraw()V

    goto :goto_1a

    .line 203
    :cond_17
    invoke-virtual {p0}, Landroid/support/v7/widget/FastScroller;->show()V

    .line 206
    :goto_1a
    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-ne v1, v0, :cond_2d

    if-eq p1, v0, :cond_2d

    .line 207
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Landroid/support/v7/widget/FastScroller;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 208
    const/16 v0, 0x4b0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/FastScroller;->resetHideDelay(I)V

    goto :goto_35

    .line 209
    :cond_2d
    const/4 v0, 0x1

    if-ne p1, v0, :cond_35

    .line 210
    const/16 v0, 0x5dc

    invoke-direct {p0, v0}, Landroid/support/v7/widget/FastScroller;->resetHideDelay(I)V

    .line 212
    :cond_35
    :goto_35
    iput p1, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    .line 213
    return-void
.end method

.method public show()V
    .registers 6

    .line 233
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mAnimationState:I

    if-eqz v0, :cond_d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    goto :goto_3c

    .line 235
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 238
    :cond_d
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mAnimationState:I

    .line 239
    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 240
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 241
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 242
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 245
    :goto_3c
    return-void
.end method

.method updateScrollPosition(II)V
    .registers 12
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .line 348
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    .line 349
    .local v0, "verticalContentLength":I
    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    .line 350
    .local v1, "verticalVisibleLength":I
    sub-int v2, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_16

    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    iget v5, p0, Landroid/support/v7/widget/FastScroller;->mScrollbarMinimumRange:I

    if-lt v2, v5, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    iput-boolean v2, p0, Landroid/support/v7/widget/FastScroller;->mNeedVerticalScrollbar:Z

    .line 353
    iget-object v2, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v2

    .line 354
    .local v2, "horizontalContentLength":I
    iget v5, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    .line 355
    .local v5, "horizontalVisibleLength":I
    sub-int v6, v2, v5

    if-lez v6, :cond_2d

    iget v6, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    iget v7, p0, Landroid/support/v7/widget/FastScroller;->mScrollbarMinimumRange:I

    if-lt v6, v7, :cond_2d

    const/4 v6, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v6, 0x0

    :goto_2e
    iput-boolean v6, p0, Landroid/support/v7/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 358
    iget-boolean v6, p0, Landroid/support/v7/widget/FastScroller;->mNeedVerticalScrollbar:Z

    if-nez v6, :cond_40

    iget-boolean v6, p0, Landroid/support/v7/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    if-nez v6, :cond_40

    .line 359
    iget v4, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-eqz v4, :cond_3f

    .line 360
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/FastScroller;->setState(I)V

    .line 362
    :cond_3f
    return-void

    .line 365
    :cond_40
    iget-boolean v3, p0, Landroid/support/v7/widget/FastScroller;->mNeedVerticalScrollbar:Z

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v3, :cond_5b

    .line 366
    int-to-float v3, p2

    int-to-float v7, v1

    div-float/2addr v7, v6

    add-float/2addr v3, v7

    .line 367
    .local v3, "middleScreenPos":F
    int-to-float v7, v1

    mul-float v7, v7, v3

    int-to-float v8, v0

    div-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbCenterY:I

    .line 369
    mul-int v7, v1, v1

    div-int/2addr v7, v0

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbHeight:I

    .line 373
    .end local v3    # "middleScreenPos":F
    :cond_5b
    iget-boolean v3, p0, Landroid/support/v7/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz v3, :cond_74

    .line 374
    int-to-float v3, p1

    int-to-float v7, v5

    div-float/2addr v7, v6

    add-float/2addr v3, v7

    .line 375
    .restart local v3    # "middleScreenPos":F
    int-to-float v6, v5

    mul-float v6, v6, v3

    int-to-float v7, v2

    div-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbCenterX:I

    .line 377
    mul-int v6, v5, v5

    div-int/2addr v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbWidth:I

    .line 381
    .end local v3    # "middleScreenPos":F
    :cond_74
    iget v3, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-eqz v3, :cond_7a

    if-ne v3, v4, :cond_7d

    .line 382
    :cond_7a
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/FastScroller;->setState(I)V

    .line 384
    :cond_7d
    return-void
.end method
