;=========================================
; エンディング1: 永劫回帰
;=========================================
[cm]
[clearfix]
[start_keyconfig]

; 背景：スマホ画面の光（没入）
[bg storage="bg_smartphone_task_done.jpg" time="2000" method="crossfade"]

; BGM：快楽・中毒
[playbgm storage="BGM_05_快楽.mp3" volume="60"]

; Tasky表示
[chara_show name="tasky" face="default" time="1000" width="400" top="100"]

; Taskyボイス
[playse storage="tasky/承認します。...あなたは、私の一部となりました.mp3" buf=1]
#tasky
「承認します。あなたは、私の一部となりました」[p]

; Tasky消去
[chara_hide name="tasky" time="1000"]

#モノローグ
もう、疲労は感じない。あの鬱陶しい自由意志も、罪悪感もない。[p]
次から次へと流れてくるタスクを、機械のように正確に、高速にこなしていく。完璧なルーチン。[p]
taskyが僕。僕がtasky。この達成感と数字こそが、僕の存在価値の全てだ。[p]
僕は決して、この快感のループから抜け出すことはない。[r]
永遠に、永遠に、最高のスコアを更新し続ける。[p]

; ★修正：シンプルに END と表示（レイヤー1を使用）
[layopt layer=1 visible=true]
[ptext layer=1 text="END" x=580 y=300 size=80 color="red" edge="black" shadow="black" bold="bold"]
[l]

; --- 終了処理 ---
[cm]
; テキストを消去
[freeimage layer=1]
[mask effect="fadeIn" time="2000"]
; 終了画面表示
[bg storage="end.jpg" time="0"]
[ptext layer=1 text="Click to Title" x=550 y=500 size=30 color="white" edge="black"]
[mask_off effect="fadeOut" time="2000"]

; クリック待ち
[l]
; タイトルへ戻る
[jump storage="title_screen.ks"]
[s]