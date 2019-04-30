.class Lcom/allumez/suncaptelecom/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allumez/suncaptelecom/MainActivity;->Login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/allumez/suncaptelecom/MainActivity;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/allumez/suncaptelecom/MainActivity;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/allumez/suncaptelecom/MainActivity;

    .line 107
    iput-object p1, p0, Lcom/allumez/suncaptelecom/MainActivity$2;->this$0:Lcom/allumez/suncaptelecom/MainActivity;

    iput-object p2, p0, Lcom/allumez/suncaptelecom/MainActivity$2;->val$username:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 107
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allumez/suncaptelecom/MainActivity$2;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .registers 6
    .param p1, "response"    # Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/allumez/suncaptelecom/MainActivity$2;->this$0:Lcom/allumez/suncaptelecom/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Welcome Admin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 114
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/allumez/suncaptelecom/MainActivity$2;->this$0:Lcom/allumez/suncaptelecom/MainActivity;

    const-class v2, Lcom/allumez/suncaptelecom/AdminDashboardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/allumez/suncaptelecom/MainActivity$2;->this$0:Lcom/allumez/suncaptelecom/MainActivity;

    invoke-virtual {v1, v0}, Lcom/allumez/suncaptelecom/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 117
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_24
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Welcome To SunCap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "username"

    if-eqz v0, :cond_4a

    .line 119
    iget-object v0, p0, Lcom/allumez/suncaptelecom/MainActivity$2;->this$0:Lcom/allumez/suncaptelecom/MainActivity;

    invoke-virtual {v0}, Lcom/allumez/suncaptelecom/MainActivity;->getLocation()V

    .line 120
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/allumez/suncaptelecom/MainActivity$2;->this$0:Lcom/allumez/suncaptelecom/MainActivity;

    const-class v3, Lcom/allumez/suncaptelecom/EmployeeDashboardActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/allumez/suncaptelecom/MainActivity$2;->val$username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    iget-object v2, p0, Lcom/allumez/suncaptelecom/MainActivity$2;->this$0:Lcom/allumez/suncaptelecom/MainActivity;

    invoke-virtual {v2, v0}, Lcom/allumez/suncaptelecom/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 125
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Welcome To Sun Cap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 127
    iget-object v0, p0, Lcom/allumez/suncaptelecom/MainActivity$2;->this$0:Lcom/allumez/suncaptelecom/MainActivity;

    invoke-virtual {v0}, Lcom/allumez/suncaptelecom/MainActivity;->getLocation()V

    .line 128
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/allumez/suncaptelecom/MainActivity$2;->this$0:Lcom/allumez/suncaptelecom/MainActivity;

    const-class v3, Lcom/allumez/suncaptelecom/OfficeStaffActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/allumez/suncaptelecom/MainActivity$2;->val$username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    iget-object v1, p0, Lcom/allumez/suncaptelecom/MainActivity$2;->this$0:Lcom/allumez/suncaptelecom/MainActivity;

    invoke-virtual {v1, v0}, Lcom/allumez/suncaptelecom/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 136
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6e
    return-void
.end method
