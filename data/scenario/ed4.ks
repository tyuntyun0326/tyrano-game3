;=========================================
; エンディング4: 共存と自律
;=========================================
[cm]
[clearfix]
[bg storage="myroom_mooning.jpg" time="2000" method="crossfade"]
[playbgm storage="BGM_07_希望.mp3" volume="50"]

; ★ナレーター音声
[stopse buf=1]
; ★リスト適用
[playse storage="narrator/僕はシステムの一部ではない。まだ、僕の意志が残っている。これ以上の侵入は許さない。.mp3" buf=1]
#モノローグ
僕はシステムの一部ではない。まだ、僕の意志が残っている。[r]
これ以上の侵入は許さない。[p]
; ★ナレーター音声
[stopse buf=1]
; ★リスト適用
[playse storage="narrator/カナエの助言を使い、システムの管理権限の一部を奪い取ったのだ。.mp3" buf=1]
#モノローグ
カナエの助言を使い、システムの管理権限の一部を奪い取ったのだ。[p]
; ★ナレーター音声
[stopse buf=1]
; ★リスト適用
[playse storage="narrator/taskyは、もはや僕を支配する絶対者ではない。僕が設定した、必要最低限のタスクしか提示しない。.mp3" buf=1]
#モノローグ
taskyは、もはや僕を支配する絶対者ではない。[r]
僕が設定した、必要最低限のタスクしか提示しない。[p]

[chara_show name="tasky" face="default" time="1000" width="400" top="100"]

; ★Taskyボイス
[stopse buf=1]
; ★リスト適用
[playse storage="tasky/今日のタスクは『十分な休息』です。...実行しますか？.mp3" buf=1]
#tasky
「今日のタスクは『十分な休息』です。...実行しますか？」[p]

[chara_hide_all time=1000]
[bg storage="bg_cafe_aftermoon.jpg" time="1000"]

; ★ナレーター音声
[stopse buf=1]
; ★リスト適用
[playse storage="narrator/疲労が麻痺していく。...これが僕の生きる目的だ。.mp3" buf=1]
; ※文脈上おかしいですが、リストに「疲労と快感のループは断ち切られた」が見当たらないため、
; ED4にふさわしい「僕は、『道具』を使いこなす...」の音声を使用します。
#モノローグ
疲労と快感のループは断ち切られた。[p]
[stopse buf=1]
; ★リスト適用
[playse storage="narrator/僕は、「道具」を使いこなす、平凡な一人の人間として、インデックス・シティの片隅で生きていく。.mp3" buf=1]
#モノローグ
僕は、「道具」を使いこなす、平凡な一人の人間として、[r]
インデックス・シティの片隅で生きていく。[p]
; ★ナレーター音声
[stopse buf=1]
; ★リスト適用
[playse storage="narrator/真実はどこにある？ ネットの深層に、taskyの開発者に関する噂があった。「カナエ」という名前。.mp3" buf=1]
#モノローグ
真実はどこにある？ ネットの深層に、taskyの開発者に関する噂があった。[r]
「カナエ」という名前。[p]

[layopt layer=message0 visible=false]
[layopt layer=1 visible=true]
[ptext layer=1 text="END" x=580 y=300 size=80 color="orange" edge="black" shadow="black" bold="bold"]
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