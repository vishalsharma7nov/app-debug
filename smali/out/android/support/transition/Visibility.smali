.class public abstract Landroid/support/transition/Visibility;
.super Landroid/support/transition/Transition;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/Visibility$DisappearListener;,
        Landroid/support/transition/Visibility$VisibilityInfo;,
        Landroid/support/transition/Visibility$Mode;
    }
.end annotation


# static fields
.field public static final MODE_IN:I = 0x1

.field public static final MODE_OUT:I = 0x2

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:visibility:parent"

.field private static final PROPNAME_SCREEN_LOCATION:Ljava/lang/String; = "android:visibility:screenLocation"

.field static final PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibility:visibility"

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 79
    const-string v0, "android:visibility:visibility"

    const-string v1, "android:visibility:parent"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 98
    invoke-direct {p0}, Landroid/support/transition/Transition;-><init>()V

    .line 96
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/transition/Visibility;->mMode:I

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/transition/Visibility;->mMode:I

    .line 103
    sget-object v0, Landroid/support/transition/Styleable;->VISIBILITY_TRANSITION:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 105
    .local v0, "a":Landroid/content/res/TypedArray;
    move-object v1, p2

    check-cast v1, Landroid/content/res/XmlResourceParser;

    const/4 v2, 0x0

    const-string v3, "transitionVisibilityMode"

    invoke-static {v0, v1, v3, v2, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    .line 108
    .local v1, "mode":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    if-eqz v1, :cond_1e

    .line 110
    invoke-virtual {p0, v1}, Landroid/support/transition/Visibility;->setMode(I)V

    .line 112
    :cond_1e
    return-void
.end method

.method private captureValues(Landroid/support/transition/TransitionValues;)V
    .registers 6
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .line 146
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 147
    .local v0, "visibility":I
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:visibility:visibility"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const-string v3, "android:visibility:parent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 150
    .local v1, "loc":[I
    iget-object v2, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 151
    iget-object v2, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:screenLocation"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method

.method private getVisibilityChangeInfo(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/support/transition/Visibility$VisibilityInfo;
    .registers 10
    .param p1, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p2, "endValues"    # Landroid/support/transition/TransitionValues;

    .line 191
    new-instance v0, Landroid/support/transition/Visibility$VisibilityInfo;

    invoke-direct {v0}, Landroid/support/transition/Visibility$VisibilityInfo;-><init>()V

    .line 192
    .local v0, "visInfo":Landroid/support/transition/Visibility$VisibilityInfo;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 193
    iput-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 194
    const-string v2, "android:visibility:parent"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const-string v5, "android:visibility:visibility"

    if-eqz p1, :cond_33

    iget-object v6, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 195
    iget-object v6, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 196
    iget-object v6, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    goto :goto_37

    .line 198
    :cond_33
    iput v4, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 199
    iput-object v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    .line 201
    :goto_37
    if-eqz p2, :cond_5a

    iget-object v6, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 202
    iget-object v3, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 203
    iget-object v3, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    goto :goto_5e

    .line 205
    :cond_5a
    iput v4, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 206
    iput-object v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    .line 208
    :goto_5e
    const/4 v2, 0x1

    if-eqz p1, :cond_9a

    if-eqz p2, :cond_9a

    .line 209
    iget v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v4, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-ne v3, v4, :cond_70

    iget-object v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    iget-object v4, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-ne v3, v4, :cond_70

    .line 211
    return-object v0

    .line 213
    :cond_70
    iget v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v4, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-eq v3, v4, :cond_88

    .line 214
    iget v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-nez v3, :cond_7f

    .line 215
    iput-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 216
    iput-boolean v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_af

    .line 217
    :cond_7f
    iget v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez v1, :cond_af

    .line 218
    iput-boolean v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 219
    iput-boolean v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_af

    .line 223
    :cond_88
    iget-object v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-nez v3, :cond_91

    .line 224
    iput-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 225
    iput-boolean v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_af

    .line 226
    :cond_91
    iget-object v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_af

    .line 227
    iput-boolean v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 228
    iput-boolean v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_af

    .line 232
    :cond_9a
    if-nez p1, :cond_a5

    iget v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez v3, :cond_a5

    .line 233
    iput-boolean v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 234
    iput-boolean v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_af

    .line 235
    :cond_a5
    if-nez p2, :cond_af

    iget v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-nez v3, :cond_af

    .line 236
    iput-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 237
    iput-boolean v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 239
    :cond_af
    :goto_af
    return-object v0
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 161
    invoke-direct {p0, p1}, Landroid/support/transition/Visibility;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 162
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 156
    invoke-direct {p0, p1}, Landroid/support/transition/Visibility;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 157
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 12
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "endValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 246
    invoke-direct {p0, p2, p3}, Landroid/support/transition/Visibility;->getVisibilityChangeInfo(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/support/transition/Visibility$VisibilityInfo;

    move-result-object v0

    .line 247
    .local v0, "visInfo":Landroid/support/transition/Visibility$VisibilityInfo;
    iget-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz v1, :cond_2e

    iget-object v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_10

    iget-object v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2e

    .line 249
    :cond_10
    iget-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    if-eqz v1, :cond_21

    .line 250
    iget v5, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v7, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/support/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v1

    return-object v1

    .line 253
    :cond_21
    iget v5, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v7, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/support/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v1

    return-object v1

    .line 258
    :cond_2e
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMode()I
    .registers 2

    .line 136
    iget v0, p0, Landroid/support/transition/Visibility;->mMode:I

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 142
    sget-object v0, Landroid/support/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public isTransitionRequired(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Z
    .registers 7
    .param p1, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p2, "newValues"    # Landroid/support/transition/TransitionValues;

    .line 462
    const/4 v0, 0x0

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    .line 463
    return v0

    .line 465
    :cond_6
    if-eqz p1, :cond_1b

    if-eqz p2, :cond_1b

    iget-object v1, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    .line 466
    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    .line 467
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eq v1, v2, :cond_1b

    .line 470
    return v0

    .line 472
    :cond_1b
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Visibility;->getVisibilityChangeInfo(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/support/transition/Visibility$VisibilityInfo;

    move-result-object v1

    .line 473
    .local v1, "changeInfo":Landroid/support/transition/Visibility$VisibilityInfo;
    iget-boolean v2, v1, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz v2, :cond_2c

    iget v2, v1, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-eqz v2, :cond_2b

    iget v2, v1, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez v2, :cond_2c

    :cond_2b
    const/4 v0, 0x1

    :cond_2c
    return v0
.end method

.method public isVisible(Landroid/support/transition/TransitionValues;)Z
    .registers 6
    .param p1, "values"    # Landroid/support/transition/TransitionValues;

    .line 180
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 181
    return v0

    .line 183
    :cond_4
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 184
    .local v1, "visibility":I
    iget-object v2, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:parent"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 186
    .local v2, "parent":Landroid/view/View;
    if-nez v1, :cond_21

    if-eqz v2, :cond_21

    const/4 v0, 0x1

    :cond_21
    return v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 12
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/support/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .line 279
    iget v0, p0, Landroid/support/transition/Visibility;->mMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2e

    if-nez p4, :cond_a

    goto :goto_2e

    .line 282
    :cond_a
    if-nez p2, :cond_27

    .line 283
    iget-object v0, p4, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 284
    .local v0, "endParent":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v3

    .line 286
    .local v3, "startParentValues":Landroid/support/transition/TransitionValues;
    invoke-virtual {p0, v0, v1}, Landroid/support/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v1

    .line 287
    .local v1, "endParentValues":Landroid/support/transition/TransitionValues;
    nop

    .line 288
    invoke-direct {p0, v3, v1}, Landroid/support/transition/Visibility;->getVisibilityChangeInfo(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/support/transition/Visibility$VisibilityInfo;

    move-result-object v4

    .line 289
    .local v4, "parentVisibilityInfo":Landroid/support/transition/Visibility$VisibilityInfo;
    iget-boolean v5, v4, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz v5, :cond_27

    .line 290
    return-object v2

    .line 293
    .end local v0    # "endParent":Landroid/view/View;
    .end local v1    # "endParentValues":Landroid/support/transition/TransitionValues;
    .end local v3    # "startParentValues":Landroid/support/transition/TransitionValues;
    .end local v4    # "parentVisibilityInfo":Landroid/support/transition/Visibility$VisibilityInfo;
    :cond_27
    iget-object v0, p4, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, p1, v0, p2, p4}, Landroid/support/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    .line 280
    :cond_2e
    :goto_2e
    return-object v2
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/support/transition/TransitionValues;

    .line 315
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 25
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/support/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .line 336
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    iget v4, v0, Landroid/support/transition/Visibility;->mMode:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    const/4 v6, 0x0

    if-eq v4, v5, :cond_10

    .line 337
    return-object v6

    .line 340
    :cond_10
    if-eqz v2, :cond_15

    iget-object v4, v2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_16

    :cond_15
    move-object v4, v6

    .line 341
    .local v4, "startView":Landroid/view/View;
    :goto_16
    if-eqz v3, :cond_1b

    iget-object v7, v3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_1c

    :cond_1b
    move-object v7, v6

    .line 342
    .local v7, "endView":Landroid/view/View;
    :goto_1c
    const/4 v8, 0x0

    .line 343
    .local v8, "overlayView":Landroid/view/View;
    const/4 v9, 0x0

    .line 344
    .local v9, "viewToKeep":Landroid/view/View;
    const/4 v10, 0x1

    if-eqz v7, :cond_49

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_2a

    move/from16 v12, p5

    goto :goto_4b

    .line 379
    :cond_2a
    const/4 v11, 0x4

    move/from16 v12, p5

    if-ne v12, v11, :cond_32

    .line 380
    move-object v9, v7

    goto/16 :goto_97

    .line 383
    :cond_32
    if-ne v4, v7, :cond_37

    .line 384
    move-object v9, v7

    goto/16 :goto_97

    .line 385
    :cond_37
    iget-boolean v11, v0, Landroid/support/transition/Visibility;->mCanRemoveViews:Z

    if-eqz v11, :cond_3d

    .line 386
    move-object v8, v4

    goto :goto_97

    .line 388
    :cond_3d
    nop

    .line 389
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 388
    invoke-static {v1, v4, v11}, Landroid/support/transition/TransitionUtils;->copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    goto :goto_97

    .line 344
    :cond_49
    move/from16 v12, p5

    .line 345
    :goto_4b
    if-eqz v7, :cond_4f

    .line 347
    move-object v8, v7

    goto :goto_97

    .line 348
    :cond_4f
    if-eqz v4, :cond_97

    .line 352
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_59

    .line 354
    move-object v8, v4

    goto :goto_97

    .line 355
    :cond_59
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    instance-of v11, v11, Landroid/view/View;

    if-eqz v11, :cond_97

    .line 356
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 357
    .local v11, "startParent":Landroid/view/View;
    invoke-virtual {v0, v11, v10}, Landroid/support/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v13

    .line 358
    .local v13, "startParentValues":Landroid/support/transition/TransitionValues;
    invoke-virtual {v0, v11, v10}, Landroid/support/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v14

    .line 360
    .local v14, "endParentValues":Landroid/support/transition/TransitionValues;
    nop

    .line 361
    invoke-direct {v0, v13, v14}, Landroid/support/transition/Visibility;->getVisibilityChangeInfo(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/support/transition/Visibility$VisibilityInfo;

    move-result-object v15

    .line 362
    .local v15, "parentVisibilityInfo":Landroid/support/transition/Visibility$VisibilityInfo;
    iget-boolean v6, v15, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-nez v6, :cond_7e

    .line 363
    invoke-static {v1, v4, v11}, Landroid/support/transition/TransitionUtils;->copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    move-object v8, v6

    .end local v8    # "overlayView":Landroid/view/View;
    .local v6, "overlayView":Landroid/view/View;
    goto :goto_97

    .line 365
    .end local v6    # "overlayView":Landroid/view/View;
    .restart local v8    # "overlayView":Landroid/view/View;
    :cond_7e
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_97

    .line 366
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v6

    .line 367
    .local v6, "id":I
    const/4 v5, -0x1

    if-eq v6, v5, :cond_97

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_97

    iget-boolean v5, v0, Landroid/support/transition/Visibility;->mCanRemoveViews:Z

    if-eqz v5, :cond_97

    .line 372
    move-object v5, v4

    move-object v8, v5

    .line 393
    .end local v6    # "id":I
    .end local v11    # "startParent":Landroid/view/View;
    .end local v13    # "startParentValues":Landroid/support/transition/TransitionValues;
    .end local v14    # "endParentValues":Landroid/support/transition/TransitionValues;
    .end local v15    # "parentVisibilityInfo":Landroid/support/transition/Visibility$VisibilityInfo;
    :cond_97
    :goto_97
    move/from16 v5, p5

    .line 395
    .local v5, "finalVisibility":I
    const/4 v6, 0x0

    if-eqz v8, :cond_f3

    if-eqz v2, :cond_f3

    .line 397
    iget-object v11, v2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v13, "android:visibility:screenLocation"

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    check-cast v11, [I

    .line 398
    .local v11, "screenLoc":[I
    aget v13, v11, v6

    .line 399
    .local v13, "screenX":I
    aget v14, v11, v10

    .line 400
    .local v14, "screenY":I
    const/4 v15, 0x2

    new-array v15, v15, [I

    .line 401
    .local v15, "loc":[I
    invoke-virtual {v1, v15}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 402
    aget v6, v15, v6

    sub-int v6, v13, v6

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v16

    sub-int v6, v6, v16

    invoke-virtual {v8, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 403
    aget v6, v15, v10

    sub-int v6, v14, v6

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int/2addr v6, v10

    invoke-virtual {v8, v6}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 404
    invoke-static/range {p1 .. p1}, Landroid/support/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroid/support/transition/ViewGroupOverlayImpl;

    move-result-object v6

    .line 405
    .local v6, "overlay":Landroid/support/transition/ViewGroupOverlayImpl;
    invoke-interface {v6, v8}, Landroid/support/transition/ViewGroupOverlayImpl;->add(Landroid/view/View;)V

    .line 406
    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/support/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v10

    .line 407
    .local v10, "animator":Landroid/animation/Animator;
    if-nez v10, :cond_e2

    .line 408
    invoke-interface {v6, v8}, Landroid/support/transition/ViewGroupOverlayImpl;->remove(Landroid/view/View;)V

    move-object/from16 v17, v4

    move-object/from16 v18, v7

    goto :goto_f2

    .line 410
    :cond_e2
    move-object/from16 v16, v8

    .line 411
    .local v16, "finalOverlayView":Landroid/view/View;
    move-object/from16 v17, v4

    .end local v4    # "startView":Landroid/view/View;
    .local v17, "startView":Landroid/view/View;
    new-instance v4, Landroid/support/transition/Visibility$1;

    move-object/from16 v18, v7

    move-object/from16 v7, v16

    .end local v16    # "finalOverlayView":Landroid/view/View;
    .local v7, "finalOverlayView":Landroid/view/View;
    .local v18, "endView":Landroid/view/View;
    invoke-direct {v4, v0, v6, v7}, Landroid/support/transition/Visibility$1;-><init>(Landroid/support/transition/Visibility;Landroid/support/transition/ViewGroupOverlayImpl;Landroid/view/View;)V

    invoke-virtual {v10, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 418
    .end local v7    # "finalOverlayView":Landroid/view/View;
    :goto_f2
    return-object v10

    .line 395
    .end local v6    # "overlay":Landroid/support/transition/ViewGroupOverlayImpl;
    .end local v10    # "animator":Landroid/animation/Animator;
    .end local v11    # "screenLoc":[I
    .end local v13    # "screenX":I
    .end local v14    # "screenY":I
    .end local v15    # "loc":[I
    .end local v17    # "startView":Landroid/view/View;
    .end local v18    # "endView":Landroid/view/View;
    .restart local v4    # "startView":Landroid/view/View;
    .local v7, "endView":Landroid/view/View;
    :cond_f3
    move-object/from16 v17, v4

    move-object/from16 v18, v7

    .line 421
    .end local v4    # "startView":Landroid/view/View;
    .end local v7    # "endView":Landroid/view/View;
    .restart local v17    # "startView":Landroid/view/View;
    .restart local v18    # "endView":Landroid/view/View;
    if-eqz v9, :cond_119

    .line 422
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v4

    .line 423
    .local v4, "originalVisibility":I
    invoke-static {v9, v6}, Landroid/support/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 424
    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/support/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v6

    .line 425
    .local v6, "animator":Landroid/animation/Animator;
    if-eqz v6, :cond_115

    .line 426
    new-instance v7, Landroid/support/transition/Visibility$DisappearListener;

    invoke-direct {v7, v9, v5, v10}, Landroid/support/transition/Visibility$DisappearListener;-><init>(Landroid/view/View;IZ)V

    .line 428
    .local v7, "disappearListener":Landroid/support/transition/Visibility$DisappearListener;
    invoke-virtual {v6, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 429
    invoke-static {v6, v7}, Landroid/support/transition/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 430
    invoke-virtual {v0, v7}, Landroid/support/transition/Visibility;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    .line 431
    .end local v7    # "disappearListener":Landroid/support/transition/Visibility$DisappearListener;
    goto :goto_118

    .line 432
    :cond_115
    invoke-static {v9, v4}, Landroid/support/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 434
    :goto_118
    return-object v6

    .line 436
    .end local v4    # "originalVisibility":I
    .end local v6    # "animator":Landroid/animation/Animator;
    :cond_119
    const/4 v4, 0x0

    return-object v4
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/support/transition/TransitionValues;

    .line 457
    const/4 v0, 0x0

    return-object v0
.end method

.method public setMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 122
    and-int/lit8 v0, p1, -0x4

    if-nez v0, :cond_7

    .line 125
    iput p1, p0, Landroid/support/transition/Visibility;->mMode:I

    .line 126
    return-void

    .line 123
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
