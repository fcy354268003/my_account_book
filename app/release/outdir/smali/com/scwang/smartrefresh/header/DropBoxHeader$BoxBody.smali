.class public Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;
.super Ljava/lang/Object;
.source "DropBoxHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scwang/smartrefresh/header/DropBoxHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BoxBody"
.end annotation


# instance fields
.field boxBottom:I

.field boxCenterBottom:I

.field boxCenterTop:I

.field boxCenterX:I

.field boxCenterY:I

.field boxLeft:I

.field boxRight:I

.field boxSideLength:I

.field boxTop:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method measure(IIII)Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;
    .locals 4

    .line 448
    iput p3, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxSideLength:I

    .line 449
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterX:I

    sub-int/2addr p2, p4

    .line 450
    iput p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxBottom:I

    .line 451
    iget p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxBottom:I

    mul-int/lit8 p4, p3, 0x2

    sub-int/2addr p2, p4

    iput p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxTop:I

    .line 452
    iget p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterX:I

    int-to-double v0, p3

    const-wide v2, 0x3ff0c152382d7365L    # 1.0471975511965976

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    double-to-int p4, v0

    sub-int/2addr p2, p4

    iput p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxLeft:I

    .line 453
    iget p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxTop:I

    div-int/lit8 p4, p3, 0x2

    add-int/2addr p2, p4

    iput p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterTop:I

    .line 454
    iget p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxBottom:I

    sub-int p4, p2, p4

    iput p4, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterBottom:I

    .line 455
    iget p4, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxLeft:I

    sub-int/2addr p1, p4

    iput p1, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxRight:I

    sub-int/2addr p2, p3

    .line 456
    iput p2, p0, Lcom/scwang/smartrefresh/header/DropBoxHeader$BoxBody;->boxCenterY:I

    return-object p0
.end method
