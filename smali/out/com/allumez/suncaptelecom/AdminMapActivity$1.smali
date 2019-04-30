.class Lcom/allumez/suncaptelecom/AdminMapActivity$1;
.super Ljava/lang/Object;
.source "AdminMapActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allumez/suncaptelecom/AdminMapActivity;->fetchData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/allumez/suncaptelecom/msg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/allumez/suncaptelecom/AdminMapActivity;


# direct methods
.method constructor <init>(Lcom/allumez/suncaptelecom/AdminMapActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/allumez/suncaptelecom/AdminMapActivity;

    .line 52
    iput-object p1, p0, Lcom/allumez/suncaptelecom/AdminMapActivity$1;->this$0:Lcom/allumez/suncaptelecom/AdminMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .registers 3
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/allumez/suncaptelecom/msg;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 77
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/allumez/suncaptelecom/msg;>;"
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/allumez/suncaptelecom/msg;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/allumez/suncaptelecom/msg;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/allumez/suncaptelecom/msg;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/allumez/suncaptelecom/msg;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allumez/suncaptelecom/msg;

    .line 57
    .local v0, "data":Lcom/allumez/suncaptelecom/msg;
    iget-object v1, p0, Lcom/allumez/suncaptelecom/AdminMapActivity$1;->this$0:Lcom/allumez/suncaptelecom/AdminMapActivity;

    invoke-virtual {v0}, Lcom/allumez/suncaptelecom/msg;->getMsg()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/allumez/suncaptelecom/AdminMapActivity;->access$002(Lcom/allumez/suncaptelecom/AdminMapActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 59
    iget-object v1, p0, Lcom/allumez/suncaptelecom/AdminMapActivity$1;->this$0:Lcom/allumez/suncaptelecom/AdminMapActivity;

    invoke-static {v1}, Lcom/allumez/suncaptelecom/AdminMapActivity;->access$000(Lcom/allumez/suncaptelecom/AdminMapActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 60
    .local v1, "latitude":[Ljava/lang/String;
    iget-object v2, p0, Lcom/allumez/suncaptelecom/AdminMapActivity$1;->this$0:Lcom/allumez/suncaptelecom/AdminMapActivity;

    invoke-static {v2}, Lcom/allumez/suncaptelecom/AdminMapActivity;->access$000(Lcom/allumez/suncaptelecom/AdminMapActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 62
    .local v2, "longitude":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_28
    iget-object v4, p0, Lcom/allumez/suncaptelecom/AdminMapActivity$1;->this$0:Lcom/allumez/suncaptelecom/AdminMapActivity;

    invoke-static {v4}, Lcom/allumez/suncaptelecom/AdminMapActivity;->access$000(Lcom/allumez/suncaptelecom/AdminMapActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_62

    .line 64
    iget-object v4, p0, Lcom/allumez/suncaptelecom/AdminMapActivity$1;->this$0:Lcom/allumez/suncaptelecom/AdminMapActivity;

    invoke-static {v4}, Lcom/allumez/suncaptelecom/AdminMapActivity;->access$000(Lcom/allumez/suncaptelecom/AdminMapActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/allumez/suncaptelecom/msg$msg_info;

    invoke-virtual {v4}, Lcom/allumez/suncaptelecom/msg$msg_info;->getLatitude()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 65
    iget-object v4, p0, Lcom/allumez/suncaptelecom/AdminMapActivity$1;->this$0:Lcom/allumez/suncaptelecom/AdminMapActivity;

    invoke-static {v4}, Lcom/allumez/suncaptelecom/AdminMapActivity;->access$000(Lcom/allumez/suncaptelecom/AdminMapActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/allumez/suncaptelecom/msg$msg_info;

    invoke-virtual {v4}, Lcom/allumez/suncaptelecom/msg$msg_info;->getLongitude()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 66
    aget-object v4, v1, v3

    const-string v5, "Latitude"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 70
    .end local v3    # "i":I
    :cond_62
    iget-object v3, p0, Lcom/allumez/suncaptelecom/AdminMapActivity$1;->this$0:Lcom/allumez/suncaptelecom/AdminMapActivity;

    invoke-virtual {v3}, Lcom/allumez/suncaptelecom/AdminMapActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f080074

    .line 71
    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/SupportMapFragment;

    .line 72
    .local v3, "mapFragment":Lcom/google/android/gms/maps/SupportMapFragment;
    iget-object v4, p0, Lcom/allumez/suncaptelecom/AdminMapActivity$1;->this$0:Lcom/allumez/suncaptelecom/AdminMapActivity;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 73
    return-void
.end method
