.class Lcom/allumez/suncaptelecom/EmployeeActivity$7;
.super Ljava/lang/Object;
.source "EmployeeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allumez/suncaptelecom/EmployeeActivity;->exitByBackKey()V
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

    .line 280
    iput-object p1, p0, Lcom/allumez/suncaptelecom/EmployeeActivity$7;->this$0:Lcom/allumez/suncaptelecom/EmployeeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .line 283
    iget-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity$7;->this$0:Lcom/allumez/suncaptelecom/EmployeeActivity;

    invoke-virtual {v0}, Lcom/allumez/suncaptelecom/EmployeeActivity;->finish()V

    .line 284
    return-void
.end method
