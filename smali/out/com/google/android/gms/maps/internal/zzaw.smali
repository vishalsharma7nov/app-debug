.class public abstract Lcom/google/android/gms/maps/internal/zzaw;
.super Lcom/google/android/gms/internal/maps/zzb;

# interfaces
.implements Lcom/google/android/gms/maps/internal/zzav;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const-string v0, "com.google.android.gms.maps.internal.IOnMyLocationButtonClickListener"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/maps/zzb;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    const/4 p2, 0x1

    if-ne p1, p2, :cond_e

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/zzaw;->onMyLocationButtonClick()Z

    move-result p1

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/maps/zzc;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 7
    return p2

    .line 8
    :cond_e
    const/4 p1, 0x0

    return p1
.end method
