.class Landroid/support/design/chip/Chip$ChipTouchHelper;
.super Landroid/support/v4/widget/ExploreByTouchHelper;
.source "Chip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/chip/Chip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChipTouchHelper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/chip/Chip;


# direct methods
.method constructor <init>(Landroid/support/design/chip/Chip;Landroid/support/design/chip/Chip;)V
    .registers 3
    .param p2, "view"    # Landroid/support/design/chip/Chip;

    .line 957
    iput-object p1, p0, Landroid/support/design/chip/Chip$ChipTouchHelper;->this$0:Landroid/support/design/chip/Chip;

    .line 958
    invoke-direct {p0, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 959
    return-void
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 963
    iget-object v0, p0, Landroid/support/design/chip/Chip$ChipTouchHelper;->this$0:Landroid/support/design/chip/Chip;

    invoke-static {v0}, Landroid/support/design/chip/Chip;->access$100(Landroid/support/design/chip/Chip;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/design/chip/Chip$ChipTouchHelper;->this$0:Landroid/support/design/chip/Chip;

    invoke-static {v0}, Landroid/support/design/chip/Chip;->access$200(Landroid/support/design/chip/Chip;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    goto :goto_17

    :cond_16
    const/4 v0, -0x1

    :goto_17
    return v0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 970
    .local p1, "virtualViewIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/support/design/chip/Chip$ChipTouchHelper;->this$0:Landroid/support/design/chip/Chip;

    invoke-static {v0}, Landroid/support/design/chip/Chip;->access$100(Landroid/support/design/chip/Chip;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 971
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 973
    :cond_10
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 1017
    const/16 v0, 0x10

    if-ne p2, v0, :cond_d

    if-nez p1, :cond_d

    .line 1019
    iget-object v0, p0, Landroid/support/design/chip/Chip$ChipTouchHelper;->this$0:Landroid/support/design/chip/Chip;

    invoke-virtual {v0}, Landroid/support/design/chip/Chip;->performCloseIconClick()Z

    move-result v0

    return v0

    .line 1021
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method protected onPopulateNodeForHost(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 5
    .param p1, "node"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1002
    iget-object v0, p0, Landroid/support/design/chip/Chip$ChipTouchHelper;->this$0:Landroid/support/design/chip/Chip;

    invoke-static {v0}, Landroid/support/design/chip/Chip;->access$000(Landroid/support/design/chip/Chip;)Landroid/support/design/chip/ChipDrawable;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/design/chip/Chip$ChipTouchHelper;->this$0:Landroid/support/design/chip/Chip;

    invoke-static {v0}, Landroid/support/design/chip/Chip;->access$000(Landroid/support/design/chip/Chip;)Landroid/support/design/chip/ChipDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/chip/ChipDrawable;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    .line 1003
    const-class v0, Landroid/support/design/chip/Chip;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 1004
    iget-object v0, p0, Landroid/support/design/chip/Chip$ChipTouchHelper;->this$0:Landroid/support/design/chip/Chip;

    invoke-virtual {v0}, Landroid/support/design/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1005
    .local v0, "chipText":Ljava/lang/CharSequence;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_33

    .line 1006
    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    goto :goto_36

    .line 1010
    :cond_33
    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1012
    :goto_36
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 11
    .param p1, "virtualViewId"    # I
    .param p2, "node"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 978
    iget-object v0, p0, Landroid/support/design/chip/Chip$ChipTouchHelper;->this$0:Landroid/support/design/chip/Chip;

    invoke-static {v0}, Landroid/support/design/chip/Chip;->access$100(Landroid/support/design/chip/Chip;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_54

    .line 979
    iget-object v0, p0, Landroid/support/design/chip/Chip$ChipTouchHelper;->this$0:Landroid/support/design/chip/Chip;

    invoke-virtual {v0}, Landroid/support/design/chip/Chip;->getCloseIconContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 980
    .local v0, "closeIconContentDescription":Ljava/lang/CharSequence;
    if-eqz v0, :cond_16

    .line 981
    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3c

    .line 983
    :cond_16
    iget-object v2, p0, Landroid/support/design/chip/Chip$ChipTouchHelper;->this$0:Landroid/support/design/chip/Chip;

    invoke-virtual {v2}, Landroid/support/design/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 984
    .local v2, "chipText":Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/support/design/chip/Chip$ChipTouchHelper;->this$0:Landroid/support/design/chip/Chip;

    .line 985
    invoke-virtual {v3}, Landroid/support/design/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Landroid/support/design/R$string;->mtrl_chip_close_icon_content_description:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 988
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2f

    move-object v1, v2

    :cond_2f
    aput-object v1, v5, v6

    .line 986
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 989
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 984
    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 991
    .end local v2    # "chipText":Ljava/lang/CharSequence;
    :goto_3c
    iget-object v1, p0, Landroid/support/design/chip/Chip$ChipTouchHelper;->this$0:Landroid/support/design/chip/Chip;

    invoke-static {v1}, Landroid/support/design/chip/Chip;->access$300(Landroid/support/design/chip/Chip;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 992
    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 993
    iget-object v1, p0, Landroid/support/design/chip/Chip$ChipTouchHelper;->this$0:Landroid/support/design/chip/Chip;

    invoke-virtual {v1}, Landroid/support/design/chip/Chip;->isEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    .line 994
    .end local v0    # "closeIconContentDescription":Ljava/lang/CharSequence;
    goto :goto_5e

    .line 995
    :cond_54
    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 996
    invoke-static {}, Landroid/support/design/chip/Chip;->access$400()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 998
    :goto_5e
    return-void
.end method
