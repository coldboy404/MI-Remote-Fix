.class public Llocal/voicebridge/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field private static final BG:I

.field private static final CARD:I = -0x1

.field private static final INITIAL_DEFAULT:I = 0x1f4

.field private static final INITIAL_MAX:I = 0x5dc

.field private static final INITIAL_MIN:I = 0x190

.field private static final MUTED:I

.field private static final PREF:Ljava/lang/String; = "voicebridge"

.field private static final REPEAT_DEFAULT:I = 0xa0

.field private static final REPEAT_MAX:I = 0x320

.field private static final REPEAT_MIN:I = 0x3c

.field private static final TEXT:I


# instance fields
.field private initial:Landroid/widget/SeekBar;

.field private initialLoad:Z

.field private initialValue:Landroid/widget/TextView;

.field private keys:Landroid/widget/Switch;

.field private prefs:Landroid/content/SharedPreferences;

.field private repeat:Landroid/widget/SeekBar;

.field private repeatValue:Landroid/widget/TextView;

.field private status:Landroid/widget/TextView;

.field private updatingSliders:Z

.field private voice:Landroid/widget/Switch;

.field private wait:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetinitialValue(Llocal/voicebridge/MainActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Llocal/voicebridge/MainActivity;->initialValue:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprefs(Llocal/voicebridge/MainActivity;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Llocal/voicebridge/MainActivity;->prefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrepeatValue(Llocal/voicebridge/MainActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Llocal/voicebridge/MainActivity;->repeatValue:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetupdatingSliders(Llocal/voicebridge/MainActivity;)Z
    .locals 0

    iget-boolean p0, p0, Llocal/voicebridge/MainActivity;->updatingSliders:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwait(Llocal/voicebridge/MainActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Llocal/voicebridge/MainActivity;->wait:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mbuttonAccentBackground(Llocal/voicebridge/MainActivity;Z)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    invoke-direct {p0, p1}, Llocal/voicebridge/MainActivity;->buttonAccentBackground(Z)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mbuttonBackground(Llocal/voicebridge/MainActivity;Z)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    invoke-direct {p0, p1}, Llocal/voicebridge/MainActivity;->buttonBackground(Z)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msave(Llocal/voicebridge/MainActivity;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Llocal/voicebridge/MainActivity;->save(Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveCurrentSettings(Llocal/voicebridge/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Llocal/voicebridge/MainActivity;->saveCurrentSettings()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendConfig(Llocal/voicebridge/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Llocal/voicebridge/MainActivity;->sendConfig()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetValues(Llocal/voicebridge/MainActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Llocal/voicebridge/MainActivity;->setValues(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstepValue(Llocal/voicebridge/MainActivity;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Llocal/voicebridge/MainActivity;->stepValue(ZI)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xf8

    const/16 v1, 0xfa

    const/16 v2, 0xf6

    .line 34
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Llocal/voicebridge/MainActivity;->BG:I

    const/16 v0, 0x2d

    const/16 v1, 0x37

    const/16 v2, 0x23

    .line 36
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Llocal/voicebridge/MainActivity;->TEXT:I

    const/16 v0, 0x6c

    const/16 v1, 0x78

    const/16 v2, 0x5f

    .line 37
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Llocal/voicebridge/MainActivity;->MUTED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Llocal/voicebridge/MainActivity;->initialLoad:Z

    return-void
.end method

.method private addPreset(Landroid/widget/LinearLayout;Ljava/lang/String;II)V
    .locals 2

    .line 243
    invoke-direct {p0, p2}, Llocal/voicebridge/MainActivity;->button(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p2

    const/16 v0, 0x3c

    .line 244
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMinHeight(I)V

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v0, 0x0

    .line 246
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v0, 0x8

    const/high16 v1, 0x3f800000    # 1.0f

    .line 247
    invoke-direct {p0, v0, v1}, Llocal/voicebridge/MainActivity;->weightLp(IF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    new-instance p1, Llocal/voicebridge/MainActivity$8;

    invoke-direct {p1, p0, p3, p4}, Llocal/voicebridge/MainActivity$8;-><init>(Llocal/voicebridge/MainActivity;II)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private addSliderRow(Landroid/widget/LinearLayout;Landroid/widget/SeekBar;Z)V
    .locals 9

    .line 271
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 272
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 273
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v2, -0x1

    const/16 v3, 0x3c

    .line 274
    invoke-direct {p0, v2, v3}, Llocal/voicebridge/MainActivity;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    const-string p1, "-10"

    invoke-direct {p0, p1}, Llocal/voicebridge/MainActivity;->button(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p1

    const/high16 v2, 0x41700000    # 15.0f

    .line 276
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 277
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 v4, 0x36

    .line 278
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 279
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v5, 0x0

    .line 280
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v6, 0x64

    .line 281
    invoke-direct {p0, v6, v4}, Llocal/voicebridge/MainActivity;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, p1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v7, v1, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    const-string v3, "+10"

    invoke-direct {p0, v3}, Llocal/voicebridge/MainActivity;->button(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    .line 284
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 285
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 286
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 287
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 288
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 289
    invoke-direct {p0, v6, v4}, Llocal/voicebridge/MainActivity;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {v0, v3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    new-instance p2, Llocal/voicebridge/MainActivity$10;

    invoke-direct {p2, p0, p3}, Llocal/voicebridge/MainActivity$10;-><init>(Llocal/voicebridge/MainActivity;Z)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    new-instance p1, Llocal/voicebridge/MainActivity$11;

    invoke-direct {p1, p0, p3}, Llocal/voicebridge/MainActivity$11;-><init>(Llocal/voicebridge/MainActivity;Z)V

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private buildUi()V
    .locals 16

    move-object/from16 v0, p0

    .line 82
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 83
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 84
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 85
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x2a

    const/16 v5, 0x1c

    .line 86
    invoke-virtual {v3, v4, v5, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 87
    sget v4, Llocal/voicebridge/MainActivity;->BG:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 88
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    sget v4, Llocal/voicebridge/MainActivity;->TEXT:I

    const-string v7, "\u9065\u63a7\u52a9\u624b"

    const/16 v8, 0x1a

    invoke-direct {v0, v7, v8, v4, v2}, Llocal/voicebridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v7

    const/16 v9, 0x58

    .line 91
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 92
    invoke-direct {v0, v5, v6}, Llocal/voicebridge/MainActivity;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    const/4 v10, 0x4

    .line 93
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 94
    invoke-virtual {v3, v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    sget v7, Llocal/voicebridge/MainActivity;->MUTED:I

    const-string v9, "\u65b0\u9065\u63a7\u5668\u65b9\u5411\u952e\u589e\u5f3a"

    const/16 v11, 0xf

    const/4 v12, 0x0

    invoke-direct {v0, v9, v11, v7, v12}, Llocal/voicebridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v9

    const/16 v11, 0x38

    .line 97
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 98
    invoke-direct {v0, v5, v6}, Llocal/voicebridge/MainActivity;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    .line 99
    iput v10, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 100
    invoke-virtual {v3, v9, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    const-string v9, "\u6b63\u5728\u8bfb\u53d6\u670d\u52a1\u72b6\u6001\u2026"

    const/16 v13, 0xe

    invoke-direct {v0, v9, v13, v7, v12}, Llocal/voicebridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v9

    iput-object v9, v0, Llocal/voicebridge/MainActivity;->status:Landroid/widget/TextView;

    const/16 v14, 0x34

    .line 103
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 104
    invoke-direct {v0, v5, v6}, Llocal/voicebridge/MainActivity;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    const/16 v14, 0xc

    .line 105
    iput v14, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 106
    iget-object v14, v0, Llocal/voicebridge/MainActivity;->status:Landroid/widget/TextView;

    invoke-virtual {v3, v14, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v14, 0x14

    .line 110
    invoke-virtual {v9, v8, v14, v8, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 111
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 112
    invoke-direct {v0, v5, v6}, Llocal/voicebridge/MainActivity;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v3, v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    new-instance v8, Landroid/widget/Switch;

    invoke-direct {v8, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Llocal/voicebridge/MainActivity;->keys:Landroid/widget/Switch;

    .line 115
    const-string v15, "\u957f\u6309\u65b9\u5411\u952e\u8fde\u53d1"

    invoke-virtual {v8, v15}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v8, v0, Llocal/voicebridge/MainActivity;->keys:Landroid/widget/Switch;

    const/high16 v15, 0x41900000    # 18.0f

    invoke-virtual {v8, v15}, Landroid/widget/Switch;->setTextSize(F)V

    .line 117
    iget-object v8, v0, Llocal/voicebridge/MainActivity;->keys:Landroid/widget/Switch;

    invoke-virtual {v8, v4}, Landroid/widget/Switch;->setTextColor(I)V

    .line 118
    iget-object v8, v0, Llocal/voicebridge/MainActivity;->keys:Landroid/widget/Switch;

    iget-object v10, v0, Llocal/voicebridge/MainActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v14, "keysEnabled"

    invoke-interface {v10, v14, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/Switch;->setChecked(Z)V

    .line 119
    iget-object v8, v0, Llocal/voicebridge/MainActivity;->keys:Landroid/widget/Switch;

    const/16 v10, 0x48

    invoke-virtual {v8, v10}, Landroid/widget/Switch;->setMinHeight(I)V

    .line 120
    iget-object v8, v0, Llocal/voicebridge/MainActivity;->keys:Landroid/widget/Switch;

    invoke-direct {v0, v5, v10}, Llocal/voicebridge/MainActivity;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v9, v8, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v8, v0, Llocal/voicebridge/MainActivity;->keys:Landroid/widget/Switch;

    new-instance v14, Llocal/voicebridge/MainActivity$1;

    invoke-direct {v14, v0}, Llocal/voicebridge/MainActivity$1;-><init>(Llocal/voicebridge/MainActivity;)V

    invoke-virtual {v8, v14}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 125
    const-string v8, "\u77ed\u6309\u53ea\u79fb\u52a8\u4e00\u6b21\uff1b\u957f\u6309\u8d85\u8fc7\u9996\u6b21\u89e6\u53d1\u65f6\u95f4\u540e\u624d\u4f1a\u8fde\u7eed\u79fb\u52a8"

    invoke-direct {v0, v8, v13, v7, v12}, Llocal/voicebridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v8

    const/16 v14, 0x10

    .line 126
    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v13, 0x2

    const/16 v14, 0x8

    .line 127
    invoke-virtual {v8, v12, v13, v12, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 128
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 129
    invoke-direct {v0, v5, v6}, Llocal/voicebridge/MainActivity;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v9, v8, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    new-instance v8, Landroid/widget/Switch;

    invoke-direct {v8, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Llocal/voicebridge/MainActivity;->voice:Landroid/widget/Switch;

    .line 132
    const-string v13, "Play \u5546\u5e97\u8bed\u97f3\u56de\u586b"

    invoke-virtual {v8, v13}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v8, v0, Llocal/voicebridge/MainActivity;->voice:Landroid/widget/Switch;

    invoke-virtual {v8, v15}, Landroid/widget/Switch;->setTextSize(F)V

    .line 134
    iget-object v8, v0, Llocal/voicebridge/MainActivity;->voice:Landroid/widget/Switch;

    invoke-virtual {v8, v4}, Landroid/widget/Switch;->setTextColor(I)V

    .line 135
    iget-object v8, v0, Llocal/voicebridge/MainActivity;->voice:Landroid/widget/Switch;

    iget-object v13, v0, Llocal/voicebridge/MainActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v15, "voiceEnabled"

    invoke-interface {v13, v15, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    invoke-virtual {v8, v13}, Landroid/widget/Switch;->setChecked(Z)V

    .line 136
    iget-object v8, v0, Llocal/voicebridge/MainActivity;->voice:Landroid/widget/Switch;

    invoke-virtual {v8, v10}, Landroid/widget/Switch;->setMinHeight(I)V

    .line 137
    iget-object v8, v0, Llocal/voicebridge/MainActivity;->voice:Landroid/widget/Switch;

    invoke-direct {v0, v5, v10}, Llocal/voicebridge/MainActivity;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v9, v8, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    iget-object v8, v0, Llocal/voicebridge/MainActivity;->voice:Landroid/widget/Switch;

    new-instance v13, Llocal/voicebridge/MainActivity$2;

    invoke-direct {v13, v0}, Llocal/voicebridge/MainActivity$2;-><init>(Llocal/voicebridge/MainActivity;)V

    invoke-virtual {v8, v13}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 142
    const-string v8, "\u957f\u6309\u91cd\u590d\u901f\u5ea6"

    const/16 v13, 0x14

    invoke-direct {v0, v8, v13, v4, v2}, Llocal/voicebridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 143
    invoke-virtual {v4, v12, v12, v12, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 144
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 145
    invoke-direct {v0, v5, v6}, Llocal/voicebridge/MainActivity;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v9, v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v8, 0x3c

    .line 149
    invoke-direct {v0, v5, v8}, Llocal/voicebridge/MainActivity;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v9, v4, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v13, 0x2bc

    const/16 v15, 0xb4

    .line 150
    const-string v10, "\u6162"

    invoke-direct {v0, v4, v10, v13, v15}, Llocal/voicebridge/MainActivity;->addPreset(Landroid/widget/LinearLayout;Ljava/lang/String;II)V

    const/16 v10, 0x1f4

    const/16 v13, 0xa0

    .line 151
    const-string v15, "\u6807\u51c6"

    invoke-direct {v0, v4, v15, v10, v13}, Llocal/voicebridge/MainActivity;->addPreset(Landroid/widget/LinearLayout;Ljava/lang/String;II)V

    const/16 v10, 0x50

    .line 152
    const-string v13, "\u5feb"

    const/16 v15, 0x190

    invoke-direct {v0, v4, v13, v15, v10}, Llocal/voicebridge/MainActivity;->addPreset(Landroid/widget/LinearLayout;Ljava/lang/String;II)V

    .line 154
    const-string v4, "\u957f\u6309\u89e6\u53d1\u524d\uff1a500 ms"

    const/16 v10, 0x10

    invoke-direct {v0, v4, v10, v7, v12}, Llocal/voicebridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, v0, Llocal/voicebridge/MainActivity;->initialValue:Landroid/widget/TextView;

    .line 155
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 156
    iget-object v4, v0, Llocal/voicebridge/MainActivity;->initialValue:Landroid/widget/TextView;

    invoke-direct {v0, v5, v6}, Llocal/voicebridge/MainActivity;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x5dc

    .line 157
    invoke-direct {v0}, Llocal/voicebridge/MainActivity;->readInitialDelay()I

    move-result v10

    invoke-direct {v0, v15, v4, v10}, Llocal/voicebridge/MainActivity;->slider(III)Landroid/widget/SeekBar;

    move-result-object v4

    iput-object v4, v0, Llocal/voicebridge/MainActivity;->initial:Landroid/widget/SeekBar;

    .line 158
    invoke-direct {v0, v9, v4, v2}, Llocal/voicebridge/MainActivity;->addSliderRow(Landroid/widget/LinearLayout;Landroid/widget/SeekBar;Z)V

    .line 159
    iget-object v4, v0, Llocal/voicebridge/MainActivity;->initial:Landroid/widget/SeekBar;

    invoke-direct {v0, v2}, Llocal/voicebridge/MainActivity;->sliderListener(Z)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 161
    const-string v4, "\u957f\u6309\u540e\u95f4\u9694\uff1a160 ms"

    const/16 v10, 0x10

    invoke-direct {v0, v4, v10, v7, v12}, Llocal/voicebridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, v0, Llocal/voicebridge/MainActivity;->repeatValue:Landroid/widget/TextView;

    .line 162
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 163
    iget-object v4, v0, Llocal/voicebridge/MainActivity;->repeatValue:Landroid/widget/TextView;

    invoke-direct {v0, v5, v6}, Llocal/voicebridge/MainActivity;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x320

    .line 164
    invoke-direct {v0}, Llocal/voicebridge/MainActivity;->readRepeatDelay()I

    move-result v10

    invoke-direct {v0, v8, v4, v10}, Llocal/voicebridge/MainActivity;->slider(III)Landroid/widget/SeekBar;

    move-result-object v4

    iput-object v4, v0, Llocal/voicebridge/MainActivity;->repeat:Landroid/widget/SeekBar;

    .line 165
    invoke-direct {v0, v9, v4, v12}, Llocal/voicebridge/MainActivity;->addSliderRow(Landroid/widget/LinearLayout;Landroid/widget/SeekBar;Z)V

    .line 166
    iget-object v4, v0, Llocal/voicebridge/MainActivity;->repeat:Landroid/widget/SeekBar;

    invoke-direct {v0, v12}, Llocal/voicebridge/MainActivity;->sliderListener(Z)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 168
    const-string v4, "\u5de6\u53f3\u952e\u6bcf\u6b21\u8c03\u6574 10 ms"

    const/16 v8, 0xe

    invoke-direct {v0, v4, v8, v7, v12}, Llocal/voicebridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v4

    const/16 v10, 0x10

    .line 169
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v7, 0x6

    .line 170
    invoke-virtual {v4, v12, v7, v12, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 171
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 172
    invoke-direct {v0, v5, v6}, Llocal/voicebridge/MainActivity;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v9, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 175
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 176
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 177
    invoke-direct {v0, v5, v6}, Llocal/voicebridge/MainActivity;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 178
    iput v14, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 179
    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    const-string v2, "\u4fdd\u5b58\u8bbe\u7f6e"

    invoke-direct {v0, v2}, Llocal/voicebridge/MainActivity;->button(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    .line 182
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    invoke-direct {v0, v12}, Llocal/voicebridge/MainActivity;->buttonAccentBackground(Z)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v3, 0x48

    .line 184
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 185
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v6, 0x0

    .line 186
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 187
    new-instance v7, Llocal/voicebridge/MainActivity$3;

    invoke-direct {v7, v0}, Llocal/voicebridge/MainActivity$3;-><init>(Llocal/voicebridge/MainActivity;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 192
    invoke-direct {v0, v5, v3}, Llocal/voicebridge/MainActivity;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    new-instance v7, Llocal/voicebridge/MainActivity$4;

    invoke-direct {v7, v0}, Llocal/voicebridge/MainActivity$4;-><init>(Llocal/voicebridge/MainActivity;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    const-string v2, "\u6253\u5f00\u65e0\u969c\u788d\u8bbe\u7f6e"

    invoke-direct {v0, v2}, Llocal/voicebridge/MainActivity;->button(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    .line 201
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 202
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 203
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 204
    invoke-direct {v0, v5, v3}, Llocal/voicebridge/MainActivity;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    new-instance v7, Llocal/voicebridge/MainActivity$5;

    invoke-direct {v7, v0}, Llocal/voicebridge/MainActivity$5;-><init>(Llocal/voicebridge/MainActivity;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    const-string v2, "\u6062\u590d\u9ed8\u8ba4"

    invoke-direct {v0, v2}, Llocal/voicebridge/MainActivity;->button(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    .line 210
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 211
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 212
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 213
    invoke-direct {v0, v5, v3}, Llocal/voicebridge/MainActivity;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    new-instance v7, Llocal/voicebridge/MainActivity$6;

    invoke-direct {v7, v0}, Llocal/voicebridge/MainActivity$6;-><init>(Llocal/voicebridge/MainActivity;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    const-string v2, "\u8bed\u97f3\u7b49\u5f85\uff1a3 \u79d2"

    invoke-direct {v0, v2}, Llocal/voicebridge/MainActivity;->button(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v0, Llocal/voicebridge/MainActivity;->wait:Landroid/widget/TextView;

    .line 219
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 220
    iget-object v2, v0, Llocal/voicebridge/MainActivity;->wait:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 221
    iget-object v2, v0, Llocal/voicebridge/MainActivity;->wait:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 222
    invoke-direct {v0, v5, v3}, Llocal/voicebridge/MainActivity;->lp(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    const/4 v3, 0x4

    .line 223
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 224
    iget-object v3, v0, Llocal/voicebridge/MainActivity;->wait:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    iget-object v2, v0, Llocal/voicebridge/MainActivity;->wait:Landroid/widget/TextView;

    new-instance v3, Llocal/voicebridge/MainActivity$7;

    invoke-direct {v3, v0}, Llocal/voicebridge/MainActivity$7;-><init>(Llocal/voicebridge/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v2, v0, Llocal/voicebridge/MainActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "voiceWait"

    const-wide/16 v4, 0xbb8

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 235
    iget-object v4, v0, Llocal/voicebridge/MainActivity;->wait:Landroid/widget/TextView;

    const-wide/16 v5, 0x3e8

    div-long/2addr v2, v5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u8bed\u97f3\u7b49\u5f85\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u79d2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    invoke-virtual {v0, v1}, Llocal/voicebridge/MainActivity;->setContentView(Landroid/view/View;)V

    .line 238
    invoke-direct {v0}, Llocal/voicebridge/MainActivity;->updateLabels()V

    .line 239
    invoke-direct {v0}, Llocal/voicebridge/MainActivity;->updateStatus()V

    return-void
.end method

.method private button(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    .line 432
    sget v0, Llocal/voicebridge/MainActivity;->TEXT:I

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v0, v2}, Llocal/voicebridge/MainActivity;->text(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x11

    .line 433
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 434
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 435
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 436
    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 437
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 438
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v0, 0x0

    .line 439
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 440
    invoke-direct {p0, v1}, Llocal/voicebridge/MainActivity;->buttonBackground(Z)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 441
    new-instance v0, Llocal/voicebridge/MainActivity$13;

    invoke-direct {v0, p0}, Llocal/voicebridge/MainActivity$13;-><init>(Llocal/voicebridge/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-object p1
.end method

.method private buttonAccentBackground(Z)Landroid/graphics/drawable/GradientDrawable;
    .locals 3

    .line 458
    new-instance p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 v1, 0x70

    const/16 v2, 0x67

    goto :goto_0

    :cond_0
    const/16 v1, 0x89

    const/16 v2, 0x7b

    .line 459
    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    if-eqz p1, :cond_1

    const/16 p1, 0x4a

    const/16 v1, 0x44

    .line 460
    invoke-static {v0, p1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    const/16 p1, 0x75

    const/16 v1, 0x69

    invoke-static {v0, p1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    const/4 v0, 0x2

    :goto_1
    invoke-virtual {p0, v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/high16 p1, 0x41000000    # 8.0f

    .line 461
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object p0
.end method

.method private buttonBackground(Z)Landroid/graphics/drawable/GradientDrawable;
    .locals 3

    .line 450
    new-instance p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    if-eqz p1, :cond_0

    const/16 v0, 0xef

    const/16 v1, 0xe9

    const/16 v2, 0xd6

    .line 451
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    if-eqz p1, :cond_1

    const/16 p1, 0x89

    const/16 v0, 0x7b

    const/4 v1, 0x0

    .line 452
    invoke-static {v1, p1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    const/16 p1, 0xda

    const/16 v0, 0xe0

    const/16 v1, 0xd2

    invoke-static {v1, p1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    const/4 v0, 0x2

    :goto_1
    invoke-virtual {p0, v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/high16 p1, 0x41000000    # 8.0f

    .line 453
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object p0
.end method

.method private lp(II)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 465
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method private readInitialDelay()I
    .locals 3

    .line 385
    iget-object p0, p0, Llocal/voicebridge/MainActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v0, "initialDelay"

    const-wide/16 v1, 0x1f4

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int p0, v0

    const/16 v0, 0x5dc

    .line 387
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/16 v0, 0x190

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private readRepeatDelay()I
    .locals 3

    .line 392
    iget-object p0, p0, Llocal/voicebridge/MainActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v0, "repeatDelay"

    const-wide/16 v1, 0xa0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int p0, v0

    const/16 v0, 0x320

    .line 393
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/16 v0, 0x3c

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private save(Ljava/lang/String;Z)V
    .locals 1

    .line 354
    iget-object v0, p0, Llocal/voicebridge/MainActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 355
    invoke-direct {p0}, Llocal/voicebridge/MainActivity;->sendConfig()V

    return-void
.end method

.method private saveCurrentSettings()V
    .locals 4

    .line 359
    iget-object v0, p0, Llocal/voicebridge/MainActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 360
    iget-object v1, p0, Llocal/voicebridge/MainActivity;->keys:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    const-string v2, "keysEnabled"

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 361
    :cond_0
    iget-object v1, p0, Llocal/voicebridge/MainActivity;->voice:Landroid/widget/Switch;

    if-eqz v1, :cond_1

    const-string v2, "voiceEnabled"

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 362
    :cond_1
    iget-object v1, p0, Llocal/voicebridge/MainActivity;->initial:Landroid/widget/SeekBar;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit16 v1, v1, 0x190

    int-to-long v1, v1

    const-string v3, "initialDelay"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 363
    :cond_2
    iget-object v1, p0, Llocal/voicebridge/MainActivity;->repeat:Landroid/widget/SeekBar;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x3c

    int-to-long v1, v1

    const-string v3, "repeatDelay"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 364
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 365
    invoke-direct {p0}, Llocal/voicebridge/MainActivity;->sendConfig()V

    return-void
.end method

.method private sendConfig()V
    .locals 5

    .line 370
    const-string v0, "voiceWait"

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "local.voicebridge.CONFIG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0}, Llocal/voicebridge/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    iget-object v2, p0, Llocal/voicebridge/MainActivity;->keys:Landroid/widget/Switch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    const-string v4, "keysEnabled"

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Llocal/voicebridge/MainActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :goto_0
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 373
    iget-object v2, p0, Llocal/voicebridge/MainActivity;->voice:Landroid/widget/Switch;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "voiceEnabled"

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Llocal/voicebridge/MainActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :goto_1
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 374
    const-string v2, "initialDelay"

    iget-object v3, p0, Llocal/voicebridge/MainActivity;->initial:Landroid/widget/SeekBar;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    add-int/lit16 v3, v3, 0x190

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Llocal/voicebridge/MainActivity;->readInitialDelay()I

    move-result v3

    :goto_2
    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 375
    const-string v2, "repeatDelay"

    iget-object v3, p0, Llocal/voicebridge/MainActivity;->repeat:Landroid/widget/SeekBar;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    add-int/lit8 v3, v3, 0x3c

    goto :goto_3

    :cond_3
    invoke-direct {p0}, Llocal/voicebridge/MainActivity;->readRepeatDelay()I

    move-result v3

    :goto_3
    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 376
    const-string v2, "deviceFilter"

    const-string v3, "xiaomi"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    iget-object v2, p0, Llocal/voicebridge/MainActivity;->prefs:Landroid/content/SharedPreferences;

    const-wide/16 v3, 0xbb8

    invoke-interface {v2, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 378
    invoke-static {}, Llocal/voicebridge/VoiceBridgeService;->get()Llocal/voicebridge/VoiceBridgeService;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 379
    invoke-virtual {v0, v1}, Llocal/voicebridge/VoiceBridgeService;->configure(Landroid/content/Intent;)V

    return-void

    .line 380
    :cond_4
    invoke-virtual {p0, v1}, Llocal/voicebridge/MainActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    return-void
.end method

.method private setValues(II)V
    .locals 2

    const/4 v0, 0x1

    .line 331
    iput-boolean v0, p0, Llocal/voicebridge/MainActivity;->updatingSliders:Z

    const/4 v0, 0x0

    .line 333
    :try_start_0
    iget-object v1, p0, Llocal/voicebridge/MainActivity;->initial:Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    add-int/lit16 p1, p1, -0x190

    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 334
    :cond_0
    iget-object p1, p0, Llocal/voicebridge/MainActivity;->repeat:Landroid/widget/SeekBar;

    if-eqz p1, :cond_1

    add-int/lit8 p2, p2, -0x3c

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    :cond_1
    iput-boolean v0, p0, Llocal/voicebridge/MainActivity;->updatingSliders:Z

    .line 338
    invoke-direct {p0}, Llocal/voicebridge/MainActivity;->updateLabels()V

    .line 339
    invoke-direct {p0}, Llocal/voicebridge/MainActivity;->sendConfig()V

    return-void

    :catchall_0
    move-exception p1

    .line 336
    iput-boolean v0, p0, Llocal/voicebridge/MainActivity;->updatingSliders:Z

    .line 337
    throw p1
.end method

.method private slider(III)Landroid/widget/SeekBar;
    .locals 1

    .line 254
    new-instance v0, Landroid/widget/SeekBar;

    invoke-direct {v0, p0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    sub-int/2addr p2, p1

    .line 255
    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setMax(I)V

    sub-int/2addr p3, p1

    .line 256
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    const/16 p1, 0xa

    .line 257
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setKeyProgressIncrement(I)V

    const/4 p1, 0x1

    .line 258
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 259
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setFocusableInTouchMode(Z)V

    .line 260
    new-instance p1, Llocal/voicebridge/MainActivity$9;

    invoke-direct {p1, p0}, Llocal/voicebridge/MainActivity$9;-><init>(Llocal/voicebridge/MainActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 266
    const-string p0, "\u53ef\u8c03\u6570\u503c"

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private sliderListener(Z)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1

    .line 317
    new-instance v0, Llocal/voicebridge/MainActivity$12;

    invoke-direct {v0, p0, p1}, Llocal/voicebridge/MainActivity$12;-><init>(Llocal/voicebridge/MainActivity;Z)V

    return-object v0
.end method

.method private stepValue(ZI)V
    .locals 3

    if-eqz p1, :cond_0

    .line 299
    iget-object v0, p0, Llocal/voicebridge/MainActivity;->initial:Landroid/widget/SeekBar;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Llocal/voicebridge/MainActivity;->repeat:Landroid/widget/SeekBar;

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/16 p1, 0x190

    const/16 v1, 0x5dc

    goto :goto_1

    :cond_1
    const/16 p1, 0x3c

    const/16 v1, 0x320

    .line 303
    :goto_1
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/2addr v2, p1

    add-int/2addr p2, v2

    .line 304
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-ne p2, v2, :cond_3

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x1

    .line 306
    iput-boolean v1, p0, Llocal/voicebridge/MainActivity;->updatingSliders:Z

    sub-int/2addr p2, p1

    const/4 p1, 0x0

    .line 308
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    iput-boolean p1, p0, Llocal/voicebridge/MainActivity;->updatingSliders:Z

    .line 312
    invoke-direct {p0}, Llocal/voicebridge/MainActivity;->updateLabels()V

    .line 313
    invoke-direct {p0}, Llocal/voicebridge/MainActivity;->sendConfig()V

    return-void

    :catchall_0
    move-exception p2

    .line 310
    iput-boolean p1, p0, Llocal/voicebridge/MainActivity;->updatingSliders:Z

    .line 311
    throw p2
.end method

.method private text(Ljava/lang/String;IIZ)Landroid/widget/TextView;
    .locals 1

    .line 416
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 417
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p0, p2

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p0, 0x1

    if-eqz p4, :cond_0

    .line 418
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    const/16 p1, 0x10

    .line 419
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 420
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/4 p1, 0x0

    .line 421
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 422
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 p1, 0x0

    .line 423
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    add-int/lit8 p1, p2, -0x6

    const/16 p3, 0xb

    .line 426
    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 p3, 0x2

    .line 425
    invoke-virtual {v0, p1, p2, p0, p3}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    return-object v0
.end method

.method private updateLabels()V
    .locals 5

    .line 343
    iget-object v0, p0, Llocal/voicebridge/MainActivity;->initialValue:Landroid/widget/TextView;

    const-string v1, " ms"

    if-eqz v0, :cond_0

    iget-object v0, p0, Llocal/voicebridge/MainActivity;->initial:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    add-int/lit16 v0, v0, 0x190

    .line 345
    iget-object v2, p0, Llocal/voicebridge/MainActivity;->initialValue:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u957f\u6309\u89e6\u53d1\u524d\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    :cond_0
    iget-object v0, p0, Llocal/voicebridge/MainActivity;->repeatValue:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llocal/voicebridge/MainActivity;->repeat:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 348
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, 0x3c

    .line 349
    iget-object p0, p0, Llocal/voicebridge/MainActivity;->repeatValue:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u957f\u6309\u540e\u95f4\u9694\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private updateStatus()V
    .locals 5

    .line 397
    iget-object v0, p0, Llocal/voicebridge/MainActivity;->status:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 400
    :try_start_0
    invoke-virtual {p0}, Llocal/voicebridge/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_accessibility_services"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 402
    invoke-virtual {p0}, Llocal/voicebridge/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    :cond_1
    if-nez v0, :cond_3

    .line 404
    const-string v1, "accessibility"

    invoke-virtual {p0, v1}, Llocal/voicebridge/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v1, :cond_3

    const/4 v3, -0x1

    .line 406
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 407
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Llocal/voicebridge/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    move v0, v2

    goto :goto_0

    .line 411
    :catchall_0
    :cond_3
    iget-object v1, p0, Llocal/voicebridge/MainActivity;->status:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    const-string v2, "\u670d\u52a1\u5df2\u542f\u7528"

    goto :goto_1

    :cond_4
    const-string v2, "\u8bf7\u542f\u7528\u65e0\u969c\u788d\u670d\u52a1"

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object p0, p0, Llocal/voicebridge/MainActivity;->status:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    const/16 v0, 0x7d

    const/16 v1, 0x4b

    const/16 v2, 0x1e

    goto :goto_2

    :cond_5
    const/16 v0, 0x69

    const/16 v1, 0x23

    const/16 v2, 0xbe

    :goto_2
    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private weightLp(IF)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 467
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, p1, v1, p1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-object p0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 63
    invoke-virtual {p0}, Llocal/voicebridge/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    instance-of v1, v0, Landroid/widget/SeekBar;

    if-nez v1, :cond_0

    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 67
    instance-of v2, v1, Landroid/widget/SeekBar;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/widget/SeekBar;

    .line 69
    :cond_0
    iget-object v1, p0, Llocal/voicebridge/MainActivity;->initial:Landroid/widget/SeekBar;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Llocal/voicebridge/MainActivity;->repeat:Landroid/widget/SeekBar;

    if-eq v0, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 70
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    if-eqz v1, :cond_6

    const/16 v1, 0x15

    const/16 v5, 0x16

    if-eq v4, v1, :cond_2

    if-ne v4, v5, :cond_6

    .line 73
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_5

    .line 74
    iget-object p1, p0, Llocal/voicebridge/MainActivity;->initial:Landroid/widget/SeekBar;

    if-ne v0, p1, :cond_3

    move v2, v3

    :cond_3
    if-ne v4, v5, :cond_4

    const/16 p1, 0xa

    goto :goto_1

    :cond_4
    const/16 p1, -0xa

    :goto_1
    invoke-direct {p0, v2, p1}, Llocal/voicebridge/MainActivity;->stepValue(ZI)V

    :cond_5
    return v3

    .line 78
    :cond_6
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const-string p1, "voicebridge"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Llocal/voicebridge/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Llocal/voicebridge/MainActivity;->prefs:Landroid/content/SharedPreferences;

    .line 53
    invoke-direct {p0}, Llocal/voicebridge/MainActivity;->buildUi()V

    .line 54
    iput-boolean v0, p0, Llocal/voicebridge/MainActivity;->initialLoad:Z

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 59
    invoke-direct {p0}, Llocal/voicebridge/MainActivity;->updateStatus()V

    return-void
.end method
