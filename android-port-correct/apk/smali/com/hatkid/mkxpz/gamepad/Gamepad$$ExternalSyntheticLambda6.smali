.class public final synthetic Lcom/hatkid/mkxpz/gamepad/Gamepad$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;


# instance fields
.field public final synthetic f$0:Lcom/hatkid/mkxpz/gamepad/Gamepad;


# direct methods
.method public synthetic constructor <init>(Lcom/hatkid/mkxpz/gamepad/Gamepad;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad$$ExternalSyntheticLambda6;->f$0:Lcom/hatkid/mkxpz/gamepad/Gamepad;

    return-void
.end method


# virtual methods
.method public final onKeyUp(I)V
    .locals 1

    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/Gamepad$$ExternalSyntheticLambda6;->f$0:Lcom/hatkid/mkxpz/gamepad/Gamepad;

    invoke-virtual {v0, p1}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->lambda$setGamepadButtonKey$6$com-hatkid-mkxpz-gamepad-Gamepad(I)V

    return-void
.end method
