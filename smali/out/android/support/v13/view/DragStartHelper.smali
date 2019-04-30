.class public Landroid/support/v13/view/DragStartHelper;
.super Ljava/lang/Object;
.source "DragStartHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v13/view/DragStartHelper$OnDragStartListener;
    }
.end annotation


# instance fields
.field private mDragging:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private final mListener:Landroid/support/v13/view/DragStartHelper$OnDragStartListener;

.field private final mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mTouchListener:Landroid/view/View$OnTouchListener;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/support/v13/view/DragStartHelper$OnDragStartListener;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Landroid/support/v13/view/DragStartHelper$OnDragStartListener;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Landroid/support/v13/view/DragStartHelper$1;

    invoke-direct {v0, p0}, Landroid/support/v13/view/DragStartHelper$1;-><init>(Landroid/support/v13/view/DragStartHelper;)V

    iput-object v0, p0, Landroid/support/v13/view/DragStartHelper;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 188
    new-instance v0, Landroid/support/v13/view/DragStartHelper$2;

    invoke-direct {v0, p0}, Landroid/support/v13/view/DragStartHelper$2;-><init>(Landroid/support/v13/view/DragStartHelper;)V

    iput-object v0, p0, Landroid/support/v13/view/DragStartHelper;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 97
    iput-object p1, p0, Landroid/support/v13/view/DragStartHelper;->mView:Landroid/view/View;

    .line 98
    iput-object p2, p0, Landroid/support/v13/view/DragStartHelper;->mListener:Landroid/support/v13/view/DragStartHelper$OnDragStartListener;

    .line 99
    return-void
.end method


# virtual methods
.method public attach()V
    .registers 3

    .line 107
    iget-object v0, p0, Landroid/support/v13/view/DragStartHelper;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v13/view/DragStartHelper;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 108
    iget-object v0, p0, Landroid/support/v13/view/DragStartHelper;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v13/view/DragStartHelper;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 109
    return-void
.end method

.method public detach()V
    .registers 3

    .line 117
    iget-object v0, p0, Landroid/support/v13/view/DragStartHelper;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 118
    iget-object v0, p0, Landroid/support/v13/view/DragStartHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 119
    return-void
.end method

.method public getTouchPosition(Landroid/graphics/Point;)V
    .registers 4
    .param p1, "point"    # Landroid/graphics/Point;

    .line 178
    iget v0, p0, Landroid/support/v13/view/DragStartHelper;->mLastTouchX:I

    iget v1, p0, Landroid/support/v13/view/DragStartHelper;->mLastTouchY:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 179
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 170
    iget-object v0, p0, Landroid/support/v13/view/DragStartHelper;->mListener:Landroid/support/v13/view/DragStartHelper$OnDragStartListener;

    invoke-interface {v0, p1, p0}, Landroid/support/v13/view/DragStartHelper$OnDragStartListener;->onDragStart(Landroid/view/View;Landroid/support/v13/view/DragStartHelper;)Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 129
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 130
    .local v0, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 131
    .local v1, "y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4b

    const/4 v4, 0x1

    if-eq v2, v4, :cond_48

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1b

    const/4 v4, 0x3

    if-eq v2, v4, :cond_48

    goto :goto_50

    .line 138
    :cond_1b
    const/16 v2, 0x2002

    invoke-static {p2, v2}, Landroid/support/v4/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 139
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/2addr v2, v4

    if-nez v2, :cond_2b

    .line 141
    goto :goto_50

    .line 143
    :cond_2b
    iget-boolean v2, p0, Landroid/support/v13/view/DragStartHelper;->mDragging:Z

    if-eqz v2, :cond_30

    .line 145
    goto :goto_50

    .line 147
    :cond_30
    iget v2, p0, Landroid/support/v13/view/DragStartHelper;->mLastTouchX:I

    if-ne v2, v0, :cond_39

    iget v2, p0, Landroid/support/v13/view/DragStartHelper;->mLastTouchY:I

    if-ne v2, v1, :cond_39

    .line 149
    goto :goto_50

    .line 151
    :cond_39
    iput v0, p0, Landroid/support/v13/view/DragStartHelper;->mLastTouchX:I

    .line 152
    iput v1, p0, Landroid/support/v13/view/DragStartHelper;->mLastTouchY:I

    .line 153
    iget-object v2, p0, Landroid/support/v13/view/DragStartHelper;->mListener:Landroid/support/v13/view/DragStartHelper$OnDragStartListener;

    invoke-interface {v2, p1, p0}, Landroid/support/v13/view/DragStartHelper$OnDragStartListener;->onDragStart(Landroid/view/View;Landroid/support/v13/view/DragStartHelper;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v13/view/DragStartHelper;->mDragging:Z

    .line 154
    iget-boolean v2, p0, Landroid/support/v13/view/DragStartHelper;->mDragging:Z

    return v2

    .line 158
    :cond_48
    iput-boolean v3, p0, Landroid/support/v13/view/DragStartHelper;->mDragging:Z

    goto :goto_50

    .line 133
    :cond_4b
    iput v0, p0, Landroid/support/v13/view/DragStartHelper;->mLastTouchX:I

    .line 134
    iput v1, p0, Landroid/support/v13/view/DragStartHelper;->mLastTouchY:I

    .line 135
    nop

    .line 161
    :cond_50
    :goto_50
    return v3
.end method
