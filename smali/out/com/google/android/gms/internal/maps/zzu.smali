.class public abstract Lcom/google/android/gms/internal/maps/zzu;
.super Lcom/google/android/gms/internal/maps/zzb;

# interfaces
.implements Lcom/google/android/gms/internal/maps/zzt;


# direct methods
.method public static zzg(Landroid/os/IBinder;)Lcom/google/android/gms/internal/maps/zzt;
    .registers 3

    .line 1
    if-nez p0, :cond_4

    .line 2
    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_4
    const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lcom/google/android/gms/internal/maps/zzt;

    if-eqz v1, :cond_11

    .line 5
    check-cast v0, Lcom/google/android/gms/internal/maps/zzt;

    return-object v0

    .line 6
    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/maps/zzv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/maps/zzv;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
