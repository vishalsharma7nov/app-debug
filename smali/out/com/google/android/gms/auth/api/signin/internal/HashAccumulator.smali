.class public Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;
.super Ljava/lang/Object;


# static fields
.field private static zaah:I
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private zaai:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    const/16 v0, 0x1f

    sput v0, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaah:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaai:I

    .line 3
    return-void
.end method


# virtual methods
.method public addObject(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;
    .registers 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 4
    sget v0, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaah:I

    iget v1, p0, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaai:I

    mul-int v0, v0, v1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    :goto_e
    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaai:I

    .line 5
    return-object p0
.end method

.method public hash()I
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 8
    iget v0, p0, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaai:I

    return v0
.end method

.method public final zaa(Z)Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;
    .registers 4

    .line 6
    sget v0, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaah:I

    iget v1, p0, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaai:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaai:I

    .line 7
    return-object p0
.end method
