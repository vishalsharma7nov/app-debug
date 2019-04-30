.class public Landroid/support/design/widget/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/TextInputLayout$AccessibilityDelegate;,
        Landroid/support/design/widget/TextInputLayout$SavedState;,
        Landroid/support/design/widget/TextInputLayout$BoxBackgroundMode;
    }
.end annotation


# static fields
.field public static final BOX_BACKGROUND_FILLED:I = 0x1

.field public static final BOX_BACKGROUND_NONE:I = 0x0

.field public static final BOX_BACKGROUND_OUTLINE:I = 0x2

.field private static final INVALID_MAX_LENGTH:I = -0x1

.field private static final LABEL_SCALE_ANIMATION_DURATION:I = 0xa7

.field private static final LOG_TAG:Ljava/lang/String; = "TextInputLayout"


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private boxBackground:Landroid/graphics/drawable/GradientDrawable;

.field private boxBackgroundColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private boxBackgroundMode:I

.field private final boxBottomOffsetPx:I

.field private final boxCollapsedPaddingTopPx:I

.field private boxCornerRadiusBottomEnd:F

.field private boxCornerRadiusBottomStart:F

.field private boxCornerRadiusTopEnd:F

.field private boxCornerRadiusTopStart:F

.field private final boxLabelCutoutPaddingPx:I

.field private boxStrokeColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private final boxStrokeWidthDefaultPx:I

.field private final boxStrokeWidthFocusedPx:I

.field private boxStrokeWidthPx:I

.field final collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

.field counterEnabled:Z

.field private counterMaxLength:I

.field private final counterOverflowTextAppearance:I

.field private counterOverflowed:Z

.field private final counterTextAppearance:I

.field private counterView:Landroid/widget/TextView;

.field private defaultHintTextColor:Landroid/content/res/ColorStateList;

.field private final defaultStrokeColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private final disabledColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field editText:Landroid/widget/EditText;

.field private editTextOriginalDrawable:Landroid/graphics/drawable/Drawable;

.field private focusedStrokeColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private focusedTextColor:Landroid/content/res/ColorStateList;

.field private hasPasswordToggleTintList:Z

.field private hasPasswordToggleTintMode:Z

.field private hasReconstructedEditTextBackground:Z

.field private hint:Ljava/lang/CharSequence;

.field private hintAnimationEnabled:Z

.field private hintEnabled:Z

.field private hintExpanded:Z

.field private final hoveredStrokeColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private inDrawableStateChanged:Z

.field private final indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

.field private final inputFrame:Landroid/widget/FrameLayout;

.field private isProvidingHint:Z

.field private originalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

.field private originalHint:Ljava/lang/CharSequence;

.field private passwordToggleContentDesc:Ljava/lang/CharSequence;

.field private passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

.field private passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

.field private passwordToggleEnabled:Z

.field private passwordToggleTintList:Landroid/content/res/ColorStateList;

.field private passwordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

.field private passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

.field private passwordToggledVisible:Z

.field private restoringSavedState:Z

.field private final tmpRect:Landroid/graphics/Rect;

.field private final tmpRectF:Landroid/graphics/RectF;

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 244
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 247
    sget v0, Landroid/support/design/R$attr;->textInputStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 248
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 251
    move-object v0, p0

    move-object/from16 v7, p1

    invoke-direct/range {p0 .. p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 156
    new-instance v1, Landroid/support/design/widget/IndicatorViewController;

    invoke-direct {v1, p0}, Landroid/support/design/widget/IndicatorViewController;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    iput-object v1, v0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    .line 203
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/support/design/widget/TextInputLayout;->tmpRect:Landroid/graphics/Rect;

    .line 204
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Landroid/support/design/widget/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    .line 232
    new-instance v1, Landroid/support/design/widget/CollapsingTextHelper;

    invoke-direct {v1, p0}, Landroid/support/design/widget/CollapsingTextHelper;-><init>(Landroid/view/View;)V

    iput-object v1, v0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    .line 253
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Landroid/support/design/widget/TextInputLayout;->setOrientation(I)V

    .line 254
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/support/design/widget/TextInputLayout;->setWillNotDraw(Z)V

    .line 255
    invoke-virtual {p0, v8}, Landroid/support/design/widget/TextInputLayout;->setAddStatesFromChildren(Z)V

    .line 257
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    .line 258
    iget-object v1, v0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setAddStatesFromChildren(Z)V

    .line 259
    iget-object v1, v0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TextInputLayout;->addView(Landroid/view/View;)V

    .line 261
    iget-object v1, v0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget-object v2, Landroid/support/design/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->setTextSizeInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 262
    iget-object v1, v0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget-object v2, Landroid/support/design/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->setPositionInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 263
    iget-object v1, v0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    const v2, 0x800033

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 265
    sget-object v3, Landroid/support/design/R$styleable;->TextInputLayout:[I

    sget v5, Landroid/support/design/R$style;->Widget_Design_TextInputLayout:I

    new-array v6, v9, [I

    .line 266
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p3

    invoke-static/range {v1 .. v6}, Landroid/support/design/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v1

    .line 273
    .local v1, "a":Landroid/support/v7/widget/TintTypedArray;
    sget v2, Landroid/support/design/R$styleable;->TextInputLayout_hintEnabled:I

    invoke-virtual {v1, v2, v8}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    .line 274
    sget v2, Landroid/support/design/R$styleable;->TextInputLayout_android_hint:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 275
    sget v2, Landroid/support/design/R$styleable;->TextInputLayout_hintAnimationEnabled:I

    invoke-virtual {v1, v2, v8}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Landroid/support/design/widget/TextInputLayout;->hintAnimationEnabled:Z

    .line 277
    nop

    .line 278
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/design/R$dimen;->mtrl_textinput_box_bottom_offset:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/support/design/widget/TextInputLayout;->boxBottomOffsetPx:I

    .line 279
    nop

    .line 281
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/design/R$dimen;->mtrl_textinput_box_label_cutout_padding:I

    .line 282
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/support/design/widget/TextInputLayout;->boxLabelCutoutPaddingPx:I

    .line 284
    sget v2, Landroid/support/design/R$styleable;->TextInputLayout_boxCollapsedPaddingTop:I

    .line 285
    invoke-virtual {v1, v2, v9}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v0, Landroid/support/design/widget/TextInputLayout;->boxCollapsedPaddingTopPx:I

    .line 286
    sget v2, Landroid/support/design/R$styleable;->TextInputLayout_boxCornerRadiusTopStart:I

    .line 287
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/TintTypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopStart:F

    .line 288
    sget v2, Landroid/support/design/R$styleable;->TextInputLayout_boxCornerRadiusTopEnd:I

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/TintTypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopEnd:F

    .line 289
    sget v2, Landroid/support/design/R$styleable;->TextInputLayout_boxCornerRadiusBottomEnd:I

    .line 290
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/TintTypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomEnd:F

    .line 291
    sget v2, Landroid/support/design/R$styleable;->TextInputLayout_boxCornerRadiusBottomStart:I

    .line 292
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/TintTypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomStart:F

    .line 294
    sget v2, Landroid/support/design/R$styleable;->TextInputLayout_boxBackgroundColor:I

    .line 295
    invoke-virtual {v1, v2, v9}, Landroid/support/v7/widget/TintTypedArray;->getColor(II)I

    move-result v2

    iput v2, v0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundColor:I

    .line 297
    sget v2, Landroid/support/design/R$styleable;->TextInputLayout_boxStrokeColor:I

    invoke-virtual {v1, v2, v9}, Landroid/support/v7/widget/TintTypedArray;->getColor(II)I

    move-result v2

    iput v2, v0, Landroid/support/design/widget/TextInputLayout;->focusedStrokeColor:I

    .line 298
    nop

    .line 300
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/design/R$dimen;->mtrl_textinput_box_stroke_width_default:I

    .line 301
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthDefaultPx:I

    .line 302
    nop

    .line 304
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/design/R$dimen;->mtrl_textinput_box_stroke_width_focused:I

    .line 305
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthFocusedPx:I

    .line 306
    iget v2, v0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthDefaultPx:I

    iput v2, v0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthPx:I

    .line 309
    sget v2, Landroid/support/design/R$styleable;->TextInputLayout_boxBackgroundMode:I

    .line 310
    invoke-virtual {v1, v2, v9}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v2

    .line 311
    .local v2, "boxBackgroundMode":I
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TextInputLayout;->setBoxBackgroundMode(I)V

    .line 312
    sget v3, Landroid/support/design/R$styleable;->TextInputLayout_android_textColorHint:I

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_109

    .line 313
    sget v3, Landroid/support/design/R$styleable;->TextInputLayout_android_textColorHint:I

    .line 314
    invoke-virtual {v1, v3}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v0, Landroid/support/design/widget/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    iput-object v3, v0, Landroid/support/design/widget/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    .line 316
    :cond_109
    sget v3, Landroid/support/design/R$color;->mtrl_textinput_default_box_stroke_color:I

    .line 317
    invoke-static {v7, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, v0, Landroid/support/design/widget/TextInputLayout;->defaultStrokeColor:I

    .line 318
    sget v3, Landroid/support/design/R$color;->mtrl_textinput_disabled_color:I

    invoke-static {v7, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, v0, Landroid/support/design/widget/TextInputLayout;->disabledColor:I

    .line 319
    sget v3, Landroid/support/design/R$color;->mtrl_textinput_hovered_box_stroke_color:I

    .line 320
    invoke-static {v7, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, v0, Landroid/support/design/widget/TextInputLayout;->hoveredStrokeColor:I

    .line 322
    sget v3, Landroid/support/design/R$styleable;->TextInputLayout_hintTextAppearance:I

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    .line 323
    .local v3, "hintAppearance":I
    if-eq v3, v4, :cond_133

    .line 324
    sget v5, Landroid/support/design/R$styleable;->TextInputLayout_hintTextAppearance:I

    invoke-virtual {v1, v5, v9}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/support/design/widget/TextInputLayout;->setHintTextAppearance(I)V

    .line 327
    :cond_133
    sget v5, Landroid/support/design/R$styleable;->TextInputLayout_errorTextAppearance:I

    .line 328
    invoke-virtual {v1, v5, v9}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v5

    .line 329
    .local v5, "errorTextAppearance":I
    sget v6, Landroid/support/design/R$styleable;->TextInputLayout_errorEnabled:I

    invoke-virtual {v1, v6, v9}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 331
    .local v6, "errorEnabled":Z
    sget v10, Landroid/support/design/R$styleable;->TextInputLayout_helperTextTextAppearance:I

    .line 332
    invoke-virtual {v1, v10, v9}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v10

    .line 333
    .local v10, "helperTextTextAppearance":I
    sget v11, Landroid/support/design/R$styleable;->TextInputLayout_helperTextEnabled:I

    .line 334
    invoke-virtual {v1, v11, v9}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 335
    .local v11, "helperTextEnabled":Z
    sget v12, Landroid/support/design/R$styleable;->TextInputLayout_helperText:I

    invoke-virtual {v1, v12}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 337
    .local v12, "helperText":Ljava/lang/CharSequence;
    sget v13, Landroid/support/design/R$styleable;->TextInputLayout_counterEnabled:I

    invoke-virtual {v1, v13, v9}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 338
    .local v13, "counterEnabled":Z
    sget v14, Landroid/support/design/R$styleable;->TextInputLayout_counterMaxLength:I

    invoke-virtual {v1, v14, v4}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {p0, v14}, Landroid/support/design/widget/TextInputLayout;->setCounterMaxLength(I)V

    .line 339
    sget v14, Landroid/support/design/R$styleable;->TextInputLayout_counterTextAppearance:I

    invoke-virtual {v1, v14, v9}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v14

    iput v14, v0, Landroid/support/design/widget/TextInputLayout;->counterTextAppearance:I

    .line 340
    sget v14, Landroid/support/design/R$styleable;->TextInputLayout_counterOverflowTextAppearance:I

    .line 341
    invoke-virtual {v1, v14, v9}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v14

    iput v14, v0, Landroid/support/design/widget/TextInputLayout;->counterOverflowTextAppearance:I

    .line 343
    sget v14, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleEnabled:I

    invoke-virtual {v1, v14, v9}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, v0, Landroid/support/design/widget/TextInputLayout;->passwordToggleEnabled:Z

    .line 344
    sget v9, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleDrawable:I

    invoke-virtual {v1, v9}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    .line 345
    sget v9, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleContentDescription:I

    .line 346
    invoke-virtual {v1, v9}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v0, Landroid/support/design/widget/TextInputLayout;->passwordToggleContentDesc:Ljava/lang/CharSequence;

    .line 347
    sget v9, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleTint:I

    invoke-virtual {v1, v9}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_19a

    .line 348
    iput-boolean v8, v0, Landroid/support/design/widget/TextInputLayout;->hasPasswordToggleTintList:Z

    .line 349
    sget v9, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleTint:I

    invoke-virtual {v1, v9}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    iput-object v9, v0, Landroid/support/design/widget/TextInputLayout;->passwordToggleTintList:Landroid/content/res/ColorStateList;

    .line 351
    :cond_19a
    sget v9, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleTintMode:I

    invoke-virtual {v1, v9}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_1b1

    .line 352
    iput-boolean v8, v0, Landroid/support/design/widget/TextInputLayout;->hasPasswordToggleTintMode:Z

    .line 353
    sget v8, Landroid/support/design/R$styleable;->TextInputLayout_passwordToggleTintMode:I

    .line 355
    invoke-virtual {v1, v8, v4}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v4

    const/4 v8, 0x0

    .line 354
    invoke-static {v4, v8}, Landroid/support/design/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    iput-object v4, v0, Landroid/support/design/widget/TextInputLayout;->passwordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 358
    :cond_1b1
    invoke-virtual {v1}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 360
    invoke-virtual {p0, v11}, Landroid/support/design/widget/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 361
    invoke-virtual {p0, v12}, Landroid/support/design/widget/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    .line 362
    invoke-virtual {p0, v10}, Landroid/support/design/widget/TextInputLayout;->setHelperTextTextAppearance(I)V

    .line 363
    invoke-virtual {p0, v6}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 364
    invoke-virtual {p0, v5}, Landroid/support/design/widget/TextInputLayout;->setErrorTextAppearance(I)V

    .line 365
    invoke-virtual {p0, v13}, Landroid/support/design/widget/TextInputLayout;->setCounterEnabled(Z)V

    .line 367
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->applyPasswordToggleTint()V

    .line 371
    const/4 v4, 0x2

    invoke-static {p0, v4}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 372
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/TextInputLayout;)Z
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/TextInputLayout;

    .line 143
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->restoringSavedState:Z

    return v0
.end method

.method private applyBoxAttributes()V
    .registers 4

    .line 1342
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_5

    .line 1343
    return-void

    .line 1346
    :cond_5
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->setBoxAttributes()V

    .line 1348
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_25

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_25

    .line 1350
    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1351
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editTextOriginalDrawable:Landroid/graphics/drawable/Drawable;

    .line 1353
    :cond_1f
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1356
    :cond_25
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_35

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_35

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editTextOriginalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_35

    .line 1360
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1363
    :cond_35
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthPx:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_43

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeColor:I

    if-eqz v1, :cond_43

    .line 1364
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1367
    :cond_43
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->getCornerRadiiAsArray()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 1368
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1369
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->invalidate()V

    .line 1370
    return-void
.end method

.method private applyCutoutPadding(Landroid/graphics/RectF;)V
    .registers 4
    .param p1, "cutoutBounds"    # Landroid/graphics/RectF;

    .line 1954
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxLabelCutoutPaddingPx:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 1955
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxLabelCutoutPaddingPx:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 1956
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxLabelCutoutPaddingPx:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 1957
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxLabelCutoutPaddingPx:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 1958
    return-void
.end method

.method private applyPasswordToggleTint()V
    .registers 3

    .line 1865
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3f

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hasPasswordToggleTintList:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hasPasswordToggleTintMode:Z

    if-eqz v0, :cond_3f

    .line 1867
    :cond_c
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    .line 1869
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hasPasswordToggleTintList:Z

    if-eqz v0, :cond_23

    .line 1870
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleTintList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1872
    :cond_23
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hasPasswordToggleTintMode:Z

    if-eqz v0, :cond_2e

    .line 1873
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 1876
    :cond_2e
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    if-eqz v0, :cond_3f

    .line 1877
    invoke-virtual {v0}, Landroid/support/design/widget/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_3f

    .line 1878
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1881
    :cond_3f
    return-void
.end method

.method private assignBoxBackgroundByMode()V
    .registers 3

    .line 425
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    if-nez v0, :cond_8

    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_2a

    .line 427
    :cond_8
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    instance-of v0, v0, Landroid/support/design/widget/CutoutDrawable;

    if-nez v0, :cond_1d

    .line 432
    new-instance v0, Landroid/support/design/widget/CutoutDrawable;

    invoke-direct {v0}, Landroid/support/design/widget/CutoutDrawable;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_2a

    .line 433
    :cond_1d
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_2a

    .line 435
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 437
    :cond_2a
    :goto_2a
    return-void
.end method

.method private calculateBoxBackgroundTop()I
    .registers 5

    .line 1254
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1255
    return v1

    .line 1258
    :cond_6
    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_19

    const/4 v3, 0x2

    if-eq v2, v3, :cond_f

    .line 1264
    return v1

    .line 1262
    :cond_f
    invoke-virtual {v0}, Landroid/widget/EditText;->getTop()I

    move-result v0

    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->calculateLabelMarginTop()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 1260
    :cond_19
    invoke-virtual {v0}, Landroid/widget/EditText;->getTop()I

    move-result v0

    return v0
.end method

.method private calculateCollapsedTextTopBounds()I
    .registers 3

    .line 1285
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    .line 1291
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getPaddingTop()I

    move-result v0

    return v0

    .line 1287
    :cond_d
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->calculateLabelMarginTop()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 1289
    :cond_1d
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->boxCollapsedPaddingTopPx:I

    add-int/2addr v0, v1

    return v0
.end method

.method private calculateLabelMarginTop()I
    .registers 4

    .line 1269
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1270
    return v1

    .line 1273
    :cond_6
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    if-eqz v0, :cond_1c

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_11

    .line 1280
    return v1

    .line 1275
    :cond_11
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextHeight()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 1278
    :cond_1c
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextHeight()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private closeCutout()V
    .registers 2

    .line 1948
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1949
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast v0, Landroid/support/design/widget/CutoutDrawable;

    invoke-virtual {v0}, Landroid/support/design/widget/CutoutDrawable;->removeCutout()V

    .line 1951
    :cond_d
    return-void
.end method

.method private collapseHint(Z)V
    .registers 4
    .param p1, "animate"    # Z

    .line 1919
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1920
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1922
    :cond_f
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1b

    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->hintAnimationEnabled:Z

    if-eqz v1, :cond_1b

    .line 1923
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->animateToExpansionFraction(F)V

    goto :goto_20

    .line 1925
    :cond_1b
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 1927
    :goto_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintExpanded:Z

    .line 1928
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1929
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->openCutout()V

    .line 1931
    :cond_2c
    return-void
.end method

.method private cutoutEnabled()Z
    .registers 2

    .line 1934
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    instance-of v0, v0, Landroid/support/design/widget/CutoutDrawable;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private ensureBackgroundDrawableStateWorkaround()V
    .registers 6

    .line 1407
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1408
    .local v0, "sdk":I
    const/16 v1, 0x15

    if-eq v0, v1, :cond_b

    const/16 v1, 0x16

    if-eq v0, v1, :cond_b

    .line 1410
    return-void

    .line 1412
    :cond_b
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1413
    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_14

    .line 1414
    return-void

    .line 1417
    :cond_14
    iget-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->hasReconstructedEditTextBackground:Z

    if-nez v2, :cond_40

    .line 1422
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1424
    .local v2, "newBg":Landroid/graphics/drawable/Drawable;
    instance-of v3, v1, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v3, :cond_31

    .line 1427
    move-object v3, v1

    check-cast v3, Landroid/graphics/drawable/DrawableContainer;

    .line 1429
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    .line 1428
    invoke-static {v3, v4}, Landroid/support/design/widget/DrawableUtils;->setContainerConstantState(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/support/design/widget/TextInputLayout;->hasReconstructedEditTextBackground:Z

    .line 1432
    :cond_31
    iget-boolean v3, p0, Landroid/support/design/widget/TextInputLayout;->hasReconstructedEditTextBackground:Z

    if-nez v3, :cond_40

    .line 1437
    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {v3, v2}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1438
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/design/widget/TextInputLayout;->hasReconstructedEditTextBackground:Z

    .line 1440
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->onApplyBoxBackgroundMode()V

    .line 1443
    .end local v2    # "newBg":Landroid/graphics/drawable/Drawable;
    :cond_40
    return-void
.end method

.method private expandHint(Z)V
    .registers 4
    .param p1, "animate"    # Z

    .line 2033
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2034
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2036
    :cond_f
    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->hintAnimationEnabled:Z

    if-eqz v1, :cond_1a

    .line 2037
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->animateToExpansionFraction(F)V

    goto :goto_1f

    .line 2039
    :cond_1a
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 2041
    :goto_1f
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast v0, Landroid/support/design/widget/CutoutDrawable;

    invoke-virtual {v0}, Landroid/support/design/widget/CutoutDrawable;->hasCutout()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2042
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->closeCutout()V

    .line 2044
    :cond_32
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintExpanded:Z

    .line 2045
    return-void
.end method

.method private getBoxBackground()Landroid/graphics/drawable/Drawable;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 397
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    goto :goto_f

    .line 400
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 398
    :cond_f
    :goto_f
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method private getCornerRadiiAsArray()[F
    .registers 11

    .line 587
    invoke-static {p0}, Landroid/support/design/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x8

    if-nez v0, :cond_2b

    .line 588
    new-array v0, v9, [F

    iget v9, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopStart:F

    aput v9, v0, v8

    aput v9, v0, v7

    iget v7, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopEnd:F

    aput v7, v0, v6

    aput v7, v0, v5

    iget v5, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomEnd:F

    aput v5, v0, v4

    aput v5, v0, v3

    iget v3, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomStart:F

    aput v3, v0, v2

    aput v3, v0, v1

    return-object v0

    .line 599
    :cond_2b
    new-array v0, v9, [F

    iget v9, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopEnd:F

    aput v9, v0, v8

    aput v9, v0, v7

    iget v7, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopStart:F

    aput v7, v0, v6

    aput v7, v0, v5

    iget v5, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomStart:F

    aput v5, v0, v4

    aput v5, v0, v3

    iget v3, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomEnd:F

    aput v3, v0, v2

    aput v3, v0, v1

    return-object v0
.end method

.method private hasPasswordTransformation()Z
    .registers 2

    .line 1856
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_e

    .line 1857
    invoke-virtual {v0}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 1856
    :goto_f
    return v0
.end method

.method private onApplyBoxBackgroundMode()V
    .registers 2

    .line 417
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->assignBoxBackgroundByMode()V

    .line 418
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    if-eqz v0, :cond_a

    .line 419
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateInputLayoutMargins()V

    .line 421
    :cond_a
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateTextInputBoxBounds()V

    .line 422
    return-void
.end method

.method private openCutout()V
    .registers 3

    .line 1938
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->cutoutEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1939
    return-void

    .line 1941
    :cond_7
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->tmpRectF:Landroid/graphics/RectF;

    .line 1942
    .local v0, "cutoutBounds":Landroid/graphics/RectF;
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextActualBounds(Landroid/graphics/RectF;)V

    .line 1943
    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->applyCutoutPadding(Landroid/graphics/RectF;)V

    .line 1944
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast v1, Landroid/support/design/widget/CutoutDrawable;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/CutoutDrawable;->setCutout(Landroid/graphics/RectF;)V

    .line 1945
    return-void
.end method

.method private static recursiveSetEnabled(Landroid/view/ViewGroup;Z)V
    .registers 6
    .param p0, "vg"    # Landroid/view/ViewGroup;
    .param p1, "enabled"    # Z

    .line 1133
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_5
    if-ge v0, v1, :cond_1b

    .line 1134
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1135
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1136
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_18

    .line 1137
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v3, p1}, Landroid/support/design/widget/TextInputLayout;->recursiveSetEnabled(Landroid/view/ViewGroup;Z)V

    .line 1133
    .end local v2    # "child":Landroid/view/View;
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1140
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1b
    return-void
.end method

.method private setBoxAttributes()V
    .registers 4

    .line 1324
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    goto :goto_24

    .line 1330
    :cond_9
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->focusedStrokeColor:I

    if-nez v0, :cond_24

    .line 1331
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    .line 1333
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 1332
    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TextInputLayout;->focusedStrokeColor:I

    goto :goto_24

    .line 1326
    :cond_20
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthPx:I

    .line 1327
    nop

    .line 1339
    :cond_24
    :goto_24
    return-void
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .registers 7
    .param p1, "editText"    # Landroid/widget/EditText;

    .line 663
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_a2

    .line 667
    instance-of v0, p1, Landroid/support/design/widget/TextInputEditText;

    if-nez v0, :cond_f

    .line 668
    const-string v0, "TextInputLayout"

    const-string v1, "EditText added is not a TextInputEditText. Please switch to using that class instead."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_f
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 675
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->onApplyBoxBackgroundMode()V

    .line 676
    new-instance v0, Landroid/support/design/widget/TextInputLayout$AccessibilityDelegate;

    invoke-direct {v0, p0}, Landroid/support/design/widget/TextInputLayout$AccessibilityDelegate;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setTextInputAccessibilityDelegate(Landroid/support/design/widget/TextInputLayout$AccessibilityDelegate;)V

    .line 678
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->hasPasswordTransformation()Z

    move-result v0

    .line 681
    .local v0, "hasPasswordTransformation":Z
    if-nez v0, :cond_2d

    .line 683
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 685
    :cond_2d
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextSize(F)V

    .line 687
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getGravity()I

    move-result v1

    .line 688
    .local v1, "editTextGravity":I
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    and-int/lit8 v3, v1, -0x71

    or-int/lit8 v3, v3, 0x30

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 690
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v2, v1}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 693
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    new-instance v3, Landroid/support/design/widget/TextInputLayout$1;

    invoke-direct {v3, p0}, Landroid/support/design/widget/TextInputLayout$1;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 711
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    if-nez v2, :cond_62

    .line 712
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    .line 716
    :cond_62
    iget-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_84

    .line 717
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 719
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/TextInputLayout;->originalHint:Ljava/lang/CharSequence;

    .line 720
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->originalHint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 722
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 724
    :cond_82
    iput-boolean v3, p0, Landroid/support/design/widget/TextInputLayout;->isProvidingHint:Z

    .line 727
    :cond_84
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v2, :cond_95

    .line 728
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    .line 731
    :cond_95
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v2}, Landroid/support/design/widget/IndicatorViewController;->adjustIndicatorPadding()V

    .line 733
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updatePasswordToggleView()V

    .line 736
    const/4 v2, 0x0

    invoke-direct {p0, v2, v3}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(ZZ)V

    .line 737
    return-void

    .line 664
    .end local v0    # "hasPasswordTransformation":Z
    .end local v1    # "editTextGravity":I
    :cond_a2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "We already have an EditText, can only have one"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .line 812
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 813
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->hint:Ljava/lang/CharSequence;

    .line 814
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 816
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintExpanded:Z

    if-nez v0, :cond_16

    .line 817
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->openCutout()V

    .line 820
    :cond_16
    return-void
.end method

.method private shouldShowPasswordIcon()Z
    .registers 2

    .line 1861
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleEnabled:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->hasPasswordTransformation()Z

    move-result v0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggledVisible:Z

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private updateEditTextBackgroundBounds()V
    .registers 9

    .line 1296
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_5

    .line 1297
    return-void

    .line 1299
    :cond_5
    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1300
    .local v0, "editTextBackground":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_c

    .line 1301
    return-void

    .line 1304
    :cond_c
    invoke-static {v0}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1305
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1308
    :cond_16
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1309
    .local v1, "editTextBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {p0, v2, v1}, Landroid/support/design/widget/DescendantOffsetUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1311
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1312
    .local v2, "editTextBackgroundBounds":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    if-eq v3, v4, :cond_49

    .line 1314
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1315
    .local v3, "editTextBackgroundPadding":Landroid/graphics/Rect;
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1317
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    .line 1318
    .local v4, "left":I
    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 1319
    .local v5, "right":I
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getBottom()I

    move-result v7

    invoke-virtual {v0, v4, v6, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1321
    .end local v3    # "editTextBackgroundPadding":Landroid/graphics/Rect;
    .end local v4    # "left":I
    .end local v5    # "right":I
    :cond_49
    return-void
.end method

.method private updateInputLayoutMargins()V
    .registers 4

    .line 742
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 743
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->calculateLabelMarginTop()I

    move-result v1

    .line 745
    .local v1, "newTopMargin":I
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eq v1, v2, :cond_17

    .line 746
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 747
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 749
    :cond_17
    return-void
.end method

.method private updateLabelState(ZZ)V
    .registers 9
    .param p1, "animate"    # Z
    .param p2, "force"    # Z

    .line 756
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isEnabled()Z

    move-result v0

    .line 757
    .local v0, "isEnabled":Z
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 758
    .local v1, "hasText":Z
    :goto_17
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v4, :cond_22

    invoke-virtual {v4}, Landroid/widget/EditText;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_22

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    .line 759
    .local v2, "hasFocus":Z
    :goto_23
    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v3}, Landroid/support/design/widget/IndicatorViewController;->errorShouldBeShown()Z

    move-result v3

    .line 762
    .local v3, "errorShouldBeShown":Z
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_39

    .line 763
    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v5, v4}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 764
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    .line 768
    :cond_39
    if-nez v0, :cond_52

    .line 769
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget v5, p0, Landroid/support/design/widget/TextInputLayout;->disabledColor:I

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 770
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget v5, p0, Landroid/support/design/widget/TextInputLayout;->disabledColor:I

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_7d

    .line 771
    :cond_52
    if-eqz v3, :cond_60

    .line 772
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v5}, Landroid/support/design/widget/IndicatorViewController;->getErrorViewTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_7d

    .line 773
    :cond_60
    iget-boolean v4, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    if-eqz v4, :cond_72

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v4, :cond_72

    .line 774
    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_7d

    .line 775
    :cond_72
    if-eqz v2, :cond_7d

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_7d

    .line 776
    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v5, v4}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 779
    :cond_7d
    :goto_7d
    if-nez v1, :cond_94

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_8a

    if-nez v2, :cond_94

    if-eqz v3, :cond_8a

    goto :goto_94

    .line 786
    :cond_8a
    if-nez p2, :cond_90

    iget-boolean v4, p0, Landroid/support/design/widget/TextInputLayout;->hintExpanded:Z

    if-nez v4, :cond_9d

    .line 787
    :cond_90
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->expandHint(Z)V

    goto :goto_9d

    .line 781
    :cond_94
    :goto_94
    if-nez p2, :cond_9a

    iget-boolean v4, p0, Landroid/support/design/widget/TextInputLayout;->hintExpanded:Z

    if-eqz v4, :cond_9d

    .line 782
    :cond_9a
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->collapseHint(Z)V

    .line 790
    :cond_9d
    :goto_9d
    return-void
.end method

.method private updatePasswordToggleView()V
    .registers 8

    .line 1590
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_5

    .line 1592
    return-void

    .line 1595
    :cond_5
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->shouldShowPasswordIcon()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_b9

    .line 1596
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    if-nez v0, :cond_47

    .line 1597
    nop

    .line 1599
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v5, Landroid/support/design/R$layout;->design_text_input_password_icon:I

    iget-object v6, p0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    .line 1600
    invoke-virtual {v0, v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CheckableImageButton;

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    .line 1601
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/support/design/widget/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1602
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleContentDesc:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/support/design/widget/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1603
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1605
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    new-instance v5, Landroid/support/design/widget/TextInputLayout$2;

    invoke-direct {v5, p0}, Landroid/support/design/widget/TextInputLayout$2;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v5}, Landroid/support/design/widget/CheckableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1614
    :cond_47
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_5c

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    if-gtz v0, :cond_5c

    .line 1618
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setMinimumHeight(I)V

    .line 1621
    :cond_5c
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v0, v4}, Landroid/support/design/widget/CheckableImageButton;->setVisibility(I)V

    .line 1622
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    iget-boolean v5, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggledVisible:Z

    invoke-virtual {v0, v5}, Landroid/support/design/widget/CheckableImageButton;->setChecked(Z)V

    .line 1626
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_73

    .line 1627
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    .line 1629
    :cond_73
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v5}, Landroid/support/design/widget/CheckableImageButton;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v0, v4, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1631
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompat;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1633
    .local v0, "compounds":[Landroid/graphics/drawable/Drawable;
    aget-object v5, v0, v3

    iget-object v6, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v5, v6, :cond_8e

    .line 1634
    aget-object v3, v0, v3

    iput-object v3, p0, Landroid/support/design/widget/TextInputLayout;->originalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

    .line 1636
    :cond_8e
    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    aget-object v4, v0, v4

    aget-object v2, v0, v2

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    aget-object v1, v0, v1

    invoke-static {v3, v4, v2, v5, v1}, Landroid/support/v4/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1640
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1641
    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1642
    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1643
    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1644
    invoke-virtual {v5}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v5

    .line 1640
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/support/design/widget/CheckableImageButton;->setPadding(IIII)V

    .line 1645
    .end local v0    # "compounds":[Landroid/graphics/drawable/Drawable;
    goto :goto_ea

    .line 1646
    :cond_b9
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    if-eqz v0, :cond_ca

    invoke-virtual {v0}, Landroid/support/design/widget/CheckableImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_ca

    .line 1647
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/support/design/widget/CheckableImageButton;->setVisibility(I)V

    .line 1650
    :cond_ca
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_ea

    .line 1653
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompat;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1654
    .restart local v0    # "compounds":[Landroid/graphics/drawable/Drawable;
    aget-object v3, v0, v3

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v3, v5, :cond_ea

    .line 1655
    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    aget-object v4, v0, v4

    aget-object v2, v0, v2

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->originalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

    aget-object v1, v0, v1

    invoke-static {v3, v4, v2, v5, v1}, Landroid/support/v4/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1657
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    .line 1661
    .end local v0    # "compounds":[Landroid/graphics/drawable/Drawable;
    :cond_ea
    :goto_ea
    return-void
.end method

.method private updateTextInputBoxBounds()V
    .registers 8

    .line 1227
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    if-eqz v0, :cond_4a

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_4a

    .line 1230
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getRight()I

    move-result v0

    if-nez v0, :cond_13

    goto :goto_4a

    .line 1234
    :cond_13
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLeft()I

    move-result v0

    .line 1235
    .local v0, "left":I
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->calculateBoxBackgroundTop()I

    move-result v1

    .line 1236
    .local v1, "top":I
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getRight()I

    move-result v2

    .line 1237
    .local v2, "right":I
    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/support/design/widget/TextInputLayout;->boxBottomOffsetPx:I

    add-int/2addr v3, v4

    .line 1241
    .local v3, "bottom":I
    iget v4, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3e

    .line 1242
    iget v4, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthFocusedPx:I

    div-int/lit8 v6, v4, 0x2

    add-int/2addr v0, v6

    .line 1243
    div-int/lit8 v6, v4, 0x2

    sub-int/2addr v1, v6

    .line 1244
    div-int/lit8 v6, v4, 0x2

    sub-int/2addr v2, v6

    .line 1245
    div-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 1248
    :cond_3e
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 1249
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->applyBoxAttributes()V

    .line 1250
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateEditTextBackgroundBounds()V

    .line 1251
    return-void

    .line 1231
    .end local v0    # "left":I
    .end local v1    # "top":I
    .end local v2    # "right":I
    .end local v3    # "bottom":I
    :cond_4a
    :goto_4a
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 376
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_25

    .line 379
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    .local v0, "flp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 381
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->inputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateInputLayoutMargins()V

    .line 388
    move-object v1, p1

    check-cast v1, Landroid/widget/EditText;

    invoke-direct {p0, v1}, Landroid/support/design/widget/TextInputLayout;->setEditText(Landroid/widget/EditText;)V

    .line 389
    .end local v0    # "flp":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_28

    .line 391
    :cond_25
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 393
    :goto_28
    return-void
.end method

.method animateToExpansionFraction(F)V
    .registers 6
    .param p1, "target"    # F
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 2049
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getExpansionFraction()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_b

    .line 2050
    return-void

    .line 2052
    :cond_b
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2e

    .line 2053
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    .line 2054
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    sget-object v1, Landroid/support/design/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2055
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xa7

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2056
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/design/widget/TextInputLayout$3;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TextInputLayout$3;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2064
    :cond_2e
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v3}, Landroid/support/design/widget/CollapsingTextHelper;->getExpansionFraction()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2065
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2066
    return-void
.end method

.method cutoutIsOpen()Z
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 1962
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast v0, Landroid/support/design/widget/CutoutDrawable;

    invoke-virtual {v0}, Landroid/support/design/widget/CutoutDrawable;->hasCutout()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .registers 7
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "flags"    # I

    .line 641
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->originalHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_9

    goto :goto_2e

    .line 648
    :cond_9
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->isProvidingHint:Z

    .line 650
    .local v1, "wasProvidingHint":Z
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->isProvidingHint:Z

    .line 651
    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 652
    .local v0, "hint":Ljava/lang/CharSequence;
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->originalHint:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 654
    :try_start_19
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_25

    .line 656
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 657
    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->isProvidingHint:Z

    .line 658
    nop

    .line 659
    return-void

    .line 656
    :catchall_25
    move-exception v2

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 657
    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->isProvidingHint:Z

    throw v2

    .line 642
    .end local v0    # "hint":Ljava/lang/CharSequence;
    .end local v1    # "wasProvidingHint":Z
    :cond_2e
    :goto_2e
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 643
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1522
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->restoringSavedState:Z

    .line 1523
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 1524
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->restoringSavedState:Z

    .line 1525
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1574
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_7

    .line 1575
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1577
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1578
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    if-eqz v0, :cond_13

    .line 1579
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->draw(Landroid/graphics/Canvas;)V

    .line 1581
    :cond_13
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 6

    .line 1967
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->inDrawableStateChanged:Z

    if-eqz v0, :cond_5

    .line 1971
    return-void

    .line 1974
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->inDrawableStateChanged:Z

    .line 1976
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 1978
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getDrawableState()[I

    move-result-object v1

    .line 1979
    .local v1, "state":[I
    const/4 v2, 0x0

    .line 1982
    .local v2, "changed":Z
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1e

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(Z)V

    .line 1984
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->updateEditTextBackground()V

    .line 1985
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateTextInputBoxBounds()V

    .line 1986
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->updateTextInputBoxState()V

    .line 1988
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    if-eqz v0, :cond_34

    .line 1989
    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingTextHelper;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    .line 1992
    :cond_34
    if-eqz v2, :cond_39

    .line 1993
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->invalidate()V

    .line 1996
    :cond_39
    iput-boolean v4, p0, Landroid/support/design/widget/TextInputLayout;->inDrawableStateChanged:Z

    .line 1997
    return-void
.end method

.method public getBoxBackgroundColor()I
    .registers 2

    .line 493
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundColor:I

    return v0
.end method

.method public getBoxCornerRadiusBottomEnd()F
    .registers 2

    .line 573
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomEnd:F

    return v0
.end method

.method public getBoxCornerRadiusBottomStart()F
    .registers 2

    .line 583
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomStart:F

    return v0
.end method

.method public getBoxCornerRadiusTopEnd()F
    .registers 2

    .line 563
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopEnd:F

    return v0
.end method

.method public getBoxCornerRadiusTopStart()F
    .registers 2

    .line 553
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopStart:F

    return v0
.end method

.method public getBoxStrokeColor()I
    .registers 2

    .line 461
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->focusedStrokeColor:I

    return v0
.end method

.method public getCounterMaxLength()I
    .registers 2

    .line 1148
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->counterMaxLength:I

    return v0
.end method

.method getCounterOverflowDescription()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1157
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->counterEnabled:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    .line 1158
    invoke-virtual {v0}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1160
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultHintTextColor()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 927
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 795
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1535
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->getErrorText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method public getErrorCurrentTextColors()I
    .registers 2
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 958
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->getErrorViewCurrentTextColor()I

    move-result v0

    return v0
.end method

.method final getErrorTextCurrentColor()I
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 2090
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->getErrorViewCurrentTextColor()I

    move-result v0

    return v0
.end method

.method public getHelperText()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1547
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->isHelperTextEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    .line 1548
    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->getHelperText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 1547
    :goto_10
    return-object v0
.end method

.method public getHelperTextCurrentTextColor()I
    .registers 2
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 1035
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->getHelperTextViewCurrentTextColor()I

    move-result v0

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 830
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->hint:Ljava/lang/CharSequence;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method final getHintCollapsedTextHeight()F
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 2085
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextHeight()F

    move-result v0

    return v0
.end method

.method final getHintCurrentCollapsedTextColor()I
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 2080
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    move-result v0

    return v0
.end method

.method public getPasswordVisibilityToggleContentDescription()Ljava/lang/CharSequence;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1742
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPasswordVisibilityToggleDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1731
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 636
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->typeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public isCounterEnabled()Z
    .registers 2

    .line 1101
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->counterEnabled:Z

    return v0
.end method

.method public isErrorEnabled()Z
    .registers 2

    .line 977
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method final isHelperTextDisplayed()Z
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 2075
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->helperTextIsDisplayed()Z

    move-result v0

    return v0
.end method

.method public isHelperTextEnabled()Z
    .registers 2

    .line 1024
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->isHelperTextEnabled()Z

    move-result v0

    return v0
.end method

.method public isHintAnimationEnabled()Z
    .registers 2

    .line 1559
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintAnimationEnabled:Z

    return v0
.end method

.method public isHintEnabled()Z
    .registers 2

    .line 883
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    return v0
.end method

.method final isHintExpanded()Z
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 2070
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintExpanded:Z

    return v0
.end method

.method public isPasswordVisibilityToggleEnabled()Z
    .registers 2

    .line 1751
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleEnabled:Z

    return v0
.end method

.method isProvidingHint()Z
    .registers 2

    .line 892
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->isProvidingHint:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1885
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 1887
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_a

    .line 1888
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateTextInputBoxBounds()V

    .line 1891
    :cond_a
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    if-eqz v0, :cond_62

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_62

    .line 1892
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->tmpRect:Landroid/graphics/Rect;

    .line 1893
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-static {p0, v0, v1}, Landroid/support/design/widget/DescendantOffsetUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1895
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    .line 1896
    .local v0, "l":I
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1897
    .local v2, "r":I
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->calculateCollapsedTextTopBounds()I

    move-result v3

    .line 1899
    .local v3, "t":I
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1901
    invoke-virtual {v6}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    .line 1903
    invoke-virtual {v7}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    .line 1899
    invoke-virtual {v4, v0, v5, v2, v6}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedBounds(IIII)V

    .line 1907
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sub-int v5, p5, p3

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v0, v3, v2, v5}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    .line 1908
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v4}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 1912
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->cutoutEnabled()Z

    move-result v4

    if-eqz v4, :cond_62

    iget-boolean v4, p0, Landroid/support/design/widget/TextInputLayout;->hintExpanded:Z

    if-nez v4, :cond_62

    .line 1913
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->openCutout()V

    .line 1916
    .end local v0    # "l":I
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "r":I
    .end local v3    # "t":I
    :cond_62
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1585
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updatePasswordToggleView()V

    .line 1586
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1587
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1507
    instance-of v0, p1, Landroid/support/design/widget/TextInputLayout$SavedState;

    if-nez v0, :cond_8

    .line 1508
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1509
    return-void

    .line 1511
    :cond_8
    move-object v0, p1

    check-cast v0, Landroid/support/design/widget/TextInputLayout$SavedState;

    .line 1512
    .local v0, "ss":Landroid/support/design/widget/TextInputLayout$SavedState;
    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1513
    iget-object v1, v0, Landroid/support/design/widget/TextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 1514
    iget-boolean v1, v0, Landroid/support/design/widget/TextInputLayout$SavedState;->isPasswordToggledVisible:Z

    if-eqz v1, :cond_1f

    .line 1515
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TextInputLayout;->passwordVisibilityToggleRequested(Z)V

    .line 1517
    :cond_1f
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->requestLayout()V

    .line 1518
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 1496
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1497
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/support/design/widget/TextInputLayout$SavedState;

    invoke-direct {v1, v0}, Landroid/support/design/widget/TextInputLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1498
    .local v1, "ss":Landroid/support/design/widget/TextInputLayout$SavedState;
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v2}, Landroid/support/design/widget/IndicatorViewController;->errorShouldBeShown()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1499
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/support/design/widget/TextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    .line 1501
    :cond_17
    iget-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggledVisible:Z

    iput-boolean v2, v1, Landroid/support/design/widget/TextInputLayout$SavedState;->isPasswordToggledVisible:Z

    .line 1502
    return-object v1
.end method

.method public passwordVisibilityToggleRequested(Z)V
    .registers 5
    .param p1, "shouldSkipAnimations"    # Z

    .line 1820
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleEnabled:Z

    if-eqz v0, :cond_39

    .line 1822
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 1824
    .local v0, "selection":I
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->hasPasswordTransformation()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1825
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1826
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggledVisible:Z

    goto :goto_26

    .line 1828
    :cond_1a
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1829
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggledVisible:Z

    .line 1832
    :goto_26
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    iget-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggledVisible:Z

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CheckableImageButton;->setChecked(Z)V

    .line 1833
    if-eqz p1, :cond_34

    .line 1834
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v1}, Landroid/support/design/widget/CheckableImageButton;->jumpDrawablesToCurrentState()V

    .line 1838
    :cond_34
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1840
    .end local v0    # "selection":I
    :cond_39
    return-void
.end method

.method public setBoxBackgroundColor(I)V
    .registers 3
    .param p1, "boxBackgroundColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 480
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundColor:I

    if-eq v0, p1, :cond_9

    .line 481
    iput p1, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundColor:I

    .line 482
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->applyBoxAttributes()V

    .line 484
    :cond_9
    return-void
.end method

.method public setBoxBackgroundColorResource(I)V
    .registers 3
    .param p1, "boxBackgroundColorId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 470
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setBoxBackgroundColor(I)V

    .line 471
    return-void
.end method

.method public setBoxBackgroundMode(I)V
    .registers 3
    .param p1, "boxBackgroundMode"    # I

    .line 409
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    if-ne p1, v0, :cond_5

    .line 410
    return-void

    .line 412
    :cond_5
    iput p1, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    .line 413
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->onApplyBoxBackgroundMode()V

    .line 414
    return-void
.end method

.method public setBoxCornerRadii(FFFF)V
    .registers 6
    .param p1, "boxCornerRadiusTopStart"    # F
    .param p2, "boxCornerRadiusTopEnd"    # F
    .param p3, "boxCornerRadiusBottomStart"    # F
    .param p4, "boxCornerRadiusBottomEnd"    # F

    .line 534
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopStart:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_18

    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopEnd:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_18

    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomEnd:F

    cmpl-float v0, v0, p4

    if-nez v0, :cond_18

    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomStart:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_23

    .line 538
    :cond_18
    iput p1, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopStart:F

    .line 539
    iput p2, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusTopEnd:F

    .line 540
    iput p4, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomEnd:F

    .line 541
    iput p3, p0, Landroid/support/design/widget/TextInputLayout;->boxCornerRadiusBottomStart:F

    .line 542
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->applyBoxAttributes()V

    .line 544
    :cond_23
    return-void
.end method

.method public setBoxCornerRadiiResources(IIII)V
    .registers 9
    .param p1, "boxCornerRadiusTopStartId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .param p2, "boxCornerRadiusTopEndId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .param p3, "boxCornerRadiusBottomEndId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .param p4, "boxCornerRadiusBottomStartId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 510
    nop

    .line 511
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 512
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 513
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 514
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 510
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/support/design/widget/TextInputLayout;->setBoxCornerRadii(FFFF)V

    .line 515
    return-void
.end method

.method public setBoxStrokeColor(I)V
    .registers 3
    .param p1, "boxStrokeColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 448
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->focusedStrokeColor:I

    if-eq v0, p1, :cond_9

    .line 449
    iput p1, p0, Landroid/support/design/widget/TextInputLayout;->focusedStrokeColor:I

    .line 450
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->updateTextInputBoxState()V

    .line 452
    :cond_9
    return-void
.end method

.method public setCounterEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 1071
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->counterEnabled:Z

    if-eq v0, p1, :cond_57

    .line 1072
    const/4 v0, 0x2

    if-eqz p1, :cond_4b

    .line 1073
    new-instance v1, Landroid/support/v7/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    .line 1074
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    sget v2, Landroid/support/design/R$id;->textinput_counter:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 1075
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->typeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_22

    .line 1076
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1078
    :cond_22
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1079
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->counterTextAppearance:I

    invoke-virtual {p0, v1, v2}, Landroid/support/design/widget/TextInputLayout;->setTextAppearanceCompatWithErrorFallback(Landroid/widget/TextView;I)V

    .line 1080
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/support/design/widget/IndicatorViewController;->addIndicator(Landroid/widget/TextView;I)V

    .line 1081
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_3f

    .line 1082
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    goto :goto_55

    .line 1084
    :cond_3f
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    goto :goto_55

    .line 1087
    :cond_4b
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/support/design/widget/IndicatorViewController;->removeIndicator(Landroid/widget/TextView;I)V

    .line 1088
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    .line 1090
    :goto_55
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->counterEnabled:Z

    .line 1092
    :cond_57
    return-void
.end method

.method public setCounterMaxLength(I)V
    .registers 3
    .param p1, "maxLength"    # I

    .line 1111
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->counterMaxLength:I

    if-eq v0, p1, :cond_21

    .line 1112
    if-lez p1, :cond_9

    .line 1113
    iput p1, p0, Landroid/support/design/widget/TextInputLayout;->counterMaxLength:I

    goto :goto_c

    .line 1115
    :cond_9
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/TextInputLayout;->counterMaxLength:I

    .line 1117
    :goto_c
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->counterEnabled:Z

    if-eqz v0, :cond_21

    .line 1118
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_16

    const/4 v0, 0x0

    goto :goto_1e

    :cond_16
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    :goto_1e
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    .line 1121
    :cond_21
    return-void
.end method

.method public setDefaultHintTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 913
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->defaultHintTextColor:Landroid/content/res/ColorStateList;

    .line 914
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    .line 916
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_c

    .line 917
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(Z)V

    .line 919
    :cond_c
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 1128
    invoke-static {p0, p1}, Landroid/support/design/widget/TextInputLayout;->recursiveSetEnabled(Landroid/view/ViewGroup;Z)V

    .line 1129
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1130
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "errorText"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1049
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->isErrorEnabled()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1050
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1052
    return-void

    .line 1055
    :cond_f
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 1058
    :cond_13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1059
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/IndicatorViewController;->showError(Ljava/lang/CharSequence;)V

    goto :goto_24

    .line 1061
    :cond_1f
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0}, Landroid/support/design/widget/IndicatorViewController;->hideError()V

    .line 1063
    :goto_24
    return-void
.end method

.method public setErrorEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 938
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/IndicatorViewController;->setErrorEnabled(Z)V

    .line 939
    return-void
.end method

.method public setErrorTextAppearance(I)V
    .registers 3
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 947
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/IndicatorViewController;->setErrorTextAppearance(I)V

    .line 948
    return-void
.end method

.method public setErrorTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "textColors"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 952
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/IndicatorViewController;->setErrorViewTextColor(Landroid/content/res/ColorStateList;)V

    .line 953
    return-void
.end method

.method public setHelperText(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "helperText"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1005
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1006
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isHelperTextEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1007
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setHelperTextEnabled(Z)V

    goto :goto_20

    .line 1010
    :cond_11
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isHelperTextEnabled()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1011
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 1013
    :cond_1b
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/IndicatorViewController;->showHelper(Ljava/lang/CharSequence;)V

    .line 1015
    :cond_20
    :goto_20
    return-void
.end method

.method public setHelperTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "textColors"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1029
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/IndicatorViewController;->setHelperTextViewTextColor(Landroid/content/res/ColorStateList;)V

    .line 1030
    return-void
.end method

.method public setHelperTextEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 988
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/IndicatorViewController;->setHelperTextEnabled(Z)V

    .line 989
    return-void
.end method

.method public setHelperTextTextAppearance(I)V
    .registers 3
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 967
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/IndicatorViewController;->setHelperTextAppearance(I)V

    .line 968
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "hint"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 805
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    if-eqz v0, :cond_c

    .line 806
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    .line 807
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->sendAccessibilityEvent(I)V

    .line 809
    :cond_c
    return-void
.end method

.method public setHintAnimationEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 1569
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->hintAnimationEnabled:Z

    .line 1570
    return-void
.end method

.method public setHintEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 845
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    if-eq p1, v0, :cond_53

    .line 846
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    .line 847
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hintEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2d

    .line 849
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->isProvidingHint:Z

    .line 850
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 852
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 855
    :cond_29
    invoke-direct {p0, v1}, Landroid/support/design/widget/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    goto :goto_4c

    .line 857
    :cond_2d
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 858
    .local v0, "editTextHint":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 861
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->hint:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 862
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 864
    :cond_44
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 866
    :cond_49
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->isProvidingHint:Z

    .line 870
    .end local v0    # "editTextHint":Ljava/lang/CharSequence;
    :goto_4c
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_53

    .line 871
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateInputLayoutMargins()V

    .line 874
    :cond_53
    return-void
.end method

.method public setHintTextAppearance(I)V
    .registers 3
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 901
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 902
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->focusedTextColor:Landroid/content/res/ColorStateList;

    .line 904
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_18

    .line 905
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(Z)V

    .line 907
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updateInputLayoutMargins()V

    .line 909
    :cond_18
    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(I)V
    .registers 3
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 1703
    if-eqz p1, :cond_b

    .line 1704
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 1703
    :goto_c
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V

    .line 1705
    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "description"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1717
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleContentDesc:Ljava/lang/CharSequence;

    .line 1718
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    if-eqz v0, :cond_9

    .line 1719
    invoke-virtual {v0, p1}, Landroid/support/design/widget/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1721
    :cond_9
    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(I)V
    .registers 3
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1673
    if-eqz p1, :cond_b

    .line 1674
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 1673
    :goto_c
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1675
    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1687
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleDrawable:Landroid/graphics/drawable/Drawable;

    .line 1688
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleView:Landroid/support/design/widget/CheckableImageButton;

    if-eqz v0, :cond_9

    .line 1689
    invoke-virtual {v0, p1}, Landroid/support/design/widget/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1691
    :cond_9
    return-void
.end method

.method public setPasswordVisibilityToggleEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 1764
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleEnabled:Z

    if-eq v0, p1, :cond_1d

    .line 1765
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleEnabled:Z

    .line 1767
    if-nez p1, :cond_17

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggledVisible:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_17

    .line 1770
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1774
    :cond_17
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggledVisible:Z

    .line 1776
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->updatePasswordToggleView()V

    .line 1778
    :cond_1d
    return-void
.end method

.method public setPasswordVisibilityToggleTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1792
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleTintList:Landroid/content/res/ColorStateList;

    .line 1793
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hasPasswordToggleTintList:Z

    .line 1794
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->applyPasswordToggleTint()V

    .line 1795
    return-void
.end method

.method public setPasswordVisibilityToggleTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1806
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->passwordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1807
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->hasPasswordToggleTintMode:Z

    .line 1808
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->applyPasswordToggleTint()V

    .line 1809
    return-void
.end method

.method setTextAppearanceCompatWithErrorFallback(Landroid/widget/TextView;I)V
    .registers 6
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "textAppearance"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 1202
    const/4 v0, 0x0

    .line 1204
    .local v0, "useDefaultColor":Z
    :try_start_1
    invoke-static {p1, p2}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 1206
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_18

    .line 1207
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_19

    const v2, -0xff01

    if-ne v1, v2, :cond_18

    .line 1211
    const/4 v0, 0x1

    .line 1217
    :cond_18
    goto :goto_1b

    .line 1213
    :catch_19
    move-exception v1

    .line 1216
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    .line 1218
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1b
    if-eqz v0, :cond_2f

    .line 1221
    sget v1, Landroid/support/design/R$style;->TextAppearance_AppCompat_Caption:I

    invoke-static {p1, v1}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 1222
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/design/R$color;->design_error:I

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1224
    :cond_2f
    return-void
.end method

.method public setTextInputAccessibilityDelegate(Landroid/support/design/widget/TextInputLayout$AccessibilityDelegate;)V
    .registers 3
    .param p1, "delegate"    # Landroid/support/design/widget/TextInputLayout$AccessibilityDelegate;

    .line 1850
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_7

    .line 1851
    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 1853
    :cond_7
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .registers 3
    .param p1, "typeface"    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 619
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->typeface:Landroid/graphics/Typeface;

    if-eq p1, v0, :cond_17

    .line 620
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->typeface:Landroid/graphics/Typeface;

    .line 622
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->collapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 623
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/IndicatorViewController;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 625
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v0, :cond_17

    .line 626
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 629
    :cond_17
    return-void
.end method

.method updateCounter(I)V
    .registers 11
    .param p1, "length"    # I

    .line 1164
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    .line 1165
    .local v0, "wasCounterOverflowed":Z
    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->counterMaxLength:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1a

    .line 1166
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1168
    iput-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    goto :goto_89

    .line 1172
    :cond_1a
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getAccessibilityLiveRegion(Landroid/view/View;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_28

    .line 1174
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 1177
    :cond_28
    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->counterMaxLength:I

    if-le p1, v1, :cond_2e

    const/4 v1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    .line 1178
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    if-eq v0, v1, :cond_4a

    .line 1179
    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v1, :cond_3c

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowTextAppearance:I

    goto :goto_3e

    :cond_3c
    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->counterTextAppearance:I

    :goto_3e
    invoke-virtual {p0, v4, v1}, Landroid/support/design/widget/TextInputLayout;->setTextAppearanceCompatWithErrorFallback(Landroid/widget/TextView;I)V

    .line 1183
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    if-eqz v1, :cond_4a

    .line 1184
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 1188
    :cond_4a
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    .line 1189
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/design/R$string;->character_counter_pattern:I

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    iget v8, p0, Landroid/support/design/widget/TextInputLayout;->counterMaxLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1188
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1190
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    .line 1191
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/design/R$string;->character_counter_content_description:I

    new-array v6, v6, [Ljava/lang/Object;

    .line 1192
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    iget v7, p0, Landroid/support/design/widget/TextInputLayout;->counterMaxLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1190
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1194
    :goto_89
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v1, :cond_9a

    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    if-eq v0, v1, :cond_9a

    .line 1195
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(Z)V

    .line 1196
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->updateTextInputBoxState()V

    .line 1197
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->updateEditTextBackground()V

    .line 1199
    :cond_9a
    return-void
.end method

.method updateEditTextBackground()V
    .registers 4

    .line 1373
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_5

    .line 1374
    return-void

    .line 1377
    :cond_5
    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1378
    .local v0, "editTextBackground":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_c

    .line 1379
    return-void

    .line 1382
    :cond_c
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->ensureBackgroundDrawableStateWorkaround()V

    .line 1384
    invoke-static {v0}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1385
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1388
    :cond_19
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v1}, Landroid/support/design/widget/IndicatorViewController;->errorShouldBeShown()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1390
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    .line 1392
    invoke-virtual {v1}, Landroid/support/design/widget/IndicatorViewController;->getErrorViewCurrentTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 1391
    invoke-static {v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    .line 1390
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_50

    .line 1393
    :cond_31
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    if-eqz v1, :cond_48

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v1, :cond_48

    .line 1395
    nop

    .line 1397
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 1396
    invoke-static {v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    .line 1395
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_50

    .line 1401
    :cond_48
    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    .line 1402
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->refreshDrawableState()V

    .line 1404
    :goto_50
    return-void
.end method

.method updateLabelState(Z)V
    .registers 3
    .param p1, "animate"    # Z

    .line 752
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TextInputLayout;->updateLabelState(ZZ)V

    .line 753
    return-void
.end method

.method updateTextInputBoxState()V
    .registers 5

    .line 2000
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_7e

    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    if-nez v0, :cond_a

    goto/16 :goto_7e

    .line 2004
    :cond_a
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 2005
    .local v0, "hasFocus":Z
    :goto_19
    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->editText:Landroid/widget/EditText;

    if-eqz v3, :cond_24

    invoke-virtual {v3}, Landroid/widget/EditText;->isHovered()Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    .line 2008
    .local v1, "isHovered":Z
    :goto_25
    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->boxBackgroundMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7d

    .line 2009
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_35

    .line 2010
    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->disabledColor:I

    iput v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeColor:I

    goto :goto_67

    .line 2011
    :cond_35
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v2}, Landroid/support/design/widget/IndicatorViewController;->errorShouldBeShown()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 2012
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->indicatorViewController:Landroid/support/design/widget/IndicatorViewController;

    invoke-virtual {v2}, Landroid/support/design/widget/IndicatorViewController;->getErrorViewCurrentTextColor()I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeColor:I

    goto :goto_67

    .line 2013
    :cond_46
    iget-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->counterOverflowed:Z

    if-eqz v2, :cond_55

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->counterView:Landroid/widget/TextView;

    if-eqz v2, :cond_55

    .line 2014
    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeColor:I

    goto :goto_67

    .line 2015
    :cond_55
    if-eqz v0, :cond_5c

    .line 2016
    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->focusedStrokeColor:I

    iput v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeColor:I

    goto :goto_67

    .line 2017
    :cond_5c
    if-eqz v1, :cond_63

    .line 2018
    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->hoveredStrokeColor:I

    iput v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeColor:I

    goto :goto_67

    .line 2020
    :cond_63
    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->defaultStrokeColor:I

    iput v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeColor:I

    .line 2023
    :goto_67
    if-nez v1, :cond_6b

    if-eqz v0, :cond_76

    :cond_6b
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 2024
    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthFocusedPx:I

    iput v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthPx:I

    goto :goto_7a

    .line 2026
    :cond_76
    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthDefaultPx:I

    iput v2, p0, Landroid/support/design/widget/TextInputLayout;->boxStrokeWidthPx:I

    .line 2028
    :goto_7a
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->applyBoxAttributes()V

    .line 2030
    :cond_7d
    return-void

    .line 2001
    .end local v0    # "hasFocus":Z
    .end local v1    # "isHovered":Z
    :cond_7e
    :goto_7e
    return-void
.end method
