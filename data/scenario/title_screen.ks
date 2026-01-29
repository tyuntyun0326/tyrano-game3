;==============================
; タイトル画面
;==============================
[cm]
[clearfix]
[start_keyconfig]

; メニューボタンを隠す
[hidemenubutton]

; メッセージウィンドウを消す
[layopt layer=message0 visible=false]

; ★UI（タイトル文字・ボタン）を最優先で表示
[layopt layer=1 visible=true]

; 背景
[bg storage="title.jpg" time="100"]

; タイトルロゴ
[ptext layer=1 page=fore text="Routine Cage" x=180 y=150 size=90 color=0xffffff edge="0x000000" bold="bold" shadow="0x000000"]
[ptext layer=1 page=fore text="― ルーチンの檻 ―" x=450 y=280 size=30 color=0xcccccc edge="0x000000" bold="bold"]

; ボタン（即座に表示）
[glink color="black" text="はじめから" x=500 y=450 size=24 target="*start" width="200"]
[glink color="black" text="つづきから" x=500 y=550 size=24 target="*load" width="200"]

; ★BGM再生（UI表示後に読み込ませることで体感速度を上げる）
[playbgm storage="BGM_08_タイトル.mp3" volume="60"]

; 入力待ち
[s]

*start
; ゲーム開始処理
[cm]
[clearfix]
[freeimage layer=0]
[freeimage layer=1]
[layopt layer=1 visible=false]

; メッセージウィンドウを表示状態に戻す
[layopt layer=message0 visible=true]

; プロローグへ移動
[jump storage="prologue.ks"]
[s]

*load
[cm]
[showload]
[jump target="*title"]
[s]