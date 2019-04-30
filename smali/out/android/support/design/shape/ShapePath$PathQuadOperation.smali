.class public Landroid/support/design/shape/ShapePath$PathQuadOperation;
.super Landroid/support/design/shape/ShapePath$PathOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathQuadOperation"
.end annotation


# instance fields
.field public controlX:F

.field public controlY:F

.field public endX:F

.field public endY:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 151
    invoke-direct {p0}, Landroid/support/design/shape/ShapePath$PathOperation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .registers 8
    .param p1, "transform"    # Landroid/graphics/Matrix;
    .param p2, "path"    # Landroid/graphics/Path;

    .line 159
    iget-object v0, p0, Landroid/support/design/shape/ShapePath$PathQuadOperation;->matrix:Landroid/graphics/Matrix;

    .line 160
    .local v0, "inverse":Landroid/graphics/Matrix;
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 161
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 162
    iget v1, p0, Landroid/support/design/shape/ShapePath$PathQuadOperation;->controlX:F

    iget v2, p0, Landroid/support/design/shape/ShapePath$PathQuadOperation;->controlY:F

    iget v3, p0, Landroid/support/design/shape/ShapePath$PathQuadOperation;->endX:F

    iget v4, p0, Landroid/support/design/shape/ShapePath$PathQuadOperation;->endY:F

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 163
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 164
    return-void
.end method
