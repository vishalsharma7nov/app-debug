.class public final Lcom/google/android/gms/common/internal/zzp;
.super Ljava/lang/Object;


# static fields
.field private static sLock:Ljava/lang/Object;

.field private static zzeo:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static zzep:Ljava/lang/String;

.field private static zzeq:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zzp;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public static zzc(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzp;->zze(Landroid/content/Context;)V

    .line 2
    sget-object p0, Lcom/google/android/gms/common/internal/zzp;->zzep:Ljava/lang/String;

    return-object p0
.end method

.method public static zzd(Landroid/content/Context;)I
    .registers 1

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzp;->zze(Landroid/content/Context;)V

    .line 4
    sget p0, Lcom/google/android/gms/common/internal/zzp;->zzeq:I

    return p0
.end method

.method private static zze(Landroid/content/Context;)V
    .registers 4

    .line 5
    sget-object v0, Lcom/google/android/gms/common/internal/zzp;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_3
    sget-boolean v1, Lcom/google/android/gms/common/internal/zzp;->zzeo:Z

    if-eqz v1, :cond_9

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_9
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/gms/common/internal/zzp;->zzeo:Z

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_3b

    .line 11
    const/16 v2, 0x80

    :try_start_16
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 12
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_1c} :catch_31
    .catchall {:try_start_16 .. :try_end_1c} :catchall_3b

    .line 13
    if-nez p0, :cond_20

    .line 14
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_3b

    return-void

    .line 15
    :cond_20
    :try_start_20
    const-string v1, "com.google.app.id"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/common/internal/zzp;->zzep:Ljava/lang/String;

    .line 16
    const-string v1, "com.google.android.gms.version"

    .line 17
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/google/android/gms/common/internal/zzp;->zzeq:I
    :try_end_30
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_30} :catch_31
    .catchall {:try_start_20 .. :try_end_30} :catchall_3b

    .line 18
    goto :goto_39

    .line 19
    :catch_31
    move-exception p0

    .line 20
    :try_start_32
    const-string v1, "MetadataValueReader"

    const-string v2, "This should never happen."

    invoke-static {v1, v2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    :goto_39
    monitor-exit v0

    return-void

    :catchall_3b
    move-exception p0

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_3b

    throw p0
.end method
