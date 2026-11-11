.class public final Lcom/evrencoskun/tableview/R$styleable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evrencoskun/tableview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static TableView:[I = null

.field public static TableView_allow_click_inside_cell:I = 0x0

.field public static TableView_allow_click_inside_column_header:I = 0x1

.field public static TableView_allow_click_inside_row_header:I = 0x2

.field public static TableView_column_header_height:I = 0x3

.field public static TableView_corner_view_location:I = 0x4

.field public static TableView_reverse_layout:I = 0x5

.field public static TableView_row_header_width:I = 0x6

.field public static TableView_selected_color:I = 0x7

.field public static TableView_separator_color:I = 0x8

.field public static TableView_separator_height:I = 0x9

.field public static TableView_shadow_color:I = 0xa

.field public static TableView_show_horizontal_separator:I = 0xb

.field public static TableView_show_vertical_separator:I = 0xc

.field public static TableView_unselected_color:I = 0xd


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/evrencoskun/tableview/R$styleable;->TableView:[I

    return-void

    :array_0
    .array-data 4
        0x7f04002f
        0x7f040030
        0x7f040031
        0x7f040119
        0x7f040140
        0x7f040392
        0x7f04039d
        0x7f0403b4
        0x7f0403b9
        0x7f0403ba
        0x7f0403bc
        0x7f0403d4
        0x7f0403d5
        0x7f0404cf
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
