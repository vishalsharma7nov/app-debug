.class Landroid/support/design/widget/StateListAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/StateListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/StateListAnimator;


# direct methods
.method constructor <init>(Landroid/support/design/widget/StateListAnimator;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/design/widget/StateListAnimator;

    .line 43
    iput-object p1, p0, Landroid/support/design/widget/StateListAnimator$1;->this$0:Landroid/support/design/widget/StateListAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 46
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator$1;->this$0:Landroid/support/design/widget/StateListAnimator;

    iget-object v0, v0, Landroid/support/design/widget/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    if-ne v0, p1, :cond_b

    .line 47
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator$1;->this$0:Landroid/support/design/widget/StateListAnimator;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/design/widget/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    .line 49
    :cond_b
    return-void
.end method
