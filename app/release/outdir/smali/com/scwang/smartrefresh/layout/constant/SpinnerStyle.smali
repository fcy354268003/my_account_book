.class public Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;
.super Ljava/lang/Object;
.source "SpinnerStyle.java"


# static fields
.field public static final FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

.field public static final FixedFront:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

.field public static final MatchLayout:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

.field public static final Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

.field public static final values:[Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;


# instance fields
.field public final front:Z

.field public final ordinal:I

.field public final scale:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 10
    new-instance v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;-><init>(IZZ)V

    sput-object v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    .line 18
    new-instance v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    invoke-direct {v0, v1, v1, v1}, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;-><init>(IZZ)V

    sput-object v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    .line 19
    new-instance v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    const/4 v3, 0x2

    invoke-direct {v0, v3, v2, v2}, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;-><init>(IZZ)V

    sput-object v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    .line 20
    new-instance v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    const/4 v4, 0x3

    invoke-direct {v0, v4, v1, v2}, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;-><init>(IZZ)V

    sput-object v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedFront:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    .line 21
    new-instance v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    const/4 v5, 0x4

    invoke-direct {v0, v5, v1, v2}, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;-><init>(IZZ)V

    sput-object v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    .line 23
    sget-object v6, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    aput-object v6, v0, v2

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    aput-object v2, v0, v1

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedFront:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    aput-object v1, v0, v4

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    aput-object v1, v0, v5

    sput-object v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->values:[Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    return-void
.end method

.method private constructor <init>(IZZ)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->ordinal:I

    .line 37
    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->front:Z

    .line 38
    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->scale:Z

    return-void
.end method
