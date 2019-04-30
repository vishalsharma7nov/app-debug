.class Lcom/allumez/suncaptelecom/OfficeStaffActivity$2;
.super Ljava/lang/Object;
.source "OfficeStaffActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allumez/suncaptelecom/OfficeStaffActivity;->exitByBackKey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/allumez/suncaptelecom/OfficeStaffActivity;


# direct methods
.method constructor <init>(Lcom/allumez/suncaptelecom/OfficeStaffActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/allumez/suncaptelecom/OfficeStaffActivity;

    .line 103
    iput-object p1, p0, Lcom/allumez/suncaptelecom/OfficeStaffActivity$2;->this$0:Lcom/allumez/suncaptelecom/OfficeStaffActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .line 106
    iget-object v0, p0, Lcom/allumez/suncaptelecom/OfficeStaffActivity$2;->this$0:Lcom/allumez/suncaptelecom/OfficeStaffActivity;

    invoke-virtual {v0}, Lcom/allumez/suncaptelecom/OfficeStaffActivity;->finish()V

    .line 107
    return-void
.end method
