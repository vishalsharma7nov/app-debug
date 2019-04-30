.class Lcom/allumez/suncaptelecom/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allumez/suncaptelecom/MainActivity;->exitByBackKey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/allumez/suncaptelecom/MainActivity;


# direct methods
.method constructor <init>(Lcom/allumez/suncaptelecom/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/allumez/suncaptelecom/MainActivity;

    .line 271
    iput-object p1, p0, Lcom/allumez/suncaptelecom/MainActivity$6;->this$0:Lcom/allumez/suncaptelecom/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .line 274
    iget-object v0, p0, Lcom/allumez/suncaptelecom/MainActivity$6;->this$0:Lcom/allumez/suncaptelecom/MainActivity;

    invoke-virtual {v0}, Lcom/allumez/suncaptelecom/MainActivity;->finishAffinity()V

    .line 275
    return-void
.end method
