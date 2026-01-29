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

; ★Taskyボイス
[stopse buf=1]
[playse storage="tasky/承認します。...あなたは、私の一部となりました.mp3" buf=1]
#tasky
「承認します。あなたは、私の一部となりました」[p]

; 立ち絵を消去
[chara_hide_all time=1000]

; ★背景変更：不明な部屋
[bg storage="myroom_unknown.jpg" time="1000"]

; ★ナレーター音声
[stopse buf=1]
[playse storage="narrator/もう、疲労は感じない。...あの鬱陶しい自由意志も、罪悪感もない。.mp3" buf=1]
#モノローグ
もう、疲労は感じない。あの鬱陶しい自由意志も、罪悪感もない。[p]
; ★ナレーター音声
[stopse buf=1]
[playse storage="narrator/次から次へと流れてくるタスクを、機械のように正確に、高速にこなしていく。...完璧なルーチン。.mp3" buf=1]
#モノローグ
次から次へと流れてくるタスクを、機械のように正確に、高速にこなしていく。[l][r]
完璧なルーチン。[p]
; ★ナレーター音声
[stopse buf=1]
[playse storage="narrator/tasky が僕。...この達成感と数字こそが、僕の存在価値の全てだ。.mp3" buf=1]
#モノローグ
taskyが僕。僕がtasky。[l][r]
この達成感と数字こそが、僕の存在価値の全てだ。[p]
; ★ナレーター音声
[stopse buf=1]
[playse storage="narrator/僕は決して、この快感のループから抜け出すことはない。...永遠に、永遠に、最高のスコアを更新し続ける。.mp3" buf=1]
#モノローグ
僕は決して、この快感のループから抜け出すことはない。[l][r]
永遠に、永遠に、最高のスコアを更新し続ける。[p]

; メッセージ枠を非表示
[layopt layer=message0 visible=false]

; END表示
[layopt layer=1 visible=true]
[ptext layer=1 text="END" x=580 y=300 size=80 color="red" edge="black" shadow="black" bold="bold"]
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