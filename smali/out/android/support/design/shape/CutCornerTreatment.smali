.class public Landroid/support/design/shape/CutCornerTreatment;
.super Landroid/support/design/shape/CornerTreatment;
.source "CutCornerTreatment.java"


# annotations
.annotation build Landroid/support/design/internal/Experimental;
    value = "The shapes API is currently experimental and subject to change"
.end annotation


# instance fields
.field private final size:F


# direct methods
.method public constructor <init>(F)V
    .registers 2
    .param p1, "size"    # F

    .line 37
    invoke-direct {p0}, Landroid/support/design/shape/CornerTreatment;-><init>()V

    .line 38
    iput p1, p0, Landroid/support/design/shape/CutCornerTreatment;->size:F

    .line 39
    return-void
.end method


# virtual methods
.method public getCornerPath(FFLandroid/support/design/shape/ShapePath;)V
    .registers 9
    .param p1, "angle"    # F
    .param p2, "interpolation"    # F
    .param p3, "shapePath"    # Landroid/support/design/shape/ShapePath;

    .line 43
    iget v0, p0, Landroid/support/design/shape/CutCornerTreatment;->size:F

    mul-float v0, v0, p2

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Landroid/support/design/shape/ShapePath;->reset(FF)V

    .line 44
    float-to-double v0, p1

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iget v2, p0, Landroid/support/design/shape/CutCornerTreatment;->size:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    float-to-double v1, p1

    .line 46
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    iget v3, p0, Landroid/support/design/shape/CutCornerTreatment;->size:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-float v1, v1

    .line 44
    invoke-virtual {p3, v0, v1}, Landroid/support/design/shape/ShapePath;->lineTo(FF)V

    .line 47
    return-void
.end method
