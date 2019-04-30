.class public Landroid/support/design/button/MaterialButton;
.super Landroid/support/v7/widget/AppCompatButton;
.source "MaterialButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/button/MaterialButton$IconGravity;
    }
.end annotation


# static fields
.field public static final ICON_GRAVITY_START:I = 0x1

.field public static final ICON_GRAVITY_TEXT_START:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "MaterialButton"


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconGravity:I

.field private iconLeft:I
    .annotation build Landroid/support/annotation/Px;
    .end annotation
.end field

.field private iconPadding:I
    .annotation build Landroid/support/annotation/Px;
    .end annotation
.end field

.field private iconSize:I
    .annotation build Landroid/support/annotation/Px;
    .end annotation
.end field

.field private iconTint:Landroid/content/res/ColorStateList;

.field private iconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 133
    sget v0, Landroid/support/design/R$attr;->materialButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 137
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    sget-object v2, Landroid/support/design/R$styleable;->MaterialButton:[I

    sget v4, Landroid/support/design/R$style;->Widget_MaterialComponents_Button:I

    const/4 v6, 0x0

    new-array v5, v6, [I

    .line 140
    move-object v0, p1

    move-object v1, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Landroid/support/design/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 147
    .local v0, "attributes":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/design/R$styleable;->MaterialButton_iconPadding:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/button/MaterialButton;->iconPadding:I

    .line 148
    sget v1, Landroid/support/design/R$styleable;->MaterialButton_iconTintMode:I

    .line 150
    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 149
    invoke-static {v1, v2}, Landroid/support/design/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 152
    nop

    .line 154
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/design/R$styleable;->MaterialButton_iconTint:I

    .line 153
    invoke-static {v1, v0, v2}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    .line 155
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/design/R$styleable;->MaterialButton_icon:I

    invoke-static {v1, v0, v2}, Landroid/support/design/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 156
    sget v1, Landroid/support/design/R$styleable;->MaterialButton_iconGravity:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/button/MaterialButton;->iconGravity:I

    .line 158
    sget v1, Landroid/support/design/R$styleable;->MaterialButton_iconSize:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/button/MaterialButton;->iconSize:I

    .line 161
    new-instance v1, Landroid/support/design/button/MaterialButtonHelper;

    invoke-direct {v1, p0}, Landroid/support/design/button/MaterialButtonHelper;-><init>(Landroid/support/design/button/MaterialButton;)V

    iput-object v1, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    .line 162
    iget-object v1, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v1, v0}, Landroid/support/design/button/MaterialButtonHelper;->loadFromAttributes(Landroid/content/res/TypedArray;)V

    .line 164
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 166
    iget v1, p0, Landroid/support/design/button/MaterialButton;->iconPadding:I

    invoke-virtual {p0, v1}, Landroid/support/design/button/MaterialButton;->setCompoundDrawablePadding(I)V

    .line 167
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->updateIcon()V

    .line 168
    return-void
.end method

.method private isLayoutRTL()Z
    .registers 3

    .line 358
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method private isUsingOriginalBackground()Z
    .registers 2

    .line 744
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/support/design/button/MaterialButtonHelper;->isBackgroundOverwritten()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private updateIcon()V
    .registers 7

    .line 539
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3a

    .line 540
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 541
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 542
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_1a

    .line 543
    iget-object v1, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 546
    :cond_1a
    iget v0, p0, Landroid/support/design/button/MaterialButton;->iconSize:I

    if-eqz v0, :cond_1f

    goto :goto_25

    :cond_1f
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 547
    .local v0, "width":I
    :goto_25
    iget v1, p0, Landroid/support/design/button/MaterialButton;->iconSize:I

    if-eqz v1, :cond_2a

    goto :goto_30

    :cond_2a
    iget-object v1, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 548
    .local v1, "height":I
    :goto_30
    iget-object v2, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/support/design/button/MaterialButton;->iconLeft:I

    const/4 v4, 0x0

    add-int v5, v3, v0

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 551
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_3a
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1, v1}, Landroid/support/v4/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 552
    return-void
.end method


# virtual methods
.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 262
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 273
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getCornerRadius()I
    .registers 2
    .annotation build Landroid/support/annotation/Px;
    .end annotation

    .line 717
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0}, Landroid/support/design/button/MaterialButtonHelper;->getCornerRadius()I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 470
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconGravity()I
    .registers 2

    .line 729
    iget v0, p0, Landroid/support/design/button/MaterialButton;->iconGravity:I

    return v0
.end method

.method public getIconPadding()I
    .registers 2
    .annotation build Landroid/support/annotation/Px;
    .end annotation

    .line 396
    iget v0, p0, Landroid/support/design/button/MaterialButton;->iconPadding:I

    return v0
.end method

.method public getIconSize()I
    .registers 2
    .annotation build Landroid/support/annotation/Px;
    .end annotation

    .line 426
    iget v0, p0, Landroid/support/design/button/MaterialButton;->iconSize:I

    return v0
.end method

.method public getIconTint()Landroid/content/res/ColorStateList;
    .registers 2

    .line 509
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 534
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 591
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0}, Landroid/support/design/button/MaterialButtonHelper;->getRippleColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method public getStrokeColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 633
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0}, Landroid/support/design/button/MaterialButtonHelper;->getStrokeColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method public getStrokeWidth()I
    .registers 2
    .annotation build Landroid/support/annotation/Px;
    .end annotation

    .line 676
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0}, Landroid/support/design/button/MaterialButtonHelper;->getStrokeWidth()I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 207
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 208
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0}, Landroid/support/design/button/MaterialButtonHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 213
    :cond_d
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 245
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 246
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0}, Landroid/support/design/button/MaterialButtonHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    .line 250
    :cond_d
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 172
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 174
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_14

    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 175
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/button/MaterialButtonHelper;->drawStroke(Landroid/graphics/Canvas;)V

    .line 177
    :cond_14
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 321
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/AppCompatButton;->onLayout(ZIIII)V

    .line 323
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    if-eqz v0, :cond_14

    .line 324
    sub-int v1, p5, p3

    sub-int v2, p4, p2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/button/MaterialButtonHelper;->updateMaskBounds(II)V

    .line 326
    :cond_14
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 330
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatButton;->onMeasure(II)V

    .line 331
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4e

    iget v0, p0, Landroid/support/design/button/MaterialButton;->iconGravity:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    goto :goto_4e

    .line 335
    :cond_d
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 336
    .local v0, "textPaint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    .line 337
    .local v2, "textWidth":I
    iget v3, p0, Landroid/support/design/button/MaterialButton;->iconSize:I

    if-nez v3, :cond_28

    iget-object v3, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 338
    .local v3, "localIconSize":I
    :cond_28
    nop

    .line 339
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v2

    .line 341
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v3

    iget v5, p0, Landroid/support/design/button/MaterialButton;->iconPadding:I

    sub-int/2addr v4, v5

    .line 344
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v1

    .line 347
    .local v4, "newIconLeft":I
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isLayoutRTL()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 348
    neg-int v4, v4

    .line 351
    :cond_44
    iget v1, p0, Landroid/support/design/button/MaterialButton;->iconLeft:I

    if-eq v1, v4, :cond_4d

    .line 352
    iput v4, p0, Landroid/support/design/button/MaterialButton;->iconLeft:I

    .line 353
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->updateIcon()V

    .line 355
    :cond_4d
    return-void

    .line 332
    .end local v0    # "textPaint":Landroid/graphics/Paint;
    .end local v2    # "textWidth":I
    .end local v3    # "localIconSize":I
    .end local v4    # "newIconLeft":I
    :cond_4e
    :goto_4e
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 289
    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 278
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 279
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/button/MaterialButtonHelper;->setBackgroundColor(I)V

    goto :goto_f

    .line 283
    :cond_c
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setBackgroundColor(I)V

    .line 285
    :goto_f
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 303
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 304
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_1c

    .line 305
    const-string v0, "MaterialButton"

    const-string v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0}, Landroid/support/design/button/MaterialButtonHelper;->setBackgroundOverwritten()V

    .line 307
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2b

    .line 312
    :cond_1c
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_2b

    .line 315
    :cond_28
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 317
    :goto_2b
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 4
    .param p1, "backgroundResourceId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_b

    .line 296
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 298
    :cond_b
    invoke-virtual {p0, v0}, Landroid/support/design/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 2
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 256
    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 257
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 267
    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 268
    return-void
.end method

.method public setCornerRadius(I)V
    .registers 3
    .param p1, "cornerRadius"    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param

    .line 688
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 689
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/button/MaterialButtonHelper;->setCornerRadius(I)V

    .line 691
    :cond_b
    return-void
.end method

.method public setCornerRadiusResource(I)V
    .registers 3
    .param p1, "cornerRadiusResourceId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 702
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 703
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/button/MaterialButton;->setCornerRadius(I)V

    .line 705
    :cond_11
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 439
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_9

    .line 440
    iput-object p1, p0, Landroid/support/design/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 441
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->updateIcon()V

    .line 443
    :cond_9
    return-void
.end method

.method public setIconGravity(I)V
    .registers 2
    .param p1, "iconGravity"    # I

    .line 740
    iput p1, p0, Landroid/support/design/button/MaterialButton;->iconGravity:I

    .line 741
    return-void
.end method

.method public setIconPadding(I)V
    .registers 3
    .param p1, "iconPadding"    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param

    .line 381
    iget v0, p0, Landroid/support/design/button/MaterialButton;->iconPadding:I

    if-eq v0, p1, :cond_9

    .line 382
    iput p1, p0, Landroid/support/design/button/MaterialButton;->iconPadding:I

    .line 383
    invoke-virtual {p0, p1}, Landroid/support/design/button/MaterialButton;->setCompoundDrawablePadding(I)V

    .line 385
    :cond_9
    return-void
.end method

.method public setIconResource(I)V
    .registers 4
    .param p1, "iconResourceId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 454
    const/4 v0, 0x0

    .line 455
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_b

    .line 456
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 458
    :cond_b
    invoke-virtual {p0, v0}, Landroid/support/design/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 459
    return-void
.end method

.method public setIconSize(I)V
    .registers 4
    .param p1, "iconSize"    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param

    .line 407
    if-ltz p1, :cond_c

    .line 411
    iget v0, p0, Landroid/support/design/button/MaterialButton;->iconSize:I

    if-eq v0, p1, :cond_b

    .line 412
    iput p1, p0, Landroid/support/design/button/MaterialButton;->iconSize:I

    .line 413
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->updateIcon()V

    .line 415
    :cond_b
    return-void

    .line 408
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iconSize cannot be less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIconTint(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "iconTint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 482
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_9

    .line 483
    iput-object p1, p0, Landroid/support/design/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    .line 484
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->updateIcon()V

    .line 486
    :cond_9
    return-void
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "iconTintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 520
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_9

    .line 521
    iput-object p1, p0, Landroid/support/design/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 522
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->updateIcon()V

    .line 524
    :cond_9
    return-void
.end method

.method public setIconTintResource(I)V
    .registers 3
    .param p1, "iconTintResourceId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 497
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 498
    return-void
.end method

.method setInternalBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 370
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 371
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "rippleColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 563
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 564
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/button/MaterialButtonHelper;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 566
    :cond_b
    return-void
.end method

.method public setRippleColorResource(I)V
    .registers 3
    .param p1, "rippleColorResourceId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 577
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 578
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/button/MaterialButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 580
    :cond_11
    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "strokeColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 604
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 605
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/button/MaterialButtonHelper;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 607
    :cond_b
    return-void
.end method

.method public setStrokeColorResource(I)V
    .registers 3
    .param p1, "strokeColorResourceId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 619
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 620
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 622
    :cond_11
    return-void
.end method

.method public setStrokeWidth(I)V
    .registers 3
    .param p1, "strokeWidth"    # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param

    .line 646
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 647
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/button/MaterialButtonHelper;->setStrokeWidth(I)V

    .line 649
    :cond_b
    return-void
.end method

.method public setStrokeWidthResource(I)V
    .registers 3
    .param p1, "strokeWidthResourceId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 661
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 662
    invoke-virtual {p0}, Landroid/support/design/button/MaterialButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/button/MaterialButton;->setStrokeWidth(I)V

    .line 664
    :cond_11
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 188
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 189
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/button/MaterialButtonHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_13

    .line 190
    :cond_c
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    if-eqz v0, :cond_13

    .line 193
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 195
    :cond_13
    :goto_13
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 226
    invoke-direct {p0}, Landroid/support/design/button/MaterialButton;->isUsingOriginalBackground()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 227
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/button/MaterialButtonHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_13

    .line 228
    :cond_c
    iget-object v0, p0, Landroid/support/design/button/MaterialButton;->materialButtonHelper:Landroid/support/design/button/MaterialButtonHelper;

    if-eqz v0, :cond_13

    .line 231
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 233
    :cond_13
    :goto_13
    return-void
.end method
