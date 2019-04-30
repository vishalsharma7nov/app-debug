.class Landroid/support/v7/widget/AppCompatBackgroundHelper;
.super Ljava/lang/Object;
.source "AppCompatBackgroundHelper.java"


# instance fields
.field private mBackgroundResId:I

.field private mBackgroundTint:Landroid/support/v7/widget/TintInfo;

.field private final mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

.field private mInternalBackgroundTint:Landroid/support/v7/widget/TintInfo;

.field private mTmpInfo:Landroid/support/v7/widget/TintInfo;

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    .line 42
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 43
    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    .line 44
    return-void
.end method

.method private applyFrameworkTintUsingColorFilter(Landroid/graphics/drawable/Drawable;)Z
    .registers 7
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 173
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mTmpInfo:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_b

    .line 174
    new-instance v0, Landroid/support/v7/widget/TintInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mTmpInfo:Landroid/support/v7/widget/TintInfo;

    .line 176
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mTmpInfo:Landroid/support/v7/widget/TintInfo;

    .line 177
    .local v0, "info":Landroid/support/v7/widget/TintInfo;
    invoke-virtual {v0}, Landroid/support/v7/widget/TintInfo;->clear()V

    .line 179
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 180
    .local v1, "tintList":Landroid/content/res/ColorStateList;
    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    .line 181
    iput-boolean v2, v0, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    .line 182
    iput-object v1, v0, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 184
    :cond_1d
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    .line 185
    .local v3, "mode":Landroid/graphics/PorterDuff$Mode;
    if-eqz v3, :cond_29

    .line 186
    iput-boolean v2, v0, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    .line 187
    iput-object v3, v0, Landroid/support/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 190
    :cond_29
    iget-boolean v4, v0, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    if-nez v4, :cond_34

    iget-boolean v4, v0, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    if-eqz v4, :cond_32

    goto :goto_34

    .line 195
    :cond_32
    const/4 v2, 0x0

    return v2

    .line 191
    :cond_34
    :goto_34
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    invoke-static {p1, v0, v4}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    .line 192
    return v2
.end method

.method private shouldApplyFrameworkTintUsingColorFilter()Z
    .registers 5

    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 152
    .local v0, "sdk":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-le v0, v3, :cond_f

    .line 155
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v3, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1

    .line 156
    :cond_f
    if-ne v0, v3, :cond_12

    .line 160
    return v1

    .line 163
    :cond_12
    return v2
.end method


# virtual methods
.method applySupportBackgroundTint()V
    .registers 4

    .line 118
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 119
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_30

    .line 120
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->shouldApplyFrameworkTintUsingColorFilter()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 121
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applyFrameworkTintUsingColorFilter(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 124
    return-void

    .line 127
    :cond_15
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v1, :cond_23

    .line 128
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 129
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 128
    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    goto :goto_30

    .line 130
    :cond_23
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v1, :cond_30

    .line 131
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 132
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 131
    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    .line 135
    :cond_30
    :goto_30
    return-void
.end method

.method getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 114
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroid/support/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .line 47
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 50
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    :try_start_d
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_31

    .line 51
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    .line 53
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    iget-object v3, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 54
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    invoke-virtual {v1, v3, v4}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 55
    .local v1, "tint":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_31

    .line 56
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 59
    .end local v1    # "tint":Landroid/content/res/ColorStateList;
    :cond_31
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 60
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    sget v3, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    .line 61
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 60
    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 63
    :cond_44
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 64
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    sget v3, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    .line 66
    invoke-virtual {v0, v3, v2}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v2

    const/4 v3, 0x0

    .line 65
    invoke-static {v2, v3}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 64
    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_5c
    .catchall {:try_start_d .. :try_end_5c} :catchall_61

    .line 70
    :cond_5c
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 71
    nop

    .line 72
    return-void

    .line 70
    :catchall_61
    move-exception v1

    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    throw v1
.end method

.method onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 87
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 88
    return-void
.end method

.method onSetBackgroundResource(I)V
    .registers 4
    .param p1, "resId"    # I

    .line 75
    iput p1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    .line 77
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    if-eqz v0, :cond_11

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 78
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 77
    :goto_12
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 80
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 81
    return-void
.end method

.method setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 138
    if-eqz p1, :cond_15

    .line 139
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_d

    .line 140
    new-instance v0, Landroid/support/v7/widget/TintInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/TintInfo;

    .line 142
    :cond_d
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/TintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 143
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    goto :goto_18

    .line 145
    :cond_15
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/TintInfo;

    .line 147
    :goto_18
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 148
    return-void
.end method

.method setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 91
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_b

    .line 92
    new-instance v0, Landroid/support/v7/widget/TintInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;

    .line 94
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 95
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    .line 96
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 97
    return-void
.end method

.method setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 104
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_b

    .line 105
    new-instance v0, Landroid/support/v7/widget/TintInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;

    .line 107
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 108
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    .line 110
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 111
    return-void
.end method
