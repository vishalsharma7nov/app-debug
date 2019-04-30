.class abstract Landroid/support/v7/view/menu/BaseMenuWrapper;
.super Landroid/support/v7/view/menu/BaseWrapper;
.source "BaseMenuWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/view/menu/BaseWrapper<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field private mMenuItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/support/v4/internal/view/SupportMenuItem;",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSubMenus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/support/v4/internal/view/SupportSubMenu;",
            "Landroid/view/SubMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Landroid/support/v7/view/menu/BaseMenuWrapper;, "Landroid/support/v7/view/menu/BaseMenuWrapper<TT;>;"
    .local p2, "object":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p2}, Landroid/support/v7/view/menu/BaseWrapper;-><init>(Ljava/lang/Object;)V

    .line 39
    iput-object p1, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method final getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .registers 5
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 43
    .local p0, "this":Landroid/support/v7/view/menu/BaseMenuWrapper;, "Landroid/support/v7/view/menu/BaseMenuWrapper<TT;>;"
    instance-of v0, p1, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_28

    .line 44
    move-object v0, p1

    check-cast v0, Landroid/support/v4/internal/view/SupportMenuItem;

    .line 47
    .local v0, "supportMenuItem":Landroid/support/v4/internal/view/SupportMenuItem;
    iget-object v1, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    if-nez v1, :cond_12

    .line 48
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    .line 52
    :cond_12
    iget-object v1, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 54
    .local v1, "wrappedItem":Landroid/view/MenuItem;
    if-nez v1, :cond_27

    .line 56
    iget-object v2, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Landroid/support/v7/view/menu/MenuWrapperFactory;->wrapSupportMenuItem(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenuItem;)Landroid/view/MenuItem;

    move-result-object v1

    .line 57
    iget-object v2, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_27
    return-object v1

    .line 62
    .end local v0    # "supportMenuItem":Landroid/support/v4/internal/view/SupportMenuItem;
    .end local v1    # "wrappedItem":Landroid/view/MenuItem;
    :cond_28
    return-object p1
.end method

.method final getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .registers 5
    .param p1, "subMenu"    # Landroid/view/SubMenu;

    .line 66
    .local p0, "this":Landroid/support/v7/view/menu/BaseMenuWrapper;, "Landroid/support/v7/view/menu/BaseMenuWrapper<TT;>;"
    instance-of v0, p1, Landroid/support/v4/internal/view/SupportSubMenu;

    if-eqz v0, :cond_28

    .line 67
    move-object v0, p1

    check-cast v0, Landroid/support/v4/internal/view/SupportSubMenu;

    .line 70
    .local v0, "supportSubMenu":Landroid/support/v4/internal/view/SupportSubMenu;
    iget-object v1, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;

    if-nez v1, :cond_12

    .line 71
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;

    .line 74
    :cond_12
    iget-object v1, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SubMenu;

    .line 76
    .local v1, "wrappedMenu":Landroid/view/SubMenu;
    if-nez v1, :cond_27

    .line 77
    iget-object v2, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Landroid/support/v7/view/menu/MenuWrapperFactory;->wrapSupportSubMenu(Landroid/content/Context;Landroid/support/v4/internal/view/SupportSubMenu;)Landroid/view/SubMenu;

    move-result-object v1

    .line 78
    iget-object v2, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_27
    return-object v1

    .line 82
    .end local v0    # "supportSubMenu":Landroid/support/v4/internal/view/SupportSubMenu;
    .end local v1    # "wrappedMenu":Landroid/view/SubMenu;
    :cond_28
    return-object p1
.end method

.method final internalClear()V
    .registers 2

    .line 87
    .local p0, "this":Landroid/support/v7/view/menu/BaseMenuWrapper;, "Landroid/support/v7/view/menu/BaseMenuWrapper<TT;>;"
    iget-object v0, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 88
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 90
    :cond_7
    iget-object v0, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;

    if-eqz v0, :cond_e

    .line 91
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 93
    :cond_e
    return-void
.end method

.method final internalRemoveGroup(I)V
    .registers 5
    .param p1, "groupId"    # I

    .line 96
    .local p0, "this":Landroid/support/v7/view/menu/BaseMenuWrapper;, "Landroid/support/v7/view/menu/BaseMenuWrapper<TT;>;"
    iget-object v0, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    if-nez v0, :cond_5

    .line 97
    return-void

    .line 100
    :cond_5
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 103
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/support/v4/internal/view/SupportMenuItem;>;"
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 104
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 105
    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    if-ne p1, v2, :cond_d

    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_d

    .line 109
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_23
    return-void
.end method

.method final internalRemoveItem(I)V
    .registers 5
    .param p1, "id"    # I

    .line 112
    .local p0, "this":Landroid/support/v7/view/menu/BaseMenuWrapper;, "Landroid/support/v7/view/menu/BaseMenuWrapper<TT;>;"
    iget-object v0, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;

    if-nez v0, :cond_5

    .line 113
    return-void

    .line 116
    :cond_5
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 119
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/support/v4/internal/view/SupportMenuItem;>;"
    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 120
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 121
    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne p1, v2, :cond_d

    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 126
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_22
    return-void
.end method
