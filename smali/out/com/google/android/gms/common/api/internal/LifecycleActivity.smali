.class public Lcom/google/android/gms/common/api/internal/LifecycleActivity;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# instance fields
.field private final zzbc:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "Activity must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zzbc:Ljava/lang/Object;

    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method


# virtual methods
.method public asActivity()Landroid/app/Activity;
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zzbc:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public asFragmentActivity()Landroid/support/v4/app/FragmentActivity;
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zzbc:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method public asObject()Ljava/lang/Object;
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zzbc:Ljava/lang/Object;

    return-object v0
.end method

.method public isChimera()Z
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 8
    const/4 v0, 0x0

    return v0
.end method

.method public isSupport()Z
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zzbc:Ljava/lang/Object;

    instance-of v0, v0, Landroid/support/v4/app/FragmentActivity;

    return v0
.end method

.method public final zzh()Z
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;->zzbc:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    return v0
.end method
