.class Landroid/support/design/bottomappbar/BottomAppBar$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BottomAppBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/bottomappbar/BottomAppBar;->createMenuViewTranslationAnimation(IZLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public cancelled:Z

.field final synthetic this$0:Landroid/support/design/bottomappbar/BottomAppBar;

.field final synthetic val$actionMenuView:Landroid/support/v7/widget/ActionMenuView;

.field final synthetic val$targetAttached:Z

.field final synthetic val$targetMode:I


# direct methods
.method constructor <init>(Landroid/support/design/bottomappbar/BottomAppBar;Landroid/support/v7/widget/ActionMenuView;IZ)V
    .registers 5
    .param p1, "this$0"    # Landroid/support/design/bottomappbar/BottomAppBar;

    .line 418
    iput-object p1, p0, Landroid/support/design/bottomappbar/BottomAppBar$4;->this$0:Landroid/support/design/bottomappbar/BottomAppBar;

    iput-object p2, p0, Landroid/support/design/bottomappbar/BottomAppBar$4;->val$actionMenuView:Landroid/support/v7/widget/ActionMenuView;

    iput p3, p0, Landroid/support/design/bottomappbar/BottomAppBar$4;->val$targetMode:I

    iput-boolean p4, p0, Landroid/support/design/bottomappbar/BottomAppBar$4;->val$targetAttached:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/bottomappbar/BottomAppBar$4;->cancelled:Z

    .line 424
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 428
    iget-boolean v0, p0, Landroid/support/design/bottomappbar/BottomAppBar$4;->cancelled:Z

    if-nez v0, :cond_f

    .line 429
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar$4;->this$0:Landroid/support/design/bottomappbar/BottomAppBar;

    iget-object v1, p0, Landroid/support/design/bottomappbar/BottomAppBar$4;->val$actionMenuView:Landroid/support/v7/widget/ActionMenuView;

    iget v2, p0, Landroid/support/design/bottomappbar/BottomAppBar$4;->val$targetMode:I

    iget-boolean v3, p0, Landroid/support/design/bottomappbar/BottomAppBar$4;->val$targetAttached:Z

    invoke-static {v0, v1, v2, v3}, Landroid/support/design/bottomappbar/BottomAppBar;->access$400(Landroid/support/design/bottomappbar/BottomAppBar;Landroid/support/v7/widget/ActionMenuView;IZ)V

    .line 431
    :cond_f
    return-void
.end method
