.class Lcom/allumez/suncaptelecom/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allumez/suncaptelecom/MainActivity;->Login()V
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

    .line 139
    iput-object p1, p0, Lcom/allumez/suncaptelecom/MainActivity$3;->this$0:Lcom/allumez/suncaptelecom/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .line 143
    iget-object v0, p0, Lcom/allumez/suncaptelecom/MainActivity$3;->this$0:Lcom/allumez/suncaptelecom/MainActivity;

    invoke-virtual {v0}, Lcom/allumez/suncaptelecom/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 144
    return-void
.end method
