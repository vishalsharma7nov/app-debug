.class public final Lcom/google/android/gms/common/internal/SignInButtonImpl;
.super Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/SignInButtonImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 3
    const v0, 0x1010048

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    return-void
.end method

.method private static zaa(IIII)I
    .registers 4

    .line 45
    if-eqz p0, :cond_23

    const/4 p1, 0x1

    if-eq p0, p1, :cond_22

    const/4 p1, 0x2

    if-ne p0, p1, :cond_9

    .line 48
    return p3

    .line 49
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const/16 p2, 0x21

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Unknown color scheme: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_22
    return p2

    .line 46
    :cond_23
    return p1
.end method


# virtual methods
.method public final configure(Landroid/content/res/Resources;II)V
    .registers 11

    .line 7
    nop

    .line 8
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/SignInButtonImpl;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/SignInButtonImpl;->setTextSize(F)V

    .line 10
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 11
    const/high16 v1, 0x42400000    # 48.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/SignInButtonImpl;->setMinHeight(I)V

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/SignInButtonImpl;->setMinWidth(I)V

    .line 13
    nop

    .line 14
    sget v0, Lcom/google/android/gms/base/R$drawable;->common_google_signin_btn_icon_dark:I

    sget v1, Lcom/google/android/gms/base/R$drawable;->common_google_signin_btn_icon_light:I

    sget v2, Lcom/google/android/gms/base/R$drawable;->common_google_signin_btn_icon_light:I

    .line 15
    invoke-static {p3, v0, v1, v2}, Lcom/google/android/gms/common/internal/SignInButtonImpl;->zaa(IIII)I

    move-result v0

    sget v1, Lcom/google/android/gms/base/R$drawable;->common_google_signin_btn_text_dark:I

    sget v2, Lcom/google/android/gms/base/R$drawable;->common_google_signin_btn_text_light:I

    sget v3, Lcom/google/android/gms/base/R$drawable;->common_google_signin_btn_text_light:I

    .line 16
    invoke-static {p3, v1, v2, v3}, Lcom/google/android/gms/common/internal/SignInButtonImpl;->zaa(IIII)I

    move-result v1

    .line 17
    nop

    .line 18
    const-string v2, "Unknown button size: "

    const/16 v3, 0x20

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz p2, :cond_57

    if-eq p2, v5, :cond_57

    if-ne p2, v4, :cond_42

    .line 20
    goto :goto_58

    .line 21
    :cond_42
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_57
    move v0, v1

    .line 22
    :goto_58
    nop

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 24
    sget v1, Lcom/google/android/gms/base/R$color;->common_google_signin_btn_tint:I

    .line 25
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 27
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 28
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/SignInButtonImpl;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    nop

    .line 30
    sget v0, Lcom/google/android/gms/base/R$color;->common_google_signin_btn_text_dark:I

    sget v1, Lcom/google/android/gms/base/R$color;->common_google_signin_btn_text_light:I

    sget v6, Lcom/google/android/gms/base/R$color;->common_google_signin_btn_text_light:I

    .line 31
    invoke-static {p3, v0, v1, v6}, Lcom/google/android/gms/common/internal/SignInButtonImpl;->zaa(IIII)I

    move-result p3

    .line 32
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/common/internal/SignInButtonImpl;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 33
    const/4 p3, 0x0

    if-eqz p2, :cond_b4

    if-eq p2, v5, :cond_aa

    if-ne p2, v4, :cond_95

    .line 38
    invoke-virtual {p0, p3}, Lcom/google/android/gms/common/internal/SignInButtonImpl;->setText(Ljava/lang/CharSequence;)V

    .line 39
    goto :goto_be

    .line 40
    :cond_95
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_aa
    sget p2, Lcom/google/android/gms/base/R$string;->common_signin_button_text_long:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/SignInButtonImpl;->setText(Ljava/lang/CharSequence;)V

    .line 37
    goto :goto_be

    .line 34
    :cond_b4
    sget p2, Lcom/google/android/gms/base/R$string;->common_signin_button_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/SignInButtonImpl;->setText(Ljava/lang/CharSequence;)V

    .line 35
    nop

    .line 41
    :goto_be
    invoke-virtual {p0, p3}, Lcom/google/android/gms/common/internal/SignInButtonImpl;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/SignInButtonImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/util/DeviceProperties;->isWearable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_d0

    .line 43
    const/16 p1, 0x13

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/SignInButtonImpl;->setGravity(I)V

    .line 44
    :cond_d0
    return-void
.end method

.method public final configure(Landroid/content/res/Resources;Lcom/google/android/gms/common/internal/SignInButtonConfig;)V
    .registers 4

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/SignInButtonConfig;->getButtonSize()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/SignInButtonConfig;->getColorScheme()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/internal/SignInButtonImpl;->configure(Landroid/content/res/Resources;II)V

    .line 6
    return-void
.end method
