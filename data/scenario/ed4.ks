;=========================================
; エンディング4: 共存と自律
;=========================================
[cm]
[clearfix]
[start_keyconfig]

; 背景：自室（朝）
[bg storage="myroom_mooning_kyuu.jpg" time="2000" method="crossfade"]

; BGM：希望
[playbgm storage="BGM_07_希望.mp3" volume="50"]

#モノローグ
僕はtaskyをアンインストールしなかった。[r]
カナエの助言を使い、システムの管理権限の一部を奪い取ったのだ。[p]
taskyは、もはや僕を支配する絶対者ではない。[r]
僕が設定した、必要最低限のタスクしか提示しない。[p]

; Tasky表示
[chara_show name="tasky" face="default" time="1000" width="400" top="100"]

; Taskyボイス
[playse storage="tasky/今日のタスクは『十分な休息』です。...実行しますか？.mp3" buf=1]
#tasky
「今日のタスクは『十分な休息』です。報酬：『安定』。実行しますか？」[p]

#モノローグ
疲労と快感のループは断ち切られた。[r]
僕の人生は、退屈だが、僕自身のものになった。[p]
スコアは低いままだが、あの頃のような焦燥感はない。[r]
僕は、「道具」を使いこなす、平凡な一人の人間として、インデックス・シティの片隅で生きていく。[p]
カナエの残したメッセージが、いつかこのシステムを完全に終わらせる道があることを示唆している。[r]
この「制御」は、暫定的な勝利だ。でも、悪くない。[p]

; ★修正：シンプルに END と表示
[layopt layer=1 visible=true]
[ptext layer=1 text="END" x=580 y=300 size=80 color="orange" edge="black" shadow="black" bold="bold"]
[l]

; --- 終了処理 ---
[cm]
[freeimage layer=1]
[mask effect="fadeIn" time="2000"]
[bg storage="end.jpg" time="0"]
[ptext layer=1 text="Click to Title" x=550 y=500 size=30 color="white" edge="black"]
[mask_off effect="fadeOut" time="2000"]

[l]
[jump storage="title_screen.ks"]
[s]