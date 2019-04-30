.class public final Landroid/support/design/widget/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# static fields
.field public static final DEFAULT_EPSILON:F = 1.0E-4f


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dist(FFFF)F
    .registers 10
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F

    .line 28
    sub-float v0, p2, p0

    .line 29
    .local v0, "x":F
    sub-float v1, p3, p1

    .line 30
    .local v1, "y":F
    float-to-double v2, v0

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static distanceToFurthestCorner(FFFFFF)F
    .registers 10
    .param p0, "pointX"    # F
    .param p1, "pointY"    # F
    .param p2, "rectLeft"    # F
    .param p3, "rectTop"    # F
    .param p4, "rectRight"    # F
    .param p5, "rectBottom"    # F

    .line 65
    nop

    .line 66
    invoke-static {p0, p1, p2, p3}, Landroid/support/design/widget/MathUtils;->dist(FFFF)F

    move-result v0

    .line 67
    invoke-static {p0, p1, p4, p3}, Landroid/support/design/widget/MathUtils;->dist(FFFF)F

    move-result v1

    .line 68
    invoke-static {p0, p1, p4, p5}, Landroid/support/design/widget/MathUtils;->dist(FFFF)F

    move-result v2

    .line 69
    invoke-static {p0, p1, p2, p5}, Landroid/support/design/widget/MathUtils;->dist(FFFF)F

    move-result v3

    .line 65
    invoke-static {v0, v1, v2, v3}, Landroid/support/design/widget/MathUtils;->max(FFFF)F

    move-result v0

    return v0
.end method

.method public static geq(FFF)Z
    .registers 4
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "epsilon"    # F

    .line 49
    add-float v0, p0, p2

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static lerp(FFF)F
    .registers 5
    .param p0, "start"    # F
    .param p1, "stop"    # F
    .param p2, "amount"    # F

    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float v0, v0, p0

    mul-float v1, p2, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private static max(FFFF)F
    .registers 5
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F

    .line 74
    cmpl-float v0, p0, p1

    if-lez v0, :cond_e

    cmpl-float v0, p0, p2

    if-lez v0, :cond_e

    cmpl-float v0, p0, p3

    if-lez v0, :cond_e

    move v0, p0

    goto :goto_1f

    :cond_e
    cmpl-float v0, p1, p2

    if-lez v0, :cond_18

    cmpl-float v0, p1, p3

    if-lez v0, :cond_18

    move v0, p1

    goto :goto_1f

    :cond_18
    cmpl-float v0, p2, p3

    if-lez v0, :cond_1e

    move v0, p2

    goto :goto_1f

    :cond_1e
    move v0, p3

    :goto_1f
    return v0
.end method
