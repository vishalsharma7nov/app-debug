.class Lcom/allumez/suncaptelecom/AdminDashboardActivity$1;
.super Landroid/webkit/WebViewClient;
.source "AdminDashboardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allumez/suncaptelecom/AdminDashboardActivity;->onNavigationItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/allumez/suncaptelecom/AdminDashboardActivity;


# direct methods
.method constructor <init>(Lcom/allumez/suncaptelecom/AdminDashboardActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/allumez/suncaptelecom/AdminDashboardActivity;

    .line 105
    iput-object p1, p0, Lcom/allumez/suncaptelecom/AdminDashboardActivity$1;->this$0:Lcom/allumez/suncaptelecom/AdminDashboardActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .line 108
    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 110
    goto :goto_5

    .line 109
    :catch_4
    move-exception v0

    .line 112
    :goto_5
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 113
    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    .line 116
    :cond_e
    const-string v0, "about:blank"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 117
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/allumez/suncaptelecom/AdminDashboardActivity$1;->this$0:Lcom/allumez/suncaptelecom/AdminDashboardActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 118
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const-string v1, "Error"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    const-string v1, "Check your internet connection and try again."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 120
    const/4 v1, -0x1

    new-instance v2, Lcom/allumez/suncaptelecom/AdminDashboardActivity$1$1;

    invoke-direct {v2, p0}, Lcom/allumez/suncaptelecom/AdminDashboardActivity$1$1;-><init>(Lcom/allumez/suncaptelecom/AdminDashboardActivity$1;)V

    const-string v3, "Try Again"

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 127
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method
