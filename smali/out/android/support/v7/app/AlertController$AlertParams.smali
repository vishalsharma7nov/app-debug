.class public Landroid/support/v7/app/AlertController$AlertParams;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mForceInverseBackground:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconAttrId:I

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonIcon:Landroid/graphics/drawable/Drawable;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonIcon:Landroid/graphics/drawable/Drawable;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Landroid/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;

.field public mPositiveButtonIcon:Landroid/graphics/drawable/Drawable;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mRecycleOnMeasure:Z

.field public mTitle:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewLayoutResId:I

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 869
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIconId:I

    .line 871
    iput v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIconAttrId:I

    .line 897
    iput-boolean v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 901
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mCheckedItem:I

    .line 909
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 925
    iput-object p1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 926
    iput-boolean v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mCancelable:Z

    .line 927
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 928
    return-void
.end method

.method private createListView(Landroid/support/v7/app/AlertController;)V
    .registers 13
    .param p1, "dialog"    # Landroid/support/v7/app/AlertController;

    .line 988
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p1, Landroid/support/v7/app/AlertController;->mListLayout:I

    .line 989
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AlertController$RecycleListView;

    .line 992
    .local v0, "listView":Landroid/support/v7/app/AlertController$RecycleListView;
    iget-boolean v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIsMultiChoice:Z

    const/4 v8, 0x1

    if-eqz v1, :cond_33

    .line 993
    iget-object v4, p0, Landroid/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v4, :cond_26

    .line 994
    new-instance v9, Landroid/support/v7/app/AlertController$AlertParams$1;

    iget-object v3, p0, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v4, p1, Landroid/support/v7/app/AlertController;->mMultiChoiceItemLayout:I

    const v5, 0x1020014

    iget-object v6, p0, Landroid/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, v9

    move-object v2, p0

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Landroid/support/v7/app/AlertController$AlertParams$1;-><init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/support/v7/app/AlertController$RecycleListView;)V

    .local v1, "adapter":Landroid/widget/ListAdapter;
    goto :goto_6c

    .line 1009
    .end local v1    # "adapter":Landroid/widget/ListAdapter;
    :cond_26
    new-instance v9, Landroid/support/v7/app/AlertController$AlertParams$2;

    iget-object v3, p0, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v6, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Landroid/support/v7/app/AlertController$AlertParams$2;-><init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/support/v7/app/AlertController$RecycleListView;Landroid/support/v7/app/AlertController;)V

    .restart local v1    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_6c

    .line 1038
    .end local v1    # "adapter":Landroid/widget/ListAdapter;
    :cond_33
    iget-boolean v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_3a

    .line 1039
    iget v1, p1, Landroid/support/v7/app/AlertController;->mSingleChoiceItemLayout:I

    .local v1, "layout":I
    goto :goto_3c

    .line 1041
    .end local v1    # "layout":I
    :cond_3a
    iget v1, p1, Landroid/support/v7/app/AlertController;->mListItemLayout:I

    .line 1044
    .restart local v1    # "layout":I
    :goto_3c
    iget-object v5, p0, Landroid/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const v2, 0x1020014

    if-eqz v5, :cond_5a

    .line 1045
    new-instance v9, Landroid/widget/SimpleCursorAdapter;

    iget-object v3, p0, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    new-array v6, v8, [Ljava/lang/String;

    iget-object v4, p0, Landroid/support/v7/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    new-array v10, v8, [I

    aput v2, v10, v7

    move-object v2, v9

    move v4, v1

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    move-object v1, v2

    .local v2, "adapter":Landroid/widget/ListAdapter;
    goto :goto_6c

    .line 1047
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    :cond_5a
    iget-object v3, p0, Landroid/support/v7/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_62

    .line 1048
    iget-object v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    move-object v1, v2

    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_6c

    .line 1050
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    :cond_62
    new-instance v3, Landroid/support/v7/app/AlertController$CheckedItemAdapter;

    iget-object v4, p0, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v3, v4, v1, v2, v5}, Landroid/support/v7/app/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    move-object v1, v3

    .line 1054
    .local v1, "adapter":Landroid/widget/ListAdapter;
    :goto_6c
    iget-object v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->mOnPrepareListViewListener:Landroid/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v2, :cond_73

    .line 1055
    invoke-interface {v2, v0}, Landroid/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 1061
    :cond_73
    iput-object v1, p1, Landroid/support/v7/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    .line 1062
    iget v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->mCheckedItem:I

    iput v2, p1, Landroid/support/v7/app/AlertController;->mCheckedItem:I

    .line 1064
    iget-object v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v2, :cond_86

    .line 1065
    new-instance v2, Landroid/support/v7/app/AlertController$AlertParams$3;

    invoke-direct {v2, p0, p1}, Landroid/support/v7/app/AlertController$AlertParams$3;-><init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/support/v7/app/AlertController;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_92

    .line 1074
    :cond_86
    iget-object v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v2, :cond_92

    .line 1075
    new-instance v2, Landroid/support/v7/app/AlertController$AlertParams$4;

    invoke-direct {v2, p0, v0, p1}, Landroid/support/v7/app/AlertController$AlertParams$4;-><init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/support/v7/app/AlertController$RecycleListView;Landroid/support/v7/app/AlertController;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1088
    :cond_92
    :goto_92
    iget-object v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v2, :cond_99

    .line 1089
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1092
    :cond_99
    iget-boolean v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v2, :cond_a1

    .line 1093
    invoke-virtual {v0, v8}, Landroid/support/v7/app/AlertController$RecycleListView;->setChoiceMode(I)V

    goto :goto_a9

    .line 1094
    :cond_a1
    iget-boolean v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v2, :cond_a9

    .line 1095
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertController$RecycleListView;->setChoiceMode(I)V

    .line 1097
    :cond_a9
    :goto_a9
    iput-object v0, p1, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 1098
    return-void
.end method


# virtual methods
.method public apply(Landroid/support/v7/app/AlertController;)V
    .registers 9
    .param p1, "dialog"    # Landroid/support/v7/app/AlertController;

    .line 931
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 932
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    goto :goto_28

    .line 934
    :cond_8
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_f

    .line 935
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 937
    :cond_f
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    .line 938
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 940
    :cond_16
    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIconId:I

    if-eqz v0, :cond_1d

    .line 941
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->setIcon(I)V

    .line 943
    :cond_1d
    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIconAttrId:I

    if-eqz v0, :cond_28

    .line 944
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->getIconAttributeResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->setIcon(I)V

    .line 947
    :cond_28
    :goto_28
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2f

    .line 948
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 950
    :cond_2f
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-nez v0, :cond_37

    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mPositiveButtonIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_43

    .line 951
    :cond_37
    const/4 v2, -0x1

    iget-object v3, p0, Landroid/support/v7/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/support/v7/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/support/v7/app/AlertController$AlertParams;->mPositiveButtonIcon:Landroid/graphics/drawable/Drawable;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/support/v7/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 954
    :cond_43
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-nez v0, :cond_4b

    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mNegativeButtonIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_57

    .line 955
    :cond_4b
    const/4 v2, -0x2

    iget-object v3, p0, Landroid/support/v7/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/support/v7/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/support/v7/app/AlertController$AlertParams;->mNegativeButtonIcon:Landroid/graphics/drawable/Drawable;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/support/v7/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 958
    :cond_57
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-nez v0, :cond_5f

    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mNeutralButtonIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6b

    .line 959
    :cond_5f
    const/4 v2, -0x3

    iget-object v3, p0, Landroid/support/v7/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/support/v7/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/support/v7/app/AlertController$AlertParams;->mNeutralButtonIcon:Landroid/graphics/drawable/Drawable;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/support/v7/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 964
    :cond_6b
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_77

    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_77

    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_7a

    .line 965
    :cond_77
    invoke-direct {p0, p1}, Landroid/support/v7/app/AlertController$AlertParams;->createListView(Landroid/support/v7/app/AlertController;)V

    .line 967
    :cond_7a
    iget-object v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v2, :cond_93

    .line 968
    iget-boolean v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_8f

    .line 969
    iget v3, p0, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingLeft:I

    iget v4, p0, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingTop:I

    iget v5, p0, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingRight:I

    iget v6, p0, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingBottom:I

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/support/v7/app/AlertController;->setView(Landroid/view/View;IIII)V

    goto :goto_9a

    .line 972
    :cond_8f
    invoke-virtual {p1, v2}, Landroid/support/v7/app/AlertController;->setView(Landroid/view/View;)V

    goto :goto_9a

    .line 974
    :cond_93
    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mViewLayoutResId:I

    if-eqz v0, :cond_9a

    .line 975
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->setView(I)V

    .line 985
    :cond_9a
    :goto_9a
    return-void
.end method
