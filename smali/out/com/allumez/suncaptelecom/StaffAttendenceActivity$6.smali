.class Lcom/allumez/suncaptelecom/StaffAttendenceActivity$6;
.super Lcom/android/volley/toolbox/StringRequest;
.source "StaffAttendenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allumez/suncaptelecom/StaffAttendenceActivity;->uploadingAttendence()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/allumez/suncaptelecom/StaffAttendenceActivity;

.field final synthetic val$date:Ljava/lang/String;

.field final synthetic val$latitude:Ljava/lang/String;

.field final synthetic val$longitude:Ljava/lang/String;

.field final synthetic val$time:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/allumez/suncaptelecom/StaffAttendenceActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "this$0"    # Lcom/allumez/suncaptelecom/StaffAttendenceActivity;
    .param p2, "arg0"    # I
    .param p3, "arg1"    # Ljava/lang/String;
    .param p5, "arg3"    # Lcom/android/volley/Response$ErrorListener;

    .line 199
    .local p4, "arg2":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$6;->this$0:Lcom/allumez/suncaptelecom/StaffAttendenceActivity;

    iput-object p6, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$6;->val$username:Ljava/lang/String;

    iput-object p7, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$6;->val$latitude:Ljava/lang/String;

    iput-object p8, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$6;->val$longitude:Ljava/lang/String;

    iput-object p9, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$6;->val$date:Ljava/lang/String;

    iput-object p10, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$6;->val$time:Ljava/lang/String;

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

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 204
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$6;->val$username:Ljava/lang/String;

    const-string v2, "username"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v1, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$6;->val$latitude:Ljava/lang/String;

    const-string v2, "latitude"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v1, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$6;->val$longitude:Ljava/lang/String;

    const-string v2, "longitude"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v1, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$6;->val$date:Ljava/lang/String;

    const-string v2, "date"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v1, p0, Lcom/allumez/suncaptelecom/StaffAttendenceActivity$6;->val$time:Ljava/lang/String;

    const-string v2, "time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    return-object v0
.end method
