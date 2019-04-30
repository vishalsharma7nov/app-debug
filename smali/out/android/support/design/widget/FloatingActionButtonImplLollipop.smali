.class Landroid/support/design/widget/FloatingActionButtonImplLollipop;
.super Landroid/support/design/widget/FloatingActionButtonImpl;
.source "FloatingActionButtonImplLollipop.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/FloatingActionButtonImplLollipop$AlwaysStatefulGradientDrawable;
    }
.end annotation


# instance fields
.field private insetDrawable:Landroid/graphics/drawable/InsetDrawable;


# direct methods
.method constructor <init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/ShadowViewDelegate;)V
    .registers 3
    .param p1, "view"    # Landroid/support/design/widget/VisibilityAwareImageButton;
    .param p2, "shadowViewDelegate"    # Landroid/support/design/widget/ShadowViewDelegate;

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButtonImpl;-><init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/ShadowViewDelegate;)V

    .line 54
    return-void
.end method

.method private createElevationAnimator(FF)Landroid/animation/Animator;
    .registers 10
    .param p1, "elevation"    # F
    .param p2, "translationZ"    # F
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 155
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 156
    .local v0, "set":Landroid/animation/AnimatorSet;
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    const-string v5, "elevation"

    invoke-static {v1, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v3, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    sget-object v5, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v2, v2, [F

    aput p2, v2, v4

    .line 158
    invoke-static {v3, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 159
    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 157
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 160
    sget-object v1, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->ELEVATION_ANIM_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 161
    return-object v0
.end method


# virtual methods
.method public getElevation()F
    .registers 2

    .line 166
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getElevation()F

    move-result v0

    return v0
.end method

.method getPadding(Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 228
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->shadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    invoke-interface {v0}, Landroid/support/design/widget/ShadowViewDelegate;->isCompatPaddingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    .line 229
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->shadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    invoke-interface {v0}, Landroid/support/design/widget/ShadowViewDelegate;->getRadius()F

    move-result v0

    .line 230
    .local v0, "radius":F
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->getElevation()F

    move-result v2

    iget v3, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->pressedTranslationZ:F

    add-float/2addr v2, v3

    .line 231
    .local v2, "maxShadowSize":F
    nop

    .line 234
    invoke-static {v2, v0, v1}, Landroid/support/design/widget/ShadowDrawableWrapper;->calculateHorizontalPadding(FFZ)F

    move-result v3

    float-to-double v3, v3

    .line 233
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 235
    .local v3, "hPadding":I
    nop

    .line 238
    invoke-static {v2, v0, v1}, Landroid/support/design/widget/ShadowDrawableWrapper;->calculateVerticalPadding(FFZ)F

    move-result v1

    float-to-double v4, v1

    .line 237
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 239
    .local v1, "vPadding":I
    invoke-virtual {p1, v3, v1, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 240
    .end local v0    # "radius":F
    .end local v1    # "vPadding":I
    .end local v2    # "maxShadowSize":F
    .end local v3    # "hPadding":I
    goto :goto_33

    .line 241
    :cond_30
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 243
    :goto_33
    return-void
.end method

.method jumpDrawableToCurrentState()V
    .registers 1

    .line 209
    return-void
.end method

.method newCircularDrawable()Landroid/support/design/widget/CircularBorderDrawable;
    .registers 2

    .line 218
    new-instance v0, Landroid/support/design/widget/CircularBorderDrawableLollipop;

    invoke-direct {v0}, Landroid/support/design/widget/CircularBorderDrawableLollipop;-><init>()V

    return-object v0
.end method

.method newGradientDrawableForShape()Landroid/graphics/drawable/GradientDrawable;
    .registers 2

    .line 223
    new-instance v0, Landroid/support/design/widget/FloatingActionButtonImplLollipop$AlwaysStatefulGradientDrawable;

    invoke-direct {v0}, Landroid/support/design/widget/FloatingActionButtonImplLollipop$AlwaysStatefulGradientDrawable;-><init>()V

    return-object v0
.end method

.method onCompatShadowChanged()V
    .registers 1

    .line 171
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->updatePadding()V

    .line 172
    return-void
.end method

.method onDrawableStateChanged([I)V
    .registers 5
    .param p1, "state"    # [I

    .line 188
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_4f

    .line 189
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    .line 190
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    iget v2, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->elevation:F

    invoke-virtual {v0, v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->setElevation(F)V

    .line 191
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 192
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    iget v1, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->pressedTranslationZ:F

    invoke-virtual {v0, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setTranslationZ(F)V

    goto :goto_4f

    .line 193
    :cond_26
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->isFocused()Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->isHovered()Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_3d

    .line 196
    :cond_37
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setTranslationZ(F)V

    goto :goto_4f

    .line 194
    :cond_3d
    :goto_3d
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    iget v1, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->hoveredFocusedTranslationZ:F

    invoke-virtual {v0, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setTranslationZ(F)V

    goto :goto_4f

    .line 199
    :cond_45
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setElevation(F)V

    .line 200
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->setTranslationZ(F)V

    .line 204
    :cond_4f
    :goto_4f
    return-void
.end method

.method onElevationsChanged(FFF)V
    .registers 15
    .param p1, "elevation"    # F
    .param p2, "hoveredFocusedTranslationZ"    # F
    .param p3, "pressedTranslationZ"    # F

    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_d

    .line 105
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->refreshDrawableState()V

    goto/16 :goto_b5

    .line 107
    :cond_d
    new-instance v0, Landroid/animation/StateListAnimator;

    invoke-direct {v0}, Landroid/animation/StateListAnimator;-><init>()V

    .line 110
    .local v0, "stateListAnimator":Landroid/animation/StateListAnimator;
    sget-object v1, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->PRESSED_ENABLED_STATE_SET:[I

    .line 111
    invoke-direct {p0, p1, p3}, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Landroid/animation/Animator;

    move-result-object v2

    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 112
    sget-object v1, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->HOVERED_FOCUSED_ENABLED_STATE_SET:[I

    .line 114
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Landroid/animation/Animator;

    move-result-object v2

    .line 112
    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 115
    sget-object v1, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->FOCUSED_ENABLED_STATE_SET:[I

    .line 117
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Landroid/animation/Animator;

    move-result-object v2

    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 118
    sget-object v1, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->HOVERED_ENABLED_STATE_SET:[I

    .line 120
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Landroid/animation/Animator;

    move-result-object v2

    .line 118
    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 123
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 124
    .local v1, "set":Landroid/animation/AnimatorSet;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v2, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v3, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    const-string v7, "elevation"

    invoke-static {v3, v7, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v7, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x16

    const-wide/16 v7, 0x64

    if-lt v3, v5, :cond_7e

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-gt v3, v5, :cond_7e

    .line 131
    iget-object v3, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    sget-object v5, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v9, v4, [F

    iget-object v10, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    .line 132
    invoke-virtual {v10}, Landroid/support/design/widget/VisibilityAwareImageButton;->getTranslationZ()F

    move-result v10

    aput v10, v9, v6

    invoke-static {v3, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 133
    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 131
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_7e
    iget-object v3, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    sget-object v5, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v4, v4, [F

    const/4 v9, 0x0

    aput v9, v4, v6

    .line 136
    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 137
    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 135
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-array v3, v6, [Landroid/animation/Animator;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/animation/Animator;

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 139
    sget-object v3, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->ELEVATION_ANIM_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 140
    sget-object v3, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->ENABLED_STATE_SET:[I

    invoke-virtual {v0, v3, v1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 143
    sget-object v3, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->EMPTY_STATE_SET:[I

    invoke-direct {p0, v9, v9}, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 145
    iget-object v3, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->view:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v3, v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 148
    .end local v0    # "stateListAnimator":Landroid/animation/StateListAnimator;
    .end local v1    # "set":Landroid/animation/AnimatorSet;
    .end local v2    # "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    :goto_b5
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->shadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    invoke-interface {v0}, Landroid/support/design/widget/ShadowViewDelegate;->isCompatPaddingEnabled()Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 149
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->updatePadding()V

    .line 151
    :cond_c0
    return-void
.end method

.method onPaddingUpdated(Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 176
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->shadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    invoke-interface {v0}, Landroid/support/design/widget/ShadowViewDelegate;->isCompatPaddingEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 177
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->insetDrawable:Landroid/graphics/drawable/InsetDrawable;

    .line 180
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->shadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->insetDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-interface {v0, v1}, Landroid/support/design/widget/ShadowViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_29

    .line 182
    :cond_22
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->shadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Landroid/support/design/widget/ShadowViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    :goto_29
    return-void
.end method

.method requirePreDrawListener()Z
    .registers 2

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method setBackgroundDrawable(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V
    .registers 10
    .param p1, "backgroundTint"    # Landroid/content/res/ColorStateList;
    .param p2, "backgroundTintMode"    # Landroid/graphics/PorterDuff$Mode;
    .param p3, "rippleColor"    # Landroid/content/res/ColorStateList;
    .param p4, "borderWidth"    # I

    .line 63
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->createShapeDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    .line 64
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 65
    if-eqz p2, :cond_16

    .line 66
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 70
    :cond_16
    const/4 v0, 0x0

    if-lez p4, :cond_32

    .line 71
    invoke-virtual {p0, p4, p1}, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->createBorderDrawable(ILandroid/content/res/ColorStateList;)Landroid/support/design/widget/CircularBorderDrawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->borderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    .line 72
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->borderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .local v1, "rippleContent":Landroid/graphics/drawable/Drawable;
    goto :goto_36

    .line 74
    .end local v1    # "rippleContent":Landroid/graphics/drawable/Drawable;
    :cond_32
    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->borderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    .line 75
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->shapeDrawable:Landroid/graphics/drawable/Drawable;

    .line 78
    .restart local v1    # "rippleContent":Landroid/graphics/drawable/Drawable;
    :goto_36
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    .line 80
    invoke-static {p3}, Landroid/support/design/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 82
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->contentBackground:Landroid/graphics/drawable/Drawable;

    .line 84
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->shadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v2}, Landroid/support/design/widget/ShadowViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    return-void
.end method

.method setRippleColor(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "rippleColor"    # Landroid/content/res/ColorStateList;

    .line 89
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_12

    .line 90
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImplLollipop;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 91
    invoke-static {p1}, Landroid/support/design/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_15

    .line 93
    :cond_12
    invoke-super {p0, p1}, Landroid/support/design/widget/FloatingActionButtonImpl;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 95
    :goto_15
    return-void
.end method
