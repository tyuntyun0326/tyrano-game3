;=========================================
; エンディング2: 孤独な解放
;=========================================
[cm]
[clearfix]
[start_keyconfig]

; 背景：冬の公園
[bg storage="park-snow.jpg" time="2000" method="crossfade"]

; BGM：悲哀・静寂
[playbgm storage="BGM_06_悲哀.mp3" volume="50"]

; Tasky表示（警告・エラー）
[chara_show name="tasky" face="warning" time="500"]
[playse storage="SE03 警報音.mp3"]

#tasky
「エラー……エラー……自己決定権の奪取を検知しました。[r]
あなたは社会的敗北者となります」[p]

; Tasky消去（アンインストール）
[chara_hide name="tasky" time="200" effect="fadeOut"]
[playse storage="SE05 エラー_拒絶音.mp3"]

#モノローグ
僕は、自分の意志で、このアプリをアンインストールした。[r]
警告音が鳴り止んだ瞬間、体が崩れ落ちるほど重くなった。[p]
疲労度は極限だったけれど、これでようやく自由になれる。[r]
タスクも、報酬もない、ただの自分になれる。[p]
長い悪夢は終わった。スコアは0になった。[r]
けれど、この痛みこそが、僕が生きている証だ。[p]

[ptext layer="message0" text="Ending 2: 孤独な解放" x=300 y=300 size=50 color="blue" edge="black" shadow="black"]
[l]

; --- 終了処理 ---
[cm]
[mask effect="fadeIn" time="2000"]
[bg storage="end.jpg" time="0"]
[ptext layer="message0" text="Click to Title" x=550 y=500 size=30 color="white" edge="black"]
[mask_off effect="fadeOut" time="2000"]

[l]
[jump storage="title.ks"]
[s]