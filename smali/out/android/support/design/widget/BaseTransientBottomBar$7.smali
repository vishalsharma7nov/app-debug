.class Landroid/support/design/widget/BaseTransientBottomBar$7;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/BaseTransientBottomBar;->showView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BaseTransientBottomBar;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/design/widget/BaseTransientBottomBar;

    .line 548
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$7;, "Landroid/support/design/widget/BaseTransientBottomBar$7;"
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$7;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIII)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 551
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$7;, "Landroid/support/design/widget/BaseTransientBottomBar$7;"
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$7;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    iget-object v0, v0, Landroid/support/design/widget/BaseTransientBottomBar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->setOnLayoutChangeListener(Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;)V

    .line 553
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$7;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar;->shouldAnimate()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 555
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$7;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar;->animateViewIn()V

    goto :goto_1b

    .line 558
    :cond_16
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$7;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar;->onViewShown()V

    .line 560
    :goto_1b
    return-void
.end method
