.class public final enum Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;
.super Ljava/lang/Enum;
.source "DirectionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hatkid/mkxpz/utils/DirectionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

.field public static final enum DOWN:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

.field public static final enum DOWN_LEFT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

.field public static final enum DOWN_RIGHT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

.field public static final enum LEFT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

.field public static final enum RIGHT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

.field public static final enum UNKNOWN:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

.field public static final enum UP:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

.field public static final enum UP_LEFT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

.field public static final enum UP_RIGHT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;


# direct methods
.method private static synthetic $values()[Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 5
    sget-object v1, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UP:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UP_RIGHT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->RIGHT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->DOWN_RIGHT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->DOWN:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->DOWN_LEFT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->LEFT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UP_LEFT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UNKNOWN:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    const-string v1, "UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UP:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 8
    new-instance v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    const-string v1, "UP_RIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UP_RIGHT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 9
    new-instance v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    const-string v1, "RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->RIGHT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 10
    new-instance v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    const-string v1, "DOWN_RIGHT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->DOWN_RIGHT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 11
    new-instance v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    const-string v1, "DOWN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->DOWN:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 12
    new-instance v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    const-string v1, "DOWN_LEFT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->DOWN_LEFT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 13
    new-instance v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    const-string v1, "LEFT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->LEFT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 14
    new-instance v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    const-string v1, "UP_LEFT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UP_LEFT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 15
    new-instance v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UNKNOWN:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 5
    invoke-static {}, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->$values()[Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    move-result-object v0

    sput-object v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->$VALUES:[Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;
    .locals 1

    .line 5
    const-class v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    return-object p0
.end method

.method public static values()[Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;
    .locals 1

    .line 5
    sget-object v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->$VALUES:[Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    invoke-virtual {v0}, [Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    return-object v0
.end method
