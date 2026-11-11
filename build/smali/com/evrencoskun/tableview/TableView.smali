.class public Lcom/evrencoskun/tableview/TableView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/evrencoskun/tableview/ITableView;


# instance fields
.field private mAllowClickInsideCell:Z

.field private mAllowClickInsideColumnHeader:Z

.field private mAllowClickInsideRowHeader:Z

.field private mCellLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected mCellRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mColumnHeaderHeight:I

.field private mColumnHeaderLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected mColumnHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mColumnSortHandler:Lcom/evrencoskun/tableview/handler/ColumnSortHandler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mColumnWidthHandler:Lcom/evrencoskun/tableview/handler/ColumnWidthHandler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mCornerViewLocation:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

.field private mFilterHandler:Lcom/evrencoskun/tableview/handler/FilterHandler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mHasFixedWidth:Z

.field private mHorizontalItemDecoration:Landroidx/recyclerview/widget/DividerItemDecoration;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mHorizontalRecyclerViewListener:Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mIgnoreSelectionColors:Z

.field private mIsSortable:Z

.field private mPreferencesHandler:Lcom/evrencoskun/tableview/handler/PreferencesHandler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mReverseLayout:Z

.field private mRowHeaderLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected mRowHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mRowHeaderWidth:I

.field private mScrollHandler:Lcom/evrencoskun/tableview/handler/ScrollHandler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mSelectedColor:I

.field private mSelectionHandler:Lcom/evrencoskun/tableview/handler/SelectionHandler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mSeparatorColor:I

.field private mSeparatorHeight:F

.field private mShadowColor:I

.field private mShowCornerView:Z

.field private mShowHorizontalSeparators:Z

.field private mShowVerticalSeparators:Z

.field protected mTableAdapter:Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mTableViewListener:Lcom/evrencoskun/tableview/listener/ITableViewListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mUnSelectedColor:I

.field private mVerticalItemDecoration:Landroidx/recyclerview/widget/DividerItemDecoration;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mVerticalRecyclerListener:Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mVisibilityHandler:Lcom/evrencoskun/tableview/handler/VisibilityHandler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/evrencoskun/tableview/TableView;->mSeparatorColor:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lcom/evrencoskun/tableview/TableView;->mSeparatorHeight:F

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/evrencoskun/tableview/TableView;->mShowHorizontalSeparators:Z

    .line 5
    iput-boolean v0, p0, Lcom/evrencoskun/tableview/TableView;->mShowVerticalSeparators:Z

    .line 6
    iput-boolean p1, p0, Lcom/evrencoskun/tableview/TableView;->mAllowClickInsideCell:Z

    .line 7
    iput-boolean p1, p0, Lcom/evrencoskun/tableview/TableView;->mAllowClickInsideRowHeader:Z

    .line 8
    iput-boolean p1, p0, Lcom/evrencoskun/tableview/TableView;->mAllowClickInsideColumnHeader:Z

    .line 9
    iput-boolean p1, p0, Lcom/evrencoskun/tableview/TableView;->mShowCornerView:Z

    .line 10
    iput-boolean p1, p0, Lcom/evrencoskun/tableview/TableView;->mReverseLayout:Z

    const/4 p1, 0x0

    .line 11
    invoke-direct {p0, p1}, Lcom/evrencoskun/tableview/TableView;->initialDefaultValues(Landroid/util/AttributeSet;)V

    .line 12
    invoke-virtual {p0}, Lcom/evrencoskun/tableview/TableView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/evrencoskun/tableview/TableView;->mSeparatorColor:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    iput v0, p0, Lcom/evrencoskun/tableview/TableView;->mSeparatorHeight:F

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/evrencoskun/tableview/TableView;->mShowHorizontalSeparators:Z

    .line 17
    iput-boolean v0, p0, Lcom/evrencoskun/tableview/TableView;->mShowVerticalSeparators:Z

    .line 18
    iput-boolean p1, p0, Lcom/evrencoskun/tableview/TableView;->mAllowClickInsideCell:Z

    .line 19
    iput-boolean p1, p0, Lcom/evrencoskun/tableview/TableView;->mAllowClickInsideRowHeader:Z

    .line 20
    iput-boolean p1, p0, Lcom/evrencoskun/tableview/TableView;->mAllowClickInsideColumnHeader:Z

    .line 21
    iput-boolean p1, p0, Lcom/evrencoskun/tableview/TableView;->mShowCornerView:Z

    .line 22
    iput-boolean p1, p0, Lcom/evrencoskun/tableview/TableView;->mReverseLayout:Z

    .line 23
    invoke-direct {p0, p2}, Lcom/evrencoskun/tableview/TableView;->initialDefaultValues(Landroid/util/AttributeSet;)V

    .line 24
    invoke-virtual {p0}, Lcom/evrencoskun/tableview/TableView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/evrencoskun/tableview/TableView;->mSeparatorColor:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 27
    iput p2, p0, Lcom/evrencoskun/tableview/TableView;->mSeparatorHeight:F

    const/4 p2, 0x1

    .line 28
    iput-boolean p2, p0, Lcom/evrencoskun/tableview/TableView;->mShowHorizontalSeparators:Z

    .line 29
    iput-boolean p2, p0, Lcom/evrencoskun/tableview/TableView;->mShowVerticalSeparators:Z

    .line 30
    iput-boolean p1, p0, Lcom/evrencoskun/tableview/TableView;->mAllowClickInsideCell:Z

    .line 31
    iput-boolean p1, p0, Lcom/evrencoskun/tableview/TableView;->mAllowClickInsideRowHeader:Z

    .line 32
    iput-boolean p1, p0, Lcom/evrencoskun/tableview/TableView;->mAllowClickInsideColumnHeader:Z

    .line 33
    iput-boolean p1, p0, Lcom/evrencoskun/tableview/TableView;->mShowCornerView:Z

    .line 34
    iput-boolean p1, p0, Lcom/evrencoskun/tableview/TableView;->mReverseLayout:Z

    const/4 p1, 0x0

    .line 35
    invoke-direct {p0, p1}, Lcom/evrencoskun/tableview/TableView;->initialDefaultValues(Landroid/util/AttributeSet;)V

    .line 36
    invoke-virtual {p0}, Lcom/evrencoskun/tableview/TableView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 38
    iput p1, p0, Lcom/evrencoskun/tableview/TableView;->mSeparatorColor:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 39
    iput v0, p0, Lcom/evrencoskun/tableview/TableView;->mSeparatorHeight:F

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/evrencoskun/tableview/TableView;->mShowHorizontalSeparators:Z

    .line 41
    iput-boolean v0, p0, Lcom/evrencoskun/tableview/TableView;->mShowVerticalSeparators:Z

    .line 42
    iput-boolean p1, p0, Lcom/evrencoskun/tableview/TableView;->mAllowClickInsideCell:Z

    .line 43
    iput-boolean p1, p0, Lcom/evrencoskun/tableview/TableView;->mAllowClickInsideRowHeader:Z

    .line 44
    iput-boolean p1, p0, Lcom/evrencoskun/tableview/TableView;->mAllowClickInsideColumnHeader:Z

    .line 45
    iput-boolean p1, p0, Lcom/evrencoskun/tableview/TableView;->mShowCornerView:Z

    .line 46
    iput-boolean p1, p0, Lcom/evrencoskun/tableview/TableView;->mReverseLayout:Z

    const/4 p1, 0x0

    .line 47
    invoke-direct {p0, p1}, Lcom/evrencoskun/tableview/TableView;->initialDefaultValues(Landroid/util/AttributeSet;)V

    if-eqz p2, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/evrencoskun/tableview/TableView;->initialize()V

    :cond_0
    return-void
.end method

.method private initialDefaultValues(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/evrencoskun/tableview/R$dimen;->default_row_header_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/evrencoskun/tableview/TableView;->mRowHeaderWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/evrencoskun/tableview/R$dimen;->default_column_header_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/evrencoskun/tableview/TableView;->mColumnHeaderHeight:I

    sget-object v0, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;->TOP_LEFT:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    iput-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mCornerViewLocation:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/evrencoskun/tableview/TableView;->mReverseLayout:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/evrencoskun/tableview/R$color;->table_view_default_selected_background_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/evrencoskun/tableview/TableView;->mSelectedColor:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/evrencoskun/tableview/R$color;->table_view_default_unselected_background_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/evrencoskun/tableview/TableView;->mUnSelectedColor:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/evrencoskun/tableview/R$color;->table_view_default_shadow_background_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/evrencoskun/tableview/TableView;->mShadowColor:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/evrencoskun/tableview/R$styleable;->TableView:[I

    invoke-virtual {v1, p1, v2, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget v1, Lcom/evrencoskun/tableview/R$styleable;->TableView_row_header_width:I

    iget v2, p0, Lcom/evrencoskun/tableview/TableView;->mRowHeaderWidth:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/evrencoskun/tableview/TableView;->mRowHeaderWidth:I

    sget v1, Lcom/evrencoskun/tableview/R$styleable;->TableView_column_header_height:I

    iget v2, p0, Lcom/evrencoskun/tableview/TableView;->mColumnHeaderHeight:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/evrencoskun/tableview/TableView;->mColumnHeaderHeight:I

    sget v1, Lcom/evrencoskun/tableview/R$styleable;->TableView_corner_view_location:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;->fromId(I)Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mCornerViewLocation:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    sget v0, Lcom/evrencoskun/tableview/R$styleable;->TableView_reverse_layout:I

    iget-boolean v1, p0, Lcom/evrencoskun/tableview/TableView;->mReverseLayout:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/evrencoskun/tableview/TableView;->mReverseLayout:Z

    sget v0, Lcom/evrencoskun/tableview/R$styleable;->TableView_selected_color:I

    iget v1, p0, Lcom/evrencoskun/tableview/TableView;->mSelectedColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/evrencoskun/tableview/TableView;->mSelectedColor:I

    sget v0, Lcom/evrencoskun/tableview/R$styleable;->TableView_unselected_color:I

    iget v1, p0, Lcom/evrencoskun/tableview/TableView;->mUnSelectedColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/evrencoskun/tableview/TableView;->mUnSelectedColor:I

    sget v0, Lcom/evrencoskun/tableview/R$styleable;->TableView_shadow_color:I

    iget v1, p0, Lcom/evrencoskun/tableview/TableView;->mShadowColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/evrencoskun/tableview/TableView;->mShadowColor:I

    sget v0, Lcom/evrencoskun/tableview/R$styleable;->TableView_separator_color:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/evrencoskun/tableview/R$color;->table_view_default_separator_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/evrencoskun/tableview/TableView;->mSeparatorColor:I

    sget v0, Lcom/evrencoskun/tableview/R$styleable;->TableView_separator_height:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/evrencoskun/tableview/TableView;->mSeparatorHeight:F

    sget v0, Lcom/evrencoskun/tableview/R$styleable;->TableView_show_vertical_separator:I

    iget-boolean v1, p0, Lcom/evrencoskun/tableview/TableView;->mShowVerticalSeparators:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/evrencoskun/tableview/TableView;->mShowVerticalSeparators:Z

    sget v0, Lcom/evrencoskun/tableview/R$styleable;->TableView_show_horizontal_separator:I

    iget-boolean v1, p0, Lcom/evrencoskun/tableview/TableView;->mShowHorizontalSeparators:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/evrencoskun/tableview/TableView;->mShowHorizontalSeparators:Z

    sget v0, Lcom/evrencoskun/tableview/R$styleable;->TableView_allow_click_inside_cell:I

    iget-boolean v1, p0, Lcom/evrencoskun/tableview/TableView;->mAllowClickInsideCell:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/evrencoskun/tableview/TableView;->mAllowClickInsideCell:Z

    sget v0, Lcom/evrencoskun/tableview/R$styleable;->TableView_allow_click_inside_row_header:I

    iget-boolean v1, p0, Lcom/evrencoskun/tableview/TableView;->mAllowClickInsideRowHeader:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/evrencoskun/tableview/TableView;->mAllowClickInsideRowHeader:Z

    sget v0, Lcom/evrencoskun/tableview/R$styleable;->TableView_allow_click_inside_column_header:I

    iget-boolean v1, p0, Lcom/evrencoskun/tableview/TableView;->mAllowClickInsideColumnHeader:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/evrencoskun/tableview/TableView;->mAllowClickInsideColumnHeader:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method public clearHiddenColumnList()V
    .locals 1

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mVisibilityHandler:Lcom/evrencoskun/tableview/handler/VisibilityHandler;

    invoke-virtual {v0}, Lcom/evrencoskun/tableview/handler/VisibilityHandler;->clearHideColumnList()V

    return-void
.end method

.method public clearHiddenRowList()V
    .locals 1

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mVisibilityHandler:Lcom/evrencoskun/tableview/handler/VisibilityHandler;

    invoke-virtual {v0}, Lcom/evrencoskun/tableview/handler/VisibilityHandler;->clearHideRowList()V

    return-void
.end method

.method public createCellRecyclerView()Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/TableView;->getCellLayoutManager()Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/TableView;->getGravity()I

    move-result v3

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v2, p0, Lcom/evrencoskun/tableview/TableView;->mCornerViewLocation:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    sget-object v3, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;->TOP_RIGHT:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;->BOTTOM_RIGHT:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/evrencoskun/tableview/TableView;->mRowHeaderWidth:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    :cond_1
    :goto_0
    iget v3, p0, Lcom/evrencoskun/tableview/TableView;->mRowHeaderWidth:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_1
    sget-object v3, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;->BOTTOM_LEFT:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    if-eq v2, v3, :cond_3

    sget-object v3, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;->BOTTOM_RIGHT:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    iget v2, p0, Lcom/evrencoskun/tableview/TableView;->mColumnHeaderHeight:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_3

    :cond_3
    :goto_2
    iget v2, p0, Lcom/evrencoskun/tableview/TableView;->mColumnHeaderHeight:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/TableView;->isShowVerticalSeparators()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/TableView;->getVerticalItemDecoration()Landroidx/recyclerview/widget/DividerItemDecoration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_4
    return-object v0
.end method

.method public createColumnHeaderRecyclerView()Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/TableView;->getColumnHeaderLayoutManager()Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/evrencoskun/tableview/TableView;->mColumnHeaderHeight:I

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/TableView;->getGravity()I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v2, p0, Lcom/evrencoskun/tableview/TableView;->mCornerViewLocation:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    sget-object v3, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;->TOP_RIGHT:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;->BOTTOM_RIGHT:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/evrencoskun/tableview/TableView;->mRowHeaderWidth:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    :cond_1
    :goto_0
    iget v2, p0, Lcom/evrencoskun/tableview/TableView;->mRowHeaderWidth:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/TableView;->isShowHorizontalSeparators()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/TableView;->getHorizontalItemDecoration()Landroidx/recyclerview/widget/DividerItemDecoration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_2
    return-object v0
.end method

.method public createItemDecoration(I)Landroidx/recyclerview/widget/DividerItemDecoration;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidx/recyclerview/widget/DividerItemDecoration;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/evrencoskun/tableview/R$drawable;->cell_line_divider:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget v1, p0, Lcom/evrencoskun/tableview/TableView;->mSeparatorColor:I

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_1
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/DividerItemDecoration;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public createRowHeaderRecyclerView()Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/TableView;->getRowHeaderLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/evrencoskun/tableview/TableView;->mRowHeaderWidth:I

    const/4 v3, -0x2

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/TableView;->getGravity()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v2, p0, Lcom/evrencoskun/tableview/TableView;->mCornerViewLocation:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    sget-object v3, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;->BOTTOM_LEFT:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;->BOTTOM_RIGHT:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/evrencoskun/tableview/TableView;->mColumnHeaderHeight:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_1
    :goto_0
    iget v2, p0, Lcom/evrencoskun/tableview/TableView;->mColumnHeaderHeight:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/TableView;->isShowVerticalSeparators()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/TableView;->getVerticalItemDecoration()Landroidx/recyclerview/widget/DividerItemDecoration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_2
    return-object v0
.end method

.method public filter(Lcom/evrencoskun/tableview/filter/Filter;)V
    .locals 1
    .param p1    # Lcom/evrencoskun/tableview/filter/Filter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mFilterHandler:Lcom/evrencoskun/tableview/handler/FilterHandler;

    invoke-virtual {v0, p1}, Lcom/evrencoskun/tableview/handler/FilterHandler;->filter(Lcom/evrencoskun/tableview/filter/Filter;)V

    return-void
.end method

.method public getAdapter()Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mTableAdapter:Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;

    return-object v0
.end method

.method public getCellLayoutManager()Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mCellLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;-><init>(Landroid/content/Context;Lcom/evrencoskun/tableview/ITableView;)V

    iput-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mCellLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;

    :cond_0
    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mCellLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;

    return-object v0
.end method

.method public getCellRecyclerView()Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mCellRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    return-object v0
.end method

.method public getColumnHeaderLayoutManager()Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mColumnHeaderLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;-><init>(Landroid/content/Context;Lcom/evrencoskun/tableview/ITableView;)V

    iput-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mColumnHeaderLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;

    iget-boolean v1, p0, Lcom/evrencoskun/tableview/TableView;->mReverseLayout:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    :cond_0
    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mColumnHeaderLayoutManager:Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;

    return-object v0
.end method

.method public getColumnHeaderRecyclerView()Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mColumnHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    return-object v0
.end method

.method public getColumnSortHandler()Lcom/evrencoskun/tableview/handler/ColumnSortHandler;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mColumnSortHandler:Lcom/evrencoskun/tableview/handler/ColumnSortHandler;

    return-object v0
.end method

.method public getCornerViewLocation()Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;
    .locals 1

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mCornerViewLocation:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    return-object v0
.end method

.method public getFilterHandler()Lcom/evrencoskun/tableview/handler/FilterHandler;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mFilterHandler:Lcom/evrencoskun/tableview/handler/FilterHandler;

    return-object v0
.end method

.method public getGravity()I
    .locals 3

    sget-object v0, Lcom/evrencoskun/tableview/TableView$1;->$SwitchMap$com$evrencoskun$tableview$ITableView$CornerViewLocation:[I

    iget-object v1, p0, Lcom/evrencoskun/tableview/TableView;->mCornerViewLocation:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x33

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x55

    goto :goto_0

    :cond_1
    const/16 v2, 0x53

    goto :goto_0

    :cond_2
    const/16 v2, 0x35

    :cond_3
    :goto_0
    return v2
.end method

.method public getHorizontalItemDecoration()Landroidx/recyclerview/widget/DividerItemDecoration;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mHorizontalItemDecoration:Landroidx/recyclerview/widget/DividerItemDecoration;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/evrencoskun/tableview/TableView;->createItemDecoration(I)Landroidx/recyclerview/widget/DividerItemDecoration;

    move-result-object v0

    iput-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mHorizontalItemDecoration:Landroidx/recyclerview/widget/DividerItemDecoration;

    :cond_0
    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mHorizontalItemDecoration:Landroidx/recyclerview/widget/DividerItemDecoration;

    return-object v0
.end method

.method public getHorizontalRecyclerViewListener()Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mHorizontalRecyclerViewListener:Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;

    return-object v0
.end method

.method public getReverseLayout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/evrencoskun/tableview/TableView;->mReverseLayout:Z

    return v0
.end method

.method public getRowHeaderLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mRowHeaderLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mRowHeaderLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    :cond_0
    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mRowHeaderLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object v0
.end method

.method public getRowHeaderRecyclerView()Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mRowHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    return-object v0
.end method

.method public getRowHeaderSortingStatus()Lcom/evrencoskun/tableview/sort/SortState;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mColumnSortHandler:Lcom/evrencoskun/tableview/handler/ColumnSortHandler;

    invoke-virtual {v0}, Lcom/evrencoskun/tableview/handler/ColumnSortHandler;->getRowHeaderSortingStatus()Lcom/evrencoskun/tableview/sort/SortState;

    move-result-object v0

    return-object v0
.end method

.method public getRowHeaderWidth()I
    .locals 1

    iget v0, p0, Lcom/evrencoskun/tableview/TableView;->mRowHeaderWidth:I

    return v0
.end method

.method public getScrollHandler()Lcom/evrencoskun/tableview/handler/ScrollHandler;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mScrollHandler:Lcom/evrencoskun/tableview/handler/ScrollHandler;

    return-object v0
.end method

.method public getSelectedCell()Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;
    .locals 3

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/TableView;->getCellLayoutManager()Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/evrencoskun/tableview/TableView;->mSelectionHandler:Lcom/evrencoskun/tableview/handler/SelectionHandler;

    invoke-virtual {v1}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->getSelectedRowPosition()I

    move-result v1

    iget-object v2, p0, Lcom/evrencoskun/tableview/TableView;->mSelectionHandler:Lcom/evrencoskun/tableview/handler/SelectionHandler;

    invoke-virtual {v2}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->getSelectedColumnPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->getCellViewHolder(II)Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lcom/evrencoskun/tableview/TableView;->mSelectedColor:I

    return v0
.end method

.method public getSelectedColumn()I
    .locals 1

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mSelectionHandler:Lcom/evrencoskun/tableview/handler/SelectionHandler;

    invoke-virtual {v0}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->getSelectedColumnPosition()I

    move-result v0

    return v0
.end method

.method public getSelectedRow()I
    .locals 1

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mSelectionHandler:Lcom/evrencoskun/tableview/handler/SelectionHandler;

    invoke-virtual {v0}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->getSelectedRowPosition()I

    move-result v0

    return v0
.end method

.method public getSelectionHandler()Lcom/evrencoskun/tableview/handler/SelectionHandler;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mSelectionHandler:Lcom/evrencoskun/tableview/handler/SelectionHandler;

    return-object v0
.end method

.method public getSeparatorColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lcom/evrencoskun/tableview/TableView;->mSeparatorColor:I

    return v0
.end method

.method public getShadowColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lcom/evrencoskun/tableview/TableView;->mShadowColor:I

    return v0
.end method

.method public getShowCornerView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/evrencoskun/tableview/TableView;->mShowCornerView:Z

    return v0
.end method

.method public getSortingStatus(I)Lcom/evrencoskun/tableview/sort/SortState;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mColumnSortHandler:Lcom/evrencoskun/tableview/handler/ColumnSortHandler;

    invoke-virtual {v0, p1}, Lcom/evrencoskun/tableview/handler/ColumnSortHandler;->getSortingStatus(I)Lcom/evrencoskun/tableview/sort/SortState;

    move-result-object p1

    return-object p1
.end method

.method public getTableViewListener()Lcom/evrencoskun/tableview/listener/ITableViewListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mTableViewListener:Lcom/evrencoskun/tableview/listener/ITableViewListener;

    return-object v0
.end method

.method public getUnSelectedColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lcom/evrencoskun/tableview/TableView;->mUnSelectedColor:I

    return v0
.end method

.method public getVerticalItemDecoration()Landroidx/recyclerview/widget/DividerItemDecoration;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mVerticalItemDecoration:Landroidx/recyclerview/widget/DividerItemDecoration;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/evrencoskun/tableview/TableView;->createItemDecoration(I)Landroidx/recyclerview/widget/DividerItemDecoration;

    move-result-object v0

    iput-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mVerticalItemDecoration:Landroidx/recyclerview/widget/DividerItemDecoration;

    :cond_0
    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mVerticalItemDecoration:Landroidx/recyclerview/widget/DividerItemDecoration;

    return-object v0
.end method

.method public getVerticalRecyclerViewListener()Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mVerticalRecyclerListener:Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;

    return-object v0
.end method

.method public getVisibilityHandler()Lcom/evrencoskun/tableview/handler/VisibilityHandler;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mVisibilityHandler:Lcom/evrencoskun/tableview/handler/VisibilityHandler;

    return-object v0
.end method

.method public hasFixedWidth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/evrencoskun/tableview/TableView;->mHasFixedWidth:Z

    return v0
.end method

.method public hideColumn(I)V
    .locals 1

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mVisibilityHandler:Lcom/evrencoskun/tableview/handler/VisibilityHandler;

    invoke-virtual {v0, p1}, Lcom/evrencoskun/tableview/handler/VisibilityHandler;->hideColumn(I)V

    return-void
.end method

.method public hideRow(I)V
    .locals 1

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mVisibilityHandler:Lcom/evrencoskun/tableview/handler/VisibilityHandler;

    invoke-virtual {v0, p1}, Lcom/evrencoskun/tableview/handler/VisibilityHandler;->hideRow(I)V

    return-void
.end method

.method public initialize()V
    .locals 2

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/TableView;->createColumnHeaderRecyclerView()Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mColumnHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/TableView;->createRowHeaderRecyclerView()Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mRowHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/TableView;->createCellRecyclerView()Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mCellRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mColumnHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    sget v1, Lcom/evrencoskun/tableview/R$id;->ColumnHeaderRecyclerView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mRowHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    sget v1, Lcom/evrencoskun/tableview/R$id;->RowHeaderRecyclerView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mCellRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    sget v1, Lcom/evrencoskun/tableview/R$id;->CellRecyclerView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mColumnHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mRowHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mCellRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/evrencoskun/tableview/handler/SelectionHandler;

    invoke-direct {v0, p0}, Lcom/evrencoskun/tableview/handler/SelectionHandler;-><init>(Lcom/evrencoskun/tableview/ITableView;)V

    iput-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mSelectionHandler:Lcom/evrencoskun/tableview/handler/SelectionHandler;

    new-instance v0, Lcom/evrencoskun/tableview/handler/VisibilityHandler;

    invoke-direct {v0, p0}, Lcom/evrencoskun/tableview/handler/VisibilityHandler;-><init>(Lcom/evrencoskun/tableview/ITableView;)V

    iput-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mVisibilityHandler:Lcom/evrencoskun/tableview/handler/VisibilityHandler;

    new-instance v0, Lcom/evrencoskun/tableview/handler/ScrollHandler;

    invoke-direct {v0, p0}, Lcom/evrencoskun/tableview/handler/ScrollHandler;-><init>(Lcom/evrencoskun/tableview/ITableView;)V

    iput-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mScrollHandler:Lcom/evrencoskun/tableview/handler/ScrollHandler;

    new-instance v0, Lcom/evrencoskun/tableview/handler/PreferencesHandler;

    invoke-direct {v0, p0}, Lcom/evrencoskun/tableview/handler/PreferencesHandler;-><init>(Lcom/evrencoskun/tableview/TableView;)V

    iput-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mPreferencesHandler:Lcom/evrencoskun/tableview/handler/PreferencesHandler;

    new-instance v0, Lcom/evrencoskun/tableview/handler/ColumnWidthHandler;

    invoke-direct {v0, p0}, Lcom/evrencoskun/tableview/handler/ColumnWidthHandler;-><init>(Lcom/evrencoskun/tableview/ITableView;)V

    iput-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mColumnWidthHandler:Lcom/evrencoskun/tableview/handler/ColumnWidthHandler;

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/TableView;->initializeListeners()V

    return-void
.end method

.method public initializeListeners()V
    .locals 2

    new-instance v0, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;

    invoke-direct {v0, p0}, Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;-><init>(Lcom/evrencoskun/tableview/ITableView;)V

    iput-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mVerticalRecyclerListener:Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;

    iget-object v1, p0, Lcom/evrencoskun/tableview/TableView;->mRowHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mCellRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    iget-object v1, p0, Lcom/evrencoskun/tableview/TableView;->mVerticalRecyclerListener:Lcom/evrencoskun/tableview/listener/scroll/VerticalRecyclerViewListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    new-instance v0, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;

    invoke-direct {v0, p0}, Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;-><init>(Lcom/evrencoskun/tableview/ITableView;)V

    iput-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mHorizontalRecyclerViewListener:Lcom/evrencoskun/tableview/listener/scroll/HorizontalRecyclerViewListener;

    iget-object v1, p0, Lcom/evrencoskun/tableview/TableView;->mColumnHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    iget-boolean v0, p0, Lcom/evrencoskun/tableview/TableView;->mAllowClickInsideColumnHeader:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/evrencoskun/tableview/listener/itemclick/ColumnHeaderRecyclerViewItemClickListener;

    iget-object v1, p0, Lcom/evrencoskun/tableview/TableView;->mColumnHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-direct {v0, v1, p0}, Lcom/evrencoskun/tableview/listener/itemclick/ColumnHeaderRecyclerViewItemClickListener;-><init>(Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;Lcom/evrencoskun/tableview/ITableView;)V

    iget-object v1, p0, Lcom/evrencoskun/tableview/TableView;->mColumnHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    :cond_0
    iget-boolean v0, p0, Lcom/evrencoskun/tableview/TableView;->mAllowClickInsideRowHeader:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/evrencoskun/tableview/listener/itemclick/RowHeaderRecyclerViewItemClickListener;

    iget-object v1, p0, Lcom/evrencoskun/tableview/TableView;->mRowHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-direct {v0, v1, p0}, Lcom/evrencoskun/tableview/listener/itemclick/RowHeaderRecyclerViewItemClickListener;-><init>(Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;Lcom/evrencoskun/tableview/ITableView;)V

    iget-object v1, p0, Lcom/evrencoskun/tableview/TableView;->mRowHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    :cond_1
    new-instance v0, Lcom/evrencoskun/tableview/listener/TableViewLayoutChangeListener;

    invoke-direct {v0, p0}, Lcom/evrencoskun/tableview/listener/TableViewLayoutChangeListener;-><init>(Lcom/evrencoskun/tableview/ITableView;)V

    iget-object v1, p0, Lcom/evrencoskun/tableview/TableView;->mColumnHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v1, p0, Lcom/evrencoskun/tableview/TableView;->mCellRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public isAllowClickInsideCell()Z
    .locals 1

    iget-boolean v0, p0, Lcom/evrencoskun/tableview/TableView;->mAllowClickInsideCell:Z

    return v0
.end method

.method public isColumnVisible(I)Z
    .locals 1

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mVisibilityHandler:Lcom/evrencoskun/tableview/handler/VisibilityHandler;

    invoke-virtual {v0, p1}, Lcom/evrencoskun/tableview/handler/VisibilityHandler;->isColumnVisible(I)Z

    move-result p1

    return p1
.end method

.method public isIgnoreSelectionColors()Z
    .locals 1

    iget-boolean v0, p0, Lcom/evrencoskun/tableview/TableView;->mIgnoreSelectionColors:Z

    return v0
.end method

.method public isRowVisible(I)Z
    .locals 1

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mVisibilityHandler:Lcom/evrencoskun/tableview/handler/VisibilityHandler;

    invoke-virtual {v0, p1}, Lcom/evrencoskun/tableview/handler/VisibilityHandler;->isRowVisible(I)Z

    move-result p1

    return p1
.end method

.method public isShowHorizontalSeparators()Z
    .locals 1

    iget-boolean v0, p0, Lcom/evrencoskun/tableview/TableView;->mShowHorizontalSeparators:Z

    return v0
.end method

.method public isShowVerticalSeparators()Z
    .locals 1

    iget-boolean v0, p0, Lcom/evrencoskun/tableview/TableView;->mShowVerticalSeparators:Z

    return v0
.end method

.method public isSortable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/evrencoskun/tableview/TableView;->mIsSortable:Z

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/evrencoskun/tableview/preference/SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/evrencoskun/tableview/preference/SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mPreferencesHandler:Lcom/evrencoskun/tableview/handler/PreferencesHandler;

    iget-object p1, p1, Lcom/evrencoskun/tableview/preference/SavedState;->preferences:Lcom/evrencoskun/tableview/preference/Preferences;

    invoke-virtual {v0, p1}, Lcom/evrencoskun/tableview/handler/PreferencesHandler;->loadPreferences(Lcom/evrencoskun/tableview/preference/Preferences;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Lcom/evrencoskun/tableview/preference/SavedState;

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/evrencoskun/tableview/preference/SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/evrencoskun/tableview/TableView;->mPreferencesHandler:Lcom/evrencoskun/tableview/handler/PreferencesHandler;

    invoke-virtual {v1}, Lcom/evrencoskun/tableview/handler/PreferencesHandler;->savePreferences()Lcom/evrencoskun/tableview/preference/Preferences;

    move-result-object v1

    iput-object v1, v0, Lcom/evrencoskun/tableview/preference/SavedState;->preferences:Lcom/evrencoskun/tableview/preference/Preferences;

    return-object v0
.end method

.method public remeasureColumnWidth(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/TableView;->getColumnHeaderLayoutManager()Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/evrencoskun/tableview/layoutmanager/ColumnHeaderLayoutManager;->removeCachedWidth(I)V

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/TableView;->getCellLayoutManager()Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->fitWidthSize(IZ)V

    return-void
.end method

.method public scrollToColumnPosition(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mScrollHandler:Lcom/evrencoskun/tableview/handler/ScrollHandler;

    invoke-virtual {v0, p1}, Lcom/evrencoskun/tableview/handler/ScrollHandler;->scrollToColumnPosition(I)V

    return-void
.end method

.method public scrollToColumnPosition(II)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mScrollHandler:Lcom/evrencoskun/tableview/handler/ScrollHandler;

    invoke-virtual {v0, p1, p2}, Lcom/evrencoskun/tableview/handler/ScrollHandler;->scrollToColumnPosition(II)V

    return-void
.end method

.method public scrollToRowPosition(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mScrollHandler:Lcom/evrencoskun/tableview/handler/ScrollHandler;

    invoke-virtual {v0, p1}, Lcom/evrencoskun/tableview/handler/ScrollHandler;->scrollToRowPosition(I)V

    return-void
.end method

.method public scrollToRowPosition(II)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mScrollHandler:Lcom/evrencoskun/tableview/handler/ScrollHandler;

    invoke-virtual {v0, p1, p2}, Lcom/evrencoskun/tableview/handler/ScrollHandler;->scrollToRowPosition(II)V

    return-void
.end method

.method public setAdapter(Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;)V
    .locals 1
    .param p1    # Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CH:",
            "Ljava/lang/Object;",
            "RH:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter<",
            "TCH;TRH;TC;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/evrencoskun/tableview/TableView;->mTableAdapter:Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;

    iget v0, p0, Lcom/evrencoskun/tableview/TableView;->mRowHeaderWidth:I

    invoke-virtual {p1, v0}, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->setRowHeaderWidth(I)V

    iget-object p1, p0, Lcom/evrencoskun/tableview/TableView;->mTableAdapter:Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;

    iget v0, p0, Lcom/evrencoskun/tableview/TableView;->mColumnHeaderHeight:I

    invoke-virtual {p1, v0}, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->setColumnHeaderHeight(I)V

    iget-object p1, p0, Lcom/evrencoskun/tableview/TableView;->mTableAdapter:Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;

    invoke-virtual {p1, p0}, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->setTableView(Lcom/evrencoskun/tableview/ITableView;)V

    iget-object p1, p0, Lcom/evrencoskun/tableview/TableView;->mColumnHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mTableAdapter:Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;

    invoke-virtual {v0}, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->getColumnHeaderRecyclerViewAdapter()Lcom/evrencoskun/tableview/adapter/recyclerview/ColumnHeaderRecyclerViewAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/evrencoskun/tableview/TableView;->mRowHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mTableAdapter:Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;

    invoke-virtual {v0}, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->getRowHeaderRecyclerViewAdapter()Lcom/evrencoskun/tableview/adapter/recyclerview/RowHeaderRecyclerViewAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/evrencoskun/tableview/TableView;->mCellRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mTableAdapter:Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;

    invoke-virtual {v0}, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->getCellRecyclerViewAdapter()Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerViewAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p1, Lcom/evrencoskun/tableview/handler/ColumnSortHandler;

    invoke-direct {p1, p0}, Lcom/evrencoskun/tableview/handler/ColumnSortHandler;-><init>(Lcom/evrencoskun/tableview/ITableView;)V

    iput-object p1, p0, Lcom/evrencoskun/tableview/TableView;->mColumnSortHandler:Lcom/evrencoskun/tableview/handler/ColumnSortHandler;

    new-instance p1, Lcom/evrencoskun/tableview/handler/FilterHandler;

    invoke-direct {p1, p0}, Lcom/evrencoskun/tableview/handler/FilterHandler;-><init>(Lcom/evrencoskun/tableview/ITableView;)V

    iput-object p1, p0, Lcom/evrencoskun/tableview/TableView;->mFilterHandler:Lcom/evrencoskun/tableview/handler/FilterHandler;

    :cond_0
    return-void
.end method

.method public setColumnWidth(II)V
    .locals 1

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mColumnWidthHandler:Lcom/evrencoskun/tableview/handler/ColumnWidthHandler;

    invoke-virtual {v0, p1, p2}, Lcom/evrencoskun/tableview/handler/ColumnWidthHandler;->setColumnWidth(II)V

    return-void
.end method

.method public setCornerViewLocation(Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;)V
    .locals 0

    iput-object p1, p0, Lcom/evrencoskun/tableview/TableView;->mCornerViewLocation:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    return-void
.end method

.method public setHasFixedWidth(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/evrencoskun/tableview/TableView;->mHasFixedWidth:Z

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mColumnHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    return-void
.end method

.method public setIgnoreSelectionColors(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evrencoskun/tableview/TableView;->mIgnoreSelectionColors:Z

    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evrencoskun/tableview/TableView;->mReverseLayout:Z

    return-void
.end method

.method public setRowHeaderWidth(I)V
    .locals 4

    iput p1, p0, Lcom/evrencoskun/tableview/TableView;->mRowHeaderWidth:I

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mRowHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/evrencoskun/tableview/TableView;->mRowHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mRowHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mColumnHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/evrencoskun/tableview/TableView;->mCornerViewLocation:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    sget-object v2, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;->TOP_RIGHT:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    if-eq v1, v2, :cond_1

    sget-object v3, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;->BOTTOM_RIGHT:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    :cond_1
    :goto_0
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_1
    iget-object v1, p0, Lcom/evrencoskun/tableview/TableView;->mColumnHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mColumnHeaderRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mCellRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/evrencoskun/tableview/TableView;->mCornerViewLocation:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;->BOTTOM_RIGHT:Lcom/evrencoskun/tableview/ITableView$CornerViewLocation;

    if-ne v1, v2, :cond_2

    goto :goto_2

    :cond_2
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_3

    :cond_3
    :goto_2
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_3
    iget-object v1, p0, Lcom/evrencoskun/tableview/TableView;->mCellRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mCellRecyclerView:Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/TableView;->getAdapter()Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/TableView;->getAdapter()Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/evrencoskun/tableview/adapter/AbstractTableAdapter;->setRowHeaderWidth(I)V

    :cond_4
    return-void
.end method

.method public setSelectedCell(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/TableView;->getCellLayoutManager()Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/evrencoskun/tableview/layoutmanager/CellLayoutManager;->getCellViewHolder(II)Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/evrencoskun/tableview/TableView;->mSelectionHandler:Lcom/evrencoskun/tableview/handler/SelectionHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->setSelectedCellPositions(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;II)V

    return-void
.end method

.method public setSelectedColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/evrencoskun/tableview/TableView;->mSelectedColor:I

    return-void
.end method

.method public setSelectedColumn(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/TableView;->getColumnHeaderRecyclerView()Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;

    iget-object v1, p0, Lcom/evrencoskun/tableview/TableView;->mSelectionHandler:Lcom/evrencoskun/tableview/handler/SelectionHandler;

    invoke-virtual {v1, v0, p1}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->setSelectedColumnPosition(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;I)V

    return-void
.end method

.method public setSelectedRow(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/evrencoskun/tableview/TableView;->getRowHeaderRecyclerView()Lcom/evrencoskun/tableview/adapter/recyclerview/CellRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;

    iget-object v1, p0, Lcom/evrencoskun/tableview/TableView;->mSelectionHandler:Lcom/evrencoskun/tableview/handler/SelectionHandler;

    invoke-virtual {v1, v0, p1}, Lcom/evrencoskun/tableview/handler/SelectionHandler;->setSelectedRowPosition(Lcom/evrencoskun/tableview/adapter/recyclerview/holder/AbstractViewHolder;I)V

    return-void
.end method

.method public setSeparatorColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/evrencoskun/tableview/TableView;->mSeparatorColor:I

    return-void
.end method

.method public setShadowColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/evrencoskun/tableview/TableView;->mShadowColor:I

    return-void
.end method

.method public setShowCornerView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evrencoskun/tableview/TableView;->mShowCornerView:Z

    return-void
.end method

.method public setShowHorizontalSeparators(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evrencoskun/tableview/TableView;->mShowHorizontalSeparators:Z

    return-void
.end method

.method public setShowVerticalSeparators(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/evrencoskun/tableview/TableView;->mShowVerticalSeparators:Z

    return-void
.end method

.method public setTableViewListener(Lcom/evrencoskun/tableview/listener/ITableViewListener;)V
    .locals 0
    .param p1    # Lcom/evrencoskun/tableview/listener/ITableViewListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/evrencoskun/tableview/TableView;->mTableViewListener:Lcom/evrencoskun/tableview/listener/ITableViewListener;

    return-void
.end method

.method public setUnSelectedColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/evrencoskun/tableview/TableView;->mUnSelectedColor:I

    return-void
.end method

.method public showAllHiddenColumns()V
    .locals 1

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mVisibilityHandler:Lcom/evrencoskun/tableview/handler/VisibilityHandler;

    invoke-virtual {v0}, Lcom/evrencoskun/tableview/handler/VisibilityHandler;->showAllHiddenColumns()V

    return-void
.end method

.method public showAllHiddenRows()V
    .locals 1

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mVisibilityHandler:Lcom/evrencoskun/tableview/handler/VisibilityHandler;

    invoke-virtual {v0}, Lcom/evrencoskun/tableview/handler/VisibilityHandler;->showAllHiddenRows()V

    return-void
.end method

.method public showColumn(I)V
    .locals 1

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mVisibilityHandler:Lcom/evrencoskun/tableview/handler/VisibilityHandler;

    invoke-virtual {v0, p1}, Lcom/evrencoskun/tableview/handler/VisibilityHandler;->showColumn(I)V

    return-void
.end method

.method public showRow(I)V
    .locals 1

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mVisibilityHandler:Lcom/evrencoskun/tableview/handler/VisibilityHandler;

    invoke-virtual {v0, p1}, Lcom/evrencoskun/tableview/handler/VisibilityHandler;->showRow(I)V

    return-void
.end method

.method public sortColumn(ILcom/evrencoskun/tableview/sort/SortState;)V
    .locals 1
    .param p2    # Lcom/evrencoskun/tableview/sort/SortState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/evrencoskun/tableview/TableView;->mIsSortable:Z

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mColumnSortHandler:Lcom/evrencoskun/tableview/handler/ColumnSortHandler;

    invoke-virtual {v0, p1, p2}, Lcom/evrencoskun/tableview/handler/ColumnSortHandler;->sort(ILcom/evrencoskun/tableview/sort/SortState;)V

    return-void
.end method

.method public sortRowHeader(Lcom/evrencoskun/tableview/sort/SortState;)V
    .locals 1
    .param p1    # Lcom/evrencoskun/tableview/sort/SortState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/evrencoskun/tableview/TableView;->mIsSortable:Z

    iget-object v0, p0, Lcom/evrencoskun/tableview/TableView;->mColumnSortHandler:Lcom/evrencoskun/tableview/handler/ColumnSortHandler;

    invoke-virtual {v0, p1}, Lcom/evrencoskun/tableview/handler/ColumnSortHandler;->sortByRowHeader(Lcom/evrencoskun/tableview/sort/SortState;)V

    return-void
.end method
