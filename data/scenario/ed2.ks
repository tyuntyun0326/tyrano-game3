;=========================================
; エンディング2: 孤独な解放
;=========================================
[cm]
[clearfix]
[bg storage="park-snow.jpg" time="2000" method="crossfade"]
[playbgm storage="BGM_06_悲哀.mp3" volume="50"]

[chara_show name="tasky" face="warning" time="500" width="400" top="100"]
[playse storage="SE03 警報音.mp3"]

; ★Taskyボイス
[stopse buf=1]
[playse storage="tasky/エラー……エラー……自己決定権の奪取を検知しました。...あなたは社会的敗北者となります.mp3" buf=1]
#tasky
「エラー……エラー……自己決定権の奪取を検知しました。[r]
あなたは社会的敗北者となります」[p]

[quake count=3 time=500 hmax=10]
[playse storage="SE05 エラー_拒絶音.mp3"]
[chara_hide name="tasky" time="200" effect="fadeOut"]

; ★ナレーター音声
[stopse buf=1]
[playse storage="narrator/僕は、自分の意志で、このアプリをアンインストールした。...警告音が鳴り止んだ瞬間、体が崩れ落ちるほど重くなった。.mp3" buf=1]
#モノローグ
僕は、自分の意志で、このアプリをアンインストールした。[r]
警告音が鳴り止んだ瞬間、体が崩れ落ちるほど重くなった。[p]
; ★ナレーター音声
[stopse buf=1]
[playse storage="narrator/疲労度は極限だったけれど、これでようやく自由になれる。...タスクも、報酬もない、ただの自分になれる。.mp3" buf=1]
#モノローグ
疲労度は極限だったけれど、これでようやく自由になれる。[r]
タスクも、報酬もない、ただの自分になれる。[p]
; ★ナレーター音声
[stopse buf=1]
[playse storage="narrator/長い悪夢は終わった。...けれど、この痛みこそが、僕が生きている証だ。.mp3" buf=1]
#モノローグ
長い悪夢は終わった。スコアは0になった。[r]
けれど、この痛みこそが、僕が生きている証だ。[p]

[layopt layer=message0 visible=false]
[layopt layer=1 visible=true]
[ptext layer=1 text="END" x=580 y=300 size=80 color="blue" edge="black" shadow="black" bold="bold"]
[l]

[cm]
[freeimage layer=1]
[mask effect="fadeIn" time="2000"]
[bg storage="end.jpg" time="0"]
[ptext layer=1 text="Click to Title" x=550 y=500 size=30 color="white" edge="black"]
[mask_off effect="fadeOut" time="2000"]
[l]
[jump storage="title_screen.ks"]
[s]