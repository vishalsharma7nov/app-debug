.class Lcom/allumez/suncaptelecom/EmployeeActivity$2$1;
.super Ljava/lang/Object;
.source "EmployeeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allumez/suncaptelecom/EmployeeActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/allumez/suncaptelecom/EmployeeActivity$2;

.field final synthetic val$someHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/allumez/suncaptelecom/EmployeeActivity$2;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$1"    # Lcom/allumez/suncaptelecom/EmployeeActivity$2;

    .line 122
    iput-object p1, p0, Lcom/allumez/suncaptelecom/EmployeeActivity$2$1;->this$1:Lcom/allumez/suncaptelecom/EmployeeActivity$2;

    iput-object p2, p0, Lcom/allumez/suncaptelecom/EmployeeActivity$2$1;->val$someHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 125
    iget-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity$2$1;->this$1:Lcom/allumez/suncaptelecom/EmployeeActivity$2;

    iget-object v0, v0, Lcom/allumez/suncaptelecom/EmployeeActivity$2;->this$0:Lcom/allumez/suncaptelecom/EmployeeActivity;

    iget-object v0, v0, Lcom/allumez/suncaptelecom/EmployeeActivity;->displayTime:Landroid/widget/TextView;

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "HH:mm:ss"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/allumez/suncaptelecom/EmployeeActivity$2$1;->val$someHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    return-void
.end method
