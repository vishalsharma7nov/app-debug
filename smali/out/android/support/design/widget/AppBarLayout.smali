.class public Landroid/support/design/widget/AppBarLayout;
.super Landroid/widget/LinearLayout;
.source "AppBarLayout.java"


# annotations
.annotation runtime Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;
    value = Landroid/support/design/widget/AppBarLayout$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;,
        Landroid/support/design/widget/AppBarLayout$BaseBehavior;,
        Landroid/support/design/widget/AppBarLayout$Behavior;,
        Landroid/support/design/widget/AppBarLayout$LayoutParams;,
        Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;,
        Landroid/support/design/widget/AppBarLayout$BaseOnOffsetChangedListener;
    }
.end annotation


# static fields
.field private static final INVALID_SCROLL_RANGE:I = -0x1

.field static final PENDING_ACTION_ANIMATE_ENABLED:I = 0x4

.field static final PENDING_ACTION_COLLAPSED:I = 0x2

.field static final PENDING_ACTION_EXPANDED:I = 0x1

.field static final PENDING_ACTION_FORCE:I = 0x8

.field static final PENDING_ACTION_NONE:I


# instance fields
.field private downPreScrollRange:I

.field private downScrollRange:I

.field private haveChildWithInterpolator:Z

.field private lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

.field private liftOnScroll:Z

.field private liftable:Z

.field private liftableOverride:Z

.field private lifted:Z

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/design/widget/AppBarLayout$BaseOnOffsetChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private pendingAction:I

.field private tmpStatesArray:[I

.field private totalScrollRange:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 173
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->totalScrollRange:I

    .line 149
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->downPreScrollRange:I

    .line 150
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->downScrollRange:I

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->pendingAction:I

    .line 174
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->setOrientation(I)V

    .line 176
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1f

    .line 179
    invoke-static {p0}, Landroid/support/design/widget/ViewUtilsLollipop;->setBoundsViewOutlineProvider(Landroid/view/View;)V

    .line 183
    sget v1, Landroid/support/design/R$style;->Widget_Design_AppBarLayout:I

    invoke-static {p0, p2, v0, v1}, Landroid/support/design/widget/ViewUtilsLollipop;->setStateListAnimatorFromAttrs(Landroid/view/View;Landroid/util/AttributeSet;II)V

    .line 187
    :cond_1f
    sget-object v5, Landroid/support/design/R$styleable;->AppBarLayout:[I

    const/4 v6, 0x0

    sget v7, Landroid/support/design/R$style;->Widget_Design_AppBarLayout:I

    new-array v8, v0, [I

    .line 188
    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v3 .. v8}, Landroid/support/design/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 190
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v3, Landroid/support/design/R$styleable;->AppBarLayout_android_background:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 191
    sget v3, Landroid/support/design/R$styleable;->AppBarLayout_expanded:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 192
    sget v3, Landroid/support/design/R$styleable;->AppBarLayout_expanded:I

    .line 193
    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 192
    invoke-direct {p0, v3, v0, v0}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZZ)V

    .line 197
    :cond_46
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_5c

    sget v2, Landroid/support/design/R$styleable;->AppBarLayout_elevation:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 198
    sget v2, Landroid/support/design/R$styleable;->AppBarLayout_elevation:I

    .line 199
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    .line 198
    invoke-static {p0, v2}, Landroid/support/design/widget/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    .line 201
    :cond_5c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_84

    .line 204
    sget v2, Landroid/support/design/R$styleable;->AppBarLayout_android_keyboardNavigationCluster:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 205
    sget v2, Landroid/support/design/R$styleable;->AppBarLayout_android_keyboardNavigationCluster:I

    .line 206
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 205
    invoke-virtual {p0, v2}, Landroid/support/design/widget/AppBarLayout;->setKeyboardNavigationCluster(Z)V

    .line 208
    :cond_73
    sget v2, Landroid/support/design/R$styleable;->AppBarLayout_android_touchscreenBlocksFocus:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 209
    sget v2, Landroid/support/design/R$styleable;->AppBarLayout_android_touchscreenBlocksFocus:I

    .line 210
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 209
    invoke-virtual {p0, v2}, Landroid/support/design/widget/AppBarLayout;->setTouchscreenBlocksFocus(Z)V

    .line 213
    :cond_84
    sget v2, Landroid/support/design/R$styleable;->AppBarLayout_liftOnScroll:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->liftOnScroll:Z

    .line 214
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 216
    new-instance v0, Landroid/support/design/widget/AppBarLayout$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/AppBarLayout$1;-><init>(Landroid/support/design/widget/AppBarLayout;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 224
    return-void
.end method

.method private hasCollapsibleChild()Z
    .registers 4

    .line 292
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v1

    .local v1, "z":I
    :goto_5
    if-ge v0, v1, :cond_1c

    .line 293
    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->isCollapsible()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 294
    const/4 v2, 0x1

    return v2

    .line 292
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 297
    .end local v0    # "i":I
    .end local v1    # "z":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method private invalidateScrollRanges()V
    .registers 2

    .line 302
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->totalScrollRange:I

    .line 303
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->downPreScrollRange:I

    .line 304
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->downScrollRange:I

    .line 305
    return-void
.end method

.method private setExpanded(ZZZ)V
    .registers 7
    .param p1, "expanded"    # Z
    .param p2, "animate"    # Z
    .param p3, "force"    # Z

    .line 347
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x2

    :goto_5
    const/4 v1, 0x0

    if-eqz p2, :cond_a

    const/4 v2, 0x4

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    or-int/2addr v0, v2

    if-eqz p3, :cond_10

    const/16 v1, 0x8

    :cond_10
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->pendingAction:I

    .line 351
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->requestLayout()V

    .line 352
    return-void
.end method

.method private setLiftableState(Z)Z
    .registers 3
    .param p1, "liftable"    # Z

    .line 569
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->liftable:Z

    if-eq v0, p1, :cond_b

    .line 570
    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout;->liftable:Z

    .line 571
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->refreshDrawableState()V

    .line 572
    const/4 v0, 0x1

    return v0

    .line 574
    :cond_b
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$BaseOnOffsetChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/support/design/widget/AppBarLayout$BaseOnOffsetChangedListener;

    .line 233
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->listeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout;->listeners:Ljava/util/List;

    .line 236
    :cond_b
    if-eqz p1, :cond_1a

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 237
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_1a
    return-void
.end method

.method public addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    .line 242
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$BaseOnOffsetChangedListener;)V

    .line 243
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 356
    instance-of v0, p1, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    return v0
.end method

.method dispatchOffsetUpdates(I)V
    .registers 5
    .param p1, "offset"    # I

    .line 505
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->listeners:Ljava/util/List;

    if-eqz v0, :cond_1b

    .line 506
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "z":I
    :goto_9
    if-ge v1, v0, :cond_1b

    .line 507
    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout;->listeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/AppBarLayout$BaseOnOffsetChangedListener;

    .line 508
    .local v2, "listener":Landroid/support/design/widget/AppBarLayout$BaseOnOffsetChangedListener;
    if-eqz v2, :cond_18

    .line 509
    invoke-interface {v2, p0, p1}, Landroid/support/design/widget/AppBarLayout$BaseOnOffsetChangedListener;->onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V

    .line 506
    .end local v2    # "listener":Landroid/support/design/widget/AppBarLayout$BaseOnOffsetChangedListener;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 513
    .end local v0    # "z":I
    .end local v1    # "i":I
    :cond_1b
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .registers 4

    .line 361
    new-instance v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 110
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .line 110
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 366
    new-instance v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .registers 4
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 371
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_13

    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_13

    .line 372
    new-instance v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0

    .line 373
    :cond_13
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_20

    .line 374
    new-instance v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 376
    :cond_20
    new-instance v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 110
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 110
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .line 110
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .line 110
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method getDownNestedPreScrollRange()I
    .registers 9

    .line 431
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->downPreScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 433
    return v0

    .line 436
    :cond_6
    const/4 v0, 0x0

    .line 437
    .local v0, "range":I
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_4e

    .line 438
    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 439
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 440
    .local v3, "lp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 441
    .local v4, "childHeight":I
    iget v5, v3, Landroid/support/design/widget/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 443
    .local v5, "flags":I
    and-int/lit8 v6, v5, 0x5

    const/4 v7, 0x5

    if-ne v6, v7, :cond_48

    .line 445
    iget v6, v3, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    iget v7, v3, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    add-int/2addr v0, v6

    .line 447
    and-int/lit8 v6, v5, 0x8

    if-eqz v6, :cond_34

    .line 449
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v6

    add-int/2addr v0, v6

    goto :goto_4b

    .line 450
    :cond_34
    and-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_40

    .line 452
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v6

    sub-int v6, v4, v6

    add-int/2addr v0, v6

    goto :goto_4b

    .line 455
    :cond_40
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v6

    sub-int v6, v4, v6

    add-int/2addr v0, v6

    goto :goto_4b

    .line 457
    :cond_48
    if-lez v0, :cond_4b

    .line 460
    goto :goto_4e

    .line 437
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .end local v4    # "childHeight":I
    .end local v5    # "flags":I
    :cond_4b
    :goto_4b
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 463
    .end local v1    # "i":I
    :cond_4e
    :goto_4e
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/AppBarLayout;->downPreScrollRange:I

    return v1
.end method

.method getDownNestedScrollRange()I
    .registers 10

    .line 468
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->downScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 470
    return v0

    .line 473
    :cond_6
    const/4 v0, 0x0

    .line 474
    .local v0, "range":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v2

    .local v2, "z":I
    :goto_c
    if-ge v1, v2, :cond_3b

    .line 475
    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 476
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 477
    .local v4, "lp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 478
    .local v5, "childHeight":I
    iget v6, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    iget v7, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 480
    iget v6, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 482
    .local v6, "flags":I
    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_3b

    .line 484
    add-int/2addr v0, v5

    .line 486
    and-int/lit8 v7, v6, 0x2

    if-eqz v7, :cond_38

    .line 490
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v7

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v0, v7

    .line 491
    goto :goto_3b

    .line 474
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .end local v5    # "childHeight":I
    .end local v6    # "flags":I
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 499
    .end local v1    # "i":I
    .end local v2    # "z":I
    :cond_3b
    :goto_3b
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/AppBarLayout;->downScrollRange:I

    return v1
.end method

.method public final getMinimumHeightForVisibleOverlappingContent()I
    .registers 6

    .line 516
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v0

    .line 517
    .local v0, "topInset":I
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    .line 518
    .local v1, "minHeight":I
    if-eqz v1, :cond_e

    .line 520
    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    return v2

    .line 524
    :cond_e
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v2

    .line 525
    .local v2, "childCount":I
    const/4 v3, 0x1

    if-lt v2, v3, :cond_20

    add-int/lit8 v3, v2, -0x1

    .line 526
    invoke-virtual {p0, v3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v3

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    .line 527
    .local v3, "lastChildMinHeight":I
    :goto_21
    if-eqz v3, :cond_27

    .line 528
    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v0

    return v4

    .line 533
    :cond_27
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    return v4
.end method

.method getPendingAction()I
    .registers 2

    .line 637
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->pendingAction:I

    return v0
.end method

.method public getTargetElevation()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 633
    const/4 v0, 0x0

    return v0
.end method

.method final getTopInset()I
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 646
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final getTotalScrollRange()I
    .registers 10

    .line 389
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->totalScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 390
    return v0

    .line 393
    :cond_6
    const/4 v0, 0x0

    .line 394
    .local v0, "range":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v2

    .local v2, "z":I
    :goto_c
    if-ge v1, v2, :cond_36

    .line 395
    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 396
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 397
    .local v4, "lp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 398
    .local v5, "childHeight":I
    iget v6, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 400
    .local v6, "flags":I
    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_36

    .line 402
    iget v7, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v5

    iget v8, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v0, v7

    .line 404
    and-int/lit8 v7, v6, 0x2

    if-eqz v7, :cond_33

    .line 408
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v0, v7

    .line 409
    goto :goto_36

    .line 394
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .end local v5    # "childHeight":I
    .end local v6    # "flags":I
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 417
    .end local v1    # "i":I
    .end local v2    # "z":I
    :cond_36
    :goto_36
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/AppBarLayout;->totalScrollRange:I

    return v1
.end method

.method getUpNestedPreScrollRange()I
    .registers 2

    .line 426
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    return v0
.end method

.method hasChildWithInterpolator()Z
    .registers 2

    .line 380
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->haveChildWithInterpolator:Z

    return v0
.end method

.method hasScrollableChildren()Z
    .registers 2

    .line 421
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isLiftOnScroll()Z
    .registers 2

    .line 610
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->liftOnScroll:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .registers 6
    .param p1, "extraSpace"    # I

    .line 538
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->tmpStatesArray:[I

    if-nez v0, :cond_9

    .line 541
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout;->tmpStatesArray:[I

    .line 543
    :cond_9
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->tmpStatesArray:[I

    .line 544
    .local v0, "extraStates":[I
    array-length v1, v0

    add-int/2addr v1, p1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v1

    .line 546
    .local v1, "states":[I
    const/4 v2, 0x0

    iget-boolean v3, p0, Landroid/support/design/widget/AppBarLayout;->liftable:Z

    if-eqz v3, :cond_19

    sget v3, Landroid/support/design/R$attr;->state_liftable:I

    goto :goto_1c

    :cond_19
    sget v3, Landroid/support/design/R$attr;->state_liftable:I

    neg-int v3, v3

    :goto_1c
    aput v3, v0, v2

    .line 547
    const/4 v2, 0x1

    iget-boolean v3, p0, Landroid/support/design/widget/AppBarLayout;->liftable:Z

    if-eqz v3, :cond_2a

    iget-boolean v3, p0, Landroid/support/design/widget/AppBarLayout;->lifted:Z

    if-eqz v3, :cond_2a

    sget v3, Landroid/support/design/R$attr;->state_lifted:I

    goto :goto_2d

    :cond_2a
    sget v3, Landroid/support/design/R$attr;->state_lifted:I

    neg-int v3, v3

    :goto_2d
    aput v3, v0, v2

    .line 551
    const/4 v2, 0x2

    iget-boolean v3, p0, Landroid/support/design/widget/AppBarLayout;->liftable:Z

    if-eqz v3, :cond_37

    sget v3, Landroid/support/design/R$attr;->state_collapsible:I

    goto :goto_3a

    :cond_37
    sget v3, Landroid/support/design/R$attr;->state_collapsible:I

    neg-int v3, v3

    :goto_3a
    aput v3, v0, v2

    .line 552
    const/4 v2, 0x3

    iget-boolean v3, p0, Landroid/support/design/widget/AppBarLayout;->liftable:Z

    if-eqz v3, :cond_48

    iget-boolean v3, p0, Landroid/support/design/widget/AppBarLayout;->lifted:Z

    if-eqz v3, :cond_48

    sget v3, Landroid/support/design/R$attr;->state_collapsed:I

    goto :goto_4b

    :cond_48
    sget v3, Landroid/support/design/R$attr;->state_collapsed:I

    neg-int v3, v3

    :goto_4b
    aput v3, v0, v2

    .line 554
    invoke-static {v1, v0}, Landroid/support/design/widget/AppBarLayout;->mergeDrawableStates([I[I)[I

    move-result-object v2

    return-object v2
.end method

.method protected onLayout(ZIIII)V
    .registers 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 270
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 271
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->invalidateScrollRanges()V

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->haveChildWithInterpolator:Z

    .line 274
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v2

    .local v2, "z":I
    :goto_e
    const/4 v3, 0x1

    if-ge v1, v2, :cond_27

    .line 275
    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 276
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 277
    .local v5, "childLp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 279
    .local v6, "interpolator":Landroid/view/animation/Interpolator;
    if-eqz v6, :cond_24

    .line 280
    iput-boolean v3, p0, Landroid/support/design/widget/AppBarLayout;->haveChildWithInterpolator:Z

    .line 281
    goto :goto_27

    .line 274
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childLp":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .end local v6    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 286
    .end local v1    # "i":I
    .end local v2    # "z":I
    :cond_27
    :goto_27
    iget-boolean v1, p0, Landroid/support/design/widget/AppBarLayout;->liftableOverride:Z

    if-nez v1, :cond_39

    .line 287
    iget-boolean v1, p0, Landroid/support/design/widget/AppBarLayout;->liftOnScroll:Z

    if-nez v1, :cond_35

    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->hasCollapsibleChild()Z

    move-result v1

    if-eqz v1, :cond_36

    :cond_35
    const/4 v0, 0x1

    :cond_36
    invoke-direct {p0, v0}, Landroid/support/design/widget/AppBarLayout;->setLiftableState(Z)Z

    .line 289
    :cond_39
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 264
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 265
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->invalidateScrollRanges()V

    .line 266
    return-void
.end method

.method onWindowInsetChanged(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 4
    .param p1, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .line 650
    const/4 v0, 0x0

    .line 652
    .local v0, "newInsets":Landroid/support/v4/view/WindowInsetsCompat;
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 654
    move-object v0, p1

    .line 658
    :cond_8
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-static {v1, v0}, Landroid/support/v4/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 659
    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout;->lastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 660
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->invalidateScrollRanges()V

    .line 663
    :cond_15
    return-object p1
.end method

.method public removeOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$BaseOnOffsetChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/support/design/widget/AppBarLayout$BaseOnOffsetChangedListener;

    .line 253
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->listeners:Ljava/util/List;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    .line 254
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 256
    :cond_9
    return-void
.end method

.method public removeOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    .line 259
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->removeOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$BaseOnOffsetChangedListener;)V

    .line 260
    return-void
.end method

.method resetPendingAction()V
    .registers 2

    .line 641
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->pendingAction:I

    .line 642
    return-void
.end method

.method public setExpanded(Z)V
    .registers 3
    .param p1, "expanded"    # Z

    .line 328
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZ)V

    .line 329
    return-void
.end method

.method public setExpanded(ZZ)V
    .registers 4
    .param p1, "expanded"    # Z
    .param p2, "animate"    # Z

    .line 343
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZZ)V

    .line 344
    return-void
.end method

.method public setLiftOnScroll(Z)V
    .registers 2
    .param p1, "liftOnScroll"    # Z

    .line 605
    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout;->liftOnScroll:Z

    .line 606
    return-void
.end method

.method public setLiftable(Z)Z
    .registers 3
    .param p1, "liftable"    # Z

    .line 563
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->liftableOverride:Z

    .line 564
    invoke-direct {p0, p1}, Landroid/support/design/widget/AppBarLayout;->setLiftableState(Z)Z

    move-result v0

    return v0
.end method

.method public setLifted(Z)Z
    .registers 3
    .param p1, "lifted"    # Z

    .line 583
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->setLiftedState(Z)Z

    move-result v0

    return v0
.end method

.method setLiftedState(Z)Z
    .registers 3
    .param p1, "lifted"    # Z

    .line 588
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->lifted:Z

    if-eq v0, p1, :cond_b

    .line 589
    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout;->lifted:Z

    .line 590
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->refreshDrawableState()V

    .line 591
    const/4 v0, 0x1

    return v0

    .line 593
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public setOrientation(I)V
    .registers 4
    .param p1, "orientation"    # I

    .line 309
    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 313
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 314
    return-void

    .line 310
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppBarLayout is always vertical and does not support horizontal orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTargetElevation(F)V
    .registers 4
    .param p1, "elevation"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 622
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    .line 623
    invoke-static {p0, p1}, Landroid/support/design/widget/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    .line 625
    :cond_9
    return-void
.end method
