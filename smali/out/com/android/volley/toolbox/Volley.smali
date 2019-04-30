.class public Lcom/android/volley/toolbox/Volley;
.super Ljava/lang/Object;
.source "Volley.java"


# static fields
.field private static final DEFAULT_CACHE_DIR:Ljava/lang/String; = "volley"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 102
    const/4 v0, 0x0

    check-cast v0, Lcom/android/volley/toolbox/BaseHttpStack;

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/BaseHttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    return-object v0
.end method

.method private static newRequestQueue(Landroid/content/Context;Lcom/android/volley/Network;)Lcom/android/volley/RequestQueue;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "network"    # Lcom/android/volley/Network;

    .line 89
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "volley"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    .local v0, "cacheDir":Ljava/io/File;
    new-instance v1, Lcom/android/volley/RequestQueue;

    new-instance v2, Lcom/android/volley/toolbox/DiskBasedCache;

    invoke-direct {v2, v0}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, p1}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V

    .line 91
    .local v1, "queue":Lcom/android/volley/RequestQueue;
    invoke-virtual {v1}, Lcom/android/volley/RequestQueue;->start()V

    .line 92
    return-object v1
.end method

.method public static newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/BaseHttpStack;)Lcom/android/volley/RequestQueue;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stack"    # Lcom/android/volley/toolbox/BaseHttpStack;

    .line 42
    if-nez p1, :cond_4c

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_13

    .line 44
    new-instance v0, Lcom/android/volley/toolbox/BasicNetwork;

    new-instance v1, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v1}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/BaseHttpStack;)V

    .local v0, "network":Lcom/android/volley/toolbox/BasicNetwork;
    goto :goto_51

    .line 50
    .end local v0    # "network":Lcom/android/volley/toolbox/BasicNetwork;
    :cond_13
    const-string v0, "volley/0"

    .line 52
    .local v0, "userAgent":Ljava/lang/String;
    :try_start_15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "packageName":Ljava/lang/String;
    nop

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 55
    .local v2, "info":Landroid/content/pm/PackageInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_39
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_39} :catch_3b

    move-object v0, v3

    .line 57
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    goto :goto_3c

    .line 56
    :catch_3b
    move-exception v1

    .line 59
    :goto_3c
    new-instance v1, Lcom/android/volley/toolbox/BasicNetwork;

    new-instance v2, Lcom/android/volley/toolbox/HttpClientStack;

    .line 61
    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/volley/toolbox/HttpClientStack;-><init>(Lorg/apache/http/client/HttpClient;)V

    invoke-direct {v1, v2}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    move-object v0, v1

    .line 62
    .local v0, "network":Lcom/android/volley/toolbox/BasicNetwork;
    goto :goto_51

    .line 64
    .end local v0    # "network":Lcom/android/volley/toolbox/BasicNetwork;
    :cond_4c
    new-instance v0, Lcom/android/volley/toolbox/BasicNetwork;

    invoke-direct {v0, p1}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/BaseHttpStack;)V

    .line 67
    .restart local v0    # "network":Lcom/android/volley/toolbox/BasicNetwork;
    :goto_51
    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/Network;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    return-object v1
.end method

.method public static newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stack"    # Lcom/android/volley/toolbox/HttpStack;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    if-nez p1, :cond_a

    .line 83
    const/4 v0, 0x0

    check-cast v0, Lcom/android/volley/toolbox/BaseHttpStack;

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/BaseHttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    return-object v0

    .line 85
    :cond_a
    new-instance v0, Lcom/android/volley/toolbox/BasicNetwork;

    invoke-direct {v0, p1}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/Network;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    return-object v0
.end method
