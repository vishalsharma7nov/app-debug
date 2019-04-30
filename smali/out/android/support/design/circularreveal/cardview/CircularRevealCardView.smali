.class public Landroid/support/design/circularreveal/cardview/CircularRevealCardView;
.super Landroid/support/v7/widget/CardView;
.source "CircularRevealCardView.java"

# interfaces
.implements Landroid/support/design/circularreveal/CircularRevealWidget;


# instance fields
.field private final helper:Landroid/support/design/circularreveal/CircularRevealHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/circularreveal/cardview/CircularRevealCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-direct {v0, p0}, Landroid/support/design/circularreveal/CircularRevealHelper;-><init>(Landroid/support/design/circularreveal/CircularRevealHelper$Delegate;)V

    iput-object v0, p0, Landroid/support/design/circularreveal/cardview/CircularRevealCardView;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    .line 42
    return-void
.end method


# virtual methods
.method public actualDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 97
    invoke-super {p0, p1}, Landroid/support/v7/widget/CardView;->draw(Landroid/graphics/Canvas;)V

    .line 98
    return-void
.end method

.method public actualIsOpaque()Z
    .registers 2

    .line 111
    invoke-super {p0}, Landroid/support/v7/widget/CardView;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public buildCircularRevealCache()V
    .registers 2

    .line 46
    iget-object v0, p0, Landroid/support/design/circularreveal/cardview/CircularRevealCardView;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Landroid/support/design/circularreveal/CircularRevealHelper;->buildCircularRevealCache()V

    .line 47
    return-void
.end method

.method public destroyCircularRevealCache()V
    .registers 2

    .line 51
    iget-object v0, p0, Landroid/support/design/circularreveal/cardview/CircularRevealCardView;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Landroid/support/design/circularreveal/CircularRevealHelper;->destroyCircularRevealCache()V

    .line 52
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 88
    iget-object v0, p0, Landroid/support/design/circularreveal/cardview/CircularRevealCardView;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    if-eqz v0, :cond_8

    .line 89
    invoke-virtual {v0, p1}, Landroid/support/design/circularreveal/CircularRevealHelper;->draw(Landroid/graphics/Canvas;)V

    goto :goto_b

    .line 91
    :cond_8
    invoke-super {p0, p1}, Landroid/support/v7/widget/CardView;->draw(Landroid/graphics/Canvas;)V

    .line 93
    :goto_b
    return-void
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 78
    iget-object v0, p0, Landroid/support/design/circularreveal/cardview/CircularRevealCardView;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Landroid/support/design/circularreveal/CircularRevealHelper;->getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCircularRevealScrimColor()I
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/support/design/circularreveal/cardview/CircularRevealCardView;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Landroid/support/design/circularreveal/CircularRevealHelper;->getCircularRevealScrimColor()I

    move-result v0

    return v0
.end method

.method public getRevealInfo()Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 62
    iget-object v0, p0, Landroid/support/design/circularreveal/cardview/CircularRevealCardView;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Landroid/support/design/circularreveal/CircularRevealHelper;->getRevealInfo()Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v0

    return-object v0
.end method

.method public isOpaque()Z
    .registers 2

    .line 102
    iget-object v0, p0, Landroid/support/design/circularreveal/cardview/CircularRevealCardView;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    if-eqz v0, :cond_9

    .line 103
    invoke-virtual {v0}, Landroid/support/design/circularreveal/CircularRevealHelper;->isOpaque()Z

    move-result v0

    return v0

    .line 105
    :cond_9
    invoke-super {p0}, Landroid/support/v7/widget/CardView;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 83
    iget-object v0, p0, Landroid/support/design/circularreveal/cardview/CircularRevealCardView;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/circularreveal/CircularRevealHelper;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .registers 3
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 67
    iget-object v0, p0, Landroid/support/design/circularreveal/cardview/CircularRevealCardView;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/circularreveal/CircularRevealHelper;->setCircularRevealScrimColor(I)V

    .line 68
    return-void
.end method

.method public setRevealInfo(Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)V
    .registers 3
    .param p1, "revealInfo"    # Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    iget-object v0, p0, Landroid/support/design/circularreveal/cardview/CircularRevealCardView;->helper:Landroid/support/design/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/circularreveal/CircularRevealHelper;->setRevealInfo(Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 57
    return-void
.end method
