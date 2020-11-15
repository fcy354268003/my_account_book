.class Lcom/scwang/smartrefresh/header/internal/pathview/PathParser;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scwang/smartrefresh/header/internal/pathview/PathParser$PathDataNode;,
        Lcom/scwang/smartrefresh/header/internal/pathview/PathParser$ExtractFloatResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PathParser"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addNode(Ljava/util/List;C[F)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/scwang/smartrefresh/header/internal/pathview/PathParser$PathDataNode;",
            ">;C[F)V"
        }
    .end annotation

    .line 291
    new-instance v0, Lcom/scwang/smartrefresh/header/internal/pathview/PathParser$PathDataNode;

    invoke-direct {v0, p1, p2}, Lcom/scwang/smartrefresh/header/internal/pathview/PathParser$PathDataNode;-><init>(C[F)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static copyOfRange([FII)[F
    .locals 2

    .line 49
    array-length v0, p0

    sub-int/2addr p2, p1

    sub-int/2addr v0, p1

    .line 54
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 55
    new-array p2, p2, [F

    const/4 v1, 0x0

    .line 56
    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method public static createNodesFromPathData(Ljava/lang/String;)[Lcom/scwang/smartrefresh/header/internal/pathview/PathParser$PathDataNode;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 200
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 201
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 202
    invoke-static {p0, v3}, Lcom/scwang/smartrefresh/header/internal/pathview/PathParser;->nextStart(Ljava/lang/String;I)I

    move-result v3

    .line 203
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 204
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 205
    invoke-static {v4}, Lcom/scwang/smartrefresh/header/internal/pathview/PathParser;->getFloats(Ljava/lang/String;)[F

    move-result-object v5

    .line 206
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v0, v4, v5}, Lcom/scwang/smartrefresh/header/internal/pathview/PathParser;->addNode(Ljava/util/List;C[F)V

    :cond_1
    add-int/lit8 v4, v3, 0x1

    move v6, v4

    move v4, v3

    move v3, v6

    goto :goto_0

    :cond_2
    sub-int/2addr v3, v4

    if-ne v3, v1, :cond_3

    .line 212
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v4, v1, :cond_3

    .line 213
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result p0

    new-array v1, v2, [F

    invoke-static {v0, p0, v1}, Lcom/scwang/smartrefresh/header/internal/pathview/PathParser;->addNode(Ljava/util/List;C[F)V

    :cond_3
    new-array p0, v2, [Lcom/scwang/smartrefresh/header/internal/pathview/PathParser$PathDataNode;

    .line 215
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/scwang/smartrefresh/header/internal/pathview/PathParser$PathDataNode;

    return-object p0
.end method

.method public static createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 4

    .line 176
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 177
    invoke-static {p0}, Lcom/scwang/smartrefresh/header/internal/pathview/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Lcom/scwang/smartrefresh/header/internal/pathview/PathParser$PathDataNode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 180
    :try_start_0
    invoke-static {v1, v0}, Lcom/scwang/smartrefresh/header/internal/pathview/PathParser$PathDataNode;->nodesToPath([Lcom/scwang/smartrefresh/header/internal/pathview/PathParser$PathDataNode;Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 182
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in parsing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static extract(Ljava/lang/String;ILcom/scwang/smartrefresh/header/internal/pathview/PathParser$ExtractFloatResult;)V
    .locals 8

    const/4 v0, 0x0

    .line 358
    iput-boolean v0, p2, Lcom/scwang/smartrefresh/header/internal/pathview/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    move v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 361
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 364
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    const/4 v7, 0x1

    if-eq v5, v6, :cond_3

    const/16 v6, 0x45

    if-eq v5, v6, :cond_2

    const/16 v6, 0x65

    if-eq v5, v6, :cond_2

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-nez v3, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_3

    .line 383
    :cond_0
    iput-boolean v7, p2, Lcom/scwang/smartrefresh/header/internal/pathview/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    goto :goto_2

    :pswitch_1
    if-eq v1, p1, :cond_1

    if-nez v2, :cond_1

    .line 374
    iput-boolean v7, p2, Lcom/scwang/smartrefresh/header/internal/pathview/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x0

    goto :goto_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    :goto_2
    :pswitch_2
    const/4 v2, 0x0

    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 397
    :cond_5
    :goto_4
    iput v1, p2, Lcom/scwang/smartrefresh/header/internal/pathview/PathParser$ExtractFloatResult;->mEndPosition:I

    return-void

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getFloats(Ljava/lang/String;)[F
    .locals 8

    const/4 v0, 0x0

    .line 309
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x7a

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    or-int/2addr v1, v3

    if-eqz v1, :cond_2

    new-array p0, v0, [F

    return-object p0

    .line 313
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [F

    .line 318
    new-instance v3, Lcom/scwang/smartrefresh/header/internal/pathview/PathParser$ExtractFloatResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/scwang/smartrefresh/header/internal/pathview/PathParser$ExtractFloatResult;-><init>(Lcom/scwang/smartrefresh/header/internal/pathview/PathParser$1;)V

    .line 319
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-ge v2, v4, :cond_5

    .line 325
    invoke-static {p0, v2, v3}, Lcom/scwang/smartrefresh/header/internal/pathview/PathParser;->extract(Ljava/lang/String;ILcom/scwang/smartrefresh/header/internal/pathview/PathParser$ExtractFloatResult;)V

    .line 326
    iget v6, v3, Lcom/scwang/smartrefresh/header/internal/pathview/PathParser$ExtractFloatResult;->mEndPosition:I

    if-ge v2, v6, :cond_3

    add-int/lit8 v7, v5, 0x1

    .line 330
    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 329
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v5

    move v5, v7

    .line 333
    :cond_3
    iget-boolean v2, v3, Lcom/scwang/smartrefresh/header/internal/pathview/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    if-eqz v2, :cond_4

    move v2, v6

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v6, 0x1

    goto :goto_2

    .line 340
    :cond_5
    invoke-static {v1, v0, v5}, Lcom/scwang/smartrefresh/header/internal/pathview/PathParser;->copyOfRange([FII)[F

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 342
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error in parsing \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static nextStart(Ljava/lang/String;I)I
    .locals 3

    .line 275
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 276
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v2, v0, -0x5a

    mul-int v1, v1, v2

    if-lez v1, :cond_0

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v2, v0, -0x7a

    mul-int v1, v1, v2

    if-gtz v1, :cond_1

    :cond_0
    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    const/16 v1, 0x45

    if-eq v0, v1, :cond_1

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return p1
.end method

.method public static transformScale(FFLjava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 62
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-le v2, v3, :cond_0

    .line 65
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Path;

    .line 66
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 67
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 68
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 72
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 73
    invoke-static {p3}, Lcom/scwang/smartrefresh/header/internal/pathview/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Lcom/scwang/smartrefresh/header/internal/pathview/PathParser$PathDataNode;

    move-result-object p3

    .line 74
    invoke-static {p0, p1, p3}, Lcom/scwang/smartrefresh/header/internal/pathview/PathParser;->transformScaleNodes(FF[Lcom/scwang/smartrefresh/header/internal/pathview/PathParser$PathDataNode;)V

    .line 75
    invoke-static {p3, v0}, Lcom/scwang/smartrefresh/header/internal/pathview/PathParser$PathDataNode;->nodesToPath([Lcom/scwang/smartrefresh/header/internal/pathview/PathParser$PathDataNode;Landroid/graphics/Path;)V

    .line 76
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method private static transformScaleCommand(FFC[F)V
    .locals 4

    const/4 v0, 0x2

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x7

    :goto_0
    :sswitch_4
    const/4 v1, 0x0

    .line 124
    :goto_1
    array-length v2, p3

    if-ge v1, v2, :cond_6

    const/16 v2, 0x41

    if-eq p2, v2, :cond_5

    const/16 v2, 0x43

    if-eq p2, v2, :cond_4

    const/16 v2, 0x48

    if-eq p2, v2, :cond_3

    const/16 v2, 0x51

    if-eq p2, v2, :cond_2

    const/16 v2, 0x56

    if-eq p2, v2, :cond_1

    const/16 v2, 0x61

    if-eq p2, v2, :cond_5

    const/16 v2, 0x63

    if-eq p2, v2, :cond_4

    const/16 v2, 0x68

    if-eq p2, v2, :cond_3

    const/16 v2, 0x71

    if-eq p2, v2, :cond_2

    const/16 v2, 0x76

    if-eq p2, v2, :cond_1

    const/16 v2, 0x4c

    if-eq p2, v2, :cond_0

    const/16 v2, 0x4d

    if-eq p2, v2, :cond_0

    const/16 v2, 0x53

    if-eq p2, v2, :cond_2

    const/16 v2, 0x54

    if-eq p2, v2, :cond_0

    const/16 v2, 0x6c

    if-eq p2, v2, :cond_0

    const/16 v2, 0x6d

    if-eq p2, v2, :cond_0

    const/16 v2, 0x73

    if-eq p2, v2, :cond_2

    const/16 v2, 0x74

    if-eq p2, v2, :cond_0

    goto/16 :goto_3

    .line 132
    :cond_0
    aget v2, p3, v1

    mul-float v2, v2, p0

    aput v2, p3, v1

    add-int/lit8 v2, v1, 0x1

    .line 133
    aget v3, p3, v2

    mul-float v3, v3, p1

    aput v3, p3, v2

    goto/16 :goto_3

    .line 141
    :cond_1
    aget v2, p3, v1

    mul-float v2, v2, p1

    aput v2, p3, v1

    goto :goto_3

    .line 156
    :cond_2
    aget v2, p3, v1

    mul-float v2, v2, p0

    aput v2, p3, v1

    add-int/lit8 v2, v1, 0x1

    .line 157
    aget v3, p3, v2

    mul-float v3, v3, p1

    aput v3, p3, v2

    add-int/lit8 v2, v1, 0x2

    .line 158
    aget v3, p3, v2

    mul-float v3, v3, p0

    aput v3, p3, v2

    add-int/lit8 v2, v1, 0x3

    .line 159
    aget v3, p3, v2

    mul-float v3, v3, p1

    aput v3, p3, v2

    goto :goto_2

    .line 137
    :cond_3
    aget v2, p3, v1

    mul-float v2, v2, p0

    aput v2, p3, v1

    goto :goto_3

    .line 145
    :cond_4
    aget v2, p3, v1

    mul-float v2, v2, p0

    aput v2, p3, v1

    add-int/lit8 v2, v1, 0x1

    .line 146
    aget v3, p3, v2

    mul-float v3, v3, p1

    aput v3, p3, v2

    add-int/lit8 v2, v1, 0x2

    .line 147
    aget v3, p3, v2

    mul-float v3, v3, p0

    aput v3, p3, v2

    add-int/lit8 v2, v1, 0x3

    .line 148
    aget v3, p3, v2

    mul-float v3, v3, p1

    aput v3, p3, v2

    add-int/lit8 v2, v1, 0x4

    .line 149
    aget v3, p3, v2

    mul-float v3, v3, p0

    aput v3, p3, v2

    add-int/lit8 v2, v1, 0x5

    .line 150
    aget v3, p3, v2

    mul-float v3, v3, p1

    aput v3, p3, v2

    goto :goto_3

    .line 162
    :cond_5
    :goto_2
    aget v2, p3, v1

    mul-float v2, v2, p0

    aput v2, p3, v1

    add-int/lit8 v2, v1, 0x1

    .line 163
    aget v3, p3, v2

    mul-float v3, v3, p1

    aput v3, p3, v2

    add-int/lit8 v2, v1, 0x5

    .line 164
    aget v3, p3, v2

    mul-float v3, v3, p0

    aput v3, p3, v2

    add-int/lit8 v2, v1, 0x6

    .line 165
    aget v3, p3, v2

    mul-float v3, v3, p1

    aput v3, p3, v2

    :goto_3
    add-int/2addr v1, v0

    goto/16 :goto_1

    :cond_6
    return-void

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_3
        0x43 -> :sswitch_2
        0x48 -> :sswitch_1
        0x4c -> :sswitch_4
        0x4d -> :sswitch_4
        0x51 -> :sswitch_0
        0x53 -> :sswitch_0
        0x54 -> :sswitch_4
        0x56 -> :sswitch_1
        0x5a -> :sswitch_4
        0x61 -> :sswitch_3
        0x63 -> :sswitch_2
        0x68 -> :sswitch_1
        0x6c -> :sswitch_4
        0x6d -> :sswitch_4
        0x71 -> :sswitch_0
        0x73 -> :sswitch_0
        0x74 -> :sswitch_4
        0x76 -> :sswitch_1
        0x7a -> :sswitch_4
    .end sparse-switch
.end method

.method private static transformScaleNodes(FF[Lcom/scwang/smartrefresh/header/internal/pathview/PathParser$PathDataNode;)V
    .locals 4

    .line 84
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 85
    iget-char v3, v2, Lcom/scwang/smartrefresh/header/internal/pathview/PathParser$PathDataNode;->type:C

    iget-object v2, v2, Lcom/scwang/smartrefresh/header/internal/pathview/PathParser$PathDataNode;->params:[F

    invoke-static {p0, p1, v3, v2}, Lcom/scwang/smartrefresh/header/internal/pathview/PathParser;->transformScaleCommand(FFC[F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
