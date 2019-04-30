.class Lcom/allumez/suncaptelecom/AdminDashboardActivity$1$1;
.super Ljava/lang/Object;
.source "AdminDashboardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allumez/suncaptelecom/AdminDashboardActivity$1;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/allumez/suncaptelecom/AdminDashboardActivity$1;


# direct methods
.method constructor <init>(Lcom/allumez/suncaptelecom/AdminDashboardActivity$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/allumez/suncaptelecom/AdminDashboardActivity$1;

    .line 120
    iput-object p1, p0, Lcom/allumez/suncaptelecom/AdminDashboardActivity$1$1;->this$1:Lcom/allumez/suncaptelecom/AdminDashboardActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 122
    iget-object v0, p0, Lcom/allumez/suncaptelecom/AdminDashboardActivity$1$1;->this$1:Lcom/allumez/suncaptelecom/AdminDashboardActivity$1;

    iget-object v0, v0, Lcom/allumez/suncaptelecom/AdminDashboardActivity$1;->this$0:Lcom/allumez/suncaptelecom/AdminDashboardActivity;

    invoke-virtual {v0}, Lcom/allumez/suncaptelecom/AdminDashboardActivity;->finish()V

    .line 123
    iget-object v0, p0, Lcom/allumez/suncaptelecom/AdminDashboardActivity$1$1;->this$1:Lcom/allumez/suncaptelecom/AdminDashboardActivity$1;

    iget-object v0, v0, Lcom/allumez/suncaptelecom/AdminDashboardActivity$1;->this$0:Lcom/allumez/suncaptelecom/AdminDashboardActivity;

    iget-object v1, p0, Lcom/allumez/suncaptelecom/AdminDashboardActivity$1$1;->this$1:Lcom/allumez/suncaptelecom/AdminDashboardActivity$1;

    iget-object v1, v1, Lcom/allumez/suncaptelecom/AdminDashboardActivity$1;->this$0:Lcom/allumez/suncaptelecom/AdminDashboardActivity;

    invoke-virtual {v1}, Lcom/allumez/suncaptelecom/AdminDashboardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allumez/suncaptelecom/AdminDashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 124
    return-void
.end method
