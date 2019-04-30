.class final Lcom/google/android/gms/common/zzc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field private static volatile zzn:Lcom/google/android/gms/common/internal/zzm;

.field private static final zzo:Ljava/lang/Object;

.field private static zzp:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/zzc;->zzo:Ljava/lang/Object;

    return-void
.end method

.method static zza(Ljava/lang/String;Lcom/google/android/gms/common/zze;Z)Lcom/google/android/gms/common/zzm;
    .registers 4

    .line 6
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 7
    :try_start_4
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/zzc;->zzb(Ljava/lang/String;Lcom/google/android/gms/common/zze;Z)Lcom/google/android/gms/common/zzm;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 8
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 9
    return-object p0

    .line 10
    :catchall_c
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method

.method static final synthetic zza(ZLjava/lang/String;Lcom/google/android/gms/common/zze;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    const/4 v0, 0x1

    if-nez p0, :cond_c

    .line 38
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/zzc;->zzb(Ljava/lang/String;Lcom/google/android/gms/common/zze;Z)Lcom/google/android/gms/common/zzm;

    move-result-object v1

    .line 39
    iget-boolean v1, v1, Lcom/google/android/gms/common/zzm;->zzac:Z

    .line 40
    if-eqz v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 41
    :goto_d
    invoke-static {p1, p2, p0, v0}, Lcom/google/android/gms/common/zzm;->zza(Ljava/lang/String;Lcom/google/android/gms/common/zze;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static declared-synchronized zza(Landroid/content/Context;)V
    .registers 3

    const-class v0, Lcom/google/android/gms/common/zzc;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/google/android/gms/common/zzc;->zzp:Landroid/content/Context;

    if-nez v1, :cond_11

    .line 2
    if-eqz p0, :cond_18

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/zzc;->zzp:Landroid/content/Context;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1a

    monitor-exit v0

    return-void

    .line 4
    :cond_11
    :try_start_11
    const-string p0, "GoogleCertificates"

    const-string v1, "GoogleCertificates has been initialized already"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1a

    .line 5
    :cond_18
    monitor-exit v0

    return-void

    .line 0
    :catchall_1a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static zzb(Ljava/lang/String;Lcom/google/android/gms/common/zze;Z)Lcom/google/android/gms/common/zzm;
    .registers 7

    .line 11
    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/zzc;->zzn:Lcom/google/android/gms/common/internal/zzm;

    if-nez v0, :cond_2b

    .line 12
    sget-object v0, Lcom/google/android/gms/common/zzc;->zzp:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/google/android/gms/common/zzc;->zzo:Ljava/lang/Object;

    monitor-enter v0
    :try_end_c
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_c} :catch_67

    .line 14
    :try_start_c
    sget-object v1, Lcom/google/android/gms/common/zzc;->zzn:Lcom/google/android/gms/common/internal/zzm;

    if-nez v1, :cond_26

    .line 15
    sget-object v1, Lcom/google/android/gms/common/zzc;->zzp:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    const-string v3, "com.google.android.gms.googlecertificates"

    .line 16
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v1

    .line 17
    const-string v2, "com.google.android.gms.common.GoogleCertificatesImpl"

    .line 18
    invoke-virtual {v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 19
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzn;->zzc(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzm;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/common/zzc;->zzn:Lcom/google/android/gms/common/internal/zzm;

    .line 20
    :cond_26
    monitor-exit v0

    goto :goto_2c

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_28

    :try_start_2a
    throw p0
    :try_end_2b
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_2a .. :try_end_2b} :catch_67

    .line 21
    :cond_2b
    nop

    .line 25
    :goto_2c
    sget-object v0, Lcom/google/android/gms/common/zzc;->zzp:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v0, Lcom/google/android/gms/common/zzk;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/common/zzk;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/zze;Z)V

    .line 27
    :try_start_36
    sget-object v1, Lcom/google/android/gms/common/zzc;->zzn:Lcom/google/android/gms/common/internal/zzm;

    sget-object v2, Lcom/google/android/gms/common/zzc;->zzp:Landroid/content/Context;

    .line 28
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 29
    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/common/internal/zzm;->zza(Lcom/google/android/gms/common/zzk;Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result v0
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_46} :catch_58

    .line 30
    nop

    .line 34
    if-eqz v0, :cond_4e

    .line 35
    invoke-static {}, Lcom/google/android/gms/common/zzm;->zze()Lcom/google/android/gms/common/zzm;

    move-result-object p0

    return-object p0

    .line 36
    :cond_4e
    new-instance v0, Lcom/google/android/gms/common/zzd;

    invoke-direct {v0, p2, p0, p1}, Lcom/google/android/gms/common/zzd;-><init>(ZLjava/lang/String;Lcom/google/android/gms/common/zze;)V

    invoke-static {v0}, Lcom/google/android/gms/common/zzm;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/common/zzm;

    move-result-object p0

    return-object p0

    .line 31
    :catch_58
    move-exception p0

    .line 32
    const-string p1, "GoogleCertificates"

    const-string p2, "Failed to get Google certificates from remote"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    const-string p1, "module call"

    invoke-static {p1, p0}, Lcom/google/android/gms/common/zzm;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/zzm;

    move-result-object p0

    return-object p0

    .line 22
    :catch_67
    move-exception p0

    .line 23
    const-string p1, "GoogleCertificates"

    const-string p2, "Failed to get Google certificates from remote"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    const-string p1, "module init: "

    invoke-virtual {p0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_84

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8a

    :cond_84
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_8a
    invoke-static {p1, p0}, Lcom/google/android/gms/common/zzm;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/zzm;

    move-result-object p0

    return-object p0
.end method
