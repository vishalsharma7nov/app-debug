.class Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$2;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;)V
    .registers 2
    .param p1, "this$1"    # Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    .line 818
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$2;->this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    .line 821
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$2;->this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    iget-object v1, v0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->isVisibleToUser(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 822
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$2;->this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->dismiss()V

    goto :goto_1a

    .line 824
    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$2;->this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->computeContentWidth()V

    .line 828
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$2;->this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-static {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->access$001(Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;)V

    .line 830
    :goto_1a
    return-void
.end method