;==============================
; タイトル画面
;==============================

[cm]
[clearfix]
[start_keyconfig]

; メニューボタンを隠す
[hidemenubutton]

; 標準のメッセージレイヤを非表示（タイトルでは不要なので）
[layopt layer=message0 visible=false]

; 背景画像
[bg storage="title.jpg" time="100"]

; タイトルBGM再生
[playbgm storage="BGM_08_タイトル.mp3" volume="60"]

; タイトル文字の表示（ptextで直接描画）
[ptext layer=1 page=fore text="Routine Cage" x=280 y=150 size=90 color=0xffffff edge="0x000000" bold="bold" shadow="0x000000"]
[ptext layer=1 page=fore text="― ルーチンの檻 ―" x=450 y=280 size=30 color=0xcccccc edge="0x000000" bold="bold"]
[layopt layer=1 visible=true]

*title

; ボタン表示
[glink color="black" text="はじめから" x=500 y=450 size=24 target="*start" width="200"]
[glink color="black" text="つづきから" x=500 y=550 size=24 target="*load" width="200"]
[s]

*start
; ゲーム開始時の初期化処理
[cm]
[clearfix]
[freeimage layer=1]
; ★重要：メッセージウィンドウを表示状態に戻す
[layopt layer=message0 visible=true]
; プロローグへ移動
[jump storage="prologue.ks"]
[s]

*load
[cm]
[showload]
[jump target="*title"]
[s]