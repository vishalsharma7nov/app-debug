.class public Lcom/allumez/suncaptelecom/AdminMapActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "AdminMapActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# instance fields
.field private hero:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allumez/suncaptelecom/msg$msg_info;",
            ">;"
        }
    .end annotation
.end field

.field lv:Landroid/widget/ListView;

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/allumez/suncaptelecom/AdminMapActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/allumez/suncaptelecom/AdminMapActivity;

    .line 23
    iget-object v0, p0, Lcom/allumez/suncaptelecom/AdminMapActivity;->hero:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/allumez/suncaptelecom/AdminMapActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/allumez/suncaptelecom/AdminMapActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 23
    iput-object p1, p0, Lcom/allumez/suncaptelecom/AdminMapActivity;->hero:Ljava/util/ArrayList;

    return-object p1
.end method

.method private fetchData()V
    .registers 5

    .line 44
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 45
    const-string v1, "http://api.hostingfunda.com/suncap/"

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 46
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    .line 48
    .local v0, "retrofit":Lretrofit2/Retrofit;
    const-class v1, Lcom/allumez/suncaptelecom/Api;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allumez/suncaptelecom/Api;

    .line 50
    .local v1, "api":Lcom/allumez/suncaptelecom/Api;
    invoke-interface {v1}, Lcom/allumez/suncaptelecom/Api;->getHeroes()Lretrofit2/Call;

    move-result-object v2

    .line 52
    .local v2, "calling":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/allumez/suncaptelecom/msg;>;"
    new-instance v3, Lcom/allumez/suncaptelecom/AdminMapActivity$1;

    invoke-direct {v3, p0}, Lcom/allumez/suncaptelecom/AdminMapActivity$1;-><init>(Lcom/allumez/suncaptelecom/AdminMapActivity;)V

    invoke-interface {v2, v3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 79
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 33
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/allumez/suncaptelecom/AdminMapActivity;->setContentView(I)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allumez/suncaptelecom/AdminMapActivity;->hero:Ljava/util/ArrayList;

    .line 38
    const v0, 0x7f08006d

    invoke-virtual {p0, v0}, Lcom/allumez/suncaptelecom/AdminMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/allumez/suncaptelecom/AdminMapActivity;->lv:Landroid/widget/ListView;

    .line 40
    invoke-direct {p0}, Lcom/allumez/suncaptelecom/AdminMapActivity;->fetchData()V

    .line 41
    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .registers 11
    .param p1, "googleMap"    # Lcom/google/android/gms/maps/GoogleMap;

    .line 82
    iput-object p1, p0, Lcom/allumez/suncaptelecom/AdminMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 84
    iget-object v0, p0, Lcom/allumez/suncaptelecom/AdminMapActivity;->hero:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allumez/suncaptelecom/msg$msg_info;

    .line 86
    .local v1, "info":Lcom/allumez/suncaptelecom/msg$msg_info;
    invoke-virtual {v1}, Lcom/allumez/suncaptelecom/msg$msg_info;->getLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 87
    .local v2, "lat":Ljava/lang/Double;
    invoke-virtual {v1}, Lcom/allumez/suncaptelecom/msg$msg_info;->getLongitude()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 89
    .local v3, "lon":Ljava/lang/Double;
    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 90
    .local v4, "loc":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v5, p0, Lcom/allumez/suncaptelecom/AdminMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v6, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v6}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 91
    invoke-virtual {v6, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Position : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v1}, Lcom/allumez/suncaptelecom/msg$msg_info;->getUsername()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v6

    .line 90
    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 93
    iget-object v5, p0, Lcom/allumez/suncaptelecom/AdminMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v4}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 95
    .end local v1    # "info":Lcom/allumez/suncaptelecom/msg$msg_info;
    .end local v2    # "lat":Ljava/lang/Double;
    .end local v3    # "lon":Ljava/lang/Double;
    .end local v4    # "loc":Lcom/google/android/gms/maps/model/LatLng;
    goto :goto_8

    .line 97
    :cond_6a
    return-void
.end method
