;==============================
; title_screen.ks
;==============================
[cm]
[clearfix]
[start_keyconfig]

; メニュー類を隠す
[hidemenubutton]
[layopt layer=message0 visible=false]

; ★1. 起動時は「表紙（title2.jpg）」を表示して停止
[bg storage="title2.jpg" time="100"]

; ★2. クリック待ち
; 画面全体を透明なボタンにし、クリックされるまで絶対に動かないようにします
[clickable width=1280 height=720 target="*press_start" opacity=0 mouseopacity=0]

[s]

; -------------------------------------------
; ★3. クリック後の処理
; -------------------------------------------
*press_start
[cm]
[freeimage layer=1]

; 効果音
[playse storage="SE08 スマホタップ音.mp3"]

; ★クリックされて初めて背景変更
[bg storage="title.jpg" time="500"]

; ★BGM再生
[playbgm storage="BGM_08_タイトル.mp3" volume="60"]

; タイトルロゴ
[layopt layer=1 visible=true]
[ptext layer=1 page=fore text="Routine Cage" x=180 y=150 size=90 color=0xffffff edge="0x000000" bold="bold" shadow="0x000000"]
[ptext layer=1 page=fore text="― ルーチンの檻 ―" x=450 y=280 size=30 color=0xcccccc edge="0x000000" bold="bold"]

; メニューボタン
[glink color="black" text="はじめから" x=500 y=450 size=24 target="*start" width="200"]
[glink color="black" text="つづきから" x=500 y=550 size=24 target="*load" width="200"]

[s]

*start
[cm]
[clearfix]
[freeimage layer=0]
[freeimage layer=1]
[layopt layer=1 visible=false]
[jump storage="prologue.ks"]
[s]

*load
[cm]
[showload]
[jump target="*press_start"]
[s]