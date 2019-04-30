.class public final Lcom/google/android/gms/maps/model/PolygonOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "PolygonOptionsCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x1
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/maps/model/PolygonOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fillColor:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getFillColor"
        id = 0x6
    .end annotation
.end field

.field private strokeColor:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getStrokeColor"
        id = 0x5
    .end annotation
.end field

.field private zzcr:F
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getStrokeWidth"
        id = 0x4
    .end annotation
.end field

.field private zzcs:F
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getZIndex"
        id = 0x7
    .end annotation
.end field

.field private zzct:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "isVisible"
        id = 0x8
    .end annotation
.end field

.field private zzcu:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "isClickable"
        id = 0xa
    .end annotation
.end field

.field private zzcv:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getStrokePattern"
        id = 0xc
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdx:Ljava/util/List;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getPoints"
        id = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdy:Ljava/util/List;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getHolesForParcel"
        id = 0x3
        type = "java.util.List"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;>;"
        }
    .end annotation
.end field

.field private zzdz:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "isGeodesic"
        id = 0x9
    .end annotation
.end field

.field private zzea:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getStrokeJointType"
        id = 0xb
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 117
    new-instance v0, Lcom/google/android/gms/maps/model/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/PolygonOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzcr:F

    .line 3
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeColor:I

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->fillColor:I

    .line 5
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzcs:F

    .line 6
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzct:Z

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzdz:Z

    .line 8
    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzcu:Z

    .line 9
    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzea:I

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzcv:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzdx:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzdy:Ljava/util/List;

    .line 13
    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;FIIFZZZILjava/util/List;)V
    .registers 14
    .param p1    # Ljava/util/List;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p3    # F
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p4    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p5    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .param p6    # F
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x7
        .end annotation
    .end param
    .param p7    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x8
        .end annotation
    .end param
    .param p8    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x9
        .end annotation
    .end param
    .param p9    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xa
        .end annotation
    .end param
    .param p10    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xb
        .end annotation
    .end param
    .param p11    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xc
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;",
            "Ljava/util/List;",
            "FIIFZZZI",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 15
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzcr:F

    .line 16
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeColor:I

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->fillColor:I

    .line 18
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzcs:F

    .line 19
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzct:Z

    .line 20
    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzdz:Z

    .line 21
    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzcu:Z

    .line 22
    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzea:I

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzcv:Ljava/util/List;

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzdx:Ljava/util/List;

    .line 25
    iput-object p2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzdy:Ljava/util/List;

    .line 26
    iput p3, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzcr:F

    .line 27
    iput p4, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeColor:I

    .line 28
    iput p5, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->fillColor:I

    .line 29
    iput p6, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzcs:F

    .line 30
    iput-boolean p7, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzct:Z

    .line 31
    iput-boolean p8, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzdz:Z

    .line 32
    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzcu:Z

    .line 33
    iput p10, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzea:I

    .line 34
    iput-object p11, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzcv:Ljava/util/List;

    .line 35
    return-void
.end method


# virtual methods
.method public final add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzdx:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    return-object p0
.end method

.method public final varargs add([Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzdx:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    return-object p0
.end method

.method public final addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)",
            "Lcom/google/android/gms/maps/model/PolygonOptions;"
        }
    .end annotation

    .line 78
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    .line 79
    iget-object v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzdx:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    goto :goto_4

    .line 81
    :cond_16
    return-object p0
.end method

.method public final addHole(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)",
            "Lcom/google/android/gms/maps/model/PolygonOptions;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/LatLng;

    .line 84
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    goto :goto_9

    .line 86
    :cond_19
    iget-object p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzdy:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    return-object p0
.end method

.method public final clickable(Z)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 2

    .line 104
    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzcu:Z

    .line 105
    return-object p0
.end method

.method public final fillColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 2

    .line 96
    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->fillColor:I

    .line 97
    return-object p0
.end method

.method public final geodesic(Z)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 2

    .line 102
    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzdz:Z

    .line 103
    return-object p0
.end method

.method public final getFillColor()I
    .registers 2

    .line 112
    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->fillColor:I

    return v0
.end method

.method public final getHoles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;>;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzdy:Ljava/util/List;

    return-object v0
.end method

.method public final getPoints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzdx:Ljava/util/List;

    return-object v0
.end method

.method public final getStrokeColor()I
    .registers 2

    .line 109
    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeColor:I

    return v0
.end method

.method public final getStrokeJointType()I
    .registers 2

    .line 110
    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzea:I

    return v0
.end method

.method public final getStrokePattern()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzcv:Ljava/util/List;

    return-object v0
.end method

.method public final getStrokeWidth()F
    .registers 2

    .line 108
    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzcr:F

    return v0
.end method

.method public final getZIndex()F
    .registers 2

    .line 113
    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzcs:F

    return v0
.end method

.method public final isClickable()Z
    .registers 2

    .line 116
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzcu:Z

    return v0
.end method

.method public final isGeodesic()Z
    .registers 2

    .line 115
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzdz:Z

    return v0
.end method

.method public final isVisible()Z
    .registers 2

    .line 114
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzct:Z

    return v0
.end method

.method public final strokeColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 2

    .line 90
    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeColor:I

    .line 91
    return-object p0
.end method

.method public final strokeJointType(I)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 2

    .line 92
    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzea:I

    .line 93
    return-object p0
.end method

.method public final strokePattern(Ljava/util/List;)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;)",
            "Lcom/google/android/gms/maps/model/PolygonOptions;"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzcv:Ljava/util/List;

    .line 95
    return-object p0
.end method

.method public final strokeWidth(F)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 2

    .line 88
    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzcr:F

    .line 89
    return-object p0
.end method

.method public final visible(Z)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 2

    .line 100
    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzct:Z

    .line 101
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 36
    nop

    .line 37
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 38
    nop

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolygonOptions;->getPoints()Ljava/util/List;

    move-result-object v0

    .line 40
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 41
    nop

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzdy:Ljava/util/List;

    .line 43
    nop

    .line 44
    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 45
    nop

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolygonOptions;->getStrokeWidth()F

    move-result v0

    .line 47
    const/4 v2, 0x4

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 48
    nop

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolygonOptions;->getStrokeColor()I

    move-result v0

    .line 50
    const/4 v2, 0x5

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 51
    nop

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolygonOptions;->getFillColor()I

    move-result v0

    .line 53
    const/4 v2, 0x6

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 54
    nop

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolygonOptions;->getZIndex()F

    move-result v0

    .line 56
    const/4 v2, 0x7

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 57
    nop

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolygonOptions;->isVisible()Z

    move-result v0

    .line 59
    const/16 v2, 0x8

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 60
    nop

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolygonOptions;->isGeodesic()Z

    move-result v0

    .line 62
    const/16 v2, 0x9

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 63
    nop

    .line 64
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolygonOptions;->isClickable()Z

    move-result v0

    .line 65
    const/16 v2, 0xa

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 66
    nop

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolygonOptions;->getStrokeJointType()I

    move-result v0

    .line 68
    const/16 v2, 0xb

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 69
    nop

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/PolygonOptions;->getStrokePattern()Ljava/util/List;

    move-result-object v0

    .line 71
    const/16 v2, 0xc

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 72
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 73
    return-void
.end method

.method public final zIndex(F)Lcom/google/android/gms/maps/model/PolygonOptions;
    .registers 2

    .line 98
    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->zzcs:F

    .line 99
    return-object p0
.end method
