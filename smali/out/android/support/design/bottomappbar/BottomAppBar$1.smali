.class Landroid/support/design/bottomappbar/BottomAppBar$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BottomAppBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/bottomappbar/BottomAppBar;->maybeAnimateModeChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/bottomappbar/BottomAppBar;


# direct methods
.method constructor <init>(Landroid/support/design/bottomappbar/BottomAppBar;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/design/bottomappbar/BottomAppBar;

    .line 305
    iput-object p1, p0, Landroid/support/design/bottomappbar/BottomAppBar$1;->this$0:Landroid/support/design/bottomappbar/BottomAppBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 308
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar$1;->this$0:Landroid/support/design/bottomappbar/BottomAppBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/design/bottomappbar/BottomAppBar;->access$002(Landroid/support/design/bottomappbar/BottomAppBar;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 309
    return-void
.end method
