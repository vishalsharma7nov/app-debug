.class Lcom/allumez/suncaptelecom/MainActivity$5;
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

    .line 277
    iput-object p1, p0, Lcom/allumez/suncaptelecom/MainActivity$5;->this$0:Lcom/allumez/suncaptelecom/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .line 280
    return-void
.end method
