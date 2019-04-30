.class Lcom/allumez/suncaptelecom/StaffAttendenceActivity$8;
.super Ljava/lang/Object;
.source "StaffAttendenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->exitByBackKey()V
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

    .line 230
    iput-object p1, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$8;->this$0:Lcom/allumez/suncaptelecom/StaffAttendenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .line 233
    iget-object v0, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$8;->this$0:Lcom/allumez/suncaptelecom/StaffAttendenceActivity;

    invoke-virtual {v0}, Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->finish()V

    .line 234
    return-void
.end method
