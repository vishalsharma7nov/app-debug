.class Lcom/allumez/suncaptelecom/EmployeeDashboardActivity$2;
.super Ljava/lang/Object;
.source "EmployeeDashboardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allumez/suncaptelecom/EmployeeDashboardActivity;->exitByBackKey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/allumez/suncaptelecom/EmployeeDashboardActivity;


# direct methods
.method constructor <init>(Lcom/allumez/suncaptelecom/EmployeeDashboardActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/allumez/suncaptelecom/EmployeeDashboardActivity;

    .line 112
    iput-object p1, p0, Lcom/allumez/suncaptelecom/EmployeeDashboardActivity$2;->this$0:Lcom/allumez/suncaptelecom/EmployeeDashboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .line 115
    iget-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeDashboardActivity$2;->this$0:Lcom/allumez/suncaptelecom/EmployeeDashboardActivity;

    invoke-virtual {v0}, Lcom/allumez/suncaptelecom/EmployeeDashboardActivity;->finish()V

    .line 116
    return-void
.end method
