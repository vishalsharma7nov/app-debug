.class public Lcom/allumez/suncaptelecom/OfficeStaffActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "OfficeStaffActivity.java"

# interfaces
.implements Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;


# instance fields
.field Username:Ljava/lang/String;

.field mUsername:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected exitByBackKey()V
    .registers 4

    .line 101
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 102
    const-string v1, "DO YOU WANT TO LOGOUT?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/allumez/suncaptelecom/OfficeStaffActivity$2;

    invoke-direct {v1, p0}, Lcom/allumez/suncaptelecom/OfficeStaffActivity$2;-><init>(Lcom/allumez/suncaptelecom/OfficeStaffActivity;)V

    .line 103
    const-string v2, "YES"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/allumez/suncaptelecom/OfficeStaffActivity$1;

    invoke-direct {v1, p0}, Lcom/allumez/suncaptelecom/OfficeStaffActivity$1;-><init>(Lcom/allumez/suncaptelecom/OfficeStaffActivity;)V

    .line 109
    const-string v2, "NO"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 115
    .local v0, "alertbox":Landroid/app/AlertDialog;
    return-void
.end method

.method public onBackPressed()V
    .registers 4

    .line 52
    const v0, 0x7f080045

    invoke-virtual {p0, v0}, Lcom/allumez/suncaptelecom/OfficeStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 53
    .local v0, "drawer":Landroid/support/v4/widget/DrawerLayout;
    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 54
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_19

    .line 56
    :cond_16
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 58
    :goto_19
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 30
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f0b0021

    invoke-virtual {p0, v0}, Lcom/allumez/suncaptelecom/OfficeStaffActivity;->setContentView(I)V

    .line 32
    const v0, 0x7f0800d5

    invoke-virtual {p0, v0}, Lcom/allumez/suncaptelecom/OfficeStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 33
    .local v0, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v0}, Lcom/allumez/suncaptelecom/OfficeStaffActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 35
    const v1, 0x7f0800e3

    invoke-virtual {p0, v1}, Lcom/allumez/suncaptelecom/OfficeStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/allumez/suncaptelecom/OfficeStaffActivity;->mUsername:Landroid/widget/TextView;

    .line 36
    invoke-virtual {p0}, Lcom/allumez/suncaptelecom/OfficeStaffActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 37
    .local v7, "intent":Landroid/content/Intent;
    const-string v1, "username"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/allumez/suncaptelecom/OfficeStaffActivity;->Username:Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lcom/allumez/suncaptelecom/OfficeStaffActivity;->mUsername:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/allumez/suncaptelecom/OfficeStaffActivity;->Username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    const v1, 0x7f080045

    invoke-virtual {p0, v1}, Lcom/allumez/suncaptelecom/OfficeStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/support/v4/widget/DrawerLayout;

    .line 42
    .local v8, "drawer":Landroid/support/v4/widget/DrawerLayout;
    const v1, 0x7f08007f

    invoke-virtual {p0, v1}, Lcom/allumez/suncaptelecom/OfficeStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/support/design/widget/NavigationView;

    .line 43
    .local v9, "navigationView":Landroid/support/design/widget/NavigationView;
    new-instance v10, Landroid/support/v7/app/ActionBarDrawerToggle;

    const v5, 0x7f0e0047

    const v6, 0x7f0e0046

    move-object v1, v10

    move-object v2, p0

    move-object v3, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    .line 45
    .local v1, "toggle":Landroid/support/v7/app/ActionBarDrawerToggle;
    invoke-virtual {v8, v1}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 46
    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 47
    invoke-virtual {v9, p0}, Landroid/support/design/widget/NavigationView;->setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V

    .line 48
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 63
    invoke-virtual {p0}, Lcom/allumez/suncaptelecom/OfficeStaffActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 91
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 92
    invoke-virtual {p0}, Lcom/allumez/suncaptelecom/OfficeStaffActivity;->exitByBackKey()V

    .line 95
    const/4 v0, 0x1

    return v0

    .line 97
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 77
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 78
    .local v0, "id":I
    iget-object v1, p0, Lcom/allumez/suncaptelecom/OfficeStaffActivity;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "username":Ljava/lang/String;
    const v2, 0x7f08007e

    if-ne v0, v2, :cond_22

    .line 81
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "username"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v2}, Lcom/allumez/suncaptelecom/OfficeStaffActivity;->startActivity(Landroid/content/Intent;)V

    .line 86
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_22
    const v2, 0x7f080045

    invoke-virtual {p0, v2}, Lcom/allumez/suncaptelecom/OfficeStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout;

    .line 87
    .local v2, "drawer":Landroid/support/v4/widget/DrawerLayout;
    const v3, 0x800003

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 88
    const/4 v3, 0x1

    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 70
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
