.class Landroid/support/transition/FragmentTransitionSupport$4;
.super Landroid/support/transition/Transition$EpicenterCallback;
.source "FragmentTransitionSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/FragmentTransitionSupport;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/transition/FragmentTransitionSupport;

.field final synthetic val$epicenter:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/support/transition/FragmentTransitionSupport;Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "this$0"    # Landroid/support/transition/FragmentTransitionSupport;

    .line 309
    iput-object p1, p0, Landroid/support/transition/FragmentTransitionSupport$4;->this$0:Landroid/support/transition/FragmentTransitionSupport;

    iput-object p2, p0, Landroid/support/transition/FragmentTransitionSupport$4;->val$epicenter:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/support/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/support/transition/Transition;)Landroid/graphics/Rect;
    .registers 3
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 312
    iget-object v0, p0, Landroid/support/transition/FragmentTransitionSupport$4;->val$epicenter:Landroid/graphics/Rect;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_e

    .line 315
    :cond_b
    iget-object v0, p0, Landroid/support/transition/FragmentTransitionSupport$4;->val$epicenter:Landroid/graphics/Rect;

    return-object v0

    .line 313
    :cond_e
    :goto_e
    const/4 v0, 0x0

    return-object v0
.end method
