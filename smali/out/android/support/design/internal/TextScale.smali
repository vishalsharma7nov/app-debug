.class public Landroid/support/design/internal/TextScale;
.super Landroid/support/transition/Transition;
.source "TextScale.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final PROPNAME_SCALE:Ljava/lang/String; = "android:textscale:scale"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Landroid/support/transition/Transition;-><init>()V

    return-void
.end method

.method private captureValues(Landroid/support/transition/TransitionValues;)V
    .registers 6
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .line 46
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_19

    .line 47
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 48
    .local v0, "textview":Landroid/widget/TextView;
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/widget/TextView;->getScaleX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "android:textscale:scale"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .end local v0    # "textview":Landroid/widget/TextView;
    :cond_19
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .line 42
    invoke-direct {p0, p1}, Landroid/support/design/internal/TextScale;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 43
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .line 37
    invoke-direct {p0, p1}, Landroid/support/design/internal/TextScale;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 38
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 12
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/support/transition/TransitionValues;

    .line 55
    const/4 v0, 0x0

    if-eqz p2, :cond_5f

    if-eqz p3, :cond_5f

    iget-object v1, p2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_5f

    iget-object v1, p3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/TextView;

    if-nez v1, :cond_12

    goto :goto_5f

    .line 61
    :cond_12
    iget-object v1, p3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    .line 62
    .local v1, "view":Landroid/widget/TextView;
    iget-object v2, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    .line 63
    .local v2, "startVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p3, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    .line 64
    .local v3, "endVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    nop

    .line 65
    const-string v4, "android:textscale:scale"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v5, :cond_30

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    goto :goto_32

    :cond_30
    const/high16 v5, 0x3f800000    # 1.0f

    .line 66
    .local v5, "startSize":F
    :goto_32
    nop

    .line 67
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_43

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v6

    :cond_43
    move v4, v6

    .line 68
    .local v4, "endSize":F
    cmpl-float v6, v5, v4

    if-nez v6, :cond_49

    .line 69
    return-object v0

    .line 72
    :cond_49
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v6, 0x0

    aput v5, v0, v6

    const/4 v6, 0x1

    aput v4, v0, v6

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 74
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v6, Landroid/support/design/internal/TextScale$1;

    invoke-direct {v6, p0, v1}, Landroid/support/design/internal/TextScale$1;-><init>(Landroid/support/design/internal/TextScale;Landroid/widget/TextView;)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 83
    return-object v0

    .line 59
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "view":Landroid/widget/TextView;
    .end local v2    # "startVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "endVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "endSize":F
    .end local v5    # "startSize":F
    :cond_5f
    :goto_5f
    return-object v0
.end method
