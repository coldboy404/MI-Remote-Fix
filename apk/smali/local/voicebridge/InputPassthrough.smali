.class public final Llocal/voicebridge/InputPassthrough;
.super Ljava/lang/Object;
.source "InputPassthrough.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llocal/voicebridge/InputPassthrough$Press;,
        Llocal/voicebridge/InputPassthrough$Candidate;
    }
.end annotation


# static fields
.field private static final presses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Llocal/voicebridge/InputPassthrough$Press;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Llocal/voicebridge/InputPassthrough;->presses:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Llocal/voicebridge/InputPassthrough;->presses:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private static findFocused(Landroid/view/accessibility/AccessibilityNodeInfo;I[I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 190
    if-eqz p0, :cond_0

    const/16 v0, 0x14

    if-gt p1, v0, :cond_0

    aget v0, p2, v1

    add-int/lit8 v0, v0, -0x1

    aput v0, p2, v1

    if-gez v0, :cond_1

    :cond_0
    move-object v0, v3

    .line 200
    :goto_0
    return-object v0

    .line 191
    :cond_1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 192
    :goto_1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_5

    aget v2, p2, v1

    if-lez v2, :cond_5

    .line 193
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 194
    if-nez v4, :cond_3

    .line 192
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 196
    :cond_3
    add-int/lit8 v2, p1, 0x1

    :try_start_0
    invoke-static {v4, v2, p2}, Llocal/voicebridge/InputPassthrough;->findFocused(Landroid/view/accessibility/AccessibilityNodeInfo;I[I)Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 197
    if-eqz v2, :cond_4

    .line 198
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    move-object v0, v2

    .line 197
    goto :goto_0

    .line 198
    :cond_4
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    throw v0

    :cond_5
    move-object v0, v3

    .line 200
    goto :goto_0
.end method

.method private static findVertical(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Rect;II[ILlocal/voicebridge/InputPassthrough$Candidate;)V
    .locals 9

    .prologue
    const/16 v5, 0x82

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 137
    if-eqz p0, :cond_0

    const/16 v0, 0x14

    if-gt p4, v0, :cond_0

    aget v0, p5, v7

    add-int/lit8 v0, v0, -0x1

    aput v0, p5, v7

    if-ltz v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    :cond_0
    return-void

    .line 138
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 141
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 142
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 144
    invoke-virtual {p0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 145
    if-ne p3, v5, :cond_5

    iget v0, v2, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v3, :cond_4

    move v0, v1

    .line 146
    :goto_0
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->left:I

    if-le v3, v4, :cond_7

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    if-ge v3, v4, :cond_7

    .line 147
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 148
    if-ne p3, v5, :cond_8

    iget v0, v2, Landroid/graphics/Rect;->top:I

    int-to-long v0, v0

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    int-to-long v4, v3

    sub-long/2addr v0, v4

    .line 149
    :goto_2
    const-wide/32 v4, 0x186a0

    mul-long/2addr v0, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 150
    iget-wide v2, p6, Llocal/voicebridge/InputPassthrough$Candidate;->score:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 151
    iget-object v2, p6, Llocal/voicebridge/InputPassthrough$Candidate;->node:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v2, :cond_2

    iget-object v2, p6, Llocal/voicebridge/InputPassthrough$Candidate;->node:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 152
    :cond_2
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    iput-object v2, p6, Llocal/voicebridge/InputPassthrough$Candidate;->node:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 153
    iput-wide v0, p6, Llocal/voicebridge/InputPassthrough$Candidate;->score:J

    :cond_3
    move v8, v7

    .line 157
    :goto_3
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    if-ge v8, v0, :cond_0

    aget v0, p5, v7

    if-lez v0, :cond_0

    .line 158
    invoke-virtual {p0, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 159
    if-nez v0, :cond_9

    .line 157
    :goto_4
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_3

    :cond_4
    move v0, v7

    .line 145
    goto :goto_0

    :cond_5
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-gt v0, v3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v7

    goto :goto_0

    :cond_7
    move v1, v7

    .line 146
    goto :goto_1

    .line 148
    :cond_8
    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-long v0, v0

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    int-to-long v4, v3

    sub-long/2addr v0, v4

    goto :goto_2

    .line 160
    :cond_9
    add-int/lit8 v4, p4, 0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    move-object v6, p6

    :try_start_0
    invoke-static/range {v0 .. v6}, Llocal/voicebridge/InputPassthrough;->findVertical(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Rect;II[ILlocal/voicebridge/InputPassthrough$Candidate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_4

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    throw v1
.end method

.method private static focusedInput(Landroid/accessibilityservice/AccessibilityService;)Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 165
    .line 168
    :try_start_0
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 169
    if-nez v4, :cond_2

    .line 184
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 185
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    :cond_1
    move v0, v1

    .line 187
    :goto_0
    return v0

    .line 170
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 171
    if-nez v0, :cond_3

    const/4 v3, 0x0

    const/4 v5, 0x1

    :try_start_2
    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x80

    aput v7, v5, v6

    invoke-static {v4, v3, v5}, Llocal/voicebridge/InputPassthrough;->findFocused(Landroid/view/accessibility/AccessibilityNodeInfo;I[I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    :cond_3
    move v5, v1

    .line 172
    :goto_1
    if-eqz v0, :cond_9

    const/4 v3, 0x5

    if-ge v5, v3, :cond_9

    .line 173
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v3

    .line 174
    if-nez v3, :cond_7

    const-string v3, ""

    .line 175
    :goto_2
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "EditText"

    .line 176
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "TextInput"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 177
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v3

    const v6, 0x200000

    and-int/2addr v3, v6

    if-eqz v3, :cond_8

    .line 184
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 185
    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    :cond_6
    move v0, v2

    .line 177
    goto :goto_0

    .line 174
    :cond_7
    :try_start_3
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 178
    :cond_8
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    .line 179
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 172
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v0, v6

    goto :goto_1

    .line 184
    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 185
    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    :cond_b
    :goto_3
    move v0, v1

    .line 187
    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    move-object v0, v3

    move-object v2, v3

    .line 184
    :goto_4
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 185
    :cond_c
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_3

    .line 184
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    move-object v4, v3

    :goto_5
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 185
    :cond_d
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 186
    :cond_e
    throw v1

    .line 184
    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v2, v0

    goto :goto_5

    .line 181
    :catch_1
    move-exception v0

    move-object v0, v3

    move-object v2, v4

    goto :goto_4

    :catch_2
    move-exception v2

    move-object v2, v4

    goto :goto_4
.end method

.method private static inputMethodVisible(Landroid/accessibilityservice/AccessibilityService;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 63
    const/4 v0, 0x0

    .line 65
    :try_start_0
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getWindows()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 66
    if-nez v2, :cond_2

    .line 81
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 82
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 79
    :goto_1
    return v0

    .line 67
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 68
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 69
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 70
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 71
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 72
    const-string v0, "RemoteInput"

    const-string v3, "IME visible: native vertical navigation"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 82
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    goto :goto_2

    :cond_5
    move v0, v1

    .line 73
    goto :goto_1

    .line 76
    :cond_6
    const/4 v1, 0x0

    .line 81
    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 82
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    goto :goto_3

    :cond_8
    move v0, v1

    .line 76
    goto :goto_1

    .line 77
    :catch_0
    move-exception v2

    .line 78
    :goto_4
    :try_start_2
    const-string v2, "RemoteInput"

    const-string v3, "IME window state unavailable; native navigation"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 81
    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 82
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    goto :goto_5

    :cond_a
    move v0, v1

    .line 79
    goto/16 :goto_1

    .line 81
    :catchall_0
    move-exception v1

    move-object v2, v0

    :goto_6
    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 82
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    goto :goto_7

    .line 84
    :cond_c
    throw v1

    .line 81
    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v2, v0

    goto :goto_6

    .line 77
    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_4
.end method

.method private static moveFocus(Landroid/accessibilityservice/AccessibilityService;I)Z
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 87
    invoke-static {p0}, Llocal/voicebridge/InputPassthrough;->inputMethodVisible(Landroid/accessibilityservice/AccessibilityService;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    .line 124
    :goto_0
    return v0

    .line 92
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 93
    if-nez v0, :cond_4

    .line 126
    if-eqz v8, :cond_1

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 127
    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 128
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    :cond_3
    move v0, v7

    .line 93
    goto :goto_0

    .line 94
    :cond_4
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v4

    .line 95
    if-nez v4, :cond_23

    const/4 v1, 0x0

    const/4 v3, 0x1

    :try_start_2
    new-array v3, v3, [I

    const/4 v5, 0x0

    const/16 v6, 0x80

    aput v6, v3, v5

    invoke-static {v0, v1, v3}, Llocal/voicebridge/InputPassthrough;->findFocused(Landroid/view/accessibility/AccessibilityNodeInfo;I[I)Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v1

    .line 96
    :goto_1
    if-nez v1, :cond_8

    .line 126
    if-eqz v8, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 127
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 128
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    :cond_7
    move v0, v7

    .line 96
    goto :goto_0

    .line 97
    :cond_8
    :try_start_3
    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->focusSearch(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-result-object v3

    .line 98
    if-eqz v3, :cond_c

    :try_start_4
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 99
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v4

    .line 100
    const-string v5, "RemoteInput"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "focusSearch direction="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " moved="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 101
    if-eqz v4, :cond_c

    .line 126
    if-eqz v3, :cond_9

    if-eq v3, v1, :cond_9

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 127
    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 128
    :cond_a
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    :cond_b
    move v0, v2

    .line 101
    goto/16 :goto_0

    .line 103
    :cond_c
    if-eqz v3, :cond_d

    if-eq v3, v1, :cond_d

    :try_start_5
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 106
    :cond_d
    :try_start_6
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-result v3

    if-eq v2, v3, :cond_12

    .line 126
    :cond_e
    if-eqz v8, :cond_f

    if-eqz v1, :cond_f

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 127
    :cond_f
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 128
    :cond_10
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    :cond_11
    move v0, v7

    .line 106
    goto/16 :goto_0

    .line 107
    :cond_12
    :try_start_7
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 108
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 109
    new-instance v6, Llocal/voicebridge/InputPassthrough$Candidate;

    const/4 v3, 0x0

    invoke-direct {v6, v3}, Llocal/voicebridge/InputPassthrough$Candidate;-><init>(Llocal/voicebridge/InputPassthrough$1;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 111
    const/4 v4, 0x0

    const/4 v3, 0x1

    :try_start_8
    new-array v5, v3, [I

    const/4 v3, 0x0

    const/16 v9, 0x80

    aput v9, v5, v3

    move v3, p1

    invoke-static/range {v0 .. v6}, Llocal/voicebridge/InputPassthrough;->findVertical(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Rect;II[ILlocal/voicebridge/InputPassthrough$Candidate;)V

    .line 112
    iget-object v2, v6, Llocal/voicebridge/InputPassthrough$Candidate;->node:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v2, :cond_17

    .line 113
    const-string v2, "RemoteInput"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vertical fallback no target direction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 120
    :try_start_9
    iget-object v2, v6, Llocal/voicebridge/InputPassthrough$Candidate;->node:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v2, :cond_13

    iget-object v2, v6, Llocal/voicebridge/InputPassthrough$Candidate;->node:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 126
    :cond_13
    if-eqz v8, :cond_14

    if-eqz v1, :cond_14

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 127
    :cond_14
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 128
    :cond_15
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    :cond_16
    move v0, v7

    .line 114
    goto/16 :goto_0

    .line 116
    :cond_17
    :try_start_a
    iget-object v2, v6, Llocal/voicebridge/InputPassthrough$Candidate;->node:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v2

    .line 117
    const-string v3, "RemoteInput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vertical fallback direction="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " moved="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " target="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v6, Llocal/voicebridge/InputPassthrough$Candidate;->node:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 120
    :try_start_b
    iget-object v3, v6, Llocal/voicebridge/InputPassthrough$Candidate;->node:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v3, :cond_18

    iget-object v3, v6, Llocal/voicebridge/InputPassthrough$Candidate;->node:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 126
    :cond_18
    if-eqz v8, :cond_19

    if-eqz v1, :cond_19

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 127
    :cond_19
    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 128
    :cond_1a
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    :cond_1b
    move v0, v2

    .line 118
    goto/16 :goto_0

    .line 120
    :catchall_0
    move-exception v2

    :try_start_c
    iget-object v3, v6, Llocal/voicebridge/InputPassthrough$Candidate;->node:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v3, :cond_1c

    iget-object v3, v6, Llocal/voicebridge/InputPassthrough$Candidate;->node:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 121
    :cond_1c
    throw v2
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 122
    :catch_0
    move-exception v2

    move-object v3, v8

    move-object v4, v1

    move-object v5, v0

    .line 123
    :goto_2
    :try_start_d
    const-string v0, "RemoteInput"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "focusSearch failed "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 126
    if-eqz v3, :cond_1d

    if-eq v3, v4, :cond_1d

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 127
    :cond_1d
    if-eqz v4, :cond_1e

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 128
    :cond_1e
    if-eqz v5, :cond_1f

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    :cond_1f
    move v0, v7

    .line 124
    goto/16 :goto_0

    .line 126
    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v3, v8

    move-object v4, v8

    move-object v5, v8

    :goto_3
    if-eqz v3, :cond_20

    if-eq v3, v4, :cond_20

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 127
    :cond_20
    if-eqz v4, :cond_21

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 128
    :cond_21
    if-eqz v5, :cond_22

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 129
    :cond_22
    throw v2

    .line 126
    :catchall_2
    move-exception v1

    move-object v2, v1

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    goto :goto_3

    :catchall_3
    move-exception v1

    move-object v2, v1

    move-object v3, v8

    move-object v5, v0

    goto :goto_3

    :catchall_4
    move-exception v2

    move-object v3, v8

    move-object v4, v1

    move-object v5, v0

    goto :goto_3

    :catchall_5
    move-exception v2

    move-object v4, v1

    move-object v5, v0

    goto :goto_3

    :catchall_6
    move-exception v0

    move-object v2, v0

    goto :goto_3

    .line 122
    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v3, v8

    move-object v4, v8

    move-object v5, v8

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v2, v1

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v2, v1

    move-object v3, v8

    move-object v5, v0

    goto :goto_2

    :catch_4
    move-exception v2

    move-object v4, v1

    move-object v5, v0

    goto :goto_2

    :cond_23
    move-object v1, v4

    goto/16 :goto_1
.end method

.method public static removeDevice(I)V
    .locals 4

    .prologue
    .line 23
    sget-object v0, Llocal/voicebridge/InputPassthrough;->presses:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 24
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/16 v0, 0x20

    shr-long/2addr v2, v0

    long-to-int v0, v2

    if-ne v0, p0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 25
    :cond_1
    return-void
.end method

.method public static route(Landroid/accessibilityservice/AccessibilityService;Landroid/view/KeyEvent;)I
    .locals 13

    .prologue
    const/16 v12, 0x13

    const/4 v3, 0x0

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v4, 0x1

    .line 28
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 29
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    .line 30
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getVendorId()I

    move-result v6

    const/16 v7, 0x2717

    if-ne v6, v7, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getProductId()I

    move-result v0

    const/16 v6, 0x32b8

    if-ne v0, v6, :cond_0

    if-eq v5, v12, :cond_1

    const/16 v0, 0x14

    if-eq v5, v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v2

    .line 32
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    int-to-long v6, v0

    const/16 v0, 0x20

    shl-long/2addr v6, v0

    int-to-long v8, v5

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    or-long/2addr v6, v8

    .line 33
    sget-object v0, Llocal/voicebridge/InputPassthrough;->presses:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llocal/voicebridge/InputPassthrough$Press;

    .line 34
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    .line 35
    if-nez v8, :cond_b

    .line 36
    if-eqz v0, :cond_2

    iget-wide v8, v0, Llocal/voicebridge/InputPassthrough$Press;->downTime:J

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_6

    .line 37
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p0}, Llocal/voicebridge/InputPassthrough;->focusedInput(Landroid/accessibilityservice/AccessibilityService;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 38
    :goto_1
    invoke-static {p0}, Llocal/voicebridge/InputPassthrough;->inputMethodVisible(Landroid/accessibilityservice/AccessibilityService;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v3

    .line 39
    :cond_3
    new-instance v2, Llocal/voicebridge/InputPassthrough$Press;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v8

    invoke-direct {v2, v8, v9, v0}, Llocal/voicebridge/InputPassthrough$Press;-><init>(JI)V

    .line 40
    sget-object v8, Llocal/voicebridge/InputPassthrough;->presses:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    const/16 v9, 0x20

    if-lt v8, v9, :cond_4

    sget-object v8, Llocal/voicebridge/InputPassthrough;->presses:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 41
    :cond_4
    sget-object v8, Llocal/voicebridge/InputPassthrough;->presses:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    if-ne v0, v1, :cond_5

    const-string v0, "RemoteInput"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "focused input vertical press device="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v0, v2

    .line 44
    :cond_6
    iget v2, v0, Llocal/voicebridge/InputPassthrough$Press;->route:I

    if-ne v2, v1, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_8

    .line 45
    if-ne v5, v12, :cond_a

    const/16 v1, 0x21

    :goto_2
    invoke-static {p0, v1}, Llocal/voicebridge/InputPassthrough;->moveFocus(Landroid/accessibilityservice/AccessibilityService;I)Z

    move-result v1

    if-eqz v1, :cond_7

    move v3, v4

    :cond_7
    iput v3, v0, Llocal/voicebridge/InputPassthrough$Press;->route:I

    .line 47
    :cond_8
    iget v2, v0, Llocal/voicebridge/InputPassthrough$Press;->route:I

    goto/16 :goto_0

    :cond_9
    move v0, v2

    .line 37
    goto :goto_1

    .line 45
    :cond_a
    const/16 v1, 0x82

    goto :goto_2

    .line 49
    :cond_b
    if-ne v8, v4, :cond_0

    .line 50
    if-eqz v0, :cond_d

    iget-wide v8, v0, Llocal/voicebridge/InputPassthrough$Press;->downTime:J

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v10

    cmp-long v1, v8, v10

    if-nez v1, :cond_d

    .line 51
    sget-object v1, Llocal/voicebridge/InputPassthrough;->presses:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget v1, v0, Llocal/voicebridge/InputPassthrough$Press;->route:I

    if-eq v1, v4, :cond_c

    iget v1, v0, Llocal/voicebridge/InputPassthrough$Press;->route:I

    if-nez v1, :cond_d

    .line 53
    :cond_c
    const-string v1, "RemoteInput"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "focused input release device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " route="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Llocal/voicebridge/InputPassthrough$Press;->route:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget v2, v0, Llocal/voicebridge/InputPassthrough$Press;->route:I

    goto/16 :goto_0

    .line 58
    :cond_d
    if-eqz v0, :cond_0

    iget v1, v0, Llocal/voicebridge/InputPassthrough$Press;->route:I

    if-eq v1, v4, :cond_e

    iget v1, v0, Llocal/voicebridge/InputPassthrough$Press;->route:I

    if-nez v1, :cond_0

    :cond_e
    iget v2, v0, Llocal/voicebridge/InputPassthrough$Press;->route:I

    goto/16 :goto_0
.end method
