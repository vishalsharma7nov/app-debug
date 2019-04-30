.class Lcom/allumez/suncaptelecom/EmployeeActivity$5;
.super Lcom/android/volley/toolbox/StringRequest;
.source "EmployeeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allumez/suncaptelecom/EmployeeActivity;->uploadingData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/allumez/suncaptelecom/EmployeeActivity;

.field final synthetic val$date:Ljava/lang/String;

.field final synthetic val$latitude:Ljava/lang/String;

.field final synthetic val$longitude:Ljava/lang/String;

.field final synthetic val$time:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/allumez/suncaptelecom/EmployeeActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "this$0"    # Lcom/allumez/suncaptelecom/EmployeeActivity;
    .param p2, "arg0"    # I
    .param p3, "arg1"    # Ljava/lang/String;
    .param p5, "arg3"    # Lcom/android/volley/Response$ErrorListener;

    .line 249
    .local p4, "arg2":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/allumez/suncaptelecom/EmployeeActivity$5;->this$0:Lcom/allumez/suncaptelecom/EmployeeActivity;

    iput-object p6, p0, Lcom/allumez/suncaptelecom/EmployeeActivity$5;->val$username:Ljava/lang/String;

    iput-object p7, p0, Lcom/allumez/suncaptelecom/EmployeeActivity$5;->val$latitude:Ljava/lang/String;

    iput-object p8, p0, Lcom/allumez/suncaptelecom/EmployeeActivity$5;->val$longitude:Ljava/lang/String;

    iput-object p9, p0, Lcom/allumez/suncaptelecom/EmployeeActivity$5;->val$date:Ljava/lang/String;

    iput-object p10, p0, Lcom/allumez/suncaptelecom/EmployeeActivity$5;->val$time:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected getParams()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 254
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/allumez/suncaptelecom/EmployeeActivity$5;->val$username:Ljava/lang/String;

    const-string v2, "username"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v1, p0, Lcom/allumez/suncaptelecom/EmployeeActivity$5;->val$latitude:Ljava/lang/String;

    const-string v2, "latitude"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v1, p0, Lcom/allumez/suncaptelecom/EmployeeActivity$5;->val$longitude:Ljava/lang/String;

    const-string v2, "longitude"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v1, p0, Lcom/allumez/suncaptelecom/EmployeeActivity$5;->val$date:Ljava/lang/String;

    const-string v2, "date"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v1, p0, Lcom/allumez/suncaptelecom/EmployeeActivity$5;->val$time:Ljava/lang/String;

    const-string v2, "time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v1, p0, Lcom/allumez/suncaptelecom/EmployeeActivity$5;->this$0:Lcom/allumez/suncaptelecom/EmployeeActivity;

    iget-object v1, v1, Lcom/allumez/suncaptelecom/EmployeeActivity;->imagedata:Ljava/lang/String;

    const-string v2, "image"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    return-object v0
.end method
