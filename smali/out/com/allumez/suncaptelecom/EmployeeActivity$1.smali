.class Lcom/allumez/suncaptelecom/EmployeeActivity$1;
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

    .line 90
    iput-object p1, p0, Lcom/allumez/suncaptelecom/EmployeeActivity$1;->this$0:Lcom/allumez/suncaptelecom/EmployeeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity$1;->this$0:Lcom/allumez/suncaptelecom/EmployeeActivity;

    invoke-virtual {v0}, Lcom/allumez/suncaptelecom/EmployeeActivity;->uploadingData()V

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 95
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/allumez/suncaptelecom/EmployeeActivity$1$1;

    invoke-direct {v1, p0, v0}, Lcom/allumez/suncaptelecom/EmployeeActivity$1$1;-><init>(Lcom/allumez/suncaptelecom/EmployeeActivity$1;Landroid/os/Handler;)V

    .line 101
    .local v1, "runnable":Ljava/lang/Runnable;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    return-void
.end method
