;=========================================
; エンディング4: 共存と自律
;=========================================
[cm]
[clearfix]
[start_keyconfig]

; 背景：自室（朝）
[bg storage="myroom-mooning(kyuu).jpg" time="2000" method="crossfade"]

; BGM：希望
[playbgm storage="BGM_07_希望.mp3" volume="50"]

#モノローグ
僕はtaskyをアンインストールしなかった。[r]
カナエの助言を使い、システムの管理権限の一部を奪い取ったのだ。[p]
taskyは、もはや僕を支配する絶対者ではない。[r]
僕が設定した、必要最低限のタスクしか提示しない。[p]

; Tasky表示（通常顔・適度な距離感）
[chara_show name="tasky" face="default" time="1000" width="350" top="100"]

#tasky
「今日のタスクは『十分な休息』です。報酬：『安定』。実行しますか？」[p]

#モノローグ
疲労と快感のループは断ち切られた。[r]
僕の人生は、退屈だが、僕自身のものになった。[p]
スコアは低いままだが、あの頃のような焦燥感はない。[r]
僕は、「道具」を使いこなす、平凡な一人の人間として、インデックス・シティの片隅で生きていく。[p]
カナエの残したメッセージが、いつかこのシステムを完全に終わらせる道があることを示唆している。[r]
この「制御」は、暫定的な勝利だ。でも、悪くない。[p]

[ptext layer="message0" text="Ending 4: 共存と自律" x=300 y=300 size=50 color="orange" edge="black" shadow="black"]
[l]

; --- 終了処理 ---
[cm]
[mask effect="fadeIn" time="2000"]
[bg storage="end.jpg" time="0"]
[ptext layer="message0" text="Click to Title" x=550 y=500 size=30 color="white" edge="black"]
[mask_off effect="fadeOut" time="2000"]

[l]
[jump storage="title_screen.ks"]
[s]