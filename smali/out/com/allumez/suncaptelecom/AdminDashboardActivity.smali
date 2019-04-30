.class public Lcom/allumez/suncaptelecom/AdminDashboardActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AdminDashboardActivity.java"

# interfaces
.implements Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;


# instance fields
.field logo:Landroid/widget/ImageView;

.field webView:Landroid/webkit/WebView;

.field welcome:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected exitByBackKey()V
    .registers 4

    .line 150
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 151
    const-string v1, "DO YOU WANT TO LOGOUT?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/allumez/suncaptelecom/AdminDashboardActivity$3;

    invoke-direct {v1, p0}, Lcom/allumez/suncaptelecom/AdminDashboardActivity$3;-><init>(Lcom/allumez/suncaptelecom/AdminDashboardActivity;)V

    .line 152
    const-string v2, "YES"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/allumez/suncaptelecom/AdminDashboardActivity$2;

    invoke-direct {v1, p0}, Lcom/allumez/suncaptelecom/AdminDashboardActivity$2;-><init>(Lcom/allumez/suncaptelecom/AdminDashboardActivity;)V

    .line 158
    const-string v2, "NO"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 164
    .local v0, "alertbox":Landroid/app/AlertDialog;
    return-void
.end method

.method public onBackPressed()V
    .registers 4

    .line 56
    const v0, 0x7f080045

    invoke-virtual {p0, v0}, Lcom/allumez/suncaptelecom/AdminDashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 57
    .local v0, "drawer":Landroid/support/v4/widget/DrawerLayout;
    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 58
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_19

    .line 60
    :cond_16
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 62
    :goto_19
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 33
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lcom/allumez/suncaptelecom/AdminDashboardActivity;->setContentView(I)V

    .line 36
    const v0, 0x7f0800e7

    invoke-virtual {p0, v0}, Lcom/allumez/suncaptelecom/AdminDashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allumez/suncaptelecom/AdminDashboardActivity;->welcome:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f080071

    invoke-virtual {p0, v0}, Lcom/allumez/suncaptelecom/AdminDashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allumez/suncaptelecom/AdminDashboardActivity;->logo:Landroid/widget/ImageView;

    .line 39
    const v0, 0x7f0800e6

    invoke-virtual {p0, v0}, Lcom/allumez/suncaptelecom/AdminDashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/allumez/suncaptelecom/AdminDashboardActivity;->webView:Landroid/webkit/WebView;

    .line 40
    iget-object v0, p0, Lcom/allumez/suncaptelecom/AdminDashboardActivity;->webView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 42
    const v0, 0x7f0800d5

    invoke-virtual {p0, v0}, Lcom/allumez/suncaptelecom/AdminDashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 43
    .local v0, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v0}, Lcom/allumez/suncaptelecom/AdminDashboardActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 45
    const v1, 0x7f080045

    invoke-virtual {p0, v1}, Lcom/allumez/suncaptelecom/AdminDashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/support/v4/widget/DrawerLayout;

    .line 46
    .local v7, "drawer":Landroid/support/v4/widget/DrawerLayout;
    const v1, 0x7f08007f

    invoke-virtual {p0, v1}, Lcom/allumez/suncaptelecom/AdminDashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/support/design/widget/NavigationView;

    .line 47
    .local v8, "navigationView":Landroid/support/design/widget/NavigationView;
    new-instance v9, Landroid/support/v7/app/ActionBarDrawerToggle;

    const v5, 0x7f0e0047

    const v6, 0x7f0e0046

    move-object v1, v9

    move-object v2, p0

    move-object v3, v7

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    .line 49
    .local v1, "toggle":Landroid/support/v7/app/ActionBarDrawerToggle;
    invoke-virtual {v7, v1}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 50
    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 51
    invoke-virtual {v8, p0}, Landroid/support/design/widget/NavigationView;->setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V

    .line 52
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 67
    invoke-virtual {p0}, Lcom/allumez/suncaptelecom/AdminDashboardActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 140
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 141
    invoke-virtual {p0}, Lcom/allumez/suncaptelecom/AdminDashboardActivity;->exitByBackKey()V

    .line 144
    const/4 v0, 0x1

    return v0

    .line 146
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 80
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 82
    .local v0, "id":I
    const/4 v1, 0x1

    const v2, 0x7f08007e

    if-ne v0, v2, :cond_15

    .line 84
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/allumez/suncaptelecom/AdminMapActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/allumez/suncaptelecom/AdminDashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 86
    .end local v2    # "intent":Landroid/content/Intent;
    goto :goto_6a

    .line 87
    :cond_15
    const v2, 0x7f08007d

    if-ne v0, v2, :cond_6a

    .line 89
    iget-object v2, p0, Lcom/allumez/suncaptelecom/AdminDashboardActivity;->logo:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    iget-object v2, p0, Lcom/allumez/suncaptelecom/AdminDashboardActivity;->welcome:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v2, p0, Lcom/allumez/suncaptelecom/AdminDashboardActivity;->webView:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 93
    iget-object v2, p0, Lcom/allumez/suncaptelecom/AdminDashboardActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 94
    .local v2, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 95
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 96
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 97
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 98
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 99
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 100
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 101
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 102
    iget-object v3, p0, Lcom/allumez/suncaptelecom/AdminDashboardActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->goBack()V

    .line 103
    iget-object v3, p0, Lcom/allumez/suncaptelecom/AdminDashboardActivity;->webView:Landroid/webkit/WebView;

    const-string v4, "http://erp.suncaptelecom.com/"

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 104
    iget-object v3, p0, Lcom/allumez/suncaptelecom/AdminDashboardActivity;->webView:Landroid/webkit/WebView;

    new-instance v4, Landroid/webkit/WebViewClient;

    invoke-direct {v4}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 105
    iget-object v3, p0, Lcom/allumez/suncaptelecom/AdminDashboardActivity;->webView:Landroid/webkit/WebView;

    new-instance v4, Lcom/allumez/suncaptelecom/AdminDashboardActivity$1;

    invoke-direct {v4, p0}, Lcom/allumez/suncaptelecom/AdminDashboardActivity$1;-><init>(Lcom/allumez/suncaptelecom/AdminDashboardActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 135
    .end local v2    # "webSettings":Landroid/webkit/WebSettings;
    :cond_6a
    :goto_6a
    const v2, 0x7f080045

    invoke-virtual {p0, v2}, Lcom/allumez/suncaptelecom/AdminDashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout;

    .line 136
    .local v2, "drawer":Landroid/support/v4/widget/DrawerLayout;
    const v3, 0x800003

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 137
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 73
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
