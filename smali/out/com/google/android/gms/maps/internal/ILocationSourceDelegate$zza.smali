.class public abstract Lcom/google/android/gms/maps/internal/ILocationSourceDelegate$zza;
.super Lcom/google/android/gms/internal/maps/zzb;

# interfaces
.implements Lcom/google/android/gms/maps/internal/ILocationSourceDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/internal/ILocationSourceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const-string v0, "com.google.android.gms.maps.internal.ILocationSourceDelegate"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/maps/zzb;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    const/4 p4, 0x1

    if-eq p1, p4, :cond_c

    const/4 p2, 0x2

    if-eq p1, p2, :cond_8

    .line 16
    const/4 p1, 0x0

    return p1

    .line 14
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/ILocationSourceDelegate$zza;->deactivate()V

    .line 15
    goto :goto_2d

    .line 4
    :cond_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 5
    if-nez p1, :cond_14

    .line 6
    const/4 p1, 0x0

    goto :goto_28

    .line 7
    :cond_14
    const-string p2, "com.google.android.gms.maps.internal.IOnLocationChangeListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 8
    instance-of v0, p2, Lcom/google/android/gms/maps/internal/zzah;

    if-eqz v0, :cond_22

    .line 9
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/maps/internal/zzah;

    goto :goto_28

    .line 10
    :cond_22
    new-instance p2, Lcom/google/android/gms/maps/internal/zzai;

    invoke-direct {p2, p1}, Lcom/google/android/gms/maps/internal/zzai;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    .line 11
    :goto_28
    nop

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/internal/ILocationSourceDelegate$zza;->activate(Lcom/google/android/gms/maps/internal/zzah;)V

    .line 13
    nop

    .line 17
    :goto_2d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 18
    return p4
.end method
