.class public final Lcom/google/android/gms/maps/internal/zzby;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;
    .registers 4
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 18
    return-object v0

    .line 19
    :cond_4
    const-class v1, Lcom/google/android/gms/maps/internal/zzby;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 20
    const-string v1, "map_state"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 21
    if-nez p0, :cond_16

    .line 22
    return-object v0

    .line 23
    :cond_16
    const-class v0, Lcom/google/android/gms/maps/internal/zzby;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 25
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 4
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p0, :cond_46

    if-nez p1, :cond_5

    goto :goto_46

    .line 3
    :cond_5
    const-string v0, "MapOptions"

    invoke-static {p0, v0}, Lcom/google/android/gms/maps/internal/zzby;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 4
    if-eqz v1, :cond_10

    .line 5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/maps/internal/zzby;->zza(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6
    :cond_10
    const-string v0, "StreetViewPanoramaOptions"

    invoke-static {p0, v0}, Lcom/google/android/gms/maps/internal/zzby;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 7
    if-eqz v1, :cond_1b

    .line 8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/maps/internal/zzby;->zza(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9
    :cond_1b
    const-string v0, "camera"

    invoke-static {p0, v0}, Lcom/google/android/gms/maps/internal/zzby;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 10
    if-eqz v1, :cond_26

    .line 11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/maps/internal/zzby;->zza(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 12
    :cond_26
    const-string v0, "position"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 13
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_35
    const-string v0, "com.google.android.wearable.compat.extra.LOWBIT_AMBIENT"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 15
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 16
    :cond_45
    return-void

    .line 2
    :cond_46
    :goto_46
    return-void
.end method

.method public static zza(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V
    .registers 6

    .line 26
    const-class v0, Lcom/google/android/gms/maps/internal/zzby;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 27
    const-string v0, "map_state"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 28
    if-nez v1, :cond_16

    .line 29
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 30
    :cond_16
    const-class v2, Lcom/google/android/gms/maps/internal/zzby;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 31
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 32
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 33
    return-void
.end method
