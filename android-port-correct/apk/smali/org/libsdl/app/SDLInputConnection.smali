.class Lorg/libsdl/app/SDLInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "SDLActivity.java"


# instance fields
.field protected mCommittedText:Ljava/lang/String;

.field protected mEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 0

    .line 1957
    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    const-string p1, ""

    .line 1954
    iput-object p1, p0, Lorg/libsdl/app/SDLInputConnection;->mCommittedText:Ljava/lang/String;

    .line 1958
    new-instance p1, Landroid/widget/EditText;

    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/libsdl/app/SDLInputConnection;->mEditText:Landroid/widget/EditText;

    return-void
.end method

.method public static native nativeCommitText(Ljava/lang/String;I)V
.end method

.method public static native nativeGenerateScancodeForUnichar(C)V
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 0

    .line 1991
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1994
    :cond_0
    invoke-virtual {p0}, Lorg/libsdl/app/SDLInputConnection;->updateText()V

    const/4 p1, 0x1

    return p1
.end method

.method public deleteSurroundingText(II)Z
    .locals 0

    .line 2009
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2012
    :cond_0
    invoke-virtual {p0}, Lorg/libsdl/app/SDLInputConnection;->updateText()V

    const/4 p1, 0x1

    return p1
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 1

    .line 1963
    iget-object v0, p0, Lorg/libsdl/app/SDLInputConnection;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1980
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 1981
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeSoftReturnKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1986
    :cond_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 0

    .line 2000
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2003
    :cond_0
    invoke-virtual {p0}, Lorg/libsdl/app/SDLInputConnection;->updateText()V

    const/4 p1, 0x1

    return p1
.end method

.method protected updateText()V
    .locals 6

    .line 2017
    invoke-virtual {p0}, Lorg/libsdl/app/SDLInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2022
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2023
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lorg/libsdl/app/SDLInputConnection;->mCommittedText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 2028
    iget-object v4, p0, Lorg/libsdl/app/SDLInputConnection;->mCommittedText:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 2029
    invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 2032
    :cond_1
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_2
    :goto_1
    move v1, v3

    .line 2035
    :goto_2
    iget-object v4, p0, Lorg/libsdl/app/SDLInputConnection;->mCommittedText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 2036
    iget-object v4, p0, Lorg/libsdl/app/SDLInputConnection;->mCommittedText:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    const/16 v5, 0x8

    .line 2037
    invoke-static {v5}, Lorg/libsdl/app/SDLInputConnection;->nativeGenerateScancodeForUnichar(C)V

    .line 2038
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_2

    .line 2041
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v3, v1, :cond_7

    .line 2042
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move v3, v2

    .line 2043
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 2044
    invoke-virtual {v1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    .line 2046
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeSoftReturnKey()Z

    move-result v5

    if-eqz v5, :cond_4

    return-void

    :cond_4
    const/16 v5, 0x80

    if-ge v4, v5, :cond_5

    int-to-char v5, v4

    .line 2052
    invoke-static {v5}, Lorg/libsdl/app/SDLInputConnection;->nativeGenerateScancodeForUnichar(C)V

    .line 2054
    :cond_5
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_3

    .line 2056
    :cond_6
    invoke-static {v1, v2}, Lorg/libsdl/app/SDLInputConnection;->nativeCommitText(Ljava/lang/String;I)V

    .line 2058
    :cond_7
    iput-object v0, p0, Lorg/libsdl/app/SDLInputConnection;->mCommittedText:Ljava/lang/String;

    return-void
.end method
