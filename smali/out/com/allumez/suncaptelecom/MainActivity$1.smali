.class Lcom/allumez/suncaptelecom/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allumez/suncaptelecom/MainActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 83
    iput-object p1, p0, Lcom/allumez/suncaptelecom/MainActivity$1;->this$0:Lcom/allumez/suncaptelecom/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/allumez/suncaptelecom/MainActivity$1;->this$0:Lcom/allumez/suncaptelecom/MainActivity;

    invoke-virtual {v0}, Lcom/allumez/suncaptelecom/MainActivity;->Login()V

    .line 87
    return-void
.end method
