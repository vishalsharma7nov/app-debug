.class public final Lcom/google/android/gms/maps/model/Dot;
.super Lcom/google/android/gms/maps/model/PatternItem;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/maps/model/PatternItem;-><init>(ILjava/lang/Float;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .line 3
    const-string v0, "[Dot]"

    return-object v0
.end method
