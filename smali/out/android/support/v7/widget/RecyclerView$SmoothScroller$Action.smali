.class public Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final UNDEFINED_DURATION:I = -0x80000000


# instance fields
.field private mChanged:Z

.field private mConsecutiveUpdates:I

.field private mDuration:I

.field private mDx:I

.field private mDy:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mJumpToPosition:I


# direct methods
.method public constructor <init>(II)V
    .registers 5
    .param p1, "dx"    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param
    .param p2, "dy"    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param

    .line 11805
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 11806
    return-void
.end method

.method public constructor <init>(III)V
    .registers 5
    .param p1, "dx"    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param
    .param p2, "dy"    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param
    .param p3, "duration"    # I

    .line 11814
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 11815
    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .registers 6
    .param p1, "dx"    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param
    .param p2, "dy"    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 11825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11790
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 11794
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11798
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    .line 11826
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 11827
    iput p2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 11828
    iput p3, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 11829
    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11830
    return-void
.end method

.method private validate()V
    .registers 3

    .line 11889
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-lt v0, v1, :cond_a

    goto :goto_12

    .line 11890
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11892
    :cond_12
    :goto_12
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-lt v0, v1, :cond_17

    .line 11895
    return-void

    .line 11893
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDuration()I
    .registers 2

    .line 11918
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    return v0
.end method

.method public getDx()I
    .registers 2
    .annotation build Landroid/support/annotation/Px;
    .end annotation

    .line 11899
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    return v0
.end method

.method public getDy()I
    .registers 2
    .annotation build Landroid/support/annotation/Px;
    .end annotation

    .line 11909
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 11928
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method hasJumpTarget()Z
    .registers 2

    .line 11852
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public jumpTo(I)V
    .registers 2
    .param p1, "targetPosition"    # I

    .line 11848
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 11849
    return-void
.end method

.method runIfNecessary(Landroid/support/v7/widget/RecyclerView;)V
    .registers 8
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 11856
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    const/4 v1, 0x0

    if-ltz v0, :cond_10

    .line 11857
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 11858
    .local v0, "position":I
    const/4 v2, -0x1

    iput v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 11859
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->jumpToPositionForSmoothScroller(I)V

    .line 11860
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11861
    return-void

    .line 11863
    .end local v0    # "position":I
    :cond_10
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    if-eqz v0, :cond_5a

    .line 11864
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->validate()V

    .line 11865
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_37

    .line 11866
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_2b

    .line 11867
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(II)V

    goto :goto_44

    .line 11869
    :cond_2b
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v4, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    goto :goto_44

    .line 11872
    :cond_37
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v4, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 11875
    :goto_44
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    .line 11876
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    const/16 v2, 0xa

    if-le v0, v2, :cond_57

    .line 11879
    const-string v0, "RecyclerView"

    const-string v2, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11882
    :cond_57
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    goto :goto_5c

    .line 11884
    :cond_5a
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    .line 11886
    :goto_5c
    return-void
.end method

.method public setDuration(I)V
    .registers 3
    .param p1, "duration"    # I

    .line 11922
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11923
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 11924
    return-void
.end method

.method public setDx(I)V
    .registers 3
    .param p1, "dx"    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param

    .line 11903
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11904
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 11905
    return-void
.end method

.method public setDy(I)V
    .registers 3
    .param p1, "dy"    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param

    .line 11913
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11914
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 11915
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 3
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 11938
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11939
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11940
    return-void
.end method

.method public update(IIILandroid/view/animation/Interpolator;)V
    .registers 6
    .param p1, "dx"    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param
    .param p2, "dy"    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 11952
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 11953
    iput p2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 11954
    iput p3, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 11955
    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11956
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11957
    return-void
.end method
