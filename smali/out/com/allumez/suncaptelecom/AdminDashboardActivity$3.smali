.class Lcom/allumez/suncaptelecom/AdminDashboardActivity$3;
.super Ljava/lang/Object;
.source "AdminDashboardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allumez/suncaptelecom/AdminDashboardActivity;->exitByBackKey()V
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

    .line 152
    iput-object p1, p0, Lcom/allumez/suncaptelecom/AdminDashboardActivity$3;->this$0:Lcom/allumez/suncaptelecom/AdminDashboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .line 155
    iget-object v0, p0, Lcom/allumez/suncaptelecom/AdminDashboardActivity$3;->this$0:Lcom/allumez/suncaptelecom/AdminDashboardActivity;

    invoke-virtual {v0}, Lcom/allumez/suncaptelecom/AdminDashboardActivity;->finish()V

    .line 156
    return-void
.end method
