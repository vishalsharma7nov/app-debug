.class public Landroid/support/transition/Scene;
.super Ljava/lang/Object;
.source "Scene.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnterAction:Ljava/lang/Runnable;

.field private mExitAction:Ljava/lang/Runnable;

.field private mLayout:Landroid/view/View;

.field private mLayoutId:I

.field private mSceneRoot:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 3
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/transition/Scene;->mLayoutId:I

    .line 90
    iput-object p1, p0, Landroid/support/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    .line 91
    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;ILandroid/content/Context;)V
    .registers 5
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "layoutId"    # I
    .param p3, "context"    # Landroid/content/Context;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/transition/Scene;->mLayoutId:I

    .line 109
    iput-object p3, p0, Landroid/support/transition/Scene;->mContext:Landroid/content/Context;

    .line 110
    iput-object p1, p0, Landroid/support/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    .line 111
    iput p2, p0, Landroid/support/transition/Scene;->mLayoutId:I

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "layout"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/transition/Scene;->mLayoutId:I

    .line 125
    iput-object p1, p0, Landroid/support/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    .line 126
    iput-object p2, p0, Landroid/support/transition/Scene;->mLayout:Landroid/view/View;

    .line 127
    return-void
.end method

.method static getCurrentScene(Landroid/view/View;)Landroid/support/transition/Scene;
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 207
    sget v0, Landroid/support/transition/R$id;->transition_current_scene:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/Scene;

    return-object v0
.end method

.method public static getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/support/transition/Scene;
    .registers 6
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "layoutId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 63
    sget v0, Landroid/support/transition/R$id;->transition_scene_layoutid_cache:I

    .line 64
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 65
    .local v0, "scenes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/transition/Scene;>;"
    if-nez v0, :cond_15

    .line 66
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v1

    .line 67
    sget v1, Landroid/support/transition/R$id;->transition_scene_layoutid_cache:I

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 69
    :cond_15
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Scene;

    .line 70
    .local v1, "scene":Landroid/support/transition/Scene;
    if-eqz v1, :cond_1e

    .line 71
    return-object v1

    .line 73
    :cond_1e
    new-instance v2, Landroid/support/transition/Scene;

    invoke-direct {v2, p0, p1, p2}, Landroid/support/transition/Scene;-><init>(Landroid/view/ViewGroup;ILandroid/content/Context;)V

    move-object v1, v2

    .line 74
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    return-object v1
.end method

.method static setCurrentScene(Landroid/view/View;Landroid/support/transition/Scene;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "scene"    # Landroid/support/transition/Scene;

    .line 196
    sget v0, Landroid/support/transition/R$id;->transition_current_scene:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 197
    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    .line 168
    iget v0, p0, Landroid/support/transition/Scene;->mLayoutId:I

    if-gtz v0, :cond_8

    iget-object v0, p0, Landroid/support/transition/Scene;->mLayout:Landroid/view/View;

    if-eqz v0, :cond_28

    .line 170
    :cond_8
    invoke-virtual {p0}, Landroid/support/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 172
    iget v0, p0, Landroid/support/transition/Scene;->mLayoutId:I

    if-lez v0, :cond_21

    .line 173
    iget-object v0, p0, Landroid/support/transition/Scene;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Landroid/support/transition/Scene;->mLayoutId:I

    iget-object v2, p0, Landroid/support/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_28

    .line 175
    :cond_21
    iget-object v0, p0, Landroid/support/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/transition/Scene;->mLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 180
    :cond_28
    :goto_28
    iget-object v0, p0, Landroid/support/transition/Scene;->mEnterAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_2f

    .line 181
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 184
    :cond_2f
    iget-object v0, p0, Landroid/support/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Landroid/support/transition/Scene;->setCurrentScene(Landroid/view/View;Landroid/support/transition/Scene;)V

    .line 185
    return-void
.end method

.method public exit()V
    .registers 2

    .line 149
    iget-object v0, p0, Landroid/support/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/transition/Scene;->getCurrentScene(Landroid/view/View;)Landroid/support/transition/Scene;

    move-result-object v0

    if-ne v0, p0, :cond_f

    .line 150
    iget-object v0, p0, Landroid/support/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_f

    .line 151
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 154
    :cond_f
    return-void
.end method

.method public getSceneRoot()Landroid/view/ViewGroup;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 138
    iget-object v0, p0, Landroid/support/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method isCreatedFromLayoutResource()Z
    .registers 2

    .line 257
    iget v0, p0, Landroid/support/transition/Scene;->mLayoutId:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public setEnterAction(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "action"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 228
    iput-object p1, p0, Landroid/support/transition/Scene;->mEnterAction:Ljava/lang/Runnable;

    .line 229
    return-void
.end method

.method public setExitAction(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "action"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 248
    iput-object p1, p0, Landroid/support/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    .line 249
    return-void
.end method
