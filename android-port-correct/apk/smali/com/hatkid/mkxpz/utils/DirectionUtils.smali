.class public Lcom/hatkid/mkxpz/utils/DirectionUtils;
.super Ljava/lang/Object;
.source "DirectionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static get4dir(D)Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;
    .locals 2

    const-wide v0, 0x4046800000000000L    # 45.0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    const-wide/high16 v0, 0x4061000000000000L    # 136.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    .line 34
    sget-object p0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UP:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    return-object p0

    :cond_0
    const-wide v0, 0x4060e00000000000L    # 135.0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_1

    const-wide v0, 0x406c400000000000L    # 226.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    .line 36
    sget-object p0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->RIGHT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    return-object p0

    :cond_1
    const-wide v0, 0x406c200000000000L    # 225.0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_2

    const-wide v0, 0x4073c00000000000L    # 316.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_2

    .line 38
    sget-object p0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->DOWN:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    return-object p0

    :cond_2
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_3

    const-wide/high16 v0, 0x4047000000000000L    # 46.0

    cmpg-double v0, p0, v0

    if-ltz v0, :cond_4

    :cond_3
    const-wide v0, 0x4073b00000000000L    # 315.0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_5

    const-wide v0, 0x4076900000000000L    # 361.0

    cmpg-double p0, p0, v0

    if-gez p0, :cond_5

    .line 40
    :cond_4
    sget-object p0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->LEFT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    return-object p0

    .line 42
    :cond_5
    sget-object p0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UNKNOWN:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    return-object p0
.end method

.method private static get8dir(D)Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;
    .locals 7

    const-wide v0, 0x4050e00000000000L    # 67.5

    cmpl-double v2, p0, v0

    const-wide v3, 0x405c600000000000L    # 113.5

    if-ltz v2, :cond_0

    cmpg-double v2, p0, v3

    if-gez v2, :cond_0

    .line 48
    sget-object p0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UP:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    return-object p0

    :cond_0
    cmpl-double v2, p0, v3

    const-wide v3, 0x4063d00000000000L    # 158.5

    if-ltz v2, :cond_1

    cmpg-double v2, p0, v3

    if-gez v2, :cond_1

    .line 50
    sget-object p0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UP_RIGHT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    return-object p0

    :cond_1
    cmpl-double v2, p0, v3

    const-wide v3, 0x4069700000000000L    # 203.5

    if-ltz v2, :cond_2

    cmpg-double v2, p0, v3

    if-gez v2, :cond_2

    .line 52
    sget-object p0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->RIGHT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    return-object p0

    :cond_2
    cmpl-double v2, p0, v3

    const-wide v3, 0x406f100000000000L    # 248.5

    if-ltz v2, :cond_3

    cmpg-double v2, p0, v3

    if-gez v2, :cond_3

    .line 54
    sget-object p0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->DOWN_RIGHT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    return-object p0

    :cond_3
    cmpl-double v2, p0, v3

    const-wide v3, 0x4072580000000000L    # 293.5

    if-ltz v2, :cond_4

    cmpg-double v2, p0, v3

    if-gez v2, :cond_4

    .line 56
    sget-object p0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->DOWN:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    return-object p0

    :cond_4
    cmpl-double v2, p0, v3

    const-wide v3, 0x4075280000000000L    # 338.5

    if-ltz v2, :cond_5

    cmpg-double v2, p0, v3

    if-gez v2, :cond_5

    .line 58
    sget-object p0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->DOWN_LEFT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    return-object p0

    :cond_5
    const-wide/16 v5, 0x0

    cmpl-double v2, p0, v5

    const-wide v5, 0x4037800000000000L    # 23.5

    if-ltz v2, :cond_6

    cmpg-double v2, p0, v5

    if-ltz v2, :cond_7

    :cond_6
    cmpl-double v2, p0, v3

    if-ltz v2, :cond_8

    const-wide v2, 0x4076900000000000L    # 361.0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_8

    .line 60
    :cond_7
    sget-object p0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->LEFT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    return-object p0

    :cond_8
    cmpl-double v2, p0, v5

    if-ltz v2, :cond_9

    cmpg-double p0, p0, v0

    if-gez p0, :cond_9

    .line 62
    sget-object p0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UP_LEFT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    return-object p0

    .line 64
    :cond_9
    sget-object p0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UNKNOWN:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    return-object p0
.end method

.method public static getAngle(FFFFZ)Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;
    .locals 2

    sub-float/2addr p2, p3

    float-to-double p2, p2

    sub-float/2addr p0, p1

    float-to-double p0, p0

    const-wide/16 v0, 0x0

    .line 72
    :try_start_0
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-wide p0, v0

    :goto_0
    cmpg-double p2, p0, v0

    if-gez p2, :cond_0

    const-wide p2, 0x4076800000000000L    # 360.0

    add-double/2addr p0, p2

    .line 78
    :cond_0
    invoke-static {p0, p1, p4}, Lcom/hatkid/mkxpz/utils/DirectionUtils;->getDir(DZ)Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    move-result-object p0

    return-object p0
.end method

.method public static getDir(DZ)Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;
    .locals 0

    if-eqz p2, :cond_0

    .line 26
    invoke-static {p0, p1}, Lcom/hatkid/mkxpz/utils/DirectionUtils;->get8dir(D)Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    move-result-object p0

    return-object p0

    .line 28
    :cond_0
    invoke-static {p0, p1}, Lcom/hatkid/mkxpz/utils/DirectionUtils;->get4dir(D)Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    move-result-object p0

    return-object p0
.end method

.method public static getDir(FFZ)Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-static {v0, p0, v0, p1, p2}, Lcom/hatkid/mkxpz/utils/DirectionUtils;->getAngle(FFFFZ)Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    move-result-object p0

    return-object p0
.end method
