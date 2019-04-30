.class Lcom/allumez/suncaptelecom/EmployeeActivity$2;
.super Ljava/lang/Object;
.source "EmployeeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allumez/suncaptelecom/EmployeeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/allumez/suncaptelecom/EmployeeActivity;


# direct methods
.method constructor <init>(Lcom/allumez/suncaptelecom/EmployeeActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/allumez/suncaptelecom/EmployeeActivity;

    .line 116
    iput-object p1, p0, Lcom/allumez/suncaptelecom/EmployeeActivity$2;->this$0:Lcom/allumez/suncaptelecom/EmployeeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/allumez/suncaptelecom/EmployeeActivity$2;->this$0:Lcom/allumez/suncaptelecom/EmployeeActivity;

    const/16 v2, 0x3dd

    invoke-virtual {v1, v0, v2}, Lcom/allumez/suncaptelecom/EmployeeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 121
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/allumez/suncaptelecom/EmployeeActivity$2;->this$0:Lcom/allumez/suncaptelecom/EmployeeActivity;

    invoke-virtual {v2}, Lcom/allumez/suncaptelecom/EmployeeActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 122
    .local v1, "someHandler":Landroid/os/Handler;
    new-instance v2, Lcom/allumez/suncaptelecom/EmployeeActivity$2$1;

    invoke-direct {v2, p0, v1}, Lcom/allumez/suncaptelecom/EmployeeActivity$2$1;-><init>(Lcom/allumez/suncaptelecom/EmployeeActivity$2;Landroid/os/Handler;)V

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 129
    return-void
.end method
