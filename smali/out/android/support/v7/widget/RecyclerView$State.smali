.class public Landroid/support/v7/widget/RecyclerView$State;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field static final STEP_ANIMATIONS:I = 0x4

.field static final STEP_LAYOUT:I = 0x2

.field static final STEP_START:I = 0x1


# instance fields
.field private mData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mDeletedInvisibleItemCountSincePreviousLayout:I

.field mFocusedItemId:J

.field mFocusedItemPosition:I

.field mFocusedSubChildId:I

.field mInPreLayout:Z

.field mIsMeasuring:Z

.field mItemCount:I

.field mLayoutStep:I

.field mPreviousLayoutItemCount:I

.field mRemainingScrollHorizontal:I

.field mRemainingScrollVertical:I

.field mRunPredictiveAnimations:Z

.field mRunSimpleAnimations:Z

.field mStructureChanged:Z

.field mTargetPosition:I

.field mTrackOldChangeHolders:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 12106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12121
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    .line 12132
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    .line 12138
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 12150
    const/4 v1, 0x1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    .line 12156
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 12158
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    .line 12165
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    .line 12167
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    .line 12169
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 12175
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 12177
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return-void
.end method


# virtual methods
.method assertLayoutStep(I)V
    .registers 5
    .param p1, "accepted"    # I

    .line 12112
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_6

    .line 12117
    return-void

    .line 12113
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout state should be one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12114
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    .line 12115
    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public didStructureChange()Z
    .registers 2

    .line 12338
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .line 12292
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_6

    .line 12293
    const/4 v0, 0x0

    return-object v0

    .line 12295
    :cond_6
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .registers 3

    .line 12366
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    if-eqz v0, :cond_a

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    sub-int/2addr v0, v1

    goto :goto_c

    :cond_a
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    :goto_c
    return v0
.end method

.method public getRemainingScrollHorizontal()I
    .registers 2

    .line 12379
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mRemainingScrollHorizontal:I

    return v0
.end method

.method public getRemainingScrollVertical()I
    .registers 2

    .line 12390
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mRemainingScrollVertical:I

    return v0
.end method

.method public getTargetScrollPosition()I
    .registers 2

    .line 12321
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    return v0
.end method

.method public hasTargetScrollPosition()Z
    .registers 3

    .line 12330
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isMeasuring()Z
    .registers 2

    .line 12236
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    return v0
.end method

.method public isPreLayout()Z
    .registers 2

    .line 12245
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    return v0
.end method

.method prepareForNestedPrefetch(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .registers 3
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 12214
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    .line 12215
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 12216
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    .line 12217
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    .line 12218
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 12219
    return-void
.end method

.method public put(ILjava/lang/Object;)V
    .registers 4
    .param p1, "resourceId"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .line 12307
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 12308
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    .line 12310
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12311
    return-void
.end method

.method public remove(I)V
    .registers 3
    .param p1, "resourceId"    # I

    .line 12276
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    .line 12277
    return-void

    .line 12279
    :cond_5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 12280
    return-void
.end method

.method reset()Landroid/support/v7/widget/RecyclerView$State;
    .registers 2

    .line 12196
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    .line 12197
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-eqz v0, :cond_a

    .line 12198
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 12200
    :cond_a
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 12201
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    .line 12202
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 12203
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 12395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State{mTargetPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsMeasuring="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviousLayoutItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mStructureChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInPreLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRunSimpleAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRunPredictiveAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public willRunPredictiveAnimations()Z
    .registers 2

    .line 12256
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return v0
.end method

.method public willRunSimpleAnimations()Z
    .registers 2

    .line 12267
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    return v0
.end method
