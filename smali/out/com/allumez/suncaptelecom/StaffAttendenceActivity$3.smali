.class Lcom/allumez/suncaptelecom/StaffAttendenceActivity$3;
.super Ljava/lang/Object;
.source "StaffAttendenceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/allumez/suncaptelecom/StaffAttendenceActivity;


# direct methods
.method constructor <init>(Lcom/allumez/suncaptelecom/StaffAttendenceActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/allumez/suncaptelecom/StaffAttendenceActivity;

    .line 90
    iput-object p1, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$3;->this$0:Lcom/allumez/suncaptelecom/StaffAttendenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$3;->this$0:Lcom/allumez/suncaptelecom/StaffAttendenceActivity;

    invoke-virtual {v0}, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->uploadingAttendence()V

    .line 94
    iget-object v0, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$3;->this$0:Lcom/allumez/suncaptelecom/StaffAttendenceActivity;

    invoke-virtual {v0}, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->getLocation()V

    .line 95
    iget-object v0, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$3;->this$0:Lcom/allumez/suncaptelecom/StaffAttendenceActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Your Logout Time Is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$3;->this$0:Lcom/allumez/suncaptelecom/StaffAttendenceActivity;

    iget-object v2, v2, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->Time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 96
    return-void
.end method
