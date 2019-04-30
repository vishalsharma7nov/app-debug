.class Lcom/allumez/suncaptelecom/EmployeeActivity$1$1;
.super Ljava/lang/Object;
.source "EmployeeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allumez/suncaptelecom/EmployeeActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/allumez/suncaptelecom/EmployeeActivity$1;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/allumez/suncaptelecom/EmployeeActivity$1;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$1"    # Lcom/allumez/suncaptelecom/EmployeeActivity$1;

    .line 95
    iput-object p1, p0, Lcom/allumez/suncaptelecom/EmployeeActivity$1$1;->this$1:Lcom/allumez/suncaptelecom/EmployeeActivity$1;

    iput-object p2, p0, Lcom/allumez/suncaptelecom/EmployeeActivity$1$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 98
    iget-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity$1$1;->this$1:Lcom/allumez/suncaptelecom/EmployeeActivity$1;

    iget-object v0, v0, Lcom/allumez/suncaptelecom/EmployeeActivity$1;->this$0:Lcom/allumez/suncaptelecom/EmployeeActivity;

    invoke-virtual {v0}, Lcom/allumez/suncaptelecom/EmployeeActivity;->getLocation()V

    .line 99
    iget-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity$1$1;->val$handler:Landroid/os/Handler;

    const-wide/32 v1, 0x186a0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    return-void
.end method
