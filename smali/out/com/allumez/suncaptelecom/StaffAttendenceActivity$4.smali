.class Lcom/allumez/suncaptelecom/StaffAttendenceActivity$4;
.super Ljava/lang/Object;
.source "StaffAttendenceActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->uploadingAttendence()V
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
.field final synthetic this$0:Lcom/allumez/suncaptelecom/StaffAttendenceActivity;

.field final synthetic val$loading:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/allumez/suncaptelecom/StaffAttendenceActivity;Landroid/app/ProgressDialog;)V
    .registers 3
    .param p1, "this$0"    # Lcom/allumez/suncaptelecom/StaffAttendenceActivity;

    .line 187
    iput-object p1, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$4;->this$0:Lcom/allumez/suncaptelecom/StaffAttendenceActivity;

    iput-object p2, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$4;->val$loading:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 187
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$4;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .registers 4
    .param p1, "response"    # Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$4;->val$loading:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 191
    iget-object v0, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$4;->this$0:Lcom/allumez/suncaptelecom/StaffAttendenceActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 193
    return-void
.end method
