.class public final Lcom/google/android/gms/location/LocationRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "LocationRequestCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x3e8
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIORITY_BALANCED_POWER_ACCURACY:I = 0x66

.field public static final PRIORITY_HIGH_ACCURACY:I = 0x64

.field public static final PRIORITY_LOW_POWER:I = 0x68

.field public static final PRIORITY_NO_POWER:I = 0x69


# instance fields
.field private priority:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        defaultValueUnchecked = "LocationRequest.DEFAULT_PRIORITY"
        id = 0x1
    .end annotation
.end field

.field private zzaf:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        defaultValueUnchecked = "LocationRequest.DEFAULT_EXPIRE_AT"
        id = 0x5
    .end annotation
.end field

.field private zzaw:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        defaultValueUnchecked = "LocationRequest.DEFAULT_INTERVAL"
        id = 0x2
    .end annotation
.end field

.field private zzax:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        defaultValueUnchecked = "LocationRequest.DEFAULT_FASTEST_INTERVAL"
        id = 0x3
    .end annotation
.end field

.field private zzay:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        defaultValueUnchecked = "LocationRequest.DEFAULT_EXPLICIT_FASTEST_INTERVAL"
        id = 0x4
    .end annotation
.end field

.field private zzaz:F
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        defaultValueUnchecked = "LocationRequest.DEFAULT_SMALLEST_DISPLACEMENT"
        id = 0x7
    .end annotation
.end field

.field private zzba:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        defaultValueUnchecked = "LocationRequest.DEFAULT_MAX_WAIT_TIME"
        id = 0x8
    .end annotation
.end field

.field private zzx:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        defaultValueUnchecked = "LocationRequest.DEFAULT_NUM_UPDATES"
        id = 0x6
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/location/zzab;

    invoke-direct {v0}, Lcom/google/android/gms/location/zzab;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/16 v0, 0x66

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->priority:I

    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzaw:J

    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzax:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzay:Z

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzaf:J

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzx:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzaz:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzba:J

    return-void
.end method

.method constructor <init>(IJJZJIFJ)V
    .registers 13
    .param p1    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p4    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p6    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p7    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p9    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .param p10    # F
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x7
        .end annotation
    .end param
    .param p11    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x8
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->priority:I

    iput-wide p2, p0, Lcom/google/android/gms/location/LocationRequest;->zzaw:J

    iput-wide p4, p0, Lcom/google/android/gms/location/LocationRequest;->zzax:J

    iput-boolean p6, p0, Lcom/google/android/gms/location/LocationRequest;->zzay:Z

    iput-wide p7, p0, Lcom/google/android/gms/location/LocationRequest;->zzaf:J

    iput p9, p0, Lcom/google/android/gms/location/LocationRequest;->zzx:I

    iput p10, p0, Lcom/google/android/gms/location/LocationRequest;->zzaz:F

    iput-wide p11, p0, Lcom/google/android/gms/location/LocationRequest;->zzba:J

    return-void
.end method

.method public static create()Lcom/google/android/gms/location/LocationRequest;
    .registers 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    return-object v0
.end method

.method private static zza(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "invalid interval: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/location/LocationRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/gms/location/LocationRequest;

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->priority:I

    iget v3, p1, Lcom/google/android/gms/location/LocationRequest;->priority:I

    if-ne v1, v3, :cond_4b

    iget-wide v3, p0, Lcom/google/android/gms/location/LocationRequest;->zzaw:J

    iget-wide v5, p1, Lcom/google/android/gms/location/LocationRequest;->zzaw:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_4b

    iget-wide v3, p0, Lcom/google/android/gms/location/LocationRequest;->zzax:J

    iget-wide v5, p1, Lcom/google/android/gms/location/LocationRequest;->zzax:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_4b

    iget-boolean v1, p0, Lcom/google/android/gms/location/LocationRequest;->zzay:Z

    iget-boolean v3, p1, Lcom/google/android/gms/location/LocationRequest;->zzay:Z

    if-ne v1, v3, :cond_4b

    iget-wide v3, p0, Lcom/google/android/gms/location/LocationRequest;->zzaf:J

    iget-wide v5, p1, Lcom/google/android/gms/location/LocationRequest;->zzaf:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_4b

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->zzx:I

    iget v3, p1, Lcom/google/android/gms/location/LocationRequest;->zzx:I

    if-ne v1, v3, :cond_4b

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->zzaz:F

    iget v3, p1, Lcom/google/android/gms/location/LocationRequest;->zzaz:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_4b

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationRequest;->getMaxWaitTime()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationRequest;->getMaxWaitTime()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_4b

    return v0

    :cond_4b
    return v2
.end method

.method public final getExpirationTime()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzaf:J

    return-wide v0
.end method

.method public final getFastestInterval()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzax:J

    return-wide v0
.end method

.method public final getInterval()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzaw:J

    return-wide v0
.end method

.method public final getMaxWaitTime()J
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzba:J

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->zzaw:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_9

    move-wide v0, v2

    :cond_9
    return-wide v0
.end method

.method public final getNumUpdates()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzx:I

    return v0
.end method

.method public final getPriority()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->priority:I

    return v0
.end method

.method public final getSmallestDisplacement()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzaz:F

    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->priority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/location/LocationRequest;->zzaw:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->zzaz:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/location/LocationRequest;->zzba:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isFastestIntervalExplicitlySet()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzay:Z

    return v0
.end method

.method public final setExpirationDuration(J)Lcom/google/android/gms/location/LocationRequest;
    .registers 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    sub-long v4, v2, v0

    cmp-long v6, p1, v4

    if-lez v6, :cond_12

    iput-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->zzaf:J

    goto :goto_15

    :cond_12
    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->zzaf:J

    :goto_15
    iget-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->zzaf:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_1f

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzaf:J

    :cond_1f
    return-object p0
.end method

.method public final setExpirationTime(J)Lcom/google/android/gms/location/LocationRequest;
    .registers 6
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->zzaf:J

    iget-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->zzaf:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_c

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzaf:J

    :cond_c
    return-object p0
.end method

.method public final setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;
    .registers 4

    invoke-static {p1, p2}, Lcom/google/android/gms/location/LocationRequest;->zza(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzay:Z

    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->zzax:J

    return-object p0
.end method

.method public final setInterval(J)Lcom/google/android/gms/location/LocationRequest;
    .registers 5

    invoke-static {p1, p2}, Lcom/google/android/gms/location/LocationRequest;->zza(J)V

    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->zzaw:J

    iget-boolean p1, p0, Lcom/google/android/gms/location/LocationRequest;->zzay:Z

    if-nez p1, :cond_15

    iget-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->zzaw:J

    long-to-double p1, p1

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    double-to-long p1, p1

    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->zzax:J

    :cond_15
    return-object p0
.end method

.method public final setMaxWaitTime(J)Lcom/google/android/gms/location/LocationRequest;
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-static {p1, p2}, Lcom/google/android/gms/location/LocationRequest;->zza(J)V

    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->zzba:J

    return-object p0
.end method

.method public final setNumUpdates(I)Lcom/google/android/gms/location/LocationRequest;
    .registers 5
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    if-lez p1, :cond_5

    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->zzx:I

    return-object p0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "invalid numUpdates: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setPriority(I)Lcom/google/android/gms/location/LocationRequest;
    .registers 5
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const/16 v0, 0x64

    if-eq p1, v0, :cond_2a

    const/16 v0, 0x66

    if-eq p1, v0, :cond_2a

    const/16 v0, 0x68

    if-eq p1, v0, :cond_2a

    const/16 v0, 0x69

    if-ne p1, v0, :cond_11

    goto :goto_2a

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x1c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "invalid quality: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    :goto_2a
    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->priority:I

    return-object p0
.end method

.method public final setSmallestDisplacement(F)Lcom/google/android/gms/location/LocationRequest;
    .registers 5
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_8

    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->zzaz:F

    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "invalid displacement: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->priority:I

    const/16 v2, 0x64

    const/16 v3, 0x69

    if-eq v1, v2, :cond_28

    const/16 v2, 0x66

    if-eq v1, v2, :cond_25

    const/16 v2, 0x68

    if-eq v1, v2, :cond_22

    if-eq v1, v3, :cond_1f

    const-string v1, "???"

    goto :goto_2a

    :cond_1f
    const-string v1, "PRIORITY_NO_POWER"

    goto :goto_2a

    :cond_22
    const-string v1, "PRIORITY_LOW_POWER"

    goto :goto_2a

    :cond_25
    const-string v1, "PRIORITY_BALANCED_POWER_ACCURACY"

    goto :goto_2a

    :cond_28
    const-string v1, "PRIORITY_HIGH_ACCURACY"

    :goto_2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->priority:I

    const-string v2, "ms"

    if-eq v1, v3, :cond_40

    const-string v1, " requested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/google/android/gms/location/LocationRequest;->zzaw:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_40
    const-string v1, " fastest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/google/android/gms/location/LocationRequest;->zzax:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/google/android/gms/location/LocationRequest;->zzba:J

    iget-wide v5, p0, Lcom/google/android/gms/location/LocationRequest;->zzaw:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_62

    const-string v1, " maxWait="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/google/android/gms/location/LocationRequest;->zzba:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_62
    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->zzaz:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_78

    const-string v1, " smallestDisplacement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->zzaz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_78
    iget-wide v3, p0, Lcom/google/android/gms/location/LocationRequest;->zzaf:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v1, v3, v5

    if-eqz v1, :cond_93

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-string v1, " expireIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_93
    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->zzx:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_a4

    const-string v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->zzx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_a4
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->priority:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzaw:J

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzax:J

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzay:Z

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzaf:J

    const/4 v2, 0x5

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzx:I

    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzaz:F

    const/4 v1, 0x7

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->zzba:J

    const/16 v2, 0x8

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method