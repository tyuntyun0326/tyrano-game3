;==============================
; タイトル画面
;==============================
[cm]
[clearfix]
[start_keyconfig]

; メニューボタンを隠す
[hidemenubutton]

; 背景表示
[bg storage="title.jpg" time="100"]

; タイトル文字とボタンの表示
[layopt layer=1 visible=true]
[ptext layer=1 page=fore text="Routine Cage" x=180 y=150 size=90 color=0xffffff edge="0x000000" bold="bold" shadow="0x000000"]
[ptext layer=1 page=fore text="― ルーチンの檻 ―" x=450 y=280 size=30 color=0xcccccc edge="0x000000" bold="bold"]

; ボタン配置
[glink color="black" text="はじめから" x=500 y=450 size=24 target="*start" width="200"]
[glink color="black" text="つづきから" x=500 y=550 size=24 target="*load" width="200"]

; BGM再生
[playbgm storage="BGM_08_タイトル.mp3" volume="60"]

[s]

*start
; -------------------------------------------
; ★ロード演出（点滅アニメーション）
; -------------------------------------------
; ボタンを消去
[cm]
[clearfix]

; ロード文字の表示（レイヤー2を使用）
[layopt layer=2 visible=true]
[ptext layer=2 name="loading_text" text="Now Loading" x=50 y=650 size=30 color="white" edge="black"]

; 「.」を順番に表示して動いているように見せる
[wait time=200]
[ptext layer=2 name="loading_text" text="Now Loading ." x=50 y=650 size=30 color="white" edge="black" overwrite=true]
[wait time=200]
[ptext layer=2 name="loading_text" text="Now Loading . ." x=50 y=650 size=30 color="white" edge="black" overwrite=true]
[wait time=200]
[ptext layer=2 name="loading_text" text="Now Loading . . ." x=50 y=650 size=30 color="white" edge="black" overwrite=true]
[wait time=200]
[ptext layer=2 name="loading_text" text="Now Loading" x=50 y=650 size=30 color="white" edge="black" overwrite=true]
[wait time=200]
[ptext layer=2 name="loading_text" text="Now Loading ." x=50 y=650 size=30 color="white" edge="black" overwrite=true]
[wait time=500]

; ロード画面の消去
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[layopt layer=1 visible=false]
[layopt layer=2 visible=false]

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