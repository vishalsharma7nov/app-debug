.class Landroid/support/design/transformation/ExpandableBehavior$1;
.super Ljava/lang/Object;
.source "ExpandableBehavior.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/transformation/ExpandableBehavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/transformation/ExpandableBehavior;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$dep:Landroid/support/design/expandable/ExpandableWidget;

.field final synthetic val$expectedState:I


# direct methods
.method constructor <init>(Landroid/support/design/transformation/ExpandableBehavior;Landroid/view/View;ILandroid/support/design/expandable/ExpandableWidget;)V
    .registers 5
    .param p1, "this$0"    # Landroid/support/design/transformation/ExpandableBehavior;

    .line 96
    iput-object p1, p0, Landroid/support/design/transformation/ExpandableBehavior$1;->this$0:Landroid/support/design/transformation/ExpandableBehavior;

    iput-object p2, p0, Landroid/support/design/transformation/ExpandableBehavior$1;->val$child:Landroid/view/View;

    iput p3, p0, Landroid/support/design/transformation/ExpandableBehavior$1;->val$expectedState:I

    iput-object p4, p0, Landroid/support/design/transformation/ExpandableBehavior$1;->val$dep:Landroid/support/design/expandable/ExpandableWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 6

    .line 99
    iget-object v0, p0, Landroid/support/design/transformation/ExpandableBehavior$1;->val$child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 101
    iget-object v0, p0, Landroid/support/design/transformation/ExpandableBehavior$1;->this$0:Landroid/support/design/transformation/ExpandableBehavior;

    invoke-static {v0}, Landroid/support/design/transformation/ExpandableBehavior;->access$000(Landroid/support/design/transformation/ExpandableBehavior;)I

    move-result v0

    iget v1, p0, Landroid/support/design/transformation/ExpandableBehavior$1;->val$expectedState:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_24

    .line 102
    iget-object v0, p0, Landroid/support/design/transformation/ExpandableBehavior$1;->this$0:Landroid/support/design/transformation/ExpandableBehavior;

    iget-object v1, p0, Landroid/support/design/transformation/ExpandableBehavior$1;->val$dep:Landroid/support/design/expandable/ExpandableWidget;

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    iget-object v4, p0, Landroid/support/design/transformation/ExpandableBehavior$1;->val$child:Landroid/view/View;

    invoke-interface {v1}, Landroid/support/design/expandable/ExpandableWidget;->isExpanded()Z

    move-result v1

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/support/design/transformation/ExpandableBehavior;->onExpandedStateChange(Landroid/view/View;Landroid/view/View;ZZ)Z

    .line 104
    :cond_24
    return v2
.end method
