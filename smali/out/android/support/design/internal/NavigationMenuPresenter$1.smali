.class Landroid/support/design/internal/NavigationMenuPresenter$1;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/internal/NavigationMenuPresenter;


# direct methods
.method constructor <init>(Landroid/support/design/internal/NavigationMenuPresenter;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/design/internal/NavigationMenuPresenter;

    .line 345
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter$1;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .line 349
    move-object v0, p1

    check-cast v0, Landroid/support/design/internal/NavigationMenuItemView;

    .line 350
    .local v0, "itemView":Landroid/support/design/internal/NavigationMenuItemView;
    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$1;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/design/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    .line 351
    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuItemView;->getItemData()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v1

    .line 352
    .local v1, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter$1;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuPresenter;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v3, p0, Landroid/support/design/internal/NavigationMenuPresenter$1;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroid/support/v7/view/menu/MenuPresenter;I)Z

    move-result v2

    .line 353
    .local v2, "result":Z
    if-eqz v1, :cond_29

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v3

    if-eqz v3, :cond_29

    if-eqz v2, :cond_29

    .line 354
    iget-object v3, p0, Landroid/support/design/internal/NavigationMenuPresenter$1;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v3, v3, Landroid/support/design/internal/NavigationMenuPresenter;->adapter:Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v3, v1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 356
    :cond_29
    iget-object v3, p0, Landroid/support/design/internal/NavigationMenuPresenter$1;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v3, v4}, Landroid/support/design/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    .line 357
    iget-object v3, p0, Landroid/support/design/internal/NavigationMenuPresenter$1;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v3, v4}, Landroid/support/design/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 358
    return-void
.end method
