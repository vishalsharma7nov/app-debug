.class public Landroid/support/transition/FragmentTransitionSupport;
.super Landroid/support/v4/app/FragmentTransitionImpl;
.source "FragmentTransitionSupport.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/FragmentTransitionImpl;-><init>()V

    return-void
.end method

.method private static hasSimpleTarget(Landroid/support/transition/Transition;)Z
    .registers 2
    .param p0, "transition"    # Landroid/support/transition/Transition;

    .line 123
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getTargetIds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/support/transition/FragmentTransitionSupport;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 124
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getTargetNames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/support/transition/FragmentTransitionSupport;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 125
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getTargetTypes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/support/transition/FragmentTransitionSupport;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    :goto_22
    return v0
.end method


# virtual methods
.method public addTarget(Ljava/lang/Object;Landroid/view/View;)V
    .registers 4
    .param p1, "transitionObj"    # Ljava/lang/Object;
    .param p2, "view"    # Landroid/view/View;

    .line 291
    if-eqz p1, :cond_8

    .line 292
    move-object v0, p1

    check-cast v0, Landroid/support/transition/Transition;

    .line 293
    .local v0, "transition":Landroid/support/transition/Transition;
    invoke-virtual {v0, p2}, Landroid/support/transition/Transition;->addTarget(Landroid/view/View;)Landroid/support/transition/Transition;

    .line 295
    .end local v0    # "transition":Landroid/support/transition/Transition;
    :cond_8
    return-void
.end method

.method public addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 8
    .param p1, "transitionObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 99
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v0, p1

    check-cast v0, Landroid/support/transition/Transition;

    .line 100
    .local v0, "transition":Landroid/support/transition/Transition;
    if-nez v0, :cond_6

    .line 101
    return-void

    .line 103
    :cond_6
    instance-of v1, v0, Landroid/support/transition/TransitionSet;

    if-eqz v1, :cond_1f

    .line 104
    move-object v1, v0

    check-cast v1, Landroid/support/transition/TransitionSet;

    .line 105
    .local v1, "set":Landroid/support/transition/TransitionSet;
    invoke-virtual {v1}, Landroid/support/transition/TransitionSet;->getTransitionCount()I

    move-result v2

    .line 106
    .local v2, "numTransitions":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v2, :cond_1e

    .line 107
    invoke-virtual {v1, v3}, Landroid/support/transition/TransitionSet;->getTransitionAt(I)Landroid/support/transition/Transition;

    move-result-object v4

    .line 108
    .local v4, "child":Landroid/support/transition/Transition;
    invoke-virtual {p0, v4, p2}, Landroid/support/transition/FragmentTransitionSupport;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 106
    .end local v4    # "child":Landroid/support/transition/Transition;
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .end local v1    # "set":Landroid/support/transition/TransitionSet;
    .end local v2    # "numTransitions":I
    .end local v3    # "i":I
    :cond_1e
    goto :goto_42

    .line 110
    :cond_1f
    invoke-static {v0}, Landroid/support/transition/FragmentTransitionSupport;->hasSimpleTarget(Landroid/support/transition/Transition;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 111
    invoke-virtual {v0}, Landroid/support/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v1

    .line 112
    .local v1, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-static {v1}, Landroid/support/transition/FragmentTransitionSupport;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 114
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 115
    .local v2, "numViews":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_34
    if-ge v3, v2, :cond_43

    .line 116
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/support/transition/Transition;->addTarget(Landroid/view/View;)Landroid/support/transition/Transition;

    .line 115
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 110
    .end local v1    # "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v2    # "numViews":I
    .end local v3    # "i":I
    :cond_42
    :goto_42
    nop

    .line 120
    :cond_43
    return-void
.end method

.method public beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .registers 4
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "transition"    # Ljava/lang/Object;

    .line 210
    move-object v0, p2

    check-cast v0, Landroid/support/transition/Transition;

    invoke-static {p1, v0}, Landroid/support/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V

    .line 211
    return-void
.end method

.method public canHandle(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "transition"    # Ljava/lang/Object;

    .line 43
    instance-of v0, p1, Landroid/support/transition/Transition;

    return v0
.end method

.method public cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "transition"    # Ljava/lang/Object;

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "copy":Landroid/support/transition/Transition;
    if-eqz p1, :cond_a

    .line 50
    move-object v1, p1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v1}, Landroid/support/transition/Transition;->clone()Landroid/support/transition/Transition;

    move-result-object v0

    .line 52
    :cond_a
    return-object v0
.end method

.method public mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p1, "exitTransitionObj"    # Ljava/lang/Object;
    .param p2, "enterTransitionObj"    # Ljava/lang/Object;
    .param p3, "sharedElementTransitionObj"    # Ljava/lang/Object;

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "staggered":Landroid/support/transition/Transition;
    move-object v1, p1

    check-cast v1, Landroid/support/transition/Transition;

    .line 184
    .local v1, "exitTransition":Landroid/support/transition/Transition;
    move-object v2, p2

    check-cast v2, Landroid/support/transition/Transition;

    .line 185
    .local v2, "enterTransition":Landroid/support/transition/Transition;
    move-object v3, p3

    check-cast v3, Landroid/support/transition/Transition;

    .line 186
    .local v3, "sharedElementTransition":Landroid/support/transition/Transition;
    if-eqz v1, :cond_21

    if-eqz v2, :cond_21

    .line 187
    new-instance v4, Landroid/support/transition/TransitionSet;

    invoke-direct {v4}, Landroid/support/transition/TransitionSet;-><init>()V

    .line 188
    invoke-virtual {v4, v1}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    move-result-object v4

    .line 189
    invoke-virtual {v4, v2}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    move-result-object v4

    const/4 v5, 0x1

    .line 190
    invoke-virtual {v4, v5}, Landroid/support/transition/TransitionSet;->setOrdering(I)Landroid/support/transition/TransitionSet;

    move-result-object v0

    goto :goto_28

    .line 191
    :cond_21
    if-eqz v1, :cond_25

    .line 192
    move-object v0, v1

    goto :goto_28

    .line 193
    :cond_25
    if-eqz v2, :cond_28

    .line 194
    move-object v0, v2

    .line 196
    :cond_28
    :goto_28
    if-eqz v3, :cond_38

    .line 197
    new-instance v4, Landroid/support/transition/TransitionSet;

    invoke-direct {v4}, Landroid/support/transition/TransitionSet;-><init>()V

    .line 198
    .local v4, "together":Landroid/support/transition/TransitionSet;
    if-eqz v0, :cond_34

    .line 199
    invoke-virtual {v4, v0}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 201
    :cond_34
    invoke-virtual {v4, v3}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 202
    return-object v4

    .line 204
    .end local v4    # "together":Landroid/support/transition/TransitionSet;
    :cond_38
    return-object v0
.end method

.method public mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "transition1"    # Ljava/lang/Object;
    .param p2, "transition2"    # Ljava/lang/Object;
    .param p3, "transition3"    # Ljava/lang/Object;

    .line 131
    new-instance v0, Landroid/support/transition/TransitionSet;

    invoke-direct {v0}, Landroid/support/transition/TransitionSet;-><init>()V

    .line 132
    .local v0, "transitionSet":Landroid/support/transition/TransitionSet;
    if-eqz p1, :cond_d

    .line 133
    move-object v1, p1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 135
    :cond_d
    if-eqz p2, :cond_15

    .line 136
    move-object v1, p2

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 138
    :cond_15
    if-eqz p3, :cond_1d

    .line 139
    move-object v1, p3

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 141
    :cond_1d
    return-object v0
.end method

.method public removeTarget(Ljava/lang/Object;Landroid/view/View;)V
    .registers 4
    .param p1, "transitionObj"    # Ljava/lang/Object;
    .param p2, "view"    # Landroid/view/View;

    .line 299
    if-eqz p1, :cond_8

    .line 300
    move-object v0, p1

    check-cast v0, Landroid/support/transition/Transition;

    .line 301
    .local v0, "transition":Landroid/support/transition/Transition;
    invoke-virtual {v0, p2}, Landroid/support/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/support/transition/Transition;

    .line 303
    .end local v0    # "transition":Landroid/support/transition/Transition;
    :cond_8
    return-void
.end method

.method public replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 9
    .param p1, "transitionObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 265
    .local p2, "oldTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p3, "newTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v0, p1

    check-cast v0, Landroid/support/transition/Transition;

    .line 266
    .local v0, "transition":Landroid/support/transition/Transition;
    instance-of v1, v0, Landroid/support/transition/TransitionSet;

    if-eqz v1, :cond_1c

    .line 267
    move-object v1, v0

    check-cast v1, Landroid/support/transition/TransitionSet;

    .line 268
    .local v1, "set":Landroid/support/transition/TransitionSet;
    invoke-virtual {v1}, Landroid/support/transition/TransitionSet;->getTransitionCount()I

    move-result v2

    .line 269
    .local v2, "numTransitions":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_1b

    .line 270
    invoke-virtual {v1, v3}, Landroid/support/transition/TransitionSet;->getTransitionAt(I)Landroid/support/transition/Transition;

    move-result-object v4

    .line 271
    .local v4, "child":Landroid/support/transition/Transition;
    invoke-virtual {p0, v4, p2, p3}, Landroid/support/transition/FragmentTransitionSupport;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 269
    .end local v4    # "child":Landroid/support/transition/Transition;
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .end local v1    # "set":Landroid/support/transition/TransitionSet;
    .end local v2    # "numTransitions":I
    .end local v3    # "i":I
    :cond_1b
    goto :goto_61

    .line 273
    :cond_1c
    invoke-static {v0}, Landroid/support/transition/FragmentTransitionSupport;->hasSimpleTarget(Landroid/support/transition/Transition;)Z

    move-result v1

    if-nez v1, :cond_61

    .line 274
    invoke-virtual {v0}, Landroid/support/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v1

    .line 275
    .local v1, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_62

    .line 276
    invoke-interface {v1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 278
    if-nez p3, :cond_3a

    const/4 v2, 0x0

    goto :goto_3e

    :cond_3a
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 279
    .local v2, "targetCount":I
    :goto_3e
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3f
    if-ge v3, v2, :cond_4d

    .line 280
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/support/transition/Transition;->addTarget(Landroid/view/View;)Landroid/support/transition/Transition;

    .line 279
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 282
    .end local v3    # "i":I
    :cond_4d
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .restart local v3    # "i":I
    :goto_53
    if-ltz v3, :cond_62

    .line 283
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/support/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/support/transition/Transition;

    .line 282
    add-int/lit8 v3, v3, -0x1

    goto :goto_53

    .line 273
    .end local v1    # "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v2    # "targetCount":I
    .end local v3    # "i":I
    :cond_61
    :goto_61
    nop

    .line 287
    :cond_62
    return-void
.end method

.method public scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 6
    .param p1, "exitTransitionObj"    # Ljava/lang/Object;
    .param p2, "fragmentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 147
    .local p3, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v0, p1

    check-cast v0, Landroid/support/transition/Transition;

    .line 148
    .local v0, "exitTransition":Landroid/support/transition/Transition;
    new-instance v1, Landroid/support/transition/FragmentTransitionSupport$2;

    invoke-direct {v1, p0, p2, p3}, Landroid/support/transition/FragmentTransitionSupport$2;-><init>(Landroid/support/transition/FragmentTransitionSupport;Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/support/transition/Transition;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    .line 175
    return-void
.end method

.method public scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .registers 18
    .param p1, "overallTransitionObj"    # Ljava/lang/Object;
    .param p2, "enterTransition"    # Ljava/lang/Object;
    .param p4, "exitTransition"    # Ljava/lang/Object;
    .param p6, "sharedElementTransition"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 218
    .local p3, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p5, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p7, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v0, p1

    check-cast v0, Landroid/support/transition/Transition;

    .line 219
    .local v0, "overallTransition":Landroid/support/transition/Transition;
    new-instance v9, Landroid/support/transition/FragmentTransitionSupport$3;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Landroid/support/transition/FragmentTransitionSupport$3;-><init>(Landroid/support/transition/FragmentTransitionSupport;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v9}, Landroid/support/transition/Transition;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    .line 249
    return-void
.end method

.method public setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "transitionObj"    # Ljava/lang/Object;
    .param p2, "epicenter"    # Landroid/graphics/Rect;

    .line 307
    if-eqz p1, :cond_d

    .line 308
    move-object v0, p1

    check-cast v0, Landroid/support/transition/Transition;

    .line 309
    .local v0, "transition":Landroid/support/transition/Transition;
    new-instance v1, Landroid/support/transition/FragmentTransitionSupport$4;

    invoke-direct {v1, p0, p2}, Landroid/support/transition/FragmentTransitionSupport$4;-><init>(Landroid/support/transition/FragmentTransitionSupport;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/support/transition/Transition;->setEpicenterCallback(Landroid/support/transition/Transition$EpicenterCallback;)V

    .line 319
    .end local v0    # "transition":Landroid/support/transition/Transition;
    :cond_d
    return-void
.end method

.method public setEpicenter(Ljava/lang/Object;Landroid/view/View;)V
    .registers 6
    .param p1, "transitionObj"    # Ljava/lang/Object;
    .param p2, "view"    # Landroid/view/View;

    .line 83
    if-eqz p2, :cond_15

    .line 84
    move-object v0, p1

    check-cast v0, Landroid/support/transition/Transition;

    .line 85
    .local v0, "transition":Landroid/support/transition/Transition;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 86
    .local v1, "epicenter":Landroid/graphics/Rect;
    invoke-virtual {p0, p2, v1}, Landroid/support/transition/FragmentTransitionSupport;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 88
    new-instance v2, Landroid/support/transition/FragmentTransitionSupport$1;

    invoke-direct {v2, p0, v1}, Landroid/support/transition/FragmentTransitionSupport$1;-><init>(Landroid/support/transition/FragmentTransitionSupport;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Landroid/support/transition/Transition;->setEpicenterCallback(Landroid/support/transition/Transition$EpicenterCallback;)V

    .line 95
    .end local v0    # "transition":Landroid/support/transition/Transition;
    .end local v1    # "epicenter":Landroid/graphics/Rect;
    :cond_15
    return-void
.end method

.method public setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 9
    .param p1, "transitionObj"    # Ljava/lang/Object;
    .param p2, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p3, "sharedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v0, p1

    check-cast v0, Landroid/support/transition/TransitionSet;

    .line 69
    .local v0, "transition":Landroid/support/transition/TransitionSet;
    invoke-virtual {v0}, Landroid/support/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v1

    .line 70
    .local v1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 71
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 72
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_1d

    .line 73
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 74
    .local v4, "view":Landroid/view/View;
    invoke-static {v1, v4}, Landroid/support/transition/FragmentTransitionSupport;->bfsAddViewChildren(Ljava/util/List;Landroid/view/View;)V

    .line 72
    .end local v4    # "view":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 76
    .end local v3    # "i":I
    :cond_1d
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {p0, v0, p3}, Landroid/support/transition/FragmentTransitionSupport;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 79
    return-void
.end method

.method public swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 6
    .param p1, "sharedElementTransitionObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 254
    .local p2, "sharedElementsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p3, "sharedElementsIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object v0, p1

    check-cast v0, Landroid/support/transition/TransitionSet;

    .line 255
    .local v0, "sharedElementTransition":Landroid/support/transition/TransitionSet;
    if-eqz v0, :cond_16

    .line 256
    invoke-virtual {v0}, Landroid/support/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 257
    invoke-virtual {v0}, Landroid/support/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 258
    invoke-virtual {p0, v0, p2, p3}, Landroid/support/transition/FragmentTransitionSupport;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 260
    :cond_16
    return-void
.end method

.method public wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "transition"    # Ljava/lang/Object;

    .line 57
    if-nez p1, :cond_4

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_4
    new-instance v0, Landroid/support/transition/TransitionSet;

    invoke-direct {v0}, Landroid/support/transition/TransitionSet;-><init>()V

    .line 61
    .local v0, "transitionSet":Landroid/support/transition/TransitionSet;
    move-object v1, p1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 62
    return-object v0
.end method
