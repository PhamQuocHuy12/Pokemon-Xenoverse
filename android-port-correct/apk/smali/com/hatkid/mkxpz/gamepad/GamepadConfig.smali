.class public Lcom/hatkid/mkxpz/gamepad/GamepadConfig;
.super Ljava/lang/Object;
.source "GamepadConfig.java"


# instance fields
.field public diagonalMovement:Ljava/lang/Boolean;

.field public final keycodeA:Ljava/lang/Integer;

.field public final keycodeALT:Ljava/lang/Integer;

.field public final keycodeB:Ljava/lang/Integer;

.field public final keycodeC:Ljava/lang/Integer;

.field public final keycodeCTRL:Ljava/lang/Integer;

.field public final keycodeL:Ljava/lang/Integer;

.field public final keycodeR:Ljava/lang/Integer;

.field public final keycodeSHIFT:Ljava/lang/Integer;

.field public final keycodeX:Ljava/lang/Integer;

.field public final keycodeY:Ljava/lang/Integer;

.field public final keycodeZ:Ljava/lang/Integer;

.field public opacity:Ljava/lang/Integer;

.field public scale:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->opacity:Ljava/lang/Integer;

    const/16 v0, 0x64

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->scale:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->diagonalMovement:Ljava/lang/Boolean;

    const/16 v0, 0x36

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->keycodeA:Ljava/lang/Integer;

    const/16 v0, 0x34

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->keycodeB:Ljava/lang/Integer;

    const/16 v0, 0x1f

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->keycodeC:Ljava/lang/Integer;

    const/16 v0, 0x1d

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->keycodeX:Ljava/lang/Integer;

    const/16 v0, 0x2f

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->keycodeY:Ljava/lang/Integer;

    const/16 v0, 0x20

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->keycodeZ:Ljava/lang/Integer;

    const/16 v0, 0x2d

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->keycodeL:Ljava/lang/Integer;

    const/16 v0, 0x33

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->keycodeR:Ljava/lang/Integer;

    const/16 v0, 0x71

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->keycodeCTRL:Ljava/lang/Integer;

    const/16 v0, 0x42

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->keycodeALT:Ljava/lang/Integer;

    const/16 v0, 0x3b

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->keycodeSHIFT:Ljava/lang/Integer;

    return-void
.end method
