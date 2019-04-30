.class Landroid/support/transition/ChangeTransform$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/ChangeTransform;->createTransformAnimator(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCanceled:Z

.field private mTempMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Landroid/support/transition/ChangeTransform;

.field final synthetic val$finalEndMatrix:Landroid/graphics/Matrix;

.field final synthetic val$handleParentChange:Z

.field final synthetic val$pathAnimatorMatrix:Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;

.field final synthetic val$transforms:Landroid/support/transition/ChangeTransform$Transforms;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroid/support/transition/ChangeTransform$Transforms;Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;)V
    .registers 7
    .param p1, "this$0"    # Landroid/support/transition/ChangeTransform;

    .line 324
    iput-object p1, p0, Landroid/support/transition/ChangeTransform$3;->this$0:Landroid/support/transition/ChangeTransform;

    iput-boolean p2, p0, Landroid/support/transition/ChangeTransform$3;->val$handleParentChange:Z

    iput-object p3, p0, Landroid/support/transition/ChangeTransform$3;->val$finalEndMatrix:Landroid/graphics/Matrix;

    iput-object p4, p0, Landroid/support/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    iput-object p5, p0, Landroid/support/transition/ChangeTransform$3;->val$transforms:Landroid/support/transition/ChangeTransform$Transforms;

    iput-object p6, p0, Landroid/support/transition/ChangeTransform$3;->val$pathAnimatorMatrix:Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 326
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Landroid/support/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private setCurrentMatrix(Landroid/graphics/Matrix;)V
    .registers 5
    .param p1, "currentMatrix"    # Landroid/graphics/Matrix;

    .line 359
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 360
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    sget v1, Landroid/support/transition/R$id;->transition_transform:I

    iget-object v2, p0, Landroid/support/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 361
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$3;->val$transforms:Landroid/support/transition/ChangeTransform$Transforms;

    iget-object v1, p0, Landroid/support/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/transition/ChangeTransform$Transforms;->restore(Landroid/view/View;)V

    .line 362
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/ChangeTransform$3;->mIsCanceled:Z

    .line 331
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 335
    iget-boolean v0, p0, Landroid/support/transition/ChangeTransform$3;->mIsCanceled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_23

    .line 336
    iget-boolean v0, p0, Landroid/support/transition/ChangeTransform$3;->val$handleParentChange:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/transition/ChangeTransform$3;->this$0:Landroid/support/transition/ChangeTransform;

    iget-boolean v0, v0, Landroid/support/transition/ChangeTransform;->mUseOverlay:Z

    if-eqz v0, :cond_15

    .line 337
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$3;->val$finalEndMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Landroid/support/transition/ChangeTransform$3;->setCurrentMatrix(Landroid/graphics/Matrix;)V

    goto :goto_23

    .line 339
    :cond_15
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    sget v2, Landroid/support/transition/R$id;->transition_transform:I

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 340
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    sget v2, Landroid/support/transition/R$id;->parent_matrix:I

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 343
    :cond_23
    :goto_23
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/transition/ViewUtils;->setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 344
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$3;->val$transforms:Landroid/support/transition/ChangeTransform$Transforms;

    iget-object v1, p0, Landroid/support/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/transition/ChangeTransform$Transforms;->restore(Landroid/view/View;)V

    .line 345
    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 349
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$3;->val$pathAnimatorMatrix:Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-virtual {v0}, Landroid/support/transition/ChangeTransform$PathAnimatorMatrix;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 350
    .local v0, "currentMatrix":Landroid/graphics/Matrix;
    invoke-direct {p0, v0}, Landroid/support/transition/ChangeTransform$3;->setCurrentMatrix(Landroid/graphics/Matrix;)V

    .line 351
    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 355
    iget-object v0, p0, Landroid/support/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    invoke-static {v0}, Landroid/support/transition/ChangeTransform;->setIdentityTransforms(Landroid/view/View;)V

    .line 356
    return-void
.end method
