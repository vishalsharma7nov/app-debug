.class public final Lcom/google/android/gms/maps/internal/zzf;
.super Lcom/google/android/gms/internal/maps/zza;

# interfaces
.implements Lcom/google/android/gms/maps/internal/zze;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    .line 1
    const-string v0, "com.google.android.gms.maps.internal.ICreator"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/maps/zza;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/maps/GoogleMapOptions;)Lcom/google/android/gms/maps/internal/IMapViewDelegate;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/maps/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 17
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/maps/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 18
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/maps/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 19
    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/maps/zza;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 21
    if-nez p2, :cond_17

    .line 22
    const/4 p2, 0x0

    goto :goto_2b

    .line 23
    :cond_17
    const-string v0, "com.google.android.gms.maps.internal.IMapViewDelegate"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 24
    instance-of v1, v0, Lcom/google/android/gms/maps/internal/IMapViewDelegate;

    if-eqz v1, :cond_25

    .line 25
    move-object p2, v0

    check-cast p2, Lcom/google/android/gms/maps/internal/IMapViewDelegate;

    goto :goto_2b

    .line 26
    :cond_25
    new-instance v0, Lcom/google/android/gms/maps/internal/zzk;

    invoke-direct {v0, p2}, Lcom/google/android/gms/maps/internal/zzk;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    .line 27
    :goto_2b
    nop

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 29
    return-object p2
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/internal/maps/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 53
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/maps/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 54
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/maps/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 55
    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/maps/zza;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 57
    if-nez p2, :cond_17

    .line 58
    const/4 p2, 0x0

    goto :goto_2b

    .line 59
    :cond_17
    const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    instance-of v1, v0, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;

    if-eqz v1, :cond_25

    .line 61
    move-object p2, v0

    check-cast p2, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;

    goto :goto_2b

    .line 62
    :cond_25
    new-instance v0, Lcom/google/android/gms/maps/internal/zzbw;

    invoke-direct {v0, p2}, Lcom/google/android/gms/maps/internal/zzbw;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    .line 63
    :goto_2b
    nop

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 65
    return-object p2
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/internal/maps/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 48
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/maps/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 49
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    const/4 p1, 0x6

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/maps/zza;->zzb(ILandroid/os/Parcel;)V

    .line 51
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/maps/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/maps/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 5
    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/maps/zza;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 7
    if-nez v0, :cond_14

    .line 8
    const/4 v0, 0x0

    goto :goto_28

    .line 9
    :cond_14
    const-string v1, "com.google.android.gms.maps.internal.IMapFragmentDelegate"

    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 10
    instance-of v2, v1, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    if-eqz v2, :cond_22

    .line 11
    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    goto :goto_28

    .line 12
    :cond_22
    new-instance v1, Lcom/google/android/gms/maps/internal/zzj;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/internal/zzj;-><init>(Landroid/os/IBinder;)V

    move-object v0, v1

    .line 13
    :goto_28
    nop

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 15
    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/internal/maps/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 67
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/maps/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 68
    const/16 p1, 0x8

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/maps/zza;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 70
    if-nez v0, :cond_15

    .line 71
    const/4 v0, 0x0

    goto :goto_29

    .line 72
    :cond_15
    const-string v1, "com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate"

    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 73
    instance-of v2, v1, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    if-eqz v2, :cond_23

    .line 74
    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    goto :goto_29

    .line 75
    :cond_23
    new-instance v1, Lcom/google/android/gms/maps/internal/zzbv;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/internal/zzbv;-><init>(Landroid/os/IBinder;)V

    move-object v0, v1

    .line 76
    :goto_29
    nop

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 78
    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/maps/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 31
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/maps/zza;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 33
    if-nez v1, :cond_11

    .line 34
    const/4 v1, 0x0

    goto :goto_25

    .line 35
    :cond_11
    const-string v2, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 36
    instance-of v3, v2, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    if-eqz v3, :cond_1f

    .line 37
    move-object v1, v2

    check-cast v1, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    goto :goto_25

    .line 38
    :cond_1f
    new-instance v2, Lcom/google/android/gms/maps/internal/zzb;

    invoke-direct {v2, v1}, Lcom/google/android/gms/maps/internal/zzb;-><init>(Landroid/os/IBinder;)V

    move-object v1, v2

    .line 39
    :goto_25
    nop

    .line 40
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 41
    return-object v1
.end method

.method public final zzf()Lcom/google/android/gms/internal/maps/zze;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/internal/maps/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 43
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/maps/zza;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/maps/zzf;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/maps/zze;

    move-result-object v1

    .line 45
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 46
    return-object v1
.end method
