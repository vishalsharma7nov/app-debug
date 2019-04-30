.class public Landroid/support/transition/Fade;
.super Landroid/support/transition/Visibility;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/Fade$FadeAnimatorListener;
    }
.end annotation


# static fields
.field public static final IN:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Fade"

.field public static final OUT:I = 0x2

.field private static final PROPNAME_TRANSITION_ALPHA:Ljava/lang/String; = "android:fade:transitionAlpha"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 97
    invoke-direct {p0}, Landroid/support/transition/Visibility;-><init>()V

    .line 98
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "fadingMode"    # I

    .line 90
    invoke-direct {p0}, Landroid/support/transition/Visibility;-><init>()V

    .line 91
    invoke-virtual {p0, p1}, Landroid/support/transition/Fade;->setMode(I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    sget-object v0, Landroid/support/transition/Styleable;->FADE:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 104
    .local v0, "a":Landroid/content/res/TypedArray;
    move-object v1, p2

    check-cast v1, Landroid/content/res/XmlResourceParser;

    .line 105
    invoke-virtual {p0}, Landroid/support/transition/Fade;->getMode()I

    move-result v2

    .line 104
    const-string v3, "fadingMode"

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    .line 106
    .local v1, "fadingMode":I
    invoke-virtual {p0, v1}, Landroid/support/transition/Fade;->setMode(I)V

    .line 107
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    return-void
.end method

.method private createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startAlpha"    # F
    .param p3, "endAlpha"    # F

    .line 121
    cmpl-float v0, p2, p3

    if-nez v0, :cond_6

    .line 122
    const/4 v0, 0x0

    return-object v0

    .line 124
    :cond_6
    invoke-static {p1, p2}, Landroid/support/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    .line 125
    sget-object v0, Landroid/support/transition/ViewUtils;->TRANSITION_ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 130
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/support/transition/Fade$FadeAnimatorListener;

    invoke-direct {v1, p1}, Landroid/support/transition/Fade$FadeAnimatorListener;-><init>(Landroid/view/View;)V

    .line 131
    .local v1, "listener":Landroid/support/transition/Fade$FadeAnimatorListener;
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 132
    new-instance v2, Landroid/support/transition/Fade$1;

    invoke-direct {v2, p0, p1}, Landroid/support/transition/Fade$1;-><init>(Landroid/support/transition/Fade;Landroid/view/View;)V

    invoke-virtual {p0, v2}, Landroid/support/transition/Fade;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    .line 140
    return-object v0
.end method

.method private static getStartAlpha(Landroid/support/transition/TransitionValues;F)F
    .registers 5
    .param p0, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p1, "fallbackValue"    # F

    .line 168
    move v0, p1

    .line 169
    .local v0, "startAlpha":F
    if-eqz p0, :cond_13

    .line 170
    iget-object v1, p0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:fade:transitionAlpha"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 171
    .local v1, "startAlphaFloat":Ljava/lang/Float;
    if-eqz v1, :cond_13

    .line 172
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 175
    .end local v1    # "startAlphaFloat":Ljava/lang/Float;
    :cond_13
    return v0
.end method


# virtual methods
.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .registers 5
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 112
    invoke-super {p0, p1}, Landroid/support/transition/Visibility;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    .line 113
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v1, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 114
    invoke-static {v1}, Landroid/support/transition/ViewUtils;->getTransitionAlpha(Landroid/view/View;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 113
    const-string v2, "android:fade:transitionAlpha"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 8
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/support/transition/TransitionValues;

    .line 152
    const/4 v0, 0x0

    invoke-static {p3, v0}, Landroid/support/transition/Fade;->getStartAlpha(Landroid/support/transition/TransitionValues;F)F

    move-result v0

    .line 153
    .local v0, "startAlpha":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-nez v2, :cond_c

    .line 154
    const/4 v0, 0x0

    .line 156
    :cond_c
    invoke-direct {p0, p2, v0, v1}, Landroid/support/transition/Fade;->createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v1

    return-object v1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 7
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/support/transition/TransitionValues;

    .line 162
    invoke-static {p2}, Landroid/support/transition/ViewUtils;->saveNonTransitionAlpha(Landroid/view/View;)V

    .line 163
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p3, v0}, Landroid/support/transition/Fade;->getStartAlpha(Landroid/support/transition/TransitionValues;F)F

    move-result v0

    .line 164
    .local v0, "startAlpha":F
    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/support/transition/Fade;->createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v1

    return-object v1
.end method
