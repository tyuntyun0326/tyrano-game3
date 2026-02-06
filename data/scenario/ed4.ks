;=========================================
; エンディング4: 共存と自律
;=========================================
[cm]
[clearfix]
[bg storage="myroom_mooning.jpg" time="2000" method="crossfade"]
[playbgm storage="BGM_07_希望.mp3" volume="50"]

; ★ナレーター音声
[stopse buf=1]
; ★リスト一致
[playse storage="narrator/僕は tasky をアンインストールしなかった。.mp3" buf=1]
#モノローグ
僕はtaskyをアンインストールしなかった。[p]
; ★ナレーター音声
[stopse buf=1]
; ★リスト一致
[playse storage="narrator/カナエの助言を使い、システムの管理権限の一部を奪い取ったのだ。.mp3" buf=1]
#モノローグ
カナエの助言を使い、システムの管理権限の一部を奪い取ったのだ。[p]
; ★ナレーター音声
[stopse buf=1]
; ★リスト一致
[playse storage="narrator/taskyは、もはや僕を支配する絶対者ではない。僕が設定した、必要最低限のタスクしか提示しない。.mp3" buf=1]
#モノローグ
taskyは、もはや僕を支配する絶対者ではない。[r]
僕が設定した、必要最低限のタスクしか提示しない。[p]

[chara_show name="tasky" face="default" time="1000" width="400" top="100"]

; ★Taskyボイス
[stopse buf=1]
; ★リスト一致
[playse storage="tasky/今日のタスクは『十分な休息』です。...実行しますか？.mp3" buf=1]
#tasky
「今日のタスクは『十分な休息』です。...実行しますか？」[p]

[bg storage="bg_cafe_aftermoon2.jpg" time="1000"]

; ★ナレーター音声
[stopse buf=1]
; ★リスト一致
[playse storage="narrator/僕は、「道具」を使いこなす、平凡な一人の人間として、インデックス・シティの片隅で生きていく。.mp3" buf=1]
#モノローグ
疲労と快感のループは断ち切られた。[r]
僕は、「道具」を使いこなす、平凡な一人の人間として、[r]
インデックス・シティの片隅で生きていく。[p]
; ★ナレーター音声
[stopse buf=1]
; ★リスト一致
#モノローグ
[playse storage="narrator/カナエの残したメッセージが、いつかこのシステムを完全に終わらせる道があることを示唆している。.mp3" buf=1]
カナエの残したメッセージが、いつかこのシステムを完全に終わらせる道があることを示唆している。[r]
[playse storage="narrator/この『制御』は、暫定的な勝利だ。...でも、悪くない。.mp3" buf=1]
この「制御」は、暫定的な勝利だ。でも、悪くない。
[p]

[layopt layer=message0 visible=false]
[layopt layer=1 visible=true]
[ptext layer=1 text="END" x=580 y=300 size=80 color="orange" edge="black" shadow="black" bold="bold"]
[l]
[chara_move name ="カナエ" x=-300 time=3000]
[cm]
[freeimage layer=1]
[mask effect="fadeIn" time="2000"]
[bg storage="end.jpg" time="0"]
[ptext layer=1 text="Click to Title" x=550 y=500 size=30 color="white" edge="black"]
[mask_off effect="fadeOut" time="2000"]
[l]
[chara_hide_all time=1000]
[freeimage layer=1]
[jump storage="title_screen.ks"]
[s]